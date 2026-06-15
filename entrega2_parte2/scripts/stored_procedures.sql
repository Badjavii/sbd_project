-- ==========================================
-- STORED PROCEDURES - CLUBES DE LECTURA
-- Prefijo: sojg_
-- ==========================================

-- ==========================================
-- ADMINISTRACION DE CLUBES
-- ==========================================

-- SP1: Registrar club
create or replace procedure sojg_sp_registrar_club(
    p_nombre         in varchar2,
    p_direccion      in varchar2,
    p_cp             in varchar2,
    p_idioma         in varchar2,
    p_id_ciudad      in number,
    p_cuota          in char,
    p_id_institucion in number
) is
    v_count number;
begin
    select count(*) into v_count from sojg_ciudad where (id = p_id_ciudad);
    if (v_count = 0) then
        raise_application_error(-20001, 'La ciudad especificada no existe.');
    end if;

    if (p_cuota not in ('SI', 'NO')) then
        raise_application_error(-20002, 'El valor de cuota_membresia debe ser SI o NO.');
    end if;

    if (p_cuota = 'NO' and p_id_institucion is null) then
        raise_application_error(-20003, 'Un club dependiente debe tener una institucion asociada.');
    end if;

    if (p_id_institucion is not null) then
        select count(*) into v_count from sojg_institucion where (id = p_id_institucion);
        if (v_count = 0) then
            raise_application_error(-20004, 'La institucion especificada no existe.');
        end if;
    end if;

    insert into sojg_club (nombre, direccion, codigo_postal, idioma_del_club, id_ciudad, cuota_membresia, id_institucion)
        values (p_nombre, p_direccion, p_cp, p_idioma, p_id_ciudad, p_cuota, p_id_institucion);
    commit;
exception
    when others then rollback; raise;
end sojg_sp_registrar_club;
/

-- SP2: Asociar clubes
create or replace procedure sojg_sp_asociar_clubes(
    p_id_club_1 in number,
    p_id_club_2 in number,
    p_fecha     in date
) is
    v_idioma_1 sojg_club.idioma_del_club%type;
    v_idioma_2 sojg_club.idioma_del_club%type;
    v_club_1   number;
    v_club_2   number;
    v_count    number;
begin
    v_club_1 := least(p_id_club_1, p_id_club_2);
    v_club_2 := greatest(p_id_club_1, p_id_club_2);

    if (v_club_1 = v_club_2) then
        raise_application_error(-20010, 'Un club no puede asociarse consigo mismo.');
    end if;

    select idioma_del_club into v_idioma_1 from sojg_club where (id_club = v_club_1);
    select idioma_del_club into v_idioma_2 from sojg_club where (id_club = v_club_2);

    if (v_idioma_1 != v_idioma_2) then
        raise_application_error(-20011, 'Los clubes no comparten idioma. No se puede crear la asociacion.');
    end if;

    select count(*) into v_count from sojg_asociacion
        where (id_club_1 = v_club_1 and id_club_2 = v_club_2);
    if (v_count > 0) then
        raise_application_error(-20012, 'Esta asociacion ya existe.');
    end if;

    insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion)
        values (v_club_1, v_club_2, p_fecha);
    commit;
exception
    when no_data_found then raise_application_error(-20013, 'Uno o ambos clubes no existen.');
    when others then rollback; raise;
end sojg_sp_asociar_clubes;
/

-- SP3: Expulsar miembro
-- subrutina de sojg_sp_registrar_inasistencia cuando supera 30% de faltas
create or replace procedure sojg_sp_expulsar_miembro(
    p_id_miembro in number,
    p_id_club    in number,
    p_motivo     in varchar2
) is
    v_count number;
begin
    if (p_motivo not in ('Voluntario', 'Inasistencia', 'Deudas', 'Otro')) then
        raise_application_error(-20020, 'Motivo invalido. Debe ser: Voluntario, Inasistencia, Deudas u Otro.');
    end if;

    select count(*) into v_count from sojg_historico_membresia
        where (id_miembro = p_id_miembro) and (id_club = p_id_club) and (estatus = 'Activa');
    if (v_count = 0) then
        raise_application_error(-20021, 'El miembro no se encuentra activo en este club.');
    end if;

    update sojg_historico_membresia
        set fecha_fin = sysdate, estatus = 'Expulsada', motivo_retiro = p_motivo
        where (id_miembro = p_id_miembro) and (id_club = p_id_club) and (estatus = 'Activa');

    update sojg_historico_grupo_lectura
        set fecha_fin = sysdate
        where (id_miembro = p_id_miembro) and (id_club = p_id_club) and (fecha_fin is null);

    commit;
exception
    when others then rollback; raise;
end sojg_sp_expulsar_miembro;
/

-- SP4: Split de grupo
-- subrutina de sojg_sp_asignar_grupo cuando se supera la capacidad maxima
create or replace procedure sojg_sp_split_grupo(
    p_id_club           in number,
    p_numero_grupo_orig in number
) is
    v_nuevo_grupo number;
    v_total       number;
    v_mitad       number;
    v_contador    number := 0;
    v_categoria   varchar2(10);
    v_dia         varchar2(15);
    v_hora        number(4,2);
    v_activas     number;
    v_min         number;
    v_max         number;

    cursor c_miembros is
        select id_miembro, fecha_inicio_membresia, fecha_inicio
        from sojg_historico_grupo_lectura
        where (id_club = p_id_club)
            and (numero_de_grupo = p_numero_grupo_orig)
            and (fecha_fin is null)
        order by fecha_inicio asc;
begin
    -- validar que no haya reunion activa
    select count(*) into v_activas from sojg_calendario_mes
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo_orig)
            and (realizada = 'NO') and (ultima_discusion = 'NO');
    if (v_activas > 0) then
        raise_application_error(-20070, 'No se puede hacer split mientras el grupo tiene una reunion activa.');
    end if;

    -- obtener datos del grupo
    select categoria_edad, dia_reunion, hora_inicio
    into v_categoria, v_dia, v_hora
    from sojg_grupo_de_lectura
    where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo_orig);

    -- definir minimo y maximo segun categoria
    case v_categoria
        when 'Adulto' then v_min := 10; v_max := 30;
        when 'Joven'  then v_min := 5;  v_max := 15;
        when 'Nino'   then v_min := 10; v_max := 15;
    end case;

    -- contar miembros activos
    select count(*) into v_total from sojg_historico_grupo_lectura
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo_orig)
            and (fecha_fin is null);

    -- validar minimo absoluto para hacer split
    if (v_total < 2) then
        raise_application_error(-20071, 'El grupo no tiene suficientes miembros para hacer split.');
    end if;

    -- validar que el grupo alcanzo el maximo para poder hacer split
    if (v_total < v_max) then
        raise_application_error(-20072,
            'El grupo ' || v_categoria || ' necesita ' || v_max ||
            ' miembros para hacer split. Miembros actuales: ' || v_total || '.');
    end if;

    -- calcular mitad
    v_mitad := trunc(v_total / 2);

    -- validar que ambos grupos resultantes cumplan el minimo
    if ((v_total - v_mitad) < v_min or v_mitad < v_min) then
        raise_application_error(-20073,
            'El split dejaria un grupo con menos de ' || v_min ||
            ' miembros (minimo para ' || v_categoria || ').');
    end if;

    -- calcular numero del nuevo grupo
    select nvl(max(numero_de_grupo), 0) + 1 into v_nuevo_grupo
        from sojg_grupo_de_lectura where (id_club = p_id_club);

    -- crear nuevo grupo
    insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
        values (p_id_club, v_nuevo_grupo, sysdate, v_categoria, v_dia, v_hora);

    -- mover los miembros mas nuevos al grupo nuevo
    for r in c_miembros loop
        v_contador := v_contador + 1;
        if (v_contador > (v_total - v_mitad)) then
            update sojg_historico_grupo_lectura
                set fecha_fin = sysdate
                where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo_orig)
                    and (id_miembro = r.id_miembro) and (fecha_inicio = r.fecha_inicio);

            insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
                values (p_id_club, v_nuevo_grupo, r.fecha_inicio_membresia, r.id_miembro, sysdate, null);
        end if;
    end loop;

    dbms_output.put_line('Split ejecutado exitosamente.');
    dbms_output.put_line('Grupo original ' || p_numero_grupo_orig || ': ' || (v_total - v_mitad) || ' miembros.');
    dbms_output.put_line('Grupo nuevo ' || v_nuevo_grupo || ': ' || v_mitad || ' miembros.');

    commit;
exception
    when no_data_found then raise_application_error(-20074, 'El grupo especificado no existe.');
    when others then rollback; raise;
end sojg_sp_split_grupo;
/

-- SP5: Asignar grupo
-- subrutina de sojg_sp_inscribir_miembro
create or replace procedure sojg_sp_asignar_grupo(
    p_id_miembro in number,
    p_id_club    in number,
    p_fecha_mem  in date
) is
    v_edad      number;
    v_categoria varchar2(10);
    v_grupo     number;
    v_count     number;
begin
    v_edad := sojg_edad_miembro(p_id_miembro);

    if (v_edad > 25) then v_categoria := 'Adulto';
    elsif (v_edad >= 13) then v_categoria := 'Joven';
    else v_categoria := 'Nino';
    end if;

    select numero_de_grupo into v_grupo
    from sojg_grupo_de_lectura gl
    where (gl.id_club = p_id_club) and (gl.categoria_edad = v_categoria)
        and not exists (
            select 1 from sojg_calendario_mes cm
            where (cm.id_club = gl.id_club) and (cm.numero_de_grupo = gl.numero_de_grupo)
                and (cm.realizada = 'NO') and (cm.ultima_discusion = 'NO')
        )
    order by (
        select count(*) from sojg_historico_grupo_lectura hg
        where (hg.id_club = gl.id_club) and (hg.numero_de_grupo = gl.numero_de_grupo)
            and (hg.fecha_fin is null)
    ) asc
    fetch first 1 rows only;

    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (p_id_club, v_grupo, p_fecha_mem, p_id_miembro, p_fecha_mem, null);

    select count(*) into v_count from sojg_historico_grupo_lectura
        where (id_club = p_id_club) and (numero_de_grupo = v_grupo) and (fecha_fin is null);

    if (v_count >= 4) then
        sojg_sp_split_grupo(p_id_club, v_grupo);
    end if;
exception
    when no_data_found then
        raise_application_error(-20030, 'No hay grupos disponibles de la categoria correcta o todos tienen reunion activa.');
    when others then raise;
end sojg_sp_asignar_grupo;
/

-- SP6: Inscribir miembro
-- usa sojg_sp_asignar_grupo como subrutina
create or replace procedure sojg_sp_inscribir_miembro(
    p_id_miembro in number,
    p_id_club    in number,
    p_fecha      in date
) is
    v_count number;
    v_cuota char(2);
begin
    select count(*) into v_count from sojg_historico_membresia
        where (id_miembro = p_id_miembro) and (estatus = 'Activa');
    if (v_count > 0) then
        raise_application_error(-20040, 'El miembro ya se encuentra activo en un club.');
    end if;

    select count(*) into v_count from sojg_historico_membresia
        where (id_miembro = p_id_miembro) and (estatus = 'Morosa');
    if (v_count > 0) then
        raise_application_error(-20041, 'El miembro tiene deudas pendientes. No puede inscribirse.');
    end if;

    select count(*) into v_count from sojg_club where (id_club = p_id_club);
    if (v_count = 0) then
        raise_application_error(-20042, 'El club especificado no existe.');
    end if;

    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (p_id_miembro, p_id_club, p_fecha, null, 'Activa', null);

    -- asignar grupo automaticamente
    sojg_sp_asignar_grupo(p_id_miembro, p_id_club, p_fecha);

    -- registrar pago si el club cobra cuota
    select cuota_membresia into v_cuota from sojg_club where (id_club = p_id_club);
    if (v_cuota = 'SI') then
        insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
            values (p_fecha, 100.00, p_id_miembro, p_id_club);
    end if;

    commit;
exception
    when others then rollback; raise;
end sojg_sp_inscribir_miembro;
/

-- SP7: Retirar miembro
create or replace procedure sojg_sp_retirar_miembro(
    p_id_miembro in number,
    p_id_club    in number,
    p_fecha      in date,
    p_motivo     in varchar2
) is
    v_cuota         char(2);
    v_dias_aviso    number;
    v_estatus_final varchar2(20);
begin
    if (p_motivo not in ('Voluntario', 'Inasistencia', 'Deudas', 'Otro')) then
        raise_application_error(-20050, 'Motivo invalido.');
    end if;

    select cuota_membresia into v_cuota from sojg_club where (id_club = p_id_club);

    v_dias_aviso := trunc(p_fecha) - trunc(sysdate);
    if (v_cuota = 'SI' and v_dias_aviso < 30) then
        v_estatus_final := 'Morosa';
    else
        v_estatus_final := 'Retirada';
    end if;

    update sojg_historico_membresia
        set fecha_fin = p_fecha, estatus = v_estatus_final, motivo_retiro = p_motivo
        where (id_miembro = p_id_miembro) and (id_club = p_id_club) and (estatus = 'Activa');

    if (sql%notfound) then
        raise_application_error(-20051, 'El miembro no se encuentra activo en este club.');
    end if;

    update sojg_historico_grupo_lectura
        set fecha_fin = p_fecha
        where (id_miembro = p_id_miembro) and (id_club = p_id_club) and (fecha_fin is null);

    commit;
exception
    when no_data_found then raise_application_error(-20052, 'El club especificado no existe.');
    when others then rollback; raise;
end sojg_sp_retirar_miembro;
/

-- SP8: Registrar pago
create or replace procedure sojg_sp_registrar_pago(
    p_id_miembro in number,
    p_id_club    in number,
    p_monto      in number,
    p_fecha      in date
) is
    v_cuota char(2);
begin
    select cuota_membresia into v_cuota from sojg_club where (id_club = p_id_club);

    if (v_cuota = 'NO') then
        raise_application_error(-20060, 'Este club es dependiente y no cobra cuotas.');
    end if;

    if (p_monto <= 0) then
        raise_application_error(-20061, 'El monto debe ser mayor a cero.');
    end if;

    insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
        values (p_fecha, p_monto, p_id_miembro, p_id_club);

    update sojg_historico_membresia
        set estatus = 'Activa'
        where (id_miembro = p_id_miembro) and (id_club = p_id_club)
            and (estatus = 'Morosa') and (fecha_fin is null);

    update sojg_historico_membresia
        set estatus = 'Retirada'
        where (id_miembro = p_id_miembro) and (id_club = p_id_club)
            and (estatus = 'Morosa') and (fecha_fin is not null);

    commit;
exception
    when no_data_found then raise_application_error(-20062, 'El club especificado no existe.');
    when others then rollback; raise;
end sojg_sp_registrar_pago;
/

-- SP: Actualizar estado moroso
-- compara antiguedad vs cantidad de pagos
-- subrutina de clubes_op9.sql
create or replace procedure sojg_sp_actualizar_morosos(
    p_id_club in number
) is
    v_cuota char(2);
begin
    -- solo aplica a clubes independientes
    select cuota_membresia into v_cuota
    from sojg_club where (id_club = p_id_club);

    if (v_cuota = 'NO') then
        raise_application_error(-20095, 'Este club es dependiente y no cobra cuotas.');
    end if;

    -- marcar como morosos a quienes deben pagos
    -- antiguedad en años > cantidad de pagos registrados = debe
    update sojg_historico_membresia hm
    set estatus = 'Morosa'
    where (hm.id_club = p_id_club)
        and (hm.estatus = 'Activa')
        and (hm.fecha_fin is null)
        and (
            trunc(months_between(sysdate, hm.fecha_inicio_membresia) / 12)
            >
            (select count(*) from sojg_pago_membresia pm
             where (pm.id_miembro = hm.id_miembro)
                 and (pm.id_club = p_id_club))
        );

    dbms_output.put_line('Estado de morosos actualizado. Filas afectadas: ' || sql%rowcount);
    commit;
exception
    when no_data_found then
        raise_application_error(-20096, 'El club especificado no existe.');
    when others then rollback; raise;
end sojg_sp_actualizar_morosos;
/

-- ==========================================
-- ADMINISTRACION DE REUNIONES
-- ==========================================

-- SP9: Generar calendario
create or replace procedure sojg_sp_generar_calendario(
    p_id_club      in number,
    p_numero_grupo in number,
    p_isbn_libro   in number,
    p_id_moderador in number,
    p_fecha        in date
) is
    v_count number;
begin
    -- validar que no haya discusion activa con otro libro
    select count(*) into v_count from sojg_calendario_mes
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (isbn_libro != p_isbn_libro) and (realizada = 'NO');
    if (v_count > 0) then
        raise_application_error(-20080, 'El grupo tiene una discusion activa con otro libro.');
    end if;

    -- validar que si ya hay reuniones del mismo libro
    -- tienen el mismo moderador
    select count(*) into v_count from sojg_calendario_mes
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (isbn_libro = p_isbn_libro) and (id_moderador != p_id_moderador);
    if (v_count > 0) then
        raise_application_error(-20081, 'El moderador debe ser el mismo para todas las reuniones del libro.');
    end if;

    -- validar que no exista ya una reunion en esa fecha para ese grupo
    select count(*) into v_count from sojg_calendario_mes
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (fecha_reunion = p_fecha);
    if (v_count > 0) then
        raise_application_error(-20082, 'Ya existe una reunion programada para esa fecha en este grupo.');
    end if;

    -- validar que no haya mas de 3 reuniones ya planificadas para este libro
    select count(*) into v_count from sojg_calendario_mes
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (isbn_libro = p_isbn_libro);
    if (v_count >= 3) then
        raise_application_error(-20083, 'Ya se han planificado 3 reuniones para este libro. Use cerrar discusion.');
    end if;

    insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, ultima_discusion, id_moderador)
        values (p_id_club, p_numero_grupo, p_isbn_libro, p_fecha, 'NO', 'NO', p_id_moderador);

    commit;
exception
    when others then rollback; raise;
end sojg_sp_generar_calendario;
/

-- SP Especial
create or replace procedure sojg_sp_generar_calendario_mensual(
    p_id_club      in number,
    p_numero_grupo in number,
    p_isbn_libro   in number,
    p_id_moderador in number,
    p_mes          in number,
    p_anno         in number
) is
    v_dia_reunion    varchar2(15);
    v_dia_num        number;
    v_fecha          date;
    v_fecha_inicio   date;
    v_fecha_fin      date;
    v_reuniones_gen  number := 0;
    v_ya_realizadas  number;
    v_ya_en_mes      number;
    v_dias_disp      number;
    v_max_en_mes     number;
    v_necesita       number;
    v_categoria      varchar2(10);
    v_min_miembros   number;
    v_total_miembros number;
    v_es_adulto      number;
    v_mod_ocupado    number;
    v_mod_ese_dia    number;
begin
    -- obtener dia de reunion y categoria del grupo
    select dia_reunion, categoria_edad into v_dia_reunion, v_categoria
    from sojg_grupo_de_lectura
    where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo);

    -- convertir dia a numero oracle (1=domingo, 2=lunes...6=viernes)
    v_dia_num := case v_dia_reunion
        when 'Lunes'     then 2
        when 'Martes'    then 3
        when 'Miercoles' then 4
        when 'Jueves'    then 5
        when 'Viernes'   then 6
    end;

    -- ==========================================
    -- VALIDACION 1: minimo de miembros por categoria
    -- ==========================================
    v_min_miembros := case v_categoria
        when 'Adulto' then 10
        when 'Joven'  then 5
        when 'Nino'   then 10
    end;

    select count(*) into v_total_miembros
    from sojg_historico_grupo_lectura
    where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
        and (fecha_fin is null);

    if (v_total_miembros < v_min_miembros) then
        raise_application_error(-20087,
            'El grupo no tiene suficientes miembros. Minimo requerido para ' ||
            v_categoria || ': ' || v_min_miembros ||
            '. Miembros actuales: ' || v_total_miembros || '.');
    end if;

    -- ==========================================
    -- VALIDACION 2: moderador debe ser adulto del mismo club
    -- ==========================================
    select count(*) into v_es_adulto
    from sojg_historico_grupo_lectura hgl
    join sojg_grupo_de_lectura gl
        on (hgl.id_club = gl.id_club)
        and (hgl.numero_de_grupo = gl.numero_de_grupo)
    where (hgl.id_miembro = p_id_moderador)
        and (hgl.id_club = p_id_club)
        and (gl.categoria_edad = 'Adulto')
        and (hgl.fecha_fin is null);

    if (v_es_adulto = 0) then
        raise_application_error(-20088,
            'El moderador debe ser un miembro Adulto activo del mismo club.');
    end if;

    -- ==========================================
    -- VALIDACION 3: moderador no debe ser moderador de otro grupo activo
    -- ==========================================
    select count(*) into v_mod_ocupado
    from sojg_calendario_mes
    where (id_moderador = p_id_moderador)
        and (realizada = 'NO')
        and not (id_club = p_id_club and numero_de_grupo = p_numero_grupo);

    if (v_mod_ocupado > 0) then
        raise_application_error(-20089,
            'El moderador ya esta asignado en otro grupo con discusion activa.');
    end if;

    -- ==========================================
    -- VALIDACION 4: moderador no debe tener reunion ese dia en otro grupo
    -- ==========================================
    v_fecha_inicio := to_date('01/' || to_char(p_mes, 'FM00') || '/' || to_char(p_anno), 'DD/MM/YYYY');
    v_fecha_fin    := last_day(v_fecha_inicio);

    select count(*) into v_mod_ese_dia
    from sojg_calendario_mes cm
    join sojg_grupo_de_lectura gl
        on (cm.id_club = gl.id_club)
        and (cm.numero_de_grupo = gl.numero_de_grupo)
    where (cm.id_moderador = p_id_moderador)
        and (gl.dia_reunion = v_dia_reunion)
        and (cm.fecha_reunion between v_fecha_inicio and v_fecha_fin)
        and (cm.realizada = 'NO')
        and not (cm.id_club = p_id_club and cm.numero_de_grupo = p_numero_grupo);

    if (v_mod_ese_dia > 0) then
        raise_application_error(-20090,
            'El moderador ya tiene reunion planificada los ' ||
            v_dia_reunion || ' en otro grupo durante este mes.');
    end if;

    -- ==========================================
    -- VALIDACION 5: reuniones ya realizadas del libro
    -- ==========================================
    select count(*) into v_ya_realizadas
    from sojg_calendario_mes
    where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
        and (isbn_libro = p_isbn_libro) and (realizada = 'SI');

    if (v_ya_realizadas >= 3) then
        raise_application_error(-20085,
            'Este libro ya tiene 3 reuniones realizadas. Use cerrar discusion.');
    end if;

    v_necesita := 3 - v_ya_realizadas;

    -- ==========================================
    -- CALCULAR DIAS DISPONIBLES EN EL MES
    -- ==========================================
    v_dias_disp := 0;
    v_fecha     := v_fecha_inicio;
    while (v_fecha <= v_fecha_fin) loop
        if (to_char(v_fecha, 'D') = to_char(v_dia_num)) then
            v_dias_disp := v_dias_disp + 1;
        end if;
        v_fecha := v_fecha + 1;
    end loop;

    -- cuantas reuniones del grupo ya estan en ese mes
    select count(*) into v_ya_en_mes
    from sojg_calendario_mes
    where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
        and (extract(month from fecha_reunion) = p_mes)
        and (extract(year from fecha_reunion) = p_anno);

    v_max_en_mes := v_dias_disp - v_ya_en_mes;

    if (v_max_en_mes <= 0) then
        raise_application_error(-20086,
            'No hay dias disponibles en ' ||
            to_char(v_fecha_inicio, 'Month YYYY') ||
            '. Todos los ' || v_dia_reunion || ' ya estan ocupados.');
    end if;

    -- no pasar del maximo necesario ni del maximo disponible en el mes
    v_necesita := least(v_necesita, v_max_en_mes);

    -- ==========================================
    -- GENERAR REUNIONES
    -- ==========================================
    -- encontrar el primer dia disponible del mes
    v_fecha := v_fecha_inicio;
    while (to_char(v_fecha, 'D') != to_char(v_dia_num)) loop
        v_fecha := v_fecha + 1;
    end loop;

    while (v_fecha <= v_fecha_fin and v_reuniones_gen < v_necesita) loop
        declare
            v_existe number;
        begin
            select count(*) into v_existe
            from sojg_calendario_mes
            where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
                and (fecha_reunion = v_fecha);

            if (v_existe = 0) then
                sojg_sp_generar_calendario(
                    p_id_club      => p_id_club,
                    p_numero_grupo => p_numero_grupo,
                    p_isbn_libro   => p_isbn_libro,
                    p_id_moderador => p_id_moderador,
                    p_fecha        => v_fecha
                );
                v_reuniones_gen := v_reuniones_gen + 1;
            end if;
        end;
        v_fecha := v_fecha + 7;
    end loop;

    if (v_reuniones_gen = 0) then
        raise_application_error(-20091,
            'No se pudieron generar reuniones para este mes.');
    end if;

    dbms_output.put_line('Se generaron ' || v_reuniones_gen || ' reunion(es) para ' ||
        to_char(v_fecha_inicio, 'Month YYYY') || '.');
    dbms_output.put_line('Reuniones realizadas del libro: ' || v_ya_realizadas ||
        ' | Quedan por realizar: ' || (3 - v_ya_realizadas - v_reuniones_gen));

    commit;
exception
    when no_data_found then
        raise_application_error(-20092, 'El club o grupo especificado no existe.');
    when others then
        rollback; raise;
end sojg_sp_generar_calendario_mensual;
/

-- SP10: Asignar moderador
create or replace procedure sojg_sp_asignar_moderador(
    p_id_club      in number,
    p_numero_grupo in number,
    p_isbn_libro   in number,
    p_id_moderador in number
) is
    v_categoria varchar2(10);
    v_ocupado   number;
    v_es_adulto number;
    v_pertenece number;
begin
    select categoria_edad into v_categoria
        from sojg_grupo_de_lectura
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo);

    select count(*) into v_ocupado from sojg_calendario_mes
        where (id_moderador = p_id_moderador) and (realizada = 'NO')
            and (id_club != p_id_club or numero_de_grupo != p_numero_grupo);
    if (v_ocupado > 0) then
        raise_application_error(-20090, 'El moderador ya esta asignado en otro grupo con discusion activa.');
    end if;

    if (v_categoria = 'Nino') then
        select count(*) into v_es_adulto
            from sojg_historico_grupo_lectura hgl
            join sojg_grupo_de_lectura gl
                on (hgl.id_club = gl.id_club) and (hgl.numero_de_grupo = gl.numero_de_grupo)
            where (hgl.id_miembro = p_id_moderador) and (hgl.id_club = p_id_club)
                and (gl.categoria_edad = 'Adulto') and (hgl.fecha_fin is null);
        if (v_es_adulto = 0) then
            raise_application_error(-20091, 'El moderador de un grupo Nino debe ser un miembro Adulto del mismo club.');
        end if;
    else
        select count(*) into v_pertenece from sojg_historico_grupo_lectura
            where (id_miembro = p_id_moderador) and (id_club = p_id_club)
                and (numero_de_grupo = p_numero_grupo) and (fecha_fin is null);
        if (v_pertenece = 0) then
            raise_application_error(-20092, 'El moderador debe ser un miembro activo de este grupo.');
        end if;
    end if;

    update sojg_calendario_mes set id_moderador = p_id_moderador
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo) and (isbn_libro = p_isbn_libro);

    if (sql%rowcount = 0) then
        raise_application_error(-20093, 'No se encontraron reuniones programadas para este libro en el grupo.');
    end if;

    commit;
exception
    when no_data_found then raise_application_error(-20094, 'El club o grupo especificado no existe.');
    when others then rollback; raise;
end sojg_sp_asignar_moderador;
/

-- SP11: Realizar reunion
-- marca una reunion como realizada
create or replace procedure sojg_sp_realizar_reunion(
    p_id_club      in number,
    p_numero_grupo in number,
    p_isbn_libro   in number,
    p_fecha        in date
) is
    v_count          number;
    v_ya_realizadas  number;
begin
    -- validar que la reunion existe
    select count(*) into v_count from sojg_calendario_mes
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (isbn_libro = p_isbn_libro) and (fecha_reunion = p_fecha);
    if (v_count = 0) then
        raise_application_error(-20095, 'La reunion especificada no existe en el calendario.');
    end if;

    -- contar cuantas reuniones ya estan realizadas para este libro/grupo
    select count(*) into v_ya_realizadas from sojg_calendario_mes
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (isbn_libro = p_isbn_libro) and (realizada = 'SI');

    -- si esta es la tercera marcarla como ultima tambien
    if (v_ya_realizadas >= 2) then
        update sojg_calendario_mes
            set realizada = 'SI', ultima_discusion = 'SI'
            where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
                and (isbn_libro = p_isbn_libro) and (fecha_reunion = p_fecha);
    else
        update sojg_calendario_mes
            set realizada = 'SI'
            where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
                and (isbn_libro = p_isbn_libro) and (fecha_reunion = p_fecha);
    end if;

    commit;
exception
    when others then rollback; raise;
end sojg_sp_realizar_reunion;
/

-- SP12: Registrar inasistencia
-- si el miembro supera 30% de faltas en el bimestre lo expulsa automaticamente
create or replace procedure sojg_sp_registrar_inasistencia(
    p_id_club      in number,
    p_numero_grupo in number,
    p_isbn_libro   in number,
    p_fecha        in date,
    p_id_miembro   in number
) is
    v_realizada  varchar2(2);
    v_count      number;
    v_bimestre   number;
    v_pct_faltas number;
begin
    -- validar que la reunion existe y fue realizada
    select realizada into v_realizada from sojg_calendario_mes
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (isbn_libro = p_isbn_libro) and (fecha_reunion = p_fecha);

    if (v_realizada = 'NO') then
        raise_application_error(-20100, 'No se puede registrar inasistencia en una reunion que no fue realizada.');
    end if;

    -- validar que el miembro pertenecia al grupo en esa fecha
    select count(*) into v_count from sojg_historico_grupo_lectura
        where (id_miembro = p_id_miembro) and (id_club = p_id_club)
            and (numero_de_grupo = p_numero_grupo)
            and (fecha_inicio <= p_fecha)
            and (fecha_fin is null or fecha_fin >= p_fecha);
    if (v_count = 0) then
        raise_application_error(-20101, 'El miembro no estaba activo en este grupo en la fecha de la reunion.');
    end if;

    -- validar que no este ya registrada
    select count(*) into v_count from sojg_inasistencia
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (isbn_libro = p_isbn_libro) and (fecha_reunion = p_fecha)
            and (id_miembro = p_id_miembro);
    if (v_count > 0) then
        raise_application_error(-20102, 'La inasistencia ya estaba registrada.');
    end if;

    insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
        values (p_id_club, p_numero_grupo, p_isbn_libro, p_fecha, p_id_miembro);

    -- verificar si supera 30% de faltas en el bimestre y expulsar automaticamente
    v_bimestre   := ceil(extract(month from p_fecha) / 2);
    v_pct_faltas := 100 - sojg_pct_participacion_bimestre_miembro(
        p_id_miembro, v_bimestre, extract(year from p_fecha)
    );

    if (v_pct_faltas > 30) then
        sojg_sp_expulsar_miembro(p_id_miembro, p_id_club, 'Inasistencia');
    end if;

    commit;
exception
    when no_data_found then raise_application_error(-20103, 'La reunion especificada no existe en el calendario.');
    when others then rollback; raise;
end sojg_sp_registrar_inasistencia;
/

-- SP13: Cerrar discusion
create or replace procedure sojg_sp_cerrar_discusion(
    p_id_club      in number,
    p_numero_grupo in number,
    p_isbn_libro   in number,
    p_conclusiones in varchar2,
    p_valoracion   in number
) is
    v_count        number;
    v_fecha_ultima date;
begin
    -- validar valoracion
    if (p_valoracion < 1 or p_valoracion > 5) then
        raise_application_error(-20110, 'La valoracion debe estar entre 1 y 5.');
    end if;

    -- validar que haya al menos una reunion realizada
    select count(*) into v_count from sojg_calendario_mes
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (isbn_libro = p_isbn_libro) and (realizada = 'SI');
    if (v_count = 0) then
        raise_application_error(-20111, 'No hay reuniones realizadas para cerrar la discusion.');
    end if;

    -- verificar si ya hay una marcada como ultima
    select count(*) into v_count from sojg_calendario_mes
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (isbn_libro = p_isbn_libro) and (ultima_discusion = 'SI');

    -- si no hay ultima marcada, tomar la mas reciente realizada y marcarla
    if (v_count = 0) then
        select max(fecha_reunion) into v_fecha_ultima from sojg_calendario_mes
            where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
                and (isbn_libro = p_isbn_libro) and (realizada = 'SI');

        update sojg_calendario_mes
            set ultima_discusion = 'SI'
            where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
                and (isbn_libro = p_isbn_libro) and (fecha_reunion = v_fecha_ultima);
    end if;

    -- cerrar con conclusiones y valoracion
    update sojg_calendario_mes
        set conclusiones = p_conclusiones, valoracion_final = p_valoracion
        where (id_club = p_id_club) and (numero_de_grupo = p_numero_grupo)
            and (isbn_libro = p_isbn_libro) and (ultima_discusion = 'SI');

    commit;
exception
    when others then rollback; raise;
end sojg_sp_cerrar_discusion;
/

-- ==========================================
-- OBRAS Y PRESENTACIONES
-- ==========================================

-- SP14: Registrar obra
create or replace procedure sojg_sp_registrar_obra(
    p_titulo      in varchar2,
    p_activa      in char,
    p_descripcion in varchar2,
    p_costo       in number,
    p_id_club     in number
) is
    v_count number;
begin
    select count(*) into v_count from sojg_club where (id_club = p_id_club);
    if (v_count = 0) then raise_application_error(-20120, 'El club especificado no existe.'); end if;

    if (p_costo <= 0) then raise_application_error(-20121, 'El costo debe ser mayor a cero.'); end if;

    if (p_activa not in ('SI', 'NO')) then raise_application_error(-20122, 'Activa debe ser SI o NO.'); end if;

    insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
        values (p_titulo, p_activa, p_descripcion, p_costo, p_id_club);
    commit;
exception
    when others then rollback; raise;
end sojg_sp_registrar_obra;
/

-- SP15: Agregar miembro al elenco
-- valida que el miembro sea del club de la obra o de un club asociado
create or replace procedure sojg_sp_agregar_elenco(
    p_id_obra    in number,
    p_id_miembro in number
) is
    v_id_club_obra number;
    v_count        number;
begin
    select id_club into v_id_club_obra from sojg_obra where (id_obra = p_id_obra);

    select count(*) into v_count from sojg_historico_membresia hm
        where (hm.id_miembro = p_id_miembro) and (hm.estatus = 'Activa')
            and (
                hm.id_club = v_id_club_obra
                or exists (
                    select 1 from sojg_asociacion a
                    where (
                        (a.id_club_1 = hm.id_club and a.id_club_2 = v_id_club_obra)
                        or (a.id_club_1 = v_id_club_obra and a.id_club_2 = hm.id_club)
                    )
                )
            );

    if (v_count = 0) then
        raise_application_error(-20130, 'El miembro no pertenece al club de la obra ni a un club asociado.');
    end if;

    insert into sojg_elenco (id_obra, id_miembro) values (p_id_obra, p_id_miembro);
    commit;
exception
    when no_data_found then raise_application_error(-20131, 'La obra especificada no existe.');
    when others then rollback; raise;
end sojg_sp_agregar_elenco;
/

-- SP16: Registrar presentacion
create or replace procedure sojg_sp_registrar_presentacion(
    p_id_obra             in number,
    p_fecha               in date,
    p_valoracion          in number,
    p_cantidad_asistentes in number
) is
    v_count number;
begin
    select count(*) into v_count from sojg_obra
        where (id_obra = p_id_obra) and (activa = 'SI');
    if (v_count = 0) then raise_application_error(-20140, 'La obra no existe o no esta activa.'); end if;

    select count(*) into v_count from sojg_presentacion_de_la_obra
        where (id_obra = p_id_obra) and (fecha = p_fecha);
    if (v_count > 0) then raise_application_error(-20141, 'Ya existe una presentacion en esa fecha.'); end if;

    if (p_cantidad_asistentes <= 0) then raise_application_error(-20142, 'Asistentes debe ser mayor a cero.'); end if;
    if (p_valoracion < 1 or p_valoracion > 5) then raise_application_error(-20143, 'Valoracion debe estar entre 1 y 5.'); end if;

    insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes)
        values (p_id_obra, p_fecha, p_valoracion, p_cantidad_asistentes);
    commit;
exception
    when others then rollback; raise;
end sojg_sp_registrar_presentacion;
/

-- SP17: Registrar mejor actor
create or replace procedure sojg_sp_registrar_mejor_actor(
    p_id_obra            in number,
    p_id_miembro         in number,
    p_fecha_presentacion in date,
    p_votos              in number
) is
    v_count number;
begin
    select count(*) into v_count from sojg_presentacion_de_la_obra
        where (id_obra = p_id_obra) and (fecha = p_fecha_presentacion);
    if (v_count = 0) then raise_application_error(-20150, 'No existe presentacion en esa fecha.'); end if;

    select count(*) into v_count from sojg_elenco
        where (id_obra = p_id_obra) and (id_miembro = p_id_miembro);
    if (v_count = 0) then raise_application_error(-20151, 'El miembro no pertenece al elenco.'); end if;

    if (p_votos <= 0) then raise_application_error(-20152, 'Los votos deben ser mayores a cero.'); end if;

    select count(*) into v_count from sojg_mejor_actor
        where (id_obra = p_id_obra) and (id_miembro = p_id_miembro)
            and (fecha_presentacion = p_fecha_presentacion);
    if (v_count > 0) then raise_application_error(-20153, 'Ya existe registro de votos para este miembro en esta presentacion.'); end if;

    insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
        values (p_id_obra, p_id_miembro, p_fecha_presentacion, p_votos);
    commit;
exception
    when others then rollback; raise;
end sojg_sp_registrar_mejor_actor;
/

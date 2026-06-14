-- SP 1: Registrar obra
create or replace procedure sojg_sp_registrar_obra(
    p_titulo in varchar2,
    p_activa in char,
    p_descripcion in varchar2,
    p_costo in number,
    p_id_club in number
) is 
    v_count number;
begin 
    -- validar que el club exista
    select count(*) into v_count from sojg_club
        where (id_club = p_id_club);

    if (v_count = 0) then 
        raise_application_error(-20020, 'El club especificado no existe.');
    end if;

    -- validar costo mayor a 0
    if (p_costo <= 0) then 
        raise_application_error(-20021, 'El costo de entrada debe ser mayor a cero.');
    end if;

    -- validar que activa sea SI o NO
    if (p_activa not in ('SI', 'NO')) then
        raise_application_error(-20022, 'El valor de activa debe ser SI o NO.');
    end if;

    -- insertar obra
    insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
        values (p_titulo, p_activa, p_descripcion, p_costo, p_id_club);

    commit;

exception 
    when others then
        rollback;
        raise;
end sojg_sp_registrar_obra;
/

-- SP2: Registrar presentacion
create or replace procedure sojg_sp_registrar_presentacion(
    p_id_obra in number,
    p_fecha in date,
    p_valoracion in number,
    p_cantidad_asistentes in number
) is 
    v_count number;
begin 
    -- validar que la obra existe y esta activa
    select count(*) into v_count from sojg_obra
        where (id_obra = p_id_obra) and (activa = 'SI');

    if (v_count = 0) then 
        raise_application_error(-20020, 'La obra no existe o no esta activa.');
    end if;

    -- validar que no exista ya una presentacion en esa fecha para esa obra 
    select count(*) into v_count from sojg_presentacion_de_la_obra 
        where (id_obra = p_id_obra) and (fecha = p_fecha);

    if (v_count > 0) then
        raise_application_error(-20021, 'Ya existe una presentacion de esta obra en esa fecha.');
    end if;

    insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes) values (p_id_obra, p_fecha, p_valoracion, p_cantidad_asistentes);

    commit;
end sojg_sp_registrar_presentacion;
/

-- SP3: Registrar mejor actor
create or replace procedure sojg_sp_registrar_mejor_actor(
    p_id_obra in number,
    p_id_miembro in number,
    p_fecha_presentacion in date,
    p_votos in number
) is 
    v_count number;
begin 

    -- validar que la presentacion existe
    select count(*) into v_count from sojg_presentacion_de_la_obra
        where (id_obra = p_id_obra) and (fecha = p_fecha_presentacion);

    if (v_count = 0) then
        raise_application_error(-20030, 'No existe una presentacion de esta obra en esa fecha.');
    end if;

    -- validar que el miembro pertenece al elenco de la obra
    select count(*) into v_count from sojg_elenco
        where (id_obra = p_id_obra) and (id_miembro = p_id_miembro);

    if (v_count = 0) then 
        raise_application_error(-20031, 'El miembro no pertenece al elenco de esta obra.');
    end if;

    -- validar que los votos son positivos
    if (p_votos <= 0) then
        raise_application_error(-20032, 'Los votos deben ser mayores a cero.');
    end if;

    -- validar que no exista ya un registro de mejor actor para ese miembro en esa presentacion
    select count(*) into v_count from sojg_mejor_actor 
        where (id_obra = p_id_obra) and (id_miembro = p_id_miembro)
            and (fecha_presentacion = p_fecha_presentacion);

    if (v_count > 0) then
        raise_application_error(-20033, 'Ya existe un registro de votos para este miembro en esta presentacion.');
    end if;

    insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos) values (p_id_obra, p_id_miembro, p_fecha_presentacion, p_votos);
    
    commit;
end sojg_sp_registrar_mejor_actor;
/

-- SP4: Agregar un miembro al elenco
create or replace procedure sojg_sp_agregar_elenco(
    p_id_obra in number,
    p_id_miembro in number
) is
    v_id_club_obra number;
    v_count number;
begin
    -- obtener el club de la obra
    select id_club into v_id_club_obra
    from sojg_obra
    where id_obra = p_id_obra;

    -- validar que el miembro pertenece al club de la obra o a un club asociado
    select count(*) into v_count
    from sojg_historico_membresia hm
    where (hm.id_miembro = p_id_miembro)
        and (hm.estatus = 'Activa')
        and (
            hm.id_club = v_id_club_obra
            or exists (
                select 1 from sojg_asociacion a
                where (
                    (a.id_club_1 = hm.id_club and a.id_club_2 = v_id_club_obra)
                    or
                    (a.id_club_1 = v_id_club_obra and a.id_club_2 = hm.id_club)
                )
            )
        );

    if (v_count = 0) then
        raise_application_error(-20040, 'El miembro no pertenece al club de la obra ni a un club asociado.');
    end if;

    insert into sojg_elenco (id_obra, id_miembro)
        values (p_id_obra, p_id_miembro);

    commit;
end sojg_sp_agregar_elenco;
/

-- ==========================================
-- FASE 4: FUNCIONES
-- ==========================================

-- Funcion: Conversion monetaria
create or replace function sojg_conversion_monetaria (
    p_monto in number,
    p_moneda_origen in varchar2,
    p_tasa_cambio in number
) return number is
    v_monto_dolares number;
begin

    -- validar que no se convierta USD a USD
    if (upper(p_moneda_origen) = 'USD') then
        raise_application_error(-20001, 'La moneda de origen ya es USD. No se requiere conversion.');
    end if;

    -- validar monto positivo
    if (p_monto <= 0) then
        raise_application_error(-20002, 'El monto debe ser mayor a cero.');
    end if;
    
    -- validar tasa positiva
    if (p_tasa_cambio <= 0) then
        raise_application_error(-20003, 'La tasa de cambio debe ser mayor a cero.');
    end if;
    
    v_monto_dolares := p_monto * p_tasa_cambio;
    return round(v_monto_dolares, 2);

exception
    when others then
        raise;
end;
/

commit;

-- Funcion: Calcular edad de un miembro
CREATE OR REPLACE FUNCTION sojg_edad_miembro (miembro_id number) RETURN number IS
  v_edad number;
BEGIN
  SELECT FLOOR(MONTHS_BETWEEN(TRUNC(SYSDATE), TRUNC(fecha_nacimiento)) / 12)
  INTO v_edad
  FROM sojg_lector
  WHERE id_miembro = miembro_id;
  
  RETURN v_edad;
END;
/

commit;

-- Funcion: Calcular antiguedad de un miembro en el club
create or replace function sojg_antiguedad_en_el_club_miembro(
    p_id_miembro in number,
    p_id_club    in number
) return number is
    v_fecha_inicio date;
    v_antiguedad   number := 0;
begin
    -- tomar la fecha de inicio mas antigua del miembro en ese club
    select min(fecha_inicio_membresia) into v_fecha_inicio
    from sojg_historico_membresia
    where (id_miembro = p_id_miembro) and (id_club = p_id_club);

    if (v_fecha_inicio is null) then return 0; end if;

    v_antiguedad := months_between(sysdate, v_fecha_inicio) / 12;
    return trunc(v_antiguedad, 2);
exception
    when others then return 0;
end sojg_antiguedad_en_el_club_miembro;
/

commit;

-- Funcion: Calcular participacion entre dos fechas
create or replace function sojg_calcular_pct_participacion(
    p_id_miembro number, p_fecha_inicio date, p_fecha_fin date
) return number is 
    v_total_reuniones number :=0;
    v_total_faltas number := 0;
begin 
    -- contar reuniones totales del miembro en ese periodo
    select count(*) 
    into v_total_reuniones 
    from sojg_calendario_mes cm 
    join sojg_historico_grupo_lectura hgl 
        on (cm.id_club = hgl.id_club) 
        and (cm.numero_de_grupo = hgl.numero_de_grupo) 
    where (hgl.id_miembro = p_id_miembro) 
        and (cm.fecha_reunion >= p_fecha_inicio) 
        and (cm.fecha_reunion <= p_fecha_fin) 
        and (cm.realizada = 'SI');

    -- si no hay reuniones retorna 0
    if (v_total_reuniones = 0) then 
        return 0;
    end if;

    -- contar inasistencias del miembro en ese periodo
    select count(*) 
    into v_total_faltas 
    from sojg_inasistencia i 
    where (i.id_miembro = p_id_miembro) 
        and (i.fecha_reunion >= p_fecha_inicio) 
        and (i.fecha_reunion <= p_fecha_fin);

    -- retorna porcentaje de participacion
    return round (
        ((v_total_reuniones - v_total_faltas) / v_total_reuniones) * 100, 2
    );

exception 
    when others then
        return null;
end sojg_calcular_pct_participacion;
/

commit;

-- Funcion: Calcular participacion en un bimestre
create or replace function sojg_pct_participacion_bimestre_miembro(
    p_id_miembro number, p_bimestre number, p_anno number
) return number is 
    v_fecha_inicio date;
    v_fecha_fin date;
begin
    -- validar que el bimestre sea entre 1 y 6
    if (p_bimestre < 1) or (p_bimestre > 6) then 
        raise_application_error(-20001, 'bimestre debe estar entre 1 y 6');
    end if;

    -- calcular fecha inicio del bimestre
    v_fecha_inicio := to_date(
        '01/' || to_char((p_bimestre - 1) * 2 + 1, 'FM00') || '/' || to_char(p_anno), 'DD/MM/YYYY' 
    );

    -- calcular fecha fin de bimestre
    v_fecha_fin := add_months(v_fecha_inicio, 2) - 1;

    -- invocar funcion base
    return sojg_calcular_pct_participacion(
        p_id_miembro, v_fecha_inicio, v_fecha_fin
    );

exception 
    when others then
        return null;
end sojg_pct_participacion_bimestre_miembro;
/

commit;

-- Funcion: calcular promedio participacion
create or replace function sojg_pct_prom_participacion_mensual(
    p_id_club in number,
    p_mes     in number,
    p_anno    in number
) return varchar2 is
    v_pct_adulto number := 0;
    v_pct_joven  number := 0;
    v_pct_nino   number := 0;
    v_esperados  number;
    v_faltas     number;
    v_resultado  varchar2(200);
begin
    -- calcular % adultos
    select nvl(sum(
        (select count(*)
         from sojg_historico_grupo_lectura hg
         where (hg.id_club = cm.id_club)
             and (hg.numero_de_grupo = cm.numero_de_grupo)
             and (hg.fecha_inicio_membresia <= cm.fecha_reunion)
             and (hg.fecha_fin is null or hg.fecha_fin >= cm.fecha_reunion))
    ), 0)
    into v_esperados
    from sojg_calendario_mes cm
    join sojg_grupo_de_lectura gl
        on (cm.id_club = gl.id_club)
        and (cm.numero_de_grupo = gl.numero_de_grupo)
    where (cm.id_club = p_id_club)
        and (extract(month from cm.fecha_reunion) = p_mes)
        and (extract(year from cm.fecha_reunion) = p_anno)
        and (gl.categoria_edad = 'Adulto')
        and (cm.realizada = 'SI');

    if (v_esperados > 0) then
        select count(*)
        into v_faltas
        from sojg_inasistencia i
        join sojg_calendario_mes cm
            on (i.id_club = cm.id_club)
            and (i.numero_de_grupo = cm.numero_de_grupo)
            and (i.isbn_libro = cm.isbn_libro)
            and (i.fecha_reunion = cm.fecha_reunion)
        join sojg_grupo_de_lectura gl
            on (cm.id_club = gl.id_club)
            and (cm.numero_de_grupo = gl.numero_de_grupo)
        where (cm.id_club = p_id_club)
            and (extract(month from cm.fecha_reunion) = p_mes)
            and (extract(year from cm.fecha_reunion) = p_anno)
            and (gl.categoria_edad = 'Adulto')
            and (cm.realizada = 'SI');

        v_pct_adulto := round(100 - ((v_faltas / v_esperados) * 100), 2);
    end if;

    -- calcular % jovenes
    select nvl(sum(
        (select count(*)
         from sojg_historico_grupo_lectura hg
         where (hg.id_club = cm.id_club)
             and (hg.numero_de_grupo = cm.numero_de_grupo)
             and (hg.fecha_inicio_membresia <= cm.fecha_reunion)
             and (hg.fecha_fin is null or hg.fecha_fin >= cm.fecha_reunion))
    ), 0)
    into v_esperados
    from sojg_calendario_mes cm
    join sojg_grupo_de_lectura gl
        on (cm.id_club = gl.id_club)
        and (cm.numero_de_grupo = gl.numero_de_grupo)
    where (cm.id_club = p_id_club)
        and (extract(month from cm.fecha_reunion) = p_mes)
        and (extract(year from cm.fecha_reunion) = p_anno)
        and (gl.categoria_edad = 'Joven')
        and (cm.realizada = 'SI');

    if (v_esperados > 0) then
        select count(*)
        into v_faltas
        from sojg_inasistencia i
        join sojg_calendario_mes cm
            on (i.id_club = cm.id_club)
            and (i.numero_de_grupo = cm.numero_de_grupo)
            and (i.isbn_libro = cm.isbn_libro)
            and (i.fecha_reunion = cm.fecha_reunion)
        join sojg_grupo_de_lectura gl
            on (cm.id_club = gl.id_club)
            and (cm.numero_de_grupo = gl.numero_de_grupo)
        where (cm.id_club = p_id_club)
            and (extract(month from cm.fecha_reunion) = p_mes)
            and (extract(year from cm.fecha_reunion) = p_anno)
            and (gl.categoria_edad = 'Joven')
            and (cm.realizada = 'SI');

        v_pct_joven := round(100 - ((v_faltas / v_esperados) * 100), 2);
    end if;

    -- calcular % ninos
    select nvl(sum(
        (select count(*)
         from sojg_historico_grupo_lectura hg
         where (hg.id_club = cm.id_club)
             and (hg.numero_de_grupo = cm.numero_de_grupo)
             and (hg.fecha_inicio_membresia <= cm.fecha_reunion)
             and (hg.fecha_fin is null or hg.fecha_fin >= cm.fecha_reunion))
    ), 0)
    into v_esperados
    from sojg_calendario_mes cm
    join sojg_grupo_de_lectura gl
        on (cm.id_club = gl.id_club)
        and (cm.numero_de_grupo = gl.numero_de_grupo)
    where (cm.id_club = p_id_club)
        and (extract(month from cm.fecha_reunion) = p_mes)
        and (extract(year from cm.fecha_reunion) = p_anno)
        and (gl.categoria_edad = 'Nino')
        and (cm.realizada = 'SI');

    if (v_esperados > 0) then
        select count(*)
        into v_faltas
        from sojg_inasistencia i
        join sojg_calendario_mes cm
            on (i.id_club = cm.id_club)
            and (i.numero_de_grupo = cm.numero_de_grupo)
            and (i.isbn_libro = cm.isbn_libro)
            and (i.fecha_reunion = cm.fecha_reunion)
        join sojg_grupo_de_lectura gl
            on (cm.id_club = gl.id_club)
            and (cm.numero_de_grupo = gl.numero_de_grupo)
        where (cm.id_club = p_id_club)
            and (extract(month from cm.fecha_reunion) = p_mes)
            and (extract(year from cm.fecha_reunion) = p_anno)
            and (gl.categoria_edad = 'Nino')
            and (cm.realizada = 'SI');

        v_pct_nino := round(100 - ((v_faltas / v_esperados) * 100), 2);
    end if;

    -- armar resultado
    v_resultado :=
        'Adulto: ' || to_char(v_pct_adulto, '990.99') || '% | ' ||
        'Joven: '  || to_char(v_pct_joven,  '990.99') || '% | ' ||
        'Nino: '   || to_char(v_pct_nino,   '990.99') || '%';

    return v_resultado;

exception
    when others then
        return 'Error al procesar la participacion mensual.';
end sojg_pct_prom_participacion_mensual;
/

commit;

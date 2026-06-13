-- ==========================================
-- FASE 5: VISTAS 
-- ==========================================

-- Vista 1: informacion de pais con 
create or replace view sojg_v_prueba_conversion as
select
    id as pais_id,
    nombre as pais_nombre,
    moneda as moneda_local,
    continente,
    100 as monto_local_prueba,
    1.08 as tasa_cambio,
    sojg_conversion_monetaria(100, moneda, 1.08) as monto_en_usd
from
    sojg_pais;

commit;

-- Vista 2: Mostrar edad de miembros
CREATE OR REPLACE VIEW sojg_edades_miembros AS
SELECT id_miembro, nombre, sojg_edad_miembro(id_miembro) AS edad
FROM sojg_lector;

commit;

-- Vista 3: Mostrar antiguedad de miembro en club
CREATE OR REPLACE VIEW sojg_antiguedad_miembros_en_club AS
SELECT h.id_miembro, h.id_club, sojg_antiguedad_en_el_club_miembro(h.id_miembro, h.id_club) AS antiguedad
FROM sojg_historico_grupo_lectura h;

commit;

-- Vista 4: informacion basica del miembro 
create or replace view sojg_v_miembros as 
select 
    l.id_miembro,
    l.nombre || ' ' || nvl(l.segundo_nombre, '') || ' ' || l.apellido || ' ' || nvl(l.segundo_apellido, '') as nombre_completo,
    l.fecha_nacimiento,
    sojg_edad_miembro(l.id_miembro) as edad,
    l.idiomas,
    l.correo_electronico,
    l.documento_identidad,
    l.autorizacion_representante,
    t.codigo || '-' || t.numero as telefono,
    t.tipo as tipo_telefono,
    hm.id_club,
    hm.fecha_inicio_membresia as fecha_ingreso_club,
    hm.estatus
from sojg_lector l 
join sojg_historico_membresia hm 
    on (l.id_miembro = hm.id_miembro)
left join sojg_telefono t 
    on (l.id_miembro = t.id_miembro)
where (hm.estatus = 'Activa');

commit;

-- Vista 5: participacion de miembro(s) por bimestre y anno
create or replace view sojg_v_participacion as 
select 
    l.id_miembro,
    l.nombre || ' ' || l.apellido as nombre_completo,
    hm.id_club,
    annos.anno,
    bimestres.bimestre,
    bimestres.mes_inicio || ' - ' || bimestres.mes_fin as periodo,
    sojg_pct_participacion_bimestre_miembro(
        l.id_miembro,
        bimestres.bimestre,
        annos.anno
    ) as pct_participacion
from sojg_lector l 
join sojg_historico_membresia hm 
    on (l.id_miembro = hm.id_miembro)
-- genera todos los annos disponibles en el historico 
cross join (
    select distinct extract(year from fecha_inicio_membresia) as anno 
    from sojg_historico_membresia
) annos
-- genera los 6 bimestres del anno con su periodo legible
cross join (
    select 1 as bimestre, 'Enero' as mes_inicio, 'Febrero' as mes_fin from dual union all 
    select 2, 'Marzo', 'Abril' from dual union all 
    select 3, 'Mayo', 'Junio' from dual union all 
    select 4, 'Julio', 'Agosto' from dual union all 
    select 5, 'Septiembre', 'Octubre' from dual union all 
    select 6, 'Noviembre', 'Diciembre' from dual 
) bimestres where (hm.estatus = 'Activa');

commit;

-- Vista 6: preferencias de lectura por miembro ordenadas por preferencia
create or replace view sojg_v_preferencias as 
select 
    l.id_miembro,
    l.nombre || ' ' || l.apellido as nombre_completo,
    pl.orden_preferencia,
    li.isbn,
    li.titulo,
    li.tipo_narrativa,
    li.idioma 
from sojg_lector l 
join sojg_preferencia_lectura pl 
    on (l.id_miembro = pl.id_miembro)
join sojg_libro li 
    on (pl.isbn_libro = li.isbn)
order by l.id_miembro, pl.orden_preferencia;

commit;

-- Vista 7: representantes de miembros menores de edad muestra si el representante es otro lector del club o una persona externa
create or replace view sojg_v_representantes as 
select 
    l.id_miembro,
    l.nombre || ' ' || l.apellido as nombre_miembro,
    l.autorizacion_representante,
    -- tipo representante
    case 
        when (l.id_representante is not null) then 'Externo'
        when (l.id_representante_lector is not null) then 'Lector del club'
    end as tipo_representante,
    -- datos del representante externo 
    r.nombre || ' ' || r.apellido as nombre_representante_externo,
    r.documento_identidad as doc_representante_externo,
    -- datos del representante lector 
    lr.nombre || ' ' || lr.apellido as nombre_representante_lector,
    lr.correo_electronico as correo_representante_lector
from sojg_lector l 
-- join representante externo 
left join sojg_representante r 
    on (l.id_representante = r.id)
-- join representante lector 
left join sojg_lector lr 
    on (l.id_representante_lector = lr.id_miembro)
where (l.id_representante is not null) or (l.id_representante_lector is not null);

commit;

-- Vista 8: calendario detallado por club
create or replace view sojg_v_calendario_detallado as
select
    c.nombre as club_nombre,
    gl.numero_de_grupo as grupo_nro,
    gl.categoria_edad as categoria,
    l.titulo as libro_titulo,
    cm.fecha_reunion as fecha,
    gl.dia_reunion as dia_semana,
    gl.hora_inicio as hora,
    cm.realizada as ejecutada
from sojg_calendario_mes cm
join sojg_club c
    on (cm.id_club = c.id_club)
join sojg_grupo_de_lectura gl
    on (cm.id_club = gl.id_club)
    and (cm.numero_de_grupo = gl.numero_de_grupo)
join sojg_libro l
    on (cm.isbn_libro = l.isbn);

commit;

-- Vista 9: historico de libros analizados
create or replace view sojg_v_historico_lecturas as
select
    c.nombre as club_nombre,
    cm.fecha_reunion as fecha_evaluacion,
    l.titulo as libro_leido,
    cm.valoracion_final as nota_libro,
    cm.conclusiones as minuta_reunion
from sojg_calendario_mes cm
join sojg_club c
    on (cm.id_club = c.id_club)
join sojg_libro l
    on (cm.isbn_libro = l.isbn)
where (cm.realizada = 'SI');

commit;

-- Vista 10: moderadores por reunion
create or replace view sojg_v_moderadores_reunion as
select
    c.nombre as club_nombre,
    cm.fecha_reunion as fecha_reunion,
    l.titulo as libro_discutido,
    m.nombre || ' ' || m.apellido as nombre_moderador,
    m.correo_electronico as correo_moderador
from sojg_calendario_mes cm
join sojg_club c
    on (cm.id_club = c.id_club)
join sojg_libro l
    on (cm.isbn_libro = l.isbn)
join sojg_lector m
    on (cm.id_moderador = m.id_miembro);

commit;

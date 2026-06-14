-- Reporte 2: Ficha de un club
create or replace view sojg_v_reporte_ficha_club as 
select 
    c.id_club,
    c.nombre as nombre_club,
    c.direccion,
    c.codigo_postal,
    c.idioma_del_club,
    ci.nombre as ciudad,
    p.nombre as pais,
    case when (c.cuota_membresia = 'SI')
        then 'Independiente'
        else 'Dependiente'
    end as tipo_club,
    i.nombre as institucion,
    gl.categoria_edad as tipo_grupo,
    count(distinct hg.id_miembro) as miembros_activos,
    li.titulo as libro_analizado,
    cm.valoracion_final as valoracion
from sojg_club c
join sojg_ciudad ci on (c.id_ciudad = ci.id)
join sojg_pais p on (ci.id_pais = p.id)
left join sojg_institucion i on (c.id_institucion = i.id)
join sojg_grupo_de_lectura gl on (c.id_club = gl.id_club)
left join sojg_historico_grupo_lectura hg
    on (gl.id_club = hg.id_club)
    and (gl.numero_de_grupo = hg.numero_de_grupo)
    and (hg.fecha_fin is null)
left join sojg_calendario_mes cm on (gl.id_club = cm.id_club)
    and (gl.numero_de_grupo = cm.numero_de_grupo)
    and (cm.ultima_discusion = 'SI')
left join sojg_libro li on (cm.isbn_libro = li.isbn)
group by c.id_club, c.nombre, c.direccion, c.codigo_postal,
    c.idioma_del_club, ci.nombre, p.nombre, c.cuota_membresia,
    i.nombre, gl.categoria_edad, li.titulo, cm.valoracion_final
order by cm.valoracion_final desc nulls last;

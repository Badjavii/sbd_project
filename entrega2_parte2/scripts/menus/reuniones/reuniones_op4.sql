-- ==========================================
-- ARCHIVO: menu/reuniones_op4.sql
-- ==========================================

prompt ==========================================
prompt   Reuniones realizadas:
prompt ==========================================
select cm.id_club, cm.numero_de_grupo, cm.isbn_libro,
       to_char(cm.fecha_reunion, 'DD/MM/YYYY') as fecha,
       l.titulo as libro
from sojg_calendario_mes cm
join sojg_libro l on (cm.isbn_libro = l.isbn)
where (cm.realizada = 'SI')
order by cm.fecha_reunion desc;
prompt ==========================================
prompt   Miembros activos por grupo:
prompt ==========================================
select hg.id_club, hg.numero_de_grupo,
       l.id_miembro, l.nombre || ' ' || l.apellido as nombre
from sojg_historico_grupo_lectura hg
join sojg_lector l on (hg.id_miembro = l.id_miembro)
where (hg.fecha_fin is null)
order by hg.id_club, hg.numero_de_grupo, l.id_miembro;
prompt ==========================================

accept v_id_club    number prompt 'ID Club: '
accept v_num_grupo  number prompt 'Numero de grupo: '
accept v_isbn       number prompt 'ISBN Libro: '
accept v_fecha      char   prompt 'Fecha reunion (DD/MM/YYYY): '
accept v_id_miembro number prompt 'ID Miembro: '
 
begin
    sojg_sp_registrar_inasistencia(
        p_id_club      => &v_id_club,
        p_numero_grupo => &v_num_grupo,
        p_isbn_libro   => &v_isbn,
        p_fecha        => to_date('&v_fecha', 'DD/MM/YYYY'),
        p_id_miembro   => &v_id_miembro
    );
    dbms_output.put_line('Inasistencia registrada exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

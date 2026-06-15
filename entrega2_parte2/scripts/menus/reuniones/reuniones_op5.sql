-- ==========================================
-- ARCHIVO: menu/reuniones_op5.sql
-- ==========================================

prompt ==========================================
prompt   Discusiones en progreso:
prompt ==========================================
select cm.id_club, cm.numero_de_grupo, cm.isbn_libro,
       l.titulo as libro,
       count(*) as total_reuniones,
       sum(case when cm.realizada = 'SI' then 1 else 0 end) as realizadas
from sojg_calendario_mes cm
join sojg_libro l on (cm.isbn_libro = l.isbn)
group by cm.id_club, cm.numero_de_grupo, cm.isbn_libro, l.titulo
having sum(case when cm.realizada = 'SI' then 1 else 0 end) > 0
order by cm.id_club, cm.numero_de_grupo;
prompt ==========================================

accept v_id_club      number prompt 'ID Club: '
accept v_num_grupo    number prompt 'Numero de grupo: '
accept v_isbn         number prompt 'ISBN Libro: '
accept v_conclusiones char   prompt 'Conclusiones: '
accept v_valoracion   number prompt 'Valoracion (1-5): '
 
begin
    sojg_sp_cerrar_discusion(
        p_id_club      => &v_id_club,
        p_numero_grupo => &v_num_grupo,
        p_isbn_libro   => &v_isbn,
        p_conclusiones => '&v_conclusiones',
        p_valoracion   => &v_valoracion
    );
    dbms_output.put_line('Discusion cerrada exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

-- ==========================================
-- ARCHIVO: menu/reuniones_op3.sql
-- ==========================================

-- preview: reuniones pendientes de realizar
prompt ==========================================
prompt   Reuniones pendientes de realizar:
prompt ==========================================
select cm.id_club, cm.numero_de_grupo, cm.isbn_libro,
       to_char(cm.fecha_reunion, 'DD/MM/YYYY') as fecha,
       l.titulo as libro
from sojg_calendario_mes cm
join sojg_libro l on (cm.isbn_libro = l.isbn)
where (cm.realizada = 'NO')
order by cm.fecha_reunion;
prompt ==========================================

accept v_id_club   number prompt 'ID Club: '
accept v_num_grupo number prompt 'Numero de grupo: '
accept v_isbn      number prompt 'ISBN Libro: '
accept v_fecha     char   prompt 'Fecha reunion (DD/MM/YYYY): '
 
begin
    sojg_sp_realizar_reunion(
        p_id_club      => &v_id_club,
        p_numero_grupo => &v_num_grupo,
        p_isbn_libro   => &v_isbn,
        p_fecha        => to_date('&v_fecha', 'DD/MM/YYYY')
    );
    dbms_output.put_line('Reunion marcada como realizada.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

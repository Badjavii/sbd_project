-- ==========================================
-- ARCHIVO: menu/reuniones_op3.sql
-- ==========================================
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

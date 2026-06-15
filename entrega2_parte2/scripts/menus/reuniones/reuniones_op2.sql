-- ==========================================
-- ARCHIVO: menu/reuniones_op2.sql
-- ==========================================
accept v_id_club   number prompt 'ID Club: '
accept v_num_grupo number prompt 'Numero de grupo: '
accept v_isbn      number prompt 'ISBN Libro: '
accept v_id_mod    number prompt 'ID Moderador: '
 
begin
    sojg_sp_asignar_moderador(
        p_id_club      => &v_id_club,
        p_numero_grupo => &v_num_grupo,
        p_isbn_libro   => &v_isbn,
        p_id_moderador => &v_id_mod
    );
    dbms_output.put_line('Moderador asignado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

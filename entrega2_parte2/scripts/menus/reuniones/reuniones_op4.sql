-- ==========================================
-- ARCHIVO: menu/reuniones_op4.sql
-- ==========================================
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

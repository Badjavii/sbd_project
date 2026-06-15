-- ==========================================
-- ARCHIVO: menu/reuniones_op1.sql
-- ==========================================
accept v_id_club   number prompt 'ID Club: '
accept v_num_grupo number prompt 'Numero de grupo: '
accept v_isbn      number prompt 'ISBN Libro: '
accept v_id_mod    number prompt 'ID Moderador: '
accept v_mes       number prompt 'Mes (1-12): '
accept v_anno      number prompt 'Anno (YYYY): '
 
begin
    sojg_sp_generar_calendario(
        p_id_club      => &v_id_club,
        p_numero_grupo => &v_num_grupo,
        p_isbn_libro   => &v_isbn,
        p_id_moderador => &v_id_mod,
        p_mes          => &v_mes,
        p_anno         => &v_anno
    );
    dbms_output.put_line('Calendario generado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

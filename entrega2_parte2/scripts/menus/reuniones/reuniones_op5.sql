-- ==========================================
-- ARCHIVO: menu/reuniones_op5.sql
-- ==========================================
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

-- ==========================================
-- ARCHIVO: menu/obras_op2.sql
-- ==========================================
accept v_id_obra    number prompt 'ID Obra: '
accept v_id_miembro number prompt 'ID Miembro: '
 
begin
    sojg_sp_agregar_elenco(
        p_id_obra    => &v_id_obra,
        p_id_miembro => &v_id_miembro
    );
    dbms_output.put_line('Miembro agregado al elenco exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

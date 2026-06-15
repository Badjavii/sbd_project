-- ==========================================
-- ARCHIVO: menu/obras_op4.sql
-- ==========================================
accept v_id_obra    number prompt 'ID Obra: '
accept v_id_miembro number prompt 'ID Miembro: '
accept v_fecha      char   prompt 'Fecha presentacion (DD/MM/YYYY): '
accept v_votos      number prompt 'Votos: '
 
begin
    sojg_sp_registrar_mejor_actor(
        p_id_obra            => &v_id_obra,
        p_id_miembro         => &v_id_miembro,
        p_fecha_presentacion => to_date('&v_fecha', 'DD/MM/YYYY'),
        p_votos              => &v_votos
    );
    dbms_output.put_line('Mejor actor registrado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

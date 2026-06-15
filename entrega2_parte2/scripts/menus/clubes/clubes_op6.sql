-- ==========================================
-- ARCHIVO: menu/clubes_op6.sql
-- ==========================================
accept v_id_miembro number prompt 'ID Miembro: '
accept v_id_club    number prompt 'ID Club: '
accept v_monto      number prompt 'Monto: '
accept v_fecha      char   prompt 'Fecha pago (DD/MM/YYYY): '
 
begin
    sojg_sp_registrar_pago(
        p_id_miembro => &v_id_miembro,
        p_id_club    => &v_id_club,
        p_monto      => &v_monto,
        p_fecha      => to_date('&v_fecha', 'DD/MM/YYYY')
    );
    dbms_output.put_line('Pago registrado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

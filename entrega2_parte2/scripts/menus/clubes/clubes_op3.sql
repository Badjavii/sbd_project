-- ==========================================
-- ARCHIVO: menu/clubes_op3.sql
-- ==========================================
accept v_id_miembro  number prompt 'ID Miembro: '
accept v_club_actual number prompt 'ID Club actual: '
accept v_fecha_ret   char   prompt 'Fecha retiro (DD/MM/YYYY): '
accept v_club_nuevo  number prompt 'ID Club nuevo: '
accept v_fecha_ing   char   prompt 'Fecha ingreso nuevo club (DD/MM/YYYY): '
 
begin
    sojg_sp_retirar_miembro(
        p_id_miembro => &v_id_miembro,
        p_id_club    => &v_club_actual,
        p_fecha      => to_date('&v_fecha_ret', 'DD/MM/YYYY'),
        p_motivo     => 'Voluntario'
    );
    sojg_sp_inscribir_miembro(
        p_id_miembro => &v_id_miembro,
        p_id_club    => &v_club_nuevo,
        p_fecha      => to_date('&v_fecha_ing', 'DD/MM/YYYY')
    );
    dbms_output.put_line('Miembro reasignado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

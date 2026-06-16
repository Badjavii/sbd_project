-- ==========================================
-- ARCHIVO: menu/clubes_op6.sql
-- ==========================================

prompt ==========================================
prompt   Miembros morosos:
prompt ==========================================
select l.id_miembro, l.nombre || ' ' || l.apellido as nombre,
       hm.id_club, c.nombre as club
from sojg_lector l
join sojg_historico_membresia hm on (l.id_miembro = hm.id_miembro)
join sojg_club c on (hm.id_club = c.id_club)
where (hm.estatus = 'Morosa')
order by l.id_miembro;
prompt ==========================================

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

prompt ==========================================
prompt   Presione Enter para continuar...
pause

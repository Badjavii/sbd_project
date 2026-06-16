-- ==========================================
-- ARCHIVO: menu/clubes_op4.sql
-- ==========================================

prompt ==========================================
prompt   Miembros activos:
prompt ==========================================
select l.id_miembro, l.nombre || ' ' || l.apellido as nombre, hm.id_club
from sojg_lector l
join sojg_historico_membresia hm on (l.id_miembro = hm.id_miembro)
where (hm.estatus = 'Activa')
order by l.id_miembro;
prompt ==========================================

accept v_id_miembro number prompt 'ID Miembro: '
accept v_id_club    number prompt 'ID Club: '
accept v_fecha      char   prompt 'Fecha retiro (DD/MM/YYYY): '
accept v_motivo     char   prompt 'Motivo (Voluntario/Inasistencia/Deudas/Otro): '
 
begin
    sojg_sp_retirar_miembro(
        p_id_miembro => &v_id_miembro,
        p_id_club    => &v_id_club,
        p_fecha      => to_date('&v_fecha', 'DD/MM/YYYY'),
        p_motivo     => '&v_motivo'
    );
    dbms_output.put_line('Miembro retirado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

prompt ==========================================
prompt   Presione Enter para continuar...
pause

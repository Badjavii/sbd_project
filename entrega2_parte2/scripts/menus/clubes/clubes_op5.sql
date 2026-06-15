-- ==========================================
-- ARCHIVO: menu/clubes_op5.sql
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
accept v_motivo     char   prompt 'Motivo (Voluntario/Inasistencia/Deudas/Otro): '
 
begin
    sojg_sp_expulsar_miembro(
        p_id_miembro => &v_id_miembro,
        p_id_club    => &v_id_club,
        p_motivo     => '&v_motivo'
    );
    dbms_output.put_line('Miembro expulsado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

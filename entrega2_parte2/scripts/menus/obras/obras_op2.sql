-- ==========================================
-- ARCHIVO: menu/obras_op2.sql
-- ==========================================

prompt ==========================================
prompt   Obras activas:
prompt ==========================================
select id_obra, titulo_de_obra, id_club from sojg_obra
where (activa = 'SI') order by id_obra;
prompt ==========================================
prompt   Miembros activos:
prompt ==========================================
select l.id_miembro, l.nombre || ' ' || l.apellido as nombre, hm.id_club
from sojg_lector l
join sojg_historico_membresia hm on (l.id_miembro = hm.id_miembro)
where (hm.estatus = 'Activa')
order by hm.id_club, l.id_miembro;
prompt ==========================================

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

prompt ==========================================
prompt   Presione Enter para continuar...
pause

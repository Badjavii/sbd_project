-- ==========================================
-- ARCHIVO: menu/obras_op4.sql
-- ==========================================

prompt ==========================================
prompt   Presentaciones realizadas:
prompt ==========================================
select p.id_obra, o.titulo_de_obra,
       to_char(p.fecha, 'DD/MM/YYYY') as fecha,
       p.cantidad_asistentes
from sojg_presentacion_de_la_obra p
join sojg_obra o on (p.id_obra = o.id_obra)
order by p.fecha desc;
prompt ==========================================
prompt   Elenco por obra:
prompt ==========================================
select e.id_obra, o.titulo_de_obra,
       e.id_miembro, l.nombre || ' ' || l.apellido as nombre
from sojg_elenco e
join sojg_obra o on (e.id_obra = o.id_obra)
join sojg_lector l on (e.id_miembro = l.id_miembro)
order by e.id_obra, e.id_miembro;
prompt ==========================================

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

prompt ==========================================
prompt   Presione Enter para continuar...
pause

-- ==========================================
-- ARCHIVO: menu/clubes/clubes_op9.sql
-- ==========================================

-- paso 1: mostrar clubes independientes disponibles
prompt ==========================================
prompt   Clubes independientes (cobran cuota):
prompt ==========================================
col id_club format 999
col nombre  format a40
select id_club, nombre from sojg_club
where (cuota_membresia = 'SI')
order by id_club;
prompt ==========================================
accept v_id_club number prompt 'ID Club: '

-- paso 2: actualizar morosos antes de mostrar
begin
    sojg_sp_actualizar_morosos(&v_id_club);
exception
    when others then dbms_output.put_line('Error actualizando morosos: ' || sqlerrm);
end;
/

-- paso 3: mostrar miembros morosos del club
prompt ==========================================
prompt   Miembros con deudas pendientes:
prompt ==========================================
col id_miembro format 999
col nombre     format a35
col antiguedad format 99.99
col pagos      format 999
select
    l.id_miembro,
    l.nombre || ' ' || l.apellido as nombre,
    trunc(months_between(sysdate, hm.fecha_inicio_membresia) / 12, 2) as antiguedad,
    (select count(*) from sojg_pago_membresia pm
     where pm.id_miembro = l.id_miembro and pm.id_club = &v_id_club) as pagos,
    trunc(months_between(sysdate, hm.fecha_inicio_membresia) / 12) -
    (select count(*) from sojg_pago_membresia pm
     where pm.id_miembro = l.id_miembro and pm.id_club = &v_id_club) as pagos_pendientes
from sojg_lector l
join sojg_historico_membresia hm
    on (l.id_miembro = hm.id_miembro)
where (hm.id_club = &v_id_club)
    and (hm.estatus = 'Morosa')
    and (hm.fecha_fin is null)
order by pagos_pendientes desc;
prompt ==========================================

-- paso 4: registrar el pago
accept v_id_miembro number prompt 'ID Miembro a pagar: '
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

-- paso 5: re-actualizar morosos luego del pago
-- por si el pago recien registrado saldo la deuda
begin
    sojg_sp_actualizar_morosos(&v_id_club);
    dbms_output.put_line('Estado de membresías actualizado.');
exception
    when others then dbms_output.put_line('Error actualizando morosos: ' || sqlerrm);
end;
/

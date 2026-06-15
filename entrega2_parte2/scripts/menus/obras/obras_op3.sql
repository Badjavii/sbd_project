-- ==========================================
-- ARCHIVO: menu/obras_op3.sql
-- ==========================================

prompt ==========================================
prompt   Obras activas:
prompt ==========================================
select id_obra, titulo_de_obra, id_club, costo_entrada
from sojg_obra where (activa = 'SI') order by id_obra;
prompt ==========================================

accept v_id_obra    number prompt 'ID Obra: '
accept v_fecha      char   prompt 'Fecha presentacion (DD/MM/YYYY): '
accept v_valoracion number prompt 'Valoracion (1-5): '
accept v_asistentes number prompt 'Cantidad de asistentes: '
 
begin
    sojg_sp_registrar_presentacion(
        p_id_obra             => &v_id_obra,
        p_fecha               => to_date('&v_fecha', 'DD/MM/YYYY'),
        p_valoracion          => &v_valoracion,
        p_cantidad_asistentes => &v_asistentes
    );
    dbms_output.put_line('Presentacion registrada exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

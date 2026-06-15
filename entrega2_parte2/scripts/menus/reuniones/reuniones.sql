-- ==========================================
-- ARCHIVO: menu/reuniones/reuniones.sql
-- ==========================================
set serveroutput on
set verify off
set feedback off
set echo off
 
clear screen
prompt ==========================================
prompt     2. ADMINISTRACION DE REUNIONES
prompt ==========================================
prompt   1. Generar calendario mensual
prompt   2. Asignar moderador
prompt   3. Marcar reunion como realizada
prompt   4. Registrar inasistencia
prompt   5. Cerrar discusion de un libro
prompt   0. Volver al menu principal
prompt ==========================================
accept v_opcion number prompt 'Seleccione una opcion: '
 
set termout off
column run_op new_value run_op noprint
select case &v_opcion
    when 1 then '&base_path/reuniones/reuniones_op1.sql'
    when 2 then '&base_path/reuniones/reuniones_op2.sql'
    when 3 then '&base_path/reuniones/reuniones_op3.sql'
    when 4 then '&base_path/reuniones/reuniones_op4.sql'
    when 5 then '&base_path/reuniones/reuniones_op5.sql'
    else '&base_path/noop.sql'
end as run_op from dual;
set termout on
 
@&run_op
 
column next_script new_value next_script noprint
select case when &v_opcion = 0 then '&base_path/main.sql' else '&base_path/reuniones/reuniones.sql' end as next_script from dual;
@&next_script

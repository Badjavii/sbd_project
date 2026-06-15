-- ==========================================
-- ARCHIVO: menu/obras/obras.sql
-- ==========================================
set serveroutput on
set verify off
set feedback off
set echo off
 
clear screen
prompt ==========================================
prompt       3. OBRAS Y PRESENTACIONES
prompt ==========================================
prompt   1. Registrar obra
prompt   2. Agregar miembro al elenco
prompt   3. Registrar presentacion
prompt   4. Registrar mejor actor
prompt   0. Volver al menu principal
prompt ==========================================
accept v_opcion number prompt 'Seleccione una opcion: '
 
set termout off
column run_op new_value run_op noprint
select case &v_opcion
    when 1 then '&base_path/obras/obras_op1.sql'
    when 2 then '&base_path/obras/obras_op2.sql'
    when 3 then '&base_path/obras/obras_op3.sql'
    when 4 then '&base_path/obras/obras_op4.sql'
    else '&base_path/noop.sql'
end as run_op from dual;
set termout on
 
@&run_op
 
column next_script new_value next_script noprint
select case when &v_opcion = 0 then '&base_path/main.sql' else '&base_path/obras/obras.sql' end as next_script from dual;
@&next_script

-- ==========================================
-- ARCHIVO: menu/reportes/reportes.sql
-- ==========================================
set serveroutput on
set verify off
set feedback off
set echo off
 
clear screen
prompt ==========================================
prompt             4. REPORTES
prompt ==========================================
prompt   1. Ficha de un miembro
prompt   2. Ficha de un club
prompt   3. Ficha de un libro
prompt   4. Medidas financieras por club
prompt   5. Participacion bimestral de un miembro
prompt   0. Volver al menu principal
prompt ==========================================
accept v_opcion number prompt 'Seleccione una opcion: '
 
set termout off
column run_op new_value run_op noprint
select case &v_opcion
    when 1 then '&base_path/reportes/reportes_op1.sql'
    when 2 then '&base_path/reportes/reportes_op2.sql'
    when 3 then '&base_path/reportes/reportes_op3.sql'
    when 4 then '&base_path/reportes/reportes_op4.sql'
    when 5 then '&base_path/reportes/reportes_op5.sql'
    else '&base_path/noop.sql'
end as run_op from dual;
set termout on
 
@&run_op
 
column next_script new_value next_script noprint
select case when &v_opcion = 0 then '&base_path/main.sql' else '&base_path/reportes/reportes.sql' end as next_script from dual;
@&next_script

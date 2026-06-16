-- ==========================================
-- ARCHIVO: menu/clubes/clubes.sql
-- ==========================================
set serveroutput on
set verify off
set feedback off
set echo off

undefine v_opcion
clear screen
prompt ==========================================
prompt       1. ADMINISTRACION DE CLUBES
prompt ==========================================
prompt   1. Registrar club
prompt   2. Inscribir miembro nuevo
prompt   3. Reasignar miembro a otro club
prompt   4. Retirar miembro
prompt   5. Expulsar miembro
prompt   6. Registrar pago de membresia
prompt   7. Asociar clubes
prompt   8. Split de grupo
prompt   9. Gestionar pago de membresia
prompt  10. Validar expulsiones por inasistencia
prompt   0. Volver al menu principal
prompt ==========================================
accept v_opcion number prompt 'Seleccione una opcion: '
 
set termout off
column run_op new_value run_op noprint
select case &v_opcion
    when 1 then '&base_path/clubes/clubes_op1.sql'
    when 2 then '&base_path/clubes/clubes_op2.sql'
    when 3 then '&base_path/clubes/clubes_op3.sql'
    when 4 then '&base_path/clubes/clubes_op4.sql'
    when 5 then '&base_path/clubes/clubes_op5.sql'
    when 6 then '&base_path/clubes/clubes_op6.sql'
    when 7 then '&base_path/clubes/clubes_op7.sql'
    when 8 then '&base_path/clubes/clubes_op8.sql'
    when 9 then '&base_path/clubes/clubes_op9.sql'
    when 10 then '&base_path/clubes/clubes_op10.sql'
    else '&base_path/noop.sql'
end as run_op from dual;
set termout on
 
@&run_op
 
column next_script new_value next_script noprint
select case when &v_opcion = 0 then '&base_path/main.sql' else '&base_path/clubes/clubes.sql' end as next_script from dual;
@&next_script

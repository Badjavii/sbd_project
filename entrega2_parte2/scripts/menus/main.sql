-- ==========================================
-- ARCHIVO: menu/main.sql
-- ==========================================
define base_path = 'C:\ruta_repositorio\entrega2_parte2\scripts\menus'

set serveroutput on
set verify off
set feedback off
set echo off
 
clear screen
prompt ==========================================
prompt       SISTEMA DE CLUBES DE LECTURA
prompt ==========================================
prompt   1. Administracion de Clubes
prompt   2. Administracion de Reuniones
prompt   3. Obras y Presentaciones
prompt   4. Reportes
prompt   0. Salir
prompt ==========================================
accept v_menu number prompt 'Seleccione una opcion: '
 
column next_script new_value next_script noprint
select case &v_menu
    when 1 then '&base_path/clubes/clubes.sql'
    when 2 then '&base_path/reuniones/reuniones.sql'
    when 3 then '&base_path/obras/obras.sql'
    when 4 then '&base_path/reportes/reportes.sql'
    when 0 then '&base_path/salir.sql'
    else '&base_path/main.sql'
end as next_script from dual;
 
@&next_script

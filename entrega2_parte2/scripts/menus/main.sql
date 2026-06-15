-- ==========================================
-- ARCHIVO: menu/main.sql
-- ==========================================
define base_path = '/home/badjavii/Repositories/sbd_project/entrega2_parte2/scripts/menus'

set serveroutput on
set verify off
set feedback off
set echo off
set linesize 200
set pagesize 50
set colsep ' | '

-- formatos de columnas globales
col id_miembro    format 999
col id_club       format 999
col id_obra       format 999
col isbn          format 999999
col isbn_libro    format 999999
col numero_de_grupo format 999
col nombre        format a30
col titulo        format a40
col ciudad        format a20
col pais          format a20
col idioma        format a15
col categoria     format a10
col estatus       format a10
col fecha         format a12
col club          format a30 


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

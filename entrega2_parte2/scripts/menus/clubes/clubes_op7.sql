-- ==========================================
-- ARCHIVO: menu/clubes_op7.sql
-- ==========================================

prompt ==========================================
prompt   Clubes disponibles:
prompt ==========================================
select id_club, nombre, idioma_del_club from sojg_club order by id_club;
prompt ==========================================

accept v_id_club_1 number prompt 'ID Club 1: '
accept v_id_club_2 number prompt 'ID Club 2: '
accept v_fecha     char   prompt 'Fecha asociacion (DD/MM/YYYY): '
 
begin
    sojg_sp_asociar_clubes(
        p_id_club_1 => &v_id_club_1,
        p_id_club_2 => &v_id_club_2,
        p_fecha     => to_date('&v_fecha', 'DD/MM/YYYY')
    );
    dbms_output.put_line('Clubes asociados exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

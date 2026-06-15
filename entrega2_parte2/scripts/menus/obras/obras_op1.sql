-- ==========================================
-- ARCHIVO: menu/obras_op1.sql
-- ==========================================

prompt ==========================================
prompt   Clubes disponibles:
prompt ==========================================
select id_club, nombre, idioma_del_club from sojg_club order by id_club;
prompt ==========================================

accept v_titulo  char   prompt 'Titulo de la obra: '
accept v_activa  char   prompt 'Activa (SI/NO): '
accept v_desc    char   prompt 'Descripcion: '
accept v_costo   number prompt 'Costo de entrada: '
accept v_id_club number prompt 'ID Club: '
 
begin
    sojg_sp_registrar_obra(
        p_titulo      => '&v_titulo',
        p_activa      => '&v_activa',
        p_descripcion => '&v_desc',
        p_costo       => &v_costo,
        p_id_club     => &v_id_club
    );
    dbms_output.put_line('Obra registrada exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

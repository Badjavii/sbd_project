-- ==========================================
-- ARCHIVO: menu/clubes_op8.sql
-- ==========================================
accept v_id_club   number prompt 'ID Club: '
accept v_num_grupo number prompt 'Numero de grupo: '
 
begin
    sojg_sp_split_grupo(
        p_id_club           => &v_id_club,
        p_numero_grupo_orig => &v_num_grupo
    );
    dbms_output.put_line('Split ejecutado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

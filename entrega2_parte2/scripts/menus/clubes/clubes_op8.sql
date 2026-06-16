-- ==========================================
-- ARCHIVO: menu/clubes_op8.sql
-- ==========================================

prompt ==========================================
prompt   Grupos con cantidad de miembros activos:
prompt ==========================================
select gl.id_club, gl.numero_de_grupo, gl.categoria_edad,
       count(hg.id_miembro) as total_miembros
from sojg_grupo_de_lectura gl
left join sojg_historico_grupo_lectura hg
    on (gl.id_club = hg.id_club)
    and (gl.numero_de_grupo = hg.numero_de_grupo)
    and (hg.fecha_fin is null)
group by gl.id_club, gl.numero_de_grupo, gl.categoria_edad
order by gl.id_club, gl.numero_de_grupo;
prompt ==========================================

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

prompt ==========================================
prompt   Presione Enter para continuar...
pause

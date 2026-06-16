-- ==========================================
-- ARCHIVO: menu/clubes/clubes_op11.sql
-- ==========================================

-- mostrar clubes disponibles
prompt ==========================================
prompt   Clubes disponibles:
prompt ==========================================
col id_club format 999
col nombre  format a40
select id_club, nombre from sojg_club order by id_club;
prompt ==========================================
accept v_id_club number prompt 'ID Club a revisar: '

-- mostrar asistencia de miembros activos
prompt ==========================================
prompt   Asistencia de miembros activos:
prompt ==========================================
col id_miembro    format 999
col nombre        format a30
col reuniones     format 999
col inasistencias format 999
col pct_faltas    format 999.99
select
    l.id_miembro,
    l.nombre || ' ' || l.apellido as nombre,
    (select count(*)
     from sojg_calendario_mes cm
     join sojg_historico_grupo_lectura hg
         on (cm.id_club = hg.id_club) and (cm.numero_de_grupo = hg.numero_de_grupo)
     where (hg.id_miembro = l.id_miembro) and (hg.id_club = &v_id_club)
         and (hg.fecha_fin is null) and (cm.realizada = 'SI')
         and (cm.fecha_reunion >= hg.fecha_inicio)) as reuniones,
    (select count(*)
     from sojg_inasistencia i
     join sojg_historico_grupo_lectura hg
         on (i.id_club = hg.id_club) and (i.numero_de_grupo = hg.numero_de_grupo)
     where (i.id_miembro = l.id_miembro) and (hg.id_club = &v_id_club)
         and (hg.fecha_fin is null) and (i.fecha_reunion >= hg.fecha_inicio)) as inasistencias,
    round(
        (select count(*)
         from sojg_inasistencia i
         join sojg_historico_grupo_lectura hg
             on (i.id_club = hg.id_club) and (i.numero_de_grupo = hg.numero_de_grupo)
         where (i.id_miembro = l.id_miembro) and (hg.id_club = &v_id_club)
             and (hg.fecha_fin is null) and (i.fecha_reunion >= hg.fecha_inicio))
        /
        nullif(
            (select count(*)
             from sojg_calendario_mes cm
             join sojg_historico_grupo_lectura hg
                 on (cm.id_club = hg.id_club) and (cm.numero_de_grupo = hg.numero_de_grupo)
             where (hg.id_miembro = l.id_miembro) and (hg.id_club = &v_id_club)
                 and (hg.fecha_fin is null) and (cm.realizada = 'SI')
                 and (cm.fecha_reunion >= hg.fecha_inicio)), 0)
        * 100, 2
    ) as pct_faltas
from sojg_lector l
join sojg_historico_membresia hm on (l.id_miembro = hm.id_miembro)
where (hm.id_club = &v_id_club) and (hm.estatus = 'Activa')
order by pct_faltas desc nulls last;
prompt ==========================================
prompt   Aplicando validaciones de expulsion...
prompt ==========================================

declare
    cursor c_miembros is
        select distinct hg.id_miembro
        from sojg_historico_grupo_lectura hg
        join sojg_historico_membresia hm
            on (hg.id_miembro = hm.id_miembro)
            and (hg.id_club = hm.id_club)
        where (hg.id_club = &v_id_club)
            and (hg.fecha_fin is null)
            and (hm.estatus = 'Activa');
begin
    for r in c_miembros loop
        sojg_sp_validar_expulsiones(&v_id_club, r.id_miembro);
    end loop;
    dbms_output.put_line('Validacion completada.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

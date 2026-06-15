-- ==========================================
-- ARCHIVO: menu/reuniones_op1.sql
-- ==========================================

prompt ==========================================
prompt   Grupos disponibles sin discusion activa:
prompt ==========================================
select gl.id_club, gl.numero_de_grupo, gl.categoria_edad,
       gl.dia_reunion, gl.hora_inicio
from sojg_grupo_de_lectura gl
where not exists (
    select 1 from sojg_calendario_mes cm
    where (cm.id_club = gl.id_club)
        and (cm.numero_de_grupo = gl.numero_de_grupo)
        and (cm.realizada = 'NO')
)
order by gl.id_club, gl.numero_de_grupo;
prompt ==========================================
prompt   Libros disponibles:
prompt ==========================================
select isbn, titulo, idioma from sojg_libro order by titulo;
prompt ==========================================
prompt   Moderadores disponibles:
prompt ==========================================
select l.id_miembro, l.nombre || ' ' || l.apellido as nombre, hm.id_club
from sojg_lector l
join sojg_historico_membresia hm on (l.id_miembro = hm.id_miembro)
where (hm.estatus = 'Activa')
order by hm.id_club, l.id_miembro;
prompt ==========================================

accept v_id_club   number prompt 'ID Club: '
accept v_num_grupo number prompt 'Numero de grupo: '
accept v_isbn      number prompt 'ISBN Libro: '
accept v_id_mod    number prompt 'ID Moderador: '
accept v_mes       number prompt 'Mes (1-12): '
accept v_anno      number prompt 'Anno (YYYY): '
 
begin
    sojg_sp_generar_calendario(
        p_id_club      => &v_id_club,
        p_numero_grupo => &v_num_grupo,
        p_isbn_libro   => &v_isbn,
        p_id_moderador => &v_id_mod,
        p_mes          => &v_mes,
        p_anno         => &v_anno
    );
    dbms_output.put_line('Calendario generado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

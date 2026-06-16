-- ==========================================
-- ARCHIVO: menu/reuniones_op1.sql
-- ==========================================

-- preview
prompt ==========================================
prompt   Grupos disponibles:
prompt ==========================================
col id_club       format 999
col numero_de_grupo format 999
col categoria_edad format a10
col dia_reunion   format a12
select gl.id_club, gl.numero_de_grupo, gl.categoria_edad, gl.dia_reunion
from sojg_grupo_de_lectura gl
order by gl.id_club, gl.numero_de_grupo;
prompt ==========================================
prompt   Libros disponibles:
prompt ==========================================
col isbn   format 999999
col titulo format a40
select isbn, titulo from sojg_libro order by titulo;
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
    sojg_sp_generar_calendario_mensual(
        p_id_club      => &v_id_club,
        p_numero_grupo => &v_num_grupo,
        p_isbn_libro   => &v_isbn,
        p_id_moderador => &v_id_mod,
        p_mes          => &v_mes,
        p_anno         => &v_anno
    );
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

prompt ==========================================
prompt   Presione Enter para continuar...
pause

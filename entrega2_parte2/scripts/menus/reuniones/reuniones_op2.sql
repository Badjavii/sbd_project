-- ==========================================
-- ARCHIVO: menu/reuniones_op2.sql
-- ==========================================

prompt ==========================================
prompt   Reuniones sin moderador o para reasignar:
prompt ==========================================
select cm.id_club, cm.numero_de_grupo, cm.isbn_libro,
       to_char(cm.fecha_reunion, 'DD/MM/YYYY') as fecha,
       l.titulo as libro, cm.id_moderador
from sojg_calendario_mes cm
join sojg_libro l on (cm.isbn_libro = l.isbn)
where (cm.realizada = 'NO')
order by cm.fecha_reunion;
prompt ==========================================
prompt   Miembros disponibles como moderadores:
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
 
begin
    sojg_sp_asignar_moderador(
        p_id_club      => &v_id_club,
        p_numero_grupo => &v_num_grupo,
        p_isbn_libro   => &v_isbn,
        p_id_moderador => &v_id_mod
    );
    dbms_output.put_line('Moderador asignado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

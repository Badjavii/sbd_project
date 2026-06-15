-- ==========================================
-- ARCHIVO: menu/clubes_op2.sql
-- ==========================================
accept v_nombre   char   prompt 'Nombre: '
accept v_apellido char   prompt 'Apellido: '
accept v_fecha    char   prompt 'Fecha nacimiento (DD/MM/YYYY): '
accept v_idiomas  char   prompt 'Idiomas: '
accept v_correo   char   prompt 'Correo electronico: '
accept v_doc      char   prompt 'Documento de identidad: '
accept v_isbn1    number prompt 'ISBN libro preferido 1: '
accept v_isbn2    number prompt 'ISBN libro preferido 2: '
accept v_isbn3    number prompt 'ISBN libro preferido 3: '
accept v_id_club  number prompt 'ID Club: '
accept v_fing     char   prompt 'Fecha ingreso (DD/MM/YYYY): '
 
begin
    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('&v_nombre', '&v_apellido', to_date('&v_fecha', 'DD/MM/YYYY'), '&v_idiomas', '&v_correo', '&v_doc');
    insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia)
        values (sojg_seq_lector.currval, &v_isbn1, 1);
    insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia)
        values (sojg_seq_lector.currval, &v_isbn2, 2);
    insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia)
        values (sojg_seq_lector.currval, &v_isbn3, 3);
    sojg_sp_inscribir_miembro(
        p_id_miembro => sojg_seq_lector.currval,
        p_id_club    => &v_id_club,
        p_fecha      => to_date('&v_fing', 'DD/MM/YYYY')
    );
    dbms_output.put_line('Miembro inscrito con ID: ' || sojg_seq_lector.currval);
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

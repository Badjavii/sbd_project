-- ==========================================
-- ARCHIVO: menu/clubes_op1.sql
-- ==========================================
accept v_nombre    char   prompt 'Nombre del club: '
accept v_direccion char   prompt 'Direccion: '
accept v_cp        char   prompt 'Codigo postal: '
accept v_idioma    char   prompt 'Idioma: '
accept v_id_ciudad number prompt 'ID Ciudad: '
accept v_cuota     char   prompt 'Cobra cuota (SI/NO): '
accept v_id_inst   number prompt 'ID Institucion (0 si no aplica): '
 
begin
    sojg_sp_registrar_club(
        p_nombre         => '&v_nombre',
        p_direccion      => '&v_direccion',
        p_cp             => '&v_cp',
        p_idioma         => '&v_idioma',
        p_id_ciudad      => &v_id_ciudad,
        p_cuota          => '&v_cuota',
        p_id_institucion => nullif(&v_id_inst, 0)
    );
    dbms_output.put_line('Club registrado exitosamente.');
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

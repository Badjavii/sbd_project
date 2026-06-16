-- ==========================================
-- ARCHIVO: menu/clubes/clubes_op2.sql
-- ==========================================

-- preview libros
prompt ==========================================
prompt   Libros disponibles para preferencias:
prompt ==========================================
col isbn   format 999999
col titulo format a40
col idioma format a15
select isbn, titulo, idioma from sojg_libro order by titulo;
prompt ==========================================
prompt   Clubes disponibles:
prompt ==========================================
col id_club format 999
col nombre  format a40
select id_club, nombre, idioma_del_club from sojg_club order by id_club;
prompt ==========================================

accept v_nombre         char   prompt 'Nombre: '
accept v_segundo_nombre char   prompt 'Segundo nombre (Enter para omitir): '
accept v_apellido       char   prompt 'Apellido: '
accept v_segundo_ap     char   prompt 'Segundo apellido (Enter para omitir): '
accept v_fecha          char   prompt 'Fecha nacimiento (DD/MM/YYYY): '
accept v_idiomas        char   prompt 'Idiomas: '
accept v_correo         char   prompt 'Correo electronico: '
accept v_doc            char   prompt 'Documento de identidad: '

-- calcular edad y si es menor
set termout off
column v_edad_calc new_value v_edad_calc noprint
column es_menor    new_value es_menor    noprint
column es_muy_nino new_value es_muy_nino noprint
select
    trunc(months_between(sysdate, to_date('&v_fecha', 'DD/MM/YYYY')) / 12) as v_edad_calc,
    case when months_between(sysdate, to_date('&v_fecha', 'DD/MM/YYYY')) / 12 < 6
        then 'SI' else 'NO' end as es_muy_nino,
    case when months_between(sysdate, to_date('&v_fecha', 'DD/MM/YYYY')) / 12 < 18
        then 'SI' else 'NO' end as es_menor
from dual;
set termout on

-- validar edad minima
begin
    if ('&es_muy_nino' = 'SI') then
        raise_application_error(-20043, 'El miembro tiene menos de 6 anos. No puede inscribirse.');
    end if;
    dbms_output.put_line('Edad calculada: ' || &v_edad_calc || ' anos.');
    if ('&es_menor' = 'SI') then
        dbms_output.put_line('Menor de edad detectado. Se requerira representante.');
    end if;
end;
/

-- preview representante externo si es menor
set termout off
column show_ext new_value show_ext noprint
select case when '&es_menor' = 'SI'
    then '&base_path/clubes/clubes_op2_rep_externo.sql'
    else '&base_path/noop.sql'
end as show_ext from dual;
set termout on
@&show_ext

-- preview representante lector si es menor
set termout off
column show_lect new_value show_lect noprint
select case when '&es_menor' = 'SI'
    then '&base_path/clubes/clubes_op2_rep_lector.sql'
    else '&base_path/noop.sql'
end as show_lect from dual;
set termout on
@&show_lect

accept v_tipo_rep      char   prompt 'Tipo representante (LECTOR/EXTERNO/NA): '
accept v_id_rep_lector number prompt 'ID Representante lector (0 si no aplica): '
accept v_id_rep_ext    number prompt 'ID Representante externo (0 si no aplica): '
accept v_autorizacion  char   prompt 'Autorizacion del representante (SI/NO/NA): '

accept v_isbn1   number prompt 'ISBN libro preferido 1: '
accept v_isbn2   number prompt 'ISBN libro preferido 2: '
accept v_isbn3   number prompt 'ISBN libro preferido 3: '
accept v_id_club number prompt 'ID Club: '
accept v_fing    char   prompt 'Fecha ingreso (DD/MM/YYYY): '

begin
    declare
        v_autorizacion_rep char(2)       := null;
        v_id_rep_ext_val   number        := null;
        v_id_rep_lect_val  number        := null;
        v_segundo_nom      varchar2(100) := nullif(trim('&v_segundo_nombre'), '');
        v_segundo_ap_val   varchar2(100) := nullif(trim('&v_segundo_ap'), '');
    begin
        if ('&es_menor' = 'SI' and '&v_autorizacion' != 'NA') then
            v_autorizacion_rep := '&v_autorizacion';
        end if;

        if ('&v_tipo_rep' = 'EXTERNO' and &v_id_rep_ext != 0) then
            v_id_rep_ext_val := &v_id_rep_ext;
        end if;

        if ('&v_tipo_rep' = 'LECTOR' and &v_id_rep_lector != 0) then
            v_id_rep_lect_val := &v_id_rep_lector;
        end if;

        insert into sojg_lector (
            nombre, segundo_nombre, apellido, segundo_apellido,
            fecha_nacimiento, idiomas, correo_electronico, documento_identidad,
            autorizacion_representante, id_representante, id_representante_lector
        ) values (
            '&v_nombre',
            v_segundo_nom,
            '&v_apellido',
            v_segundo_ap_val,
            to_date('&v_fecha', 'DD/MM/YYYY'),
            '&v_idiomas',
            '&v_correo',
            '&v_doc',
            v_autorizacion_rep,
            v_id_rep_ext_val,
            v_id_rep_lect_val
        );

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
        dbms_output.put_line('Miembro inscrito exitosamente con ID: ' || sojg_seq_lector.currval);
    end;
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

prompt ==========================================
prompt   Presione Enter para continuar...
prompt ==========================================
-- ==========================================
-- ARCHIVO: menu/clubes/clubes_op2.sql
-- ==========================================

-- preview libros
prompt ==========================================
prompt   Libros disponibles para preferencias:
prompt ==========================================
col isbn   format 999999
col titulo format a40
col idioma format a15
select isbn, titulo, idioma from sojg_libro order by titulo;
prompt ==========================================
prompt   Clubes disponibles:
prompt ==========================================
col id_club format 999
col nombre  format a40
select id_club, nombre, idioma_del_club from sojg_club order by id_club;
prompt ==========================================

accept v_nombre         char   prompt 'Nombre: '
accept v_segundo_nombre char   prompt 'Segundo nombre (Enter para omitir): '
accept v_apellido       char   prompt 'Apellido: '
accept v_segundo_ap     char   prompt 'Segundo apellido (Enter para omitir): '
accept v_fecha          char   prompt 'Fecha nacimiento (DD/MM/YYYY): '
accept v_idiomas        char   prompt 'Idiomas: '
accept v_correo         char   prompt 'Correo electronico: '
accept v_doc            char   prompt 'Documento de identidad: '

-- calcular edad y si es menor
set termout off
column v_edad_calc new_value v_edad_calc noprint
column es_menor    new_value es_menor    noprint
column es_muy_nino new_value es_muy_nino noprint
select
    trunc(months_between(sysdate, to_date('&v_fecha', 'DD/MM/YYYY')) / 12) as v_edad_calc,
    case when months_between(sysdate, to_date('&v_fecha', 'DD/MM/YYYY')) / 12 < 6
        then 'SI' else 'NO' end as es_muy_nino,
    case when months_between(sysdate, to_date('&v_fecha', 'DD/MM/YYYY')) / 12 < 18
        then 'SI' else 'NO' end as es_menor
from dual;
set termout on

-- validar edad minima
begin
    if ('&es_muy_nino' = 'SI') then
        raise_application_error(-20043, 'El miembro tiene menos de 6 anos. No puede inscribirse.');
    end if;
    dbms_output.put_line('Edad calculada: ' || &v_edad_calc || ' anos.');
    if ('&es_menor' = 'SI') then
        dbms_output.put_line('Menor de edad detectado. Se requerira representante.');
    end if;
end;
/

-- preview representante externo si es menor
set termout off
column show_ext new_value show_ext noprint
select case when '&es_menor' = 'SI'
    then '&base_path/clubes/clubes_op2_rep_externo.sql'
    else '&base_path/noop.sql'
end as show_ext from dual;
set termout on
@&show_ext

-- preview representante lector si es menor
set termout off
column show_lect new_value show_lect noprint
select case when '&es_menor' = 'SI'
    then '&base_path/clubes/clubes_op2_rep_lector.sql'
    else '&base_path/noop.sql'
end as show_lect from dual;
set termout on
@&show_lect

accept v_tipo_rep      char   prompt 'Tipo representante (LECTOR/EXTERNO/NA): '
accept v_id_rep_lector number prompt 'ID Representante lector (0 si no aplica): '
accept v_id_rep_ext    number prompt 'ID Representante externo (0 si no aplica): '
accept v_autorizacion  char   prompt 'Autorizacion del representante (SI/NO/NA): '

accept v_isbn1   number prompt 'ISBN libro preferido 1: '
accept v_isbn2   number prompt 'ISBN libro preferido 2: '
accept v_isbn3   number prompt 'ISBN libro preferido 3: '
accept v_id_club number prompt 'ID Club: '
accept v_fing    char   prompt 'Fecha ingreso (DD/MM/YYYY): '

begin
    declare
        v_autorizacion_rep char(2)       := null;
        v_id_rep_ext_val   number        := null;
        v_id_rep_lect_val  number        := null;
        v_segundo_nom      varchar2(100) := nullif(trim('&v_segundo_nombre'), '');
        v_segundo_ap_val   varchar2(100) := nullif(trim('&v_segundo_ap'), '');
    begin
        if ('&es_menor' = 'SI' and '&v_autorizacion' != 'NA') then
            v_autorizacion_rep := '&v_autorizacion';
        end if;

        if ('&v_tipo_rep' = 'EXTERNO' and &v_id_rep_ext != 0) then
            v_id_rep_ext_val := &v_id_rep_ext;
        end if;

        if ('&v_tipo_rep' = 'LECTOR' and &v_id_rep_lector != 0) then
            v_id_rep_lect_val := &v_id_rep_lector;
        end if;

        insert into sojg_lector (
            nombre, segundo_nombre, apellido, segundo_apellido,
            fecha_nacimiento, idiomas, correo_electronico, documento_identidad,
            autorizacion_representante, id_representante, id_representante_lector
        ) values (
            '&v_nombre',
            v_segundo_nom,
            '&v_apellido',
            v_segundo_ap_val,
            to_date('&v_fecha', 'DD/MM/YYYY'),
            '&v_idiomas',
            '&v_correo',
            '&v_doc',
            v_autorizacion_rep,
            v_id_rep_ext_val,
            v_id_rep_lect_val
        );

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
        dbms_output.put_line('Miembro inscrito exitosamente con ID: ' || sojg_seq_lector.currval);
    end;
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

prompt ==========================================
prompt   Presione Enter para continuar...
prompt ==========================================
pause

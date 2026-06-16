-- ==========================================
-- INSERTS DE PRUEBA PARA DEMO DE SPLIT
-- Club 1 Grupo 101 (Adulto) -> 29 miembros
-- Club 2 Grupo 202 (Joven)  -> 14 miembros
-- Club 3 Grupo 303 (Nino)   -> 14 miembros
-- NOTA: IDs asignados por secuencia sojg_seq_lector
-- ==========================================

-- ==========================================
-- Club 1, Grupo 101 (Adulto) - 26 nuevos
-- quedara en 29, inscribir 1 adulto mas desde el menu para split
-- ==========================================
declare
    v_id number;
begin
    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Roberto', 'Silva', to_date('15/03/1985', 'DD/MM/YYYY'), 'Espanol', 'roberto.silva.split@gmail.com', 'V-20000001');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Carmen', 'Vega', to_date('22/07/1978', 'DD/MM/YYYY'), 'Espanol', 'carmen.vega.split@gmail.com', 'V-20000002');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Luis', 'Mendez', to_date('10/11/1990', 'DD/MM/YYYY'), 'Espanol', 'luis.mendez.split@gmail.com', 'V-20000003');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Ana', 'Torres', to_date('05/06/1982', 'DD/MM/YYYY'), 'Espanol', 'ana.torres.split@gmail.com', 'V-20000004');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Pedro', 'Ramirez', to_date('30/01/1975', 'DD/MM/YYYY'), 'Espanol', 'pedro.ramirez.split@gmail.com', 'V-20000005');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Maria', 'Lopez', to_date('18/09/1988', 'DD/MM/YYYY'), 'Espanol', 'maria.lopez.split@gmail.com', 'V-20000006');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Jose', 'Garcia', to_date('12/04/1979', 'DD/MM/YYYY'), 'Espanol', 'jose.garcia.split@gmail.com', 'V-20000007');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Laura', 'Martinez', to_date('25/08/1983', 'DD/MM/YYYY'), 'Espanol', 'laura.martinez.split@gmail.com', 'V-20000008');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Carlos', 'Hernandez', to_date('03/12/1986', 'DD/MM/YYYY'), 'Espanol', 'carlos.hernandez.split@gmail.com', 'V-20000009');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Sofia', 'Jimenez', to_date('10/05/1980', 'DD/MM/YYYY'), 'Espanol', 'sofia.jimenez.split@gmail.com', 'V-20000010');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Miguel', 'Morales', to_date('22/09/1977', 'DD/MM/YYYY'), 'Espanol', 'miguel.morales.split@gmail.com', 'V-20000011');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Elena', 'Vargas', to_date('15/06/1991', 'DD/MM/YYYY'), 'Espanol', 'elena.vargas.split@gmail.com', 'V-20000012');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Jorge', 'Castillo', to_date('14/02/1984', 'DD/MM/YYYY'), 'Espanol', 'jorge.castillo.split@gmail.com', 'V-20000013');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Isabel', 'Ramos', to_date('03/08/1976', 'DD/MM/YYYY'), 'Espanol', 'isabel.ramos.split@gmail.com', 'V-20000014');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Fernando', 'Reyes', to_date('20/11/1989', 'DD/MM/YYYY'), 'Espanol', 'fernando.reyes.split@gmail.com', 'V-20000015');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Patricia', 'Cruz', to_date('07/05/1981', 'DD/MM/YYYY'), 'Espanol', 'patricia.cruz.split@gmail.com', 'V-20000016');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Ricardo', 'Flores', to_date('11/03/1987', 'DD/MM/YYYY'), 'Espanol', 'ricardo.flores.split@gmail.com', 'V-20000017');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Monica', 'Gutierrez', to_date('29/07/1974', 'DD/MM/YYYY'), 'Espanol', 'monica.gutierrez.split@gmail.com', 'V-20000018');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Alberto', 'Ruiz', to_date('16/09/1992', 'DD/MM/YYYY'), 'Espanol', 'alberto.ruiz.split@gmail.com', 'V-20000019');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Sandra', 'Ortiz', to_date('04/01/1985', 'DD/MM/YYYY'), 'Espanol', 'sandra.ortiz.split@gmail.com', 'V-20000020');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Francisco', 'Navarro', to_date('08/04/1978', 'DD/MM/YYYY'), 'Espanol', 'francisco.navarro.split@gmail.com', 'V-20000021');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Adriana', 'Molina', to_date('17/11/1983', 'DD/MM/YYYY'), 'Espanol', 'adriana.molina.split@gmail.com', 'V-20000022');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Eduardo', 'Soto', to_date('25/06/1990', 'DD/MM/YYYY'), 'Espanol', 'eduardo.soto.split@gmail.com', 'V-20000023');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Claudia', 'Aguilar', to_date('30/08/1980', 'DD/MM/YYYY'), 'Espanol', 'claudia.aguilar.split@gmail.com', 'V-20000024');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Manuel', 'Rios', to_date('21/04/1976', 'DD/MM/YYYY'), 'Espanol', 'manuel.rios.split@gmail.com', 'V-20000025');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Veronica', 'Medina', to_date('09/12/1988', 'DD/MM/YYYY'), 'Espanol', 'veronica.medina.split@gmail.com', 'V-20000026');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), v_id, to_date('01/01/2026', 'DD/MM/YYYY'), null);

    commit;
exception
    when others then rollback; raise;
end;
/

-- ==========================================
-- Club 2, Grupo 202 (Joven) - 10 nuevos
-- quedara en 14, inscribir 1 joven mas desde el menu para split
-- ==========================================
declare
    v_id number;
begin
    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Matias', 'Rojas', to_date('15/03/2005', 'DD/MM/YYYY'), 'Espanol', 'matias.rojas.split@gmail.com', 'E-20000027');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), v_id, to_date('05/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Valeria', 'Fuentes', to_date('22/07/2003', 'DD/MM/YYYY'), 'Espanol', 'valeria.fuentes.split@gmail.com', 'E-20000028');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), v_id, to_date('05/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Sebastian', 'Pena', to_date('10/11/2006', 'DD/MM/YYYY'), 'Espanol', 'sebastian.pena.split@gmail.com', 'E-20000029');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), v_id, to_date('05/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Camila', 'Mora', to_date('05/06/2004', 'DD/MM/YYYY'), 'Espanol', 'camila.mora.split@gmail.com', 'E-20000030');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), v_id, to_date('05/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Nicolas', 'Leal', to_date('30/01/2007', 'DD/MM/YYYY'), 'Espanol', 'nicolas.leal.split@gmail.com', 'E-20000031');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), v_id, to_date('05/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Daniela', 'Cano', to_date('18/09/2005', 'DD/MM/YYYY'), 'Espanol', 'daniela.cano.split@gmail.com', 'E-20000032');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), v_id, to_date('05/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Andres', 'Ospina', to_date('12/04/2008', 'DD/MM/YYYY'), 'Espanol', 'andres.ospina.split@gmail.com', 'E-20000033');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), v_id, to_date('05/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Isabella', 'Varela', to_date('25/08/2003', 'DD/MM/YYYY'), 'Espanol', 'isabella.varela.split@gmail.com', 'E-20000034');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), v_id, to_date('05/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Felipe', 'Suarez', to_date('03/12/2006', 'DD/MM/YYYY'), 'Espanol', 'felipe.suarez.split@gmail.com', 'E-20000035');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), v_id, to_date('05/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
        values ('Lucia', 'Cardenas', to_date('10/05/2004', 'DD/MM/YYYY'), 'Espanol', 'lucia.cardenas.split@gmail.com', 'E-20000036');
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), v_id, to_date('05/01/2026', 'DD/MM/YYYY'), null);

    commit;
exception
    when others then rollback; raise;
end;
/

-- ==========================================
-- Club 3, Grupo 303 (Nino) - 10 nuevos
-- quedara en 14, inscribir 1 nino mas desde el menu para split
-- representante interno: miembro 25 (Carmen Silva)
-- ==========================================
declare
    v_id number;
begin
    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
        values ('Tomas', 'Silva', to_date('15/03/2015', 'DD/MM/YYYY'), 'Ingles', 'tomas.silva.split@gmail.com', 'US-2000037', 'SI', 25);
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), v_id, to_date('10/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
        values ('Valentina', 'Reyes', to_date('22/07/2016', 'DD/MM/YYYY'), 'Ingles', 'valentina.reyes.split@gmail.com', 'US-2000038', 'SI', 25);
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), v_id, to_date('10/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
        values ('Santiago', 'Cruz', to_date('10/11/2015', 'DD/MM/YYYY'), 'Ingles', 'santiago.cruz.split@gmail.com', 'US-2000039', 'SI', 25);
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), v_id, to_date('10/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
        values ('Sofia', 'Mendez', to_date('05/06/2017', 'DD/MM/YYYY'), 'Ingles', 'sofia.mendez.split@gmail.com', 'US-2000040', 'SI', 25);
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), v_id, to_date('10/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
        values ('Mateo', 'Vega', to_date('30/01/2016', 'DD/MM/YYYY'), 'Ingles', 'mateo.vega.split@gmail.com', 'US-2000041', 'SI', 25);
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), v_id, to_date('10/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
        values ('Emma', 'Torres', to_date('18/09/2015', 'DD/MM/YYYY'), 'Ingles', 'emma.torres.split@gmail.com', 'US-2000042', 'SI', 25);
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), v_id, to_date('10/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
        values ('Lucas', 'Garcia', to_date('12/04/2017', 'DD/MM/YYYY'), 'Ingles', 'lucas.garcia.split@gmail.com', 'US-2000043', 'SI', 25);
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), v_id, to_date('10/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
        values ('Mia', 'Lopez', to_date('25/08/2016', 'DD/MM/YYYY'), 'Ingles', 'mia.lopez.split@gmail.com', 'US-2000044', 'SI', 25);
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), v_id, to_date('10/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
        values ('Pablo', 'Martinez', to_date('03/12/2015', 'DD/MM/YYYY'), 'Ingles', 'pablo.martinez.split@gmail.com', 'US-2000045', 'SI', 25);
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), v_id, to_date('10/01/2026', 'DD/MM/YYYY'), null);

    insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
        values ('Lucia', 'Hernandez', to_date('10/05/2017', 'DD/MM/YYYY'), 'Ingles', 'lucia.hernandez.split@gmail.com', 'US-2000046', 'SI', 25);
    v_id := sojg_seq_lector.currval;
    insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
        values (v_id, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
    insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
        values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), v_id, to_date('10/01/2026', 'DD/MM/YYYY'), null);

    commit;
exception
    when others then rollback; raise;
end;
/

-- ==========================================
-- RESUMEN PARA LA DEMO:
-- 1. Club 1 Grupo 101 (Adulto): 29 miembros -> inscribir adulto (>25 anos) al club 1
-- 2. Club 2 Grupo 202 (Joven):  14 miembros -> inscribir joven (13-25) al club 2
-- 3. Club 3 Grupo 303 (Nino):   14 miembros -> inscribir nino (6-12) al club 3
-- En todos los casos sp_asignar_grupo detecta el limite y llama sp_split_grupo
-- ==========================================
-- ==========================================
-- INSERTS DE PRUEBA PARA DEMO DE SPLIT
-- Club 1 Grupo 101 (Adulto) -> 29 miembros (falta 1 para split)
-- Club 2 Grupo 202 (Joven)  -> 14 miembros (falta 1 para split)
-- Club 3 Grupo 303 (Nino)   -> 14 miembros (falta 1 para split)
-- ==========================================

-- ==========================================
-- Club 1, Grupo 101 (Adulto) - 26 nuevos miembros
-- total quedara en 29, el 30 se inserta desde el menu
-- ==========================================
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Roberto', 'Silva', to_date('15/03/1985', 'DD/MM/YYYY'), 'Espanol', 'roberto.silva.prueba200@gmail.com', 'V-00000200');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Carmen', 'Vega', to_date('22/07/1978', 'DD/MM/YYYY'), 'Espanol', 'carmen.vega.prueba201@gmail.com', 'V-00000201');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Luis', 'Mendez', to_date('10/11/1990', 'DD/MM/YYYY'), 'Espanol', 'luis.mendez.prueba202@gmail.com', 'V-00000202');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Ana', 'Torres', to_date('05/06/1982', 'DD/MM/YYYY'), 'Espanol', 'ana.torres.prueba203@gmail.com', 'V-00000203');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Pedro', 'Ramirez', to_date('30/01/1975', 'DD/MM/YYYY'), 'Espanol', 'pedro.ramirez.prueba204@gmail.com', 'V-00000204');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Maria', 'Lopez', to_date('18/09/1988', 'DD/MM/YYYY'), 'Espanol', 'maria.lopez.prueba205@gmail.com', 'V-00000205');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Jose', 'Garcia', to_date('12/04/1979', 'DD/MM/YYYY'), 'Espanol', 'jose.garcia.prueba206@gmail.com', 'V-00000206');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Laura', 'Martinez', to_date('25/08/1983', 'DD/MM/YYYY'), 'Espanol', 'laura.martinez.prueba207@gmail.com', 'V-00000207');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Carlos', 'Hernandez', to_date('03/12/1986', 'DD/MM/YYYY'), 'Espanol', 'carlos.hernandez.prueba208@gmail.com', 'V-00000208');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Sofia', 'Jimenez', to_date('10/05/1980', 'DD/MM/YYYY'), 'Espanol', 'sofia.jimenez.prueba209@gmail.com', 'V-00000209');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Miguel', 'Morales', to_date('22/09/1977', 'DD/MM/YYYY'), 'Espanol', 'miguel.morales.prueba210@gmail.com', 'V-00000210');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Elena', 'Vargas', to_date('15/06/1991', 'DD/MM/YYYY'), 'Espanol', 'elena.vargas.prueba211@gmail.com', 'V-00000211');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Jorge', 'Castillo', to_date('14/02/1984', 'DD/MM/YYYY'), 'Espanol', 'jorge.castillo.prueba212@gmail.com', 'V-00000212');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Isabel', 'Ramos', to_date('03/08/1976', 'DD/MM/YYYY'), 'Espanol', 'isabel.ramos.prueba213@gmail.com', 'V-00000213');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Fernando', 'Reyes', to_date('20/11/1989', 'DD/MM/YYYY'), 'Espanol', 'fernando.reyes.prueba214@gmail.com', 'V-00000214');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Patricia', 'Cruz', to_date('07/05/1981', 'DD/MM/YYYY'), 'Espanol', 'patricia.cruz.prueba215@gmail.com', 'V-00000215');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Ricardo', 'Flores', to_date('11/03/1987', 'DD/MM/YYYY'), 'Espanol', 'ricardo.flores.prueba216@gmail.com', 'V-00000216');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Monica', 'Gutierrez', to_date('29/07/1974', 'DD/MM/YYYY'), 'Espanol', 'monica.gutierrez.prueba217@gmail.com', 'V-00000217');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Alberto', 'Ruiz', to_date('16/09/1992', 'DD/MM/YYYY'), 'Espanol', 'alberto.ruiz.prueba218@gmail.com', 'V-00000218');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Sandra', 'Ortiz', to_date('04/01/1985', 'DD/MM/YYYY'), 'Espanol', 'sandra.ortiz.prueba219@gmail.com', 'V-00000219');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Francisco', 'Navarro', to_date('08/04/1978', 'DD/MM/YYYY'), 'Espanol', 'francisco.navarro.prueba220@gmail.com', 'V-00000220');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Adriana', 'Molina', to_date('17/11/1983', 'DD/MM/YYYY'), 'Espanol', 'adriana.molina.prueba221@gmail.com', 'V-00000221');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Eduardo', 'Soto', to_date('25/06/1990', 'DD/MM/YYYY'), 'Espanol', 'eduardo.soto.prueba222@gmail.com', 'V-00000222');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Claudia', 'Aguilar', to_date('30/08/1980', 'DD/MM/YYYY'), 'Espanol', 'claudia.aguilar.prueba223@gmail.com', 'V-00000223');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Manuel', 'Rios', to_date('21/04/1976', 'DD/MM/YYYY'), 'Espanol', 'manuel.rios.prueba224@gmail.com', 'V-00000224');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Veronica', 'Medina', to_date('09/12/1988', 'DD/MM/YYYY'), 'Espanol', 'veronica.medina.prueba225@gmail.com', 'V-00000225');
commit;

-- historico membresia club 1 - nuevos adultos
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (200, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (201, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (202, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (203, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (204, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (205, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (206, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (207, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (208, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (209, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (210, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (211, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (212, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (213, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (214, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (215, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (216, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (217, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (218, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (219, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (220, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (221, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (222, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (223, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (224, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (225, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
commit;

-- historico grupo lectura club 1, grupo 101
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 200, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 201, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 202, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 203, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 204, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 205, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 206, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 207, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 208, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 209, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 210, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 211, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 212, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 213, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 214, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 215, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 216, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 217, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 218, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 219, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 220, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 221, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 222, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 223, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 224, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 225, to_date('01/01/2026', 'DD/MM/YYYY'), null);
commit;

-- ==========================================
-- Club 2, Grupo 202 (Joven) - 10 nuevos miembros
-- total quedara en 14, el 15 se inserta desde el menu
-- ==========================================
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Matias', 'Rojas', to_date('15/03/2005', 'DD/MM/YYYY'), 'Espanol', 'matias.rojas.prueba226@gmail.com', 'E-00000226');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Valeria', 'Fuentes', to_date('22/07/2003', 'DD/MM/YYYY'), 'Espanol', 'valeria.fuentes.prueba227@gmail.com', 'E-00000227');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Sebastian', 'Pena', to_date('10/11/2006', 'DD/MM/YYYY'), 'Espanol', 'sebastian.pena.prueba228@gmail.com', 'E-00000228');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Camila', 'Mora', to_date('05/06/2004', 'DD/MM/YYYY'), 'Espanol', 'camila.mora.prueba229@gmail.com', 'E-00000229');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Nicolas', 'Leal', to_date('30/01/2007', 'DD/MM/YYYY'), 'Espanol', 'nicolas.leal.prueba230@gmail.com', 'E-00000230');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Daniela', 'Cano', to_date('18/09/2005', 'DD/MM/YYYY'), 'Espanol', 'daniela.cano.prueba231@gmail.com', 'E-00000231');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Andres', 'Ospina', to_date('12/04/2008', 'DD/MM/YYYY'), 'Espanol', 'andres.ospina.prueba232@gmail.com', 'E-00000232');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Isabella', 'Varela', to_date('25/08/2003', 'DD/MM/YYYY'), 'Espanol', 'isabella.varela.prueba233@gmail.com', 'E-00000233');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Felipe', 'Suarez', to_date('03/12/2006', 'DD/MM/YYYY'), 'Espanol', 'felipe.suarez.prueba234@gmail.com', 'E-00000234');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Lucia', 'Cardenas', to_date('10/05/2004', 'DD/MM/YYYY'), 'Espanol', 'lucia.cardenas.prueba235@gmail.com', 'E-00000235');
commit;

-- historico membresia club 2 - nuevos jovenes
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (226, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (227, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (228, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (229, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (230, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (231, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (232, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (233, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (234, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (235, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
commit;

-- historico grupo lectura club 2, grupo 202
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 226, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 227, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 228, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 229, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 230, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 231, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 232, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 233, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 234, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 235, to_date('05/01/2026', 'DD/MM/YYYY'), null);
commit;

-- ==========================================
-- Club 3, Grupo 303 (Nino) - 10 nuevos miembros
-- total quedara en 14, el 15 se inserta desde el menu
-- representante interno: miembro 25 (Carmen Silva)
-- ==========================================
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Tomas', 'Silva', to_date('15/03/2015', 'DD/MM/YYYY'), 'Ingles', 'tomas.silva.prueba236@gmail.com', 'US-0000236', 'SI', 25);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Valentina', 'Reyes', to_date('22/07/2016', 'DD/MM/YYYY'), 'Ingles', 'valentina.reyes.prueba237@gmail.com', 'US-0000237', 'SI', 25);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Santiago', 'Cruz', to_date('10/11/2015', 'DD/MM/YYYY'), 'Ingles', 'santiago.cruz.prueba238@gmail.com', 'US-0000238', 'SI', 25);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Sofia', 'Mendez', to_date('05/06/2017', 'DD/MM/YYYY'), 'Ingles', 'sofia.mendez.prueba239@gmail.com', 'US-0000239', 'SI', 25);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Mateo', 'Vega', to_date('30/01/2016', 'DD/MM/YYYY'), 'Ingles', 'mateo.vega.prueba240@gmail.com', 'US-0000240', 'SI', 25);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Emma', 'Torres', to_date('18/09/2015', 'DD/MM/YYYY'), 'Ingles', 'emma.torres.prueba241@gmail.com', 'US-0000241', 'SI', 25);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Lucas', 'Garcia', to_date('12/04/2017', 'DD/MM/YYYY'), 'Ingles', 'lucas.garcia.prueba242@gmail.com', 'US-0000242', 'SI', 25);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Mia', 'Lopez', to_date('25/08/2016', 'DD/MM/YYYY'), 'Ingles', 'mia.lopez.prueba243@gmail.com', 'US-0000243', 'SI', 25);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Pablo', 'Martinez', to_date('03/12/2015', 'DD/MM/YYYY'), 'Ingles', 'pablo.martinez.prueba244@gmail.com', 'US-0000244', 'SI', 25);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Lucia', 'Hernandez', to_date('10/05/2017', 'DD/MM/YYYY'), 'Ingles', 'lucia.hernandez.prueba245@gmail.com', 'US-0000245', 'SI', 25);
commit;

-- historico membresia club 3 - nuevos ninos
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (236, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (237, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (238, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (239, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (240, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (241, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (242, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (243, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (244, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (245, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
commit;

-- historico grupo lectura club 3, grupo 303
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 236, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 237, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 238, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 239, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 240, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 241, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 242, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 243, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 244, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 245, to_date('10/01/2026', 'DD/MM/YYYY'), null);
commit;

-- ==========================================
-- RESUMEN:
-- Club 1, Grupo 101 (Adulto): IDs 200-225 -> total 29 miembros
-- Club 2, Grupo 202 (Joven):  IDs 226-235 -> total 14 miembros
-- Club 3, Grupo 303 (Nino):   IDs 236-245 -> total 14 miembros
-- Para demostrar split:
--   Inscribir un nuevo adulto al club 1 -> dispara split en grupo 101
--   Inscribir un nuevo joven al club 2  -> dispara split en grupo 202
--   Inscribir un nuevo nino al club 3   -> dispara split en grupo 303
-- ==========================================
-- ==========================================
-- MENU PRINCIPAL
-- ==========================================
declare
    v_opcion number := :Seleccione_opcion_1_2_3_4;
begin
    dbms_output.put_line('==========================================');
    dbms_output.put_line('      SISTEMA DE CLUBES DE LECTURA       ');
    dbms_output.put_line('==========================================');
    dbms_output.put_line('  1. Administracion de Clubes');
    dbms_output.put_line('  2. Administracion de Reuniones');
    dbms_output.put_line('  3. Obras y Presentaciones');
    dbms_output.put_line('  4. Reportes');
    dbms_output.put_line('==========================================');
    case v_opcion
        when 1 then
            dbms_output.put_line('');
            dbms_output.put_line('--- 1. ADMINISTRACION DE CLUBES ---');
            dbms_output.put_line('  1. Registrar club');
            dbms_output.put_line('  2. Inscribir miembro nuevo');
            dbms_output.put_line('  3. Reasignar miembro a otro club');
            dbms_output.put_line('  4. Retirar miembro');
            dbms_output.put_line('  5. Expulsar miembro');
            dbms_output.put_line('  6. Registrar pago de membresia');
            dbms_output.put_line('  7. Asociar clubes');
            dbms_output.put_line('  8. Split de grupo');
        when 2 then
            dbms_output.put_line('');
            dbms_output.put_line('--- 2. ADMINISTRACION DE REUNIONES ---');
            dbms_output.put_line('  1. Generar calendario mensual');
            dbms_output.put_line('  2. Asignar moderador');
            dbms_output.put_line('  3. Marcar reunion como realizada');
            dbms_output.put_line('  4. Registrar inasistencia');
            dbms_output.put_line('  5. Cerrar discusion de un libro');
        when 3 then
            dbms_output.put_line('');
            dbms_output.put_line('--- 3. OBRAS Y PRESENTACIONES ---');
            dbms_output.put_line('  1. Registrar obra');
            dbms_output.put_line('  2. Agregar miembro al elenco');
            dbms_output.put_line('  3. Registrar presentacion');
            dbms_output.put_line('  4. Registrar mejor actor');
        when 4 then
            dbms_output.put_line('');
            dbms_output.put_line('--- 4. REPORTES ---');
            dbms_output.put_line('  1. Ficha de un miembro');
            dbms_output.put_line('  2. Ficha de un club');
            dbms_output.put_line('  3. Ficha de un libro');
            dbms_output.put_line('  4. Medidas financieras por club');
            dbms_output.put_line('  5. Participacion bimestral de un miembro');
        else
            dbms_output.put_line('Opcion invalida. Seleccione entre 1 y 4.');
    end case;
end;
/

-- ==========================================
-- SUBMENU 1: ADMINISTRACION DE CLUBES
-- ==========================================
declare
    v_opcion number := :Seleccione_opcion_1_al_8;
begin
    case v_opcion
        when 1 then
            dbms_output.put_line('--- 1.1 Registrar club ---');
            sojg_sp_registrar_club(
                p_nombre         => :nombre_club,
                p_direccion      => :direccion,
                p_cp             => :codigo_postal,
                p_idioma         => :idioma,
                p_id_ciudad      => :id_ciudad,
                p_cuota          => :cuota_SI_o_NO,
                p_id_institucion => :id_institucion
            );
            dbms_output.put_line('Club registrado exitosamente.');

        when 2 then
            dbms_output.put_line('--- 1.2 Inscribir miembro nuevo ---');
            -- paso 1: registrar lector
            insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
                values (:nombre, :apellido, to_date(:fecha_nacimiento, 'DD/MM/YYYY'), :idiomas, :correo, :documento);
            -- paso 2: registrar preferencias
            insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia)
                values (sojg_seq_lector.currval, :isbn_preferencia_1, 1);
            insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia)
                values (sojg_seq_lector.currval, :isbn_preferencia_2, 2);
            insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia)
                values (sojg_seq_lector.currval, :isbn_preferencia_3, 3);
            -- paso 3: inscribir al club
            sojg_sp_inscribir_miembro(
                p_id_miembro => sojg_seq_lector.currval,
                p_id_club    => :id_club,
                p_fecha      => to_date(:fecha_ingreso, 'DD/MM/YYYY')
            );
            dbms_output.put_line('Miembro inscrito exitosamente con ID: ' || sojg_seq_lector.currval);

        when 3 then
            dbms_output.put_line('--- 1.3 Reasignar miembro a otro club ---');
            sojg_sp_retirar_miembro(
                p_id_miembro => :id_miembro,
                p_id_club    => :id_club_actual,
                p_fecha      => to_date(:fecha_retiro, 'DD/MM/YYYY'),
                p_motivo     => 'Voluntario'
            );
            sojg_sp_inscribir_miembro(
                p_id_miembro => :id_miembro,
                p_id_club    => :id_club_nuevo,
                p_fecha      => to_date(:fecha_ingreso, 'DD/MM/YYYY')
            );
            dbms_output.put_line('Miembro reasignado exitosamente.');

        when 4 then
            dbms_output.put_line('--- 1.4 Retirar miembro ---');
            sojg_sp_retirar_miembro(
                p_id_miembro => :id_miembro,
                p_id_club    => :id_club,
                p_fecha      => to_date(:fecha_retiro, 'DD/MM/YYYY'),
                p_motivo     => :motivo
            );
            dbms_output.put_line('Miembro retirado exitosamente.');

        when 5 then
            dbms_output.put_line('--- 1.5 Expulsar miembro ---');
            sojg_sp_expulsar_miembro(
                p_id_miembro => :id_miembro,
                p_id_club    => :id_club,
                p_motivo     => :motivo
            );
            dbms_output.put_line('Miembro expulsado exitosamente.');

        when 6 then
            dbms_output.put_line('--- 1.6 Registrar pago de membresia ---');
            sojg_sp_registrar_pago(
                p_id_miembro => :id_miembro,
                p_id_club    => :id_club,
                p_monto      => :monto,
                p_fecha      => to_date(:fecha_pago, 'DD/MM/YYYY')
            );
            dbms_output.put_line('Pago registrado exitosamente.');

        when 7 then
            dbms_output.put_line('--- 1.7 Asociar clubes ---');
            sojg_sp_asociar_clubes(
                p_id_club_1 => :id_club_1,
                p_id_club_2 => :id_club_2,
                p_fecha     => to_date(:fecha_asociacion, 'DD/MM/YYYY')
            );
            dbms_output.put_line('Clubes asociados exitosamente.');

        when 8 then
            dbms_output.put_line('--- 1.8 Split de grupo ---');
            sojg_sp_split_grupo(
                p_id_club           => :id_club,
                p_numero_grupo_orig => :numero_grupo
            );
            dbms_output.put_line('Split ejecutado exitosamente.');

        else
            dbms_output.put_line('Opcion invalida. Seleccione entre 1 y 8.');
    end case;
end;
/

-- ==========================================
-- SUBMENU 2: ADMINISTRACION DE REUNIONES
-- ==========================================
declare
    v_opcion number := :Seleccione_opcion_1_al_5;
begin
    case v_opcion
        when 1 then
            dbms_output.put_line('--- 2.1 Generar calendario mensual ---');
            sojg_sp_generar_calendario(
                p_id_club      => :id_club,
                p_numero_grupo => :numero_grupo,
                p_isbn_libro   => :isbn_libro,
                p_id_moderador => :id_moderador,
                p_mes          => :mes,
                p_anno         => :anno
            );
            dbms_output.put_line('Calendario generado exitosamente.');

        when 2 then
            dbms_output.put_line('--- 2.2 Asignar moderador ---');
            sojg_sp_asignar_moderador(
                p_id_club      => :id_club,
                p_numero_grupo => :numero_grupo,
                p_isbn_libro   => :isbn_libro,
                p_id_moderador => :id_moderador
            );
            dbms_output.put_line('Moderador asignado exitosamente.');

        when 3 then
            dbms_output.put_line('--- 2.3 Marcar reunion como realizada ---');
            sojg_sp_realizar_reunion(
                p_id_club      => :id_club,
                p_numero_grupo => :numero_grupo,
                p_isbn_libro   => :isbn_libro,
                p_fecha        => to_date(:fecha_reunion, 'DD/MM/YYYY')
            );
            dbms_output.put_line('Reunion marcada como realizada.');

        when 4 then
            dbms_output.put_line('--- 2.4 Registrar inasistencia ---');
            sojg_sp_registrar_inasistencia(
                p_id_club      => :id_club,
                p_numero_grupo => :numero_grupo,
                p_isbn_libro   => :isbn_libro,
                p_fecha        => to_date(:fecha_reunion, 'DD/MM/YYYY'),
                p_id_miembro   => :id_miembro
            );
            dbms_output.put_line('Inasistencia registrada exitosamente.');

        when 5 then
            dbms_output.put_line('--- 2.5 Cerrar discusion ---');
            sojg_sp_cerrar_discusion(
                p_id_club      => :id_club,
                p_numero_grupo => :numero_grupo,
                p_isbn_libro   => :isbn_libro,
                p_conclusiones => :conclusiones,
                p_valoracion   => :valoracion
            );
            dbms_output.put_line('Discusion cerrada exitosamente.');

        else
            dbms_output.put_line('Opcion invalida. Seleccione entre 1 y 5.');
    end case;
end;
/

-- ==========================================
-- SUBMENU 3: OBRAS Y PRESENTACIONES
-- ==========================================
declare
    v_opcion number := :Seleccione_opcion_1_al_4;
begin
    case v_opcion
        when 1 then
            dbms_output.put_line('--- 3.1 Registrar obra ---');
            sojg_sp_registrar_obra(
                p_titulo      => :titulo_obra,
                p_activa      => :activa_SI_o_NO,
                p_descripcion => :descripcion,
                p_costo       => :costo_entrada,
                p_id_club     => :id_club
            );
            dbms_output.put_line('Obra registrada exitosamente.');

        when 2 then
            dbms_output.put_line('--- 3.2 Agregar miembro al elenco ---');
            sojg_sp_agregar_elenco(
                p_id_obra    => :id_obra,
                p_id_miembro => :id_miembro
            );
            dbms_output.put_line('Miembro agregado al elenco exitosamente.');

        when 3 then
            dbms_output.put_line('--- 3.3 Registrar presentacion ---');
            sojg_sp_registrar_presentacion(
                p_id_obra             => :id_obra,
                p_fecha               => to_date(:fecha_presentacion, 'DD/MM/YYYY'),
                p_valoracion          => :valoracion,
                p_cantidad_asistentes => :cantidad_asistentes
            );
            dbms_output.put_line('Presentacion registrada exitosamente.');

        when 4 then
            dbms_output.put_line('--- 3.4 Registrar mejor actor ---');
            sojg_sp_registrar_mejor_actor(
                p_id_obra            => :id_obra,
                p_id_miembro         => :id_miembro,
                p_fecha_presentacion => to_date(:fecha_presentacion, 'DD/MM/YYYY'),
                p_votos              => :votos
            );
            dbms_output.put_line('Mejor actor registrado exitosamente.');

        else
            dbms_output.put_line('Opcion invalida. Seleccione entre 1 y 4.');
    end case;
end;
/

-- ==========================================
-- SUBMENU 4: REPORTES
-- ==========================================
declare
    v_opcion number := :Seleccione_opcion_1_al_5;
begin
    case v_opcion
        when 1 then
            dbms_output.put_line('--- 4.1 Ficha de un miembro ---');
            dbms_output.put_line('Ejecutar: select * from sojg_v_reporte_ficha_miembro where id_miembro = :id_miembro');
        when 2 then
            dbms_output.put_line('--- 4.2 Ficha de un club ---');
            dbms_output.put_line('Ejecutar: select * from sojg_v_reporte_ficha_club where id_club = :id_club');
        when 3 then
            dbms_output.put_line('--- 4.3 Ficha de un libro ---');
            dbms_output.put_line('Ejecutar: select * from sojg_v_reporte_ficha_libro where isbn = :isbn_libro');
        when 4 then
            dbms_output.put_line('--- 4.4 Medidas financieras ---');
            dbms_output.put_line('Ejecutar: select * from sojg_v_medidas_financieras where anno = :anno');
        when 5 then
            dbms_output.put_line('--- 4.5 Participacion bimestral ---');
            dbms_output.put_line('Ejecutar: select * from sojg_v_participacion where id_miembro = :id_miembro and anno = :anno');
        else
            dbms_output.put_line('Opcion invalida. Seleccione entre 1 y 5.');
    end case;
end;
/

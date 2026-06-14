---INSCRIBIR MIEMBRO

---COMPROBACION
SELECT
   hm.id_miembro AS ID,
   l.nombre || ' ' || l.apellido AS Miembro,
   c.nombre AS Club,
   hm.estatus AS Estatus_Actual,
   hm.fecha_inicio_membresia AS Fecha_Ingreso,
   hm.fecha_fin AS Fecha_Retiro_Club,
   hm.motivo_retiro AS Motivo,
   hgl.fecha_fin AS Fecha_Baja_Grupo
FROM
   sojg_historico_membresia hm
JOIN
   sojg_lector l ON hm.id_miembro = l.id_miembro
JOIN
   sojg_club c ON hm.id_club = c.id_club
LEFT JOIN
   sojg_historico_grupo_lectura hgl ON hm.id_miembro = hgl.id_miembro AND hm.id_club = hgl.id_club
WHERE
   hm.id_miembro = :Ingrese_ID_del_Miembro_A_Consultar;


create PROCEDURE sojg_sp_inscribir_miembro (
   p_id_miembro IN NUMBER,
   p_id_club IN NUMBER,
   p_numero_grupo IN NUMBER,
   p_fecha_ingreso IN DATE
) IS
   v_estatus_activo NUMBER;
   v_deuda_pendiente NUMBER;
   v_edad NUMBER;
   v_categoria_grupo VARCHAR2(10);
BEGIN
   -- 1. Validar que no esté activo en otro club (Regla 15)
   SELECT COUNT(*) INTO v_estatus_activo
   FROM sojg_historico_membresia
   WHERE id_miembro = p_id_miembro AND estatus = 'Activa';


   IF v_estatus_activo > 0 THEN
       RAISE_APPLICATION_ERROR(-20001, 'El miembro ya se encuentra activo en un club. No puede estar en dos simultaneamente.');
   END IF;


   -- 2. Validar que no tenga deudas pendientes en clubes anteriores (Reglas 16 y 26)
   SELECT COUNT(*) INTO v_deuda_pendiente
   FROM sojg_historico_membresia
   WHERE id_miembro = p_id_miembro AND estatus = 'Morosa';


   IF v_deuda_pendiente > 0 THEN
       RAISE_APPLICATION_ERROR(-20002, 'El miembro tiene una deuda pendiente. No puede inscribirse.');
   END IF;


   -- 3. Validar edad vs categoría del grupo (Reglas 12, 13 y 14)
   -- Usamos tu función sojg_edad_miembro para obtener la edad exacta
   v_edad := sojg_edad_miembro(p_id_miembro);


   -- Buscamos de qué categoría es el grupo al que intenta ingresar
   SELECT categoria_edad INTO v_categoria_grupo
   FROM sojg_grupo_de_lectura
   WHERE id_club = p_id_club AND numero_de_grupo = p_numero_grupo;


   IF v_categoria_grupo = 'Adulto' AND v_edad <= 25 THEN
       RAISE_APPLICATION_ERROR(-20003, 'El miembro debe ser mayor de 25 años para ingresar al grupo de Adultos.');
   ELSIF v_categoria_grupo = 'Joven' AND (v_edad < 13 OR v_edad > 25) THEN
       RAISE_APPLICATION_ERROR(-20004, 'El miembro debe tener entre 13 y 25 años para ingresar al grupo de Jovenes.');
   ELSIF v_categoria_grupo = 'Nino' AND (v_edad < 6 OR v_edad > 12) THEN
       RAISE_APPLICATION_ERROR(-20005, 'El miembro debe tener entre 6 y 12 años para ingresar al grupo de Ninos.');
   END IF;


   -- 4. Inscripción Oficial: Insertar en el Histórico de Membresía
   INSERT INTO sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, estatus)
   VALUES (p_id_miembro, p_id_club, p_fecha_ingreso, 'Activa');


   -- 5. Asignación al Grupo: Insertar en el Histórico del Grupo de Lectura
   INSERT INTO sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio)
   VALUES (p_id_club, p_numero_grupo, p_fecha_ingreso, p_id_miembro, p_fecha_ingreso);


   -- Confirmamos la transacción
   COMMIT;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
       RAISE_APPLICATION_ERROR(-20006, 'El club o grupo de lectura especificado no existe.');
END sojg_sp_inscribir_miembro;
/


-- PROBAMOS EL PROCEDIMIENTO DE INSCRIPCIÓN
BEGIN
    sojg_sp_inscribir_miembro(
        p_id_miembro => :Ingrese_ID_Miembro,
        p_id_club => :Ingrese_ID_Club,
        p_numero_grupo => :Ingrese_Numero_Grupo,
        p_fecha_ingreso => TO_DATE(:Ingrese_Fecha_Ingreso_YYYY_MM_DD, 'YYYY-MM-DD')
    );
END;
/


------------------------------------------------------------
--RETIRAR MIEMBRO
----------------------------------------------------------

create PROCEDURE sojg_sp_retirar_miembro (
   p_id_miembro IN NUMBER,
   p_id_club IN NUMBER,
   p_fecha_retiro IN DATE,
   p_motivo IN VARCHAR2
) IS
   v_cuota CHAR(2);
   v_dias_aviso NUMBER;
   v_estatus_final VARCHAR2(20);
BEGIN
   -- 1. Verificar si el club cobra membresía
   SELECT cuota_membresia INTO v_cuota
   FROM sojg_club
   WHERE id_club = p_id_club;


   -- 2. Calcular los días de anticipación del aviso respecto a hoy
   v_dias_aviso := TRUNC(p_fecha_retiro) - TRUNC(SYSDATE);


   -- 3. Lógica de penalidad (Aviso menor a 30 días en club de pago)
   IF v_cuota = 'SI' AND v_dias_aviso < 30 THEN
       v_estatus_final := 'Morosa'; -- Queda debiendo la penalidad
   ELSE
       v_estatus_final := 'Retirada'; -- Cumplió preaviso o el club es gratis
   END IF;


   -- 4. Actualizar Histórico de Membresía (Aplica estatus y cierra ciclo)
   UPDATE sojg_historico_membresia
   SET fecha_fin = p_fecha_retiro,
       estatus = v_estatus_final,
       motivo_retiro = p_motivo
   WHERE id_miembro = p_id_miembro
     AND id_club = p_id_club
     AND estatus = 'Activa';


   -- Validación: Si el update no afectó filas, el miembro no estaba activo ahí
   IF SQL%NOTFOUND THEN
       RAISE_APPLICATION_ERROR(-20001, 'El miembro no se encuentra activo en este club.');
   END IF;


   -- 5. Actualizar Histórico Grupo Lectura (Dar de baja del grupo de discusión)
   UPDATE sojg_historico_grupo_lectura
   SET fecha_fin = p_fecha_retiro
   WHERE id_miembro = p_id_miembro
     AND id_club = p_id_club
     AND fecha_fin IS NULL;


   COMMIT;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
       RAISE_APPLICATION_ERROR(-20002, 'El club especificado no existe.');
   WHEN OTHERS THEN
       ROLLBACK;
       RAISE;
END sojg_sp_retirar_miembro;
/


---------------------------------------------------
--PROBAMOS EL PROCEDIMIENTO DE RETIRO
---------------------------------------------------

BEGIN
    sojg_sp_retirar_miembro(
        p_id_miembro => :Ingrese_ID_Miembro_A_Retirar,
        p_id_club => :Ingrese_ID_del_Club,
        p_fecha_retiro => TO_DATE(:Ingrese_Fecha_Retiro_YYYY_MM_DD, 'YYYY-MM-DD'),
        p_motivo => :Ingrese_Motivo_del_Retiro
    );
END;
/

------------- Según el modelo lógico de tu proyecto, la columna motivo_retiro en la tabla HISTORICO_MEMBRESIA tiene una restricción estricta (CHECK) que solo acepta los siguientes valores exactos: 'Voluntario', 'Inasistencia', 'Deudas' u 'Otro'. 

----------------------------------------------------------------------
------------REGISTRAR PAGO
---------------------------------------------------

create PROCEDURE sojg_sp_registrar_pago (
   p_id_miembro IN NUMBER,
   p_id_club IN NUMBER,
   p_monto IN NUMBER,
   p_fecha IN DATE
) IS
   v_cuota CHAR(2);
BEGIN
   -- 1. Verificar si el club cobra membresía (Regla de negocio)
   SELECT cuota_membresia INTO v_cuota
   FROM sojg_club
   WHERE id_club = p_id_club;


   IF v_cuota = 'NO' THEN
       RAISE_APPLICATION_ERROR(-20001, 'Este club es dependiente (no cobra cuotas). No se pueden registrar pagos.');
   END IF;


   -- 2. Registrar el pago en la tabla de pagos
   INSERT INTO sojg_pago_membresia (fecha, monto, id_miembro, id_club)
   VALUES (p_fecha, p_monto, p_id_miembro, p_id_club);


   -- 3. Limpiar el estatus de 'Morosa' si aplica
   -- Escenario A: Estaba moroso pero sigue activo en el club
   UPDATE sojg_historico_membresia
   SET estatus = 'Activa'
   WHERE id_miembro = p_id_miembro
     AND id_club = p_id_club
     AND estatus = 'Morosa'
     AND fecha_fin IS NULL;


   -- Escenario B: Se había retirado con deuda (como nuestro caso de Roberto)
   UPDATE sojg_historico_membresia
   SET estatus = 'Retirada'
   WHERE id_miembro = p_id_miembro
     AND id_club = p_id_club
     AND estatus = 'Morosa'
     AND fecha_fin IS NOT NULL;


   COMMIT;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
       RAISE_APPLICATION_ERROR(-20002, 'El club especificado no existe.');
   WHEN OTHERS THEN
       ROLLBACK;
       RAISE;
END sojg_sp_registrar_pago;
/


---probar el procedimiento de registro de pago
BEGIN
   sojg_sp_registrar_pago(
       p_id_miembro => :Ingrese_ID_Miembro_Que_Paga,
       p_id_club => :Ingrese_ID_del_Club,
       p_monto => :Ingrese_Monto_Pagado,
       p_fecha => TO_DATE(:Ingrese_Fecha_Pago_YYYY_MM_DD, 'YYYY-MM-DD')
   );
END;
/



---------------comprobacion
SELECT
   hm.id_miembro AS ID,
   l.nombre || ' ' || l.apellido AS Miembro,
   c.nombre AS Club,
   p.monto AS Ultimo_Monto_Pagado,
   p.fecha AS Fecha_Del_Pago,
   hm.estatus AS Estatus_Membresia_Actual
FROM
   sojg_historico_membresia hm
JOIN sojg_lector l ON hm.id_miembro = l.id_miembro
JOIN sojg_club c ON hm.id_club = c.id_club
LEFT JOIN sojg_pago_membresia p ON hm.id_miembro = p.id_miembro AND hm.id_club = p.id_club
WHERE
   hm.id_miembro = :Ingrese_ID_Miembro_A_Verificar
ORDER BY
   p.fecha DESC
FETCH FIRST 1 ROW ONLY;




----------------------------------
--------	TRIGGER EXPULSIÓN
---Se guarda y ve en la tabvla de inasistencia, pero si el porcentaje de faltas supera el 30% se expulsa automáticamente al miembro del club (se actualiza el estatus a 'Expulsado' en el histórico de membresía y se cierra su ciclo de membresía con fecha de fin).
-----------------------------------------


CREATE OR REPLACE TRIGGER sojg_trg_expulsion_automatica
AFTER INSERT ON sojg_inasistencia
FOR EACH ROW
DECLARE
   -- ¡El truco maestro para evitar el error de Tabla Mutante (ORA-04091)!
   PRAGMA AUTONOMOUS_TRANSACTION;


   v_total_reuniones NUMBER := 0;
   v_total_faltas NUMBER := 0;
   v_pct_inasistencia NUMBER := 0;
   v_bimestre NUMBER;
   v_anno NUMBER;
BEGIN
   -- 1. Extraemos el año y calculamos en qué bimestre cayó la falta
   v_anno := EXTRACT(YEAR FROM :new.fecha_reunion);
   v_bimestre := CEIL(EXTRACT(MONTH FROM :new.fecha_reunion) / 2);


   -- 2. Contamos cuántas reuniones efectivas ('SI') ha tenido su grupo en ese bimestre
   SELECT COUNT(*) INTO v_total_reuniones
   FROM sojg_calendario_mes
   WHERE id_club = :new.id_club
     AND numero_de_grupo = :new.numero_de_grupo
     AND realizada = 'SI'
     AND EXTRACT(YEAR FROM fecha_reunion) = v_anno
     AND CEIL(EXTRACT(MONTH FROM fecha_reunion) / 2) = v_bimestre;


   -- 3. Contamos sus faltas anteriores en ese mismo bimestre
   SELECT COUNT(*) INTO v_total_faltas
   FROM sojg_inasistencia
   WHERE id_miembro = :new.id_miembro
     AND id_club = :new.id_club
     AND EXTRACT(YEAR FROM fecha_reunion) = v_anno
     AND CEIL(EXTRACT(MONTH FROM fecha_reunion) / 2) = v_bimestre;


   -- Sumamos 1 para incluir la inasistencia que está entrando en este momento
   v_total_faltas := v_total_faltas + 1;


   -- 4. Aplicar regla de negocio (más del 30% de faltas = Expulsión)
   IF v_total_reuniones > 0 THEN
       v_pct_inasistencia := (v_total_faltas / v_total_reuniones) * 100;


       IF v_pct_inasistencia > 30 THEN
           -- ¡Disparamos la expulsión automáticamente!
           sojg_sp_expulsar_miembro(:new.id_miembro, :new.id_club, 'Inasistencia');
       END IF;
   END IF;


   -- Confirmamos el hilo autónomo para que no choque con la transacción original
   COMMIT;
END sojg_trg_expulsion_automatica;
/

------------------------comprobacion del trigger de expulsión automática


SELECT
   hm.id_miembro AS ID,
   l.nombre || ' ' || l.apellido AS Miembro,
   hm.fecha_inicio_membresia AS Ingreso,
   hm.fecha_fin AS Fecha_Expulsion,
   hm.estatus AS Estatus_Actual,
   hm.motivo_retiro AS Motivo
FROM
   sojg_historico_membresia hm
JOIN
   sojg_lector l ON hm.id_miembro = l.id_miembro
WHERE
   hm.id_miembro = 1 AND hm.id_club = 1;



----------------------------------------
-----------VISTA LIBRO para reporte?
-----------------------------------------+
CREATE OR REPLACE VIEW sojg_v_ficha_libro AS
SELECT
   l.isbn AS ISBN,
   l.titulo AS Titulo_Libro,
   -- Agrupamos los autores del libro en una sola cadena separada por comas
   (SELECT LISTAGG(a.nombre || ' ' || a.apellido, ', ') WITHIN GROUP (ORDER BY a.id_autor)
    FROM sojg_autor_libro al
    JOIN sojg_autor a ON al.id_autor = a.id_autor
    WHERE al.isbn_libro = l.isbn) AS Autores,
   l.anno_publicacion AS Anno_Publicacion,
   p.nombre AS Pais_Publicacion,
   l.primera_edicion AS Es_Primera_Edicion,
   l.tipo_narrativa AS Tipo_Narrativa,
   l.idioma AS Idioma,
   l.tema_resumen AS Tema_Resumen,
   l.sinopsis AS Sinopsis,
   -- Mostramos el título del libro siguiente si es una serie (Relación recursiva)
   (SELECT l2.titulo FROM sojg_libro l2 WHERE l2.isbn = l.isbn_continua_en) AS Continua_En_Serie,
   -- Calculamos la valoración matemática promedio general de todos los grupos
   (SELECT ROUND(AVG(cm_avg.valoracion_final), 1)
    FROM sojg_calendario_mes cm_avg
    WHERE cm_avg.isbn_libro = l.isbn AND cm_avg.realizada = 'SI') AS Valoracion_Promedio_Global,
   -- Datos de los análisis individuales por club
   c.nombre AS Club_Que_Analizo,
   cm.numero_de_grupo AS Grupo_Lector,
   cm.conclusiones AS Conclusiones_Del_Grupo
FROM
   sojg_libro l
JOIN
   sojg_pais p ON l.id_pais_publicacion = p.id
LEFT JOIN
   sojg_calendario_mes cm ON l.isbn = cm.isbn_libro AND cm.realizada = 'SI' AND cm.conclusiones IS NOT NULL
LEFT JOIN
   sojg_club c ON cm.id_club = c.id_club;




----------------------------pruebas
SELECT * FROM sojg_v_ficha_libro WHERE ISBN = :Ingrese_ISBN_del_Libro;


SELECT * FROM sojg_pais WHERE id = 1;
SELECT isbn, titulo FROM sojg_libro WHERE isbn = 978001;

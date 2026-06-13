CREATE OR REPLACE PROCEDURE SOJG_sp_registrar_club(
    p_nombre varchar2(200),
    p_direccion varchar2(300),
    p_cp varchar2(20),
    p_idioma varchar2(100),
    p_id_ciudad number,
    p_cuota char(2),
    p_id_institucion number
) IS BEGIN
    INSERT INTO SOJG_CLUB(
                          NOMBRE,
                          DIRECCION,
                          CODIGO_POSTAL,
                          IDIOMA_DEL_CLUB,
                          ID_CIUDAD,
                          CUOTA_MEMBRESIA,
                          ID_INSTITUCION
    ) VALUES (
              p_nombre,
              p_direccion,
              p_cp,
              p_idioma,
              p_id_ciudad,
              p_cuota,
              p_id_institucion
                );
    END;
/


--CREAR UNA ASOCIACION ENTRE CLUBES (tambien valida que los idiomas sean iguales

CREATE OR REPLACE PROCEDURE sojg_sp_asociar_clubes(
    p_id_club_1 NUMBER,
    p_id_club_2 NUMBER,
    p_fecha VARCHAR2
) IS
    v_idioma_club_1 SOJG_CLUB.IDIOMA_DEL_CLUB%TYPE;
    v_idioma_club_2 SOJG_CLUB.IDIOMA_DEL_CLUB%TYPE;
BEGIN
    -- 1. Obtener idiomas directamente (más eficiente que un loop)
    SELECT IDIOMA_DEL_CLUB INTO v_idioma_club_1
    FROM SOJG_CLUB WHERE ID_CLUB = p_id_club_1;

    SELECT IDIOMA_DEL_CLUB INTO v_idioma_club_2
    FROM SOJG_CLUB WHERE ID_CLUB = p_id_club_2;

    -- 2. Lógica de negocio: Solo insertar si son iguales
    IF (v_idioma_club_1 = v_idioma_club_2) THEN
        INSERT INTO SOJG_ASOCIACION(
            id_club_1,
            id_club_2,
            fecha_asociacion
        ) VALUES (
                     p_id_club_1,
                     p_id_club_2,
                     TO_DATE(p_fecha, 'YYYY-MM-DD')
                 );
        -- Opcional: Confirmación de éxito
        -- DBMS_OUTPUT.PUT_LINE('Asociación creada exitosamente.');
    ELSE
        -- 3. Manejo del caso "diferente": No es error, es flujo normal.
        NULL;
        DBMS_OUTPUT.PUT_LINE('No se crea la asociación: Los idiomas son diferentes.');
    END IF;

EXCEPTION
    -- 4. Excepción real: Si alguno de los ID no existe
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Uno o ambos de los IDs de club no existen.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Error inesperado: ' || SQLERRM);
END;
/   

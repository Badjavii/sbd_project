-- Automatizacion: participacion bimestral
select bimestre as Numero_Bimestre,
       periodo as Meses_del_Bimestre,
       pct_participacion as Porcentaje_de_Participacion
from SOJG_V_PARTICIPACION
where id_miembro = :Ingrese_ID_del_Miembro
    and anno = :Ingrese_Anio_YYYY
    and bimestre = :Numero_Bimestre;

-- Automatizacion: conversion monetaria
select
    nombre as Pais,
    moneda as Moneda_Local,
    :Ingrese_Monto as Monto,
    :Ingrese_Tasa as Tasa,
    sojg_conversion_monetaria(
        :Ingrese_Monto,
        moneda,
        :Ingrese_Tasa
    ) as Conversion_a_Dolares
from sojg_pais where
    id = :Ingrese_ID_del_Pais;

-- Automatizacion: calculo de edad de miembro
select
    id_miembro as ID,
    nombre || ' ' || apellido as Nombre_Completo,
    sojg_edad_miembro(id_miembro) || ' Años' as Edad
from sojg_lector
where id_miembro = :Ingrese_ID_del_Miembro;

-- Automatizacion: calculo de antiguedad en un grupo
select
    id_miembro as ID_Lector,
    id_club as ID_Club,
    fecha_inicio_membresia as Fecha_Ingreso,
    round(sojg_antiguedad_en_el_club_miembro(id_miembro, id_club) * 365) as Antiguedad_en_Dias
from sojg_historico_membresia
where
    id_miembro = :Ingrese_ID_del_Miembro
    and id_club = :Ingrese_ID_del_Club;

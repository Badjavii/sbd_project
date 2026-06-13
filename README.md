# Proyecto Sistemas de Bases de Datos 2026 - Clubes de Lectura
**Profesora:** Lúcia Cardoso

## Reglas de Desarrollo Obligatorias

1. **Prefijos en Objetos:** Absolutamente TODOS los objetos de la base de datos (tablas, índices, vistas, funciones, triggers, secuencias) deben llevar como prefijo las iniciales de los integrantes del equipo.
2. **Fin de Transacción:** Recuerda incluir `COMMIT;` al final de cada bloque de inserciones o modificaciones (DML), de lo contrario nadie más verá tus cambios.

### Recursos
 
- [Modelo ER](https://lucid.app/lucidchart/f295fe16-2c4b-485c-86bb-b8abecd0147c/edit?invitationId=inv_946f68e9-7f35-4469-bb9a-051c10a3c469&page=0_0#).
- [Modelo Lógico](https://docs.google.com/document/d/1k6KHs1k-uVeIcaNXYk8knks1_USBnejmJcKX5IYZ8hM/edit?tab=t.0).
- [Modelo de SP y Triggers](https://docs.google.com/spreadsheets/d/1wS5L5LHMVl06eTIWO3JCnm3MAlxKfk_z/edit?usp=sharing&ouid=104236223785274007000&rtpof=true&sd=true).
- [Base de Datos Excel](https://docs.google.com/spreadsheets/d/1wS5L5LHMVl06eTIWO3JCnm3MAlxKfk_z/edit?usp=sharing&ouid=104236223785274007000&rtpof=true&sd=true).

## Conexión Remota al Servidor (Oracle 21c XE)

Los recursos están unificados en el servidor local. Para conectarse desde herramientas externas (DataGrip, DBeaver, SQL Developer o código Java/JDBC):

* **Manejador:** Oracle Database
* **Host / IP:** `192.168.11.115`
* **Puerto:** `1521`
* **SID / Service Name:** `XEPDB1` (Base de datos conectable)
* **Usuario:** `SYSTEM` (No recomendable en una b/d real)
* **Password:** `Andresito@1`

### URL de Conexión Estándar (JDBC):

`jdbc:oracle:thin:@192.168.11.115:1521:XE`

## Estructura de Entregas

* **`entrega2_parte1/`**: Estructura de tablas, constraints, índices, vistas + Inserts de datos mínimos (16 libros, 8 clubes, 4 miembros por grupo, etc.).
* **`entrega2_parte2/`**: Bloques PL/SQL, las 4 funciones obligatorias, triggers y los 4 reportes.
* **`entrega3/`**: Scripts de planificación de obras actuadas.

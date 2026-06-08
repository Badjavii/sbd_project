-- ==========================================
-- SECCION 3: MIEMBROS
-- Integrante: Javier Otero
-- ==========================================

-- Secuencia REPRESENTANTE
create sequence sojg_seq_representante start with 1 increment by 1;

-- Secuencia LECTOR
create sequence sojg_seq_lector start with 1 increment by 1;

-- Tabla REPRESENTANTE 
create table sojg_representante (
    id number default sojg_seq_representante.nextval not null,
    documento_identidad varchar2(50) not null,
    nombre varchar2(100) not null,
    apellido varchar2(100) not null,

    constraint sojg_pk_representante primary key (id),
    constraint sojg_uq_representante_doc unique (documento_identidad)
);

-- Table LECTOR
create table sojg_lector (
    id_miembro number default sojg_seq_lector.nextval not null,
    nombre varchar2(100) not null,
    segundo_nombre varchar2(100),
    apellido varchar2(100) not null,
    segundo_apellido varchar2(100),
    fecha_nacimiento date not null,
    idiomas varchar2(200) not null,
    correo_electronico varchar2(200) not null,
    documento_identidad varchar2(50) not null,
    autorizacion_representante char(1),
    id_representante number,
    id_representante_lector number,

    constraint sojg_pk_lector primary key (id_miembro),
    constraint sojg_uq_lector_correo unique (correo_electronico),
    constraint sojg_uq_lector_doc unique (documento_identidad),
    constraint sojg_ck_lector_autorizacion check (autorizacion_representante in ('SI','NO')),
    constraint sojg_ck_lector_representante check (id_representante is null or id_representante_lector is null),
    constraint sojg_fk_lector_representante foreign key (id_representante) references sojg_representante(id),
    constraint sojg_fk_lector_representante_lector foreign key (id_representante_lector) references sojg_lector(id_miembro)
);

-- Tabla TELEFONO
create table sojg_telefono (
    codigo number not null,
    numero varchar2(20) not null,
    tipo varchar2(20) not null,
    id_miembro number,
    id_club number,

    constraint sojg_pk_telefono primary key (codigo, numero),
    constraint sojg_ck_telefono_tipo check (tipo in ('Celular', 'Casa', 'Trabajo', 'Otro')),
    constraint sojg_ck_telefono check (id_miembro is null or id_club is null),
    constraint sojg_fk_telefono_lector foreign key (id_miembro) references sojg_lector(id_miembro),
    constraint sojg_fk_telefono_club foreign key (id_club) references sojg_club(id_club)
);

-- Tabla PREFERENCIA_LECTURA
create table sojg_preferencia_lectura (
    id_miembro number not null,
    isbn_libro number not null,
    orden_preferencia number(1) not null,
    
    constraint sojg_pk_preferencia_lectura primary key (id_miembro, isbn_libro),
    constraint sojg_ck_preferencia_orden check (orden_preferencia between 1 and 3),
    constraint sojg_uq_preferencia_orden unique (id_miembro, orden_preferencia),
    constraint sojg_fk_preferencia_lector foreign key (id_miembro) references sojg_lector(id_miembro),
    constraint sojg_fk_preferencia_libro foreign key (isbn_libro) references sojg_libro(isbn)
);

-- ==========================================
-- Inserts REPRESENTANTE (11 registros)
-- ==========================================
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('V-12345678', 'Maria', 'Gonzalez');
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('V-23456789', 'Carlos', 'Perez');
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('E-34567890', 'Sophie', 'Dubois');
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('E-45678901', 'James', 'Mitchell');
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('V-56789012', 'Rosa', 'Hernandez');
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('E-67890123', 'Pierre', 'Leclerc');
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('E-78901234', 'Elena', 'Volkova');
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('C-89012345', 'Wei', 'Zhang');
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('E-90123456', 'Carmen', 'Torres');
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('M-01234567', 'Alejandro', 'Ramirez');
inset into sojg_representante (documento_identidad, nombre, apellido) 
    values ('E-11223344', 'Isabella', 'Martin');

commit;

-- ==========================================
-- Inserts LECTOR (11 registros)
-- mezcla de mayores e menores de 18
-- mezcla de nacionalidades segun los clubes
-- ==========================================
-- mayores de 25 (grupo adulto)
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Andres', 'Bolivar', to_date('15/03/1990', 'DD/MM/YYYY'), 'Espanol', 'andres.bolivar@gmail.com', 'V-15234567');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Claire', 'Dupont', to_date('22/07/1985', 'DD/MM/YYYY'), 'Frances, Ingles', 'claire.dupont@gmail.com', 'E-22345678');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Diego', 'Morales', to_date('10/11/1978', 'DD/MM/YYYY'), 'Espanol, Ingles', 'diego.morales@gmail.com', 'C-33456789');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Natasha', 'Ivanova', to_date('05/06/1995', 'DD/MM/YYYY'), 'Ruso, Ingles', 'natasha.ivanova@gmail.com', 'E-44567890');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Samuel', 'Johnson', to_date('30/01/1982', 'DD/MM/YYYY'), 'Ingles', 'samuel.johnson@gmail.com', 'E-55678901');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Valentina', 'Cruz', to_date('18/09/1998', 'DD/MM/YYYY'), 'Espanol', 'valentina.cruz@gmail.com', 'V-66789012');

-- entre 13 y 25 (grupo joven)
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('', '', to_date('', 'DD/MM/YYYY'), 'Espanol', 'lucas.fernandez@gmail.com', 'V-77890123');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('', '', to_date('', 'DD/MM/YYYY'), 'Frances, Espanol', 'emma.laurent@gmail.com', 'E-88901234');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('', '', to_date('', 'DD/MM/YYYY'), 'Espanol', 'sofia.herrera@gmail.com', 'M-99012345');

-- menores de 12 (grupo ninos) con representante 
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('', '', to_date('', 'DD/MM/YYYY'), 'Espanol', 'mateo.gonzalez@gmail.com', 'V-10234567', 'S', 1);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('', '', to_date('', 'DD/MM/YYYY'), 'Ingles', 'mia.mitchell@gmail.com', 'E-20345678', 'S', 4);

commit;

-- ==========================================
-- Inserts TELEFONO (11 registros)
-- mezcla entre telefonos de miembros
-- ==========================================
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (58, '4121234567', 'Celular', 1);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (33, '612345678', 'Celular', 2);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (57, '3001234567', 'Celular', 3);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (7, '9161234567', 'Celular', 4);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (1, '2121234567', 'Casa', 5);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (58, '4249876543', 'Celular', 6);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (58, '4261234567', 'Celular', 7);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (33, '698765432', 'Celular', 8);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (52, '5541234567', 'Celular', 9);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (58, '2121234567', 'Casa', 10);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (44, '7911234567', 'Celular', 11);

commit;

-- ==========================================
-- Inserts PREFERENCIA_LECTURA
-- 3 preferencias por cada uno de los 11 
-- miembros = 33 registros
-- ISBNs reales del equipo (978001-978016)
-- ==========================================

-- miembro 1 (Andres)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (1, 978001, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (1, 978007, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (1, 978014, 3);

-- miembro 2 (Claire)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (2, 978002, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (2, 978014, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (2, 978016, 3);

-- miembro 3 (Diego)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (3, 978003, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (3, 978006, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (3, 978011, 3);

-- miembro 4 (Natasha)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (4, 978009, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (4, 978010, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (4, 978012, 3);

-- miembro 5 (Samuel)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (5, 978008, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (5, 978015, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (5, 978004, 3);

-- miembro 6 (Valentina)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (6, 978012, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (6, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (6, 978011, 3);

-- miembro 7 (Lucas)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (7, 978005, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (7, 978006, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (7, 978001, 3);

-- miembro 8 (Emma)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (8, 978016, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (8, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (8, 978002, 3);

-- miembro 9 (Sofia)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (9, 978007, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (9, 978010, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (9, 978014, 3);

-- miembro 10 (Mateo)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (10, 978005, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (10, 978001, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (10, 978006, 3);

-- miembro 11 (Mia)
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (11, 978004, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (11, 978016, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (11, 978003, 3);

commit;

-- ==========================================
-- Funcion base: calcula % de participacion
-- entre dos fechas para un miembro
-- ==========================================
create or replace function sojg_calcular_pct_participacion(
    p_id_miembro number, p_fecha_inicio date, p_fecha_fin date
) return number is 
    v_total_reuniones number :=0;
    v_total_faltas number := 0;
begin 
    -- contar reuniones totales del miembro en ese periodo
    select count(*) 
    into v_total_reuniones 
    from sojg_calendario_mes cm 
    join sojg_historico_grupo_lectura hgl 
        on (cm.id_club = hgl.id_club) 
        and (cm.numero_de_grupo = hgl.numero_de_grupo) 
    where (hgl.id_miembro = p_id_miembro) 
        and (cm.fecha_reunion >= p_fecha_inicio) 
        and (cm.fecha_reunion <= p_fecha_fin) 
        and (cm.realizada = 'S');

    -- si no hay reuniones retorna 0
    if (v_total_reuniones = 0) then 
        return 0;
    end if;

    -- contar inasistencias del miembro en ese periodo
    select count(*) 
    into v_total_faltas 
    from sojg_inasistencia i 
    where (i.id_miembro = p_id_miembro) 
        and (i.fecha_reunion >= p_fecha_inicio) 
        and (i.fecha_reunion <= p_fecha_fin);

    -- retorna porcentaje de participacion
    return round (
        ((v_total_reuniones - v_total_faltas) / v_total_reuniones) * 100, 2
    );

exception 
    when others then
        return null;
end sojg_calcular_pct_participacion;
/

-- ==========================================
-- Funcion principal: recibe bimestre
-- y anno, calcula fechas e invoca la base
-- ==========================================
create or replace function sojg_pct_participacion_bimestre_miembro(
    p_id_miembro number, p_bimestre number, p_anno number
) return number is 
    v_fecha_inicio date;
    v_fecha_fin date;
begin
    -- validar que el bimestre sea entre 1 y 6
    if (p_bimestre < 1) or (p_bimestre > 6) then 
        raise_application_error(-20001, 'bimestre debe estar entre 1 y 6');
    end if;

    -- calcular fecha inicio del bimestre
    v_fecha_inicio := to_date(
        '01/' || to_char((p_bimestre - 1) * 2 + 1, 'FM00') || '/' || to_char(p_anno), 'DD/MM/YYYY' 
    );

    -- calcular fecha fin de bimestre
    v_fecha_fin := add_months(v_fecha_inicio, 2) - 1;

    -- invocar funcion base
    return sojg_calcular_pct_participacion(
        p_id_miembro, v_fecha_inicio, v_fecha_fin
    );

exception 
    when others then
        return null;
end sojg_pct_participacion_bimestre_miembro;
/

-- ==========================================
-- Vista 1: informacion basica del miembro 
-- uso 1: select * from sojg_v_miembros;
-- uso 2: select * from sojg_v_miembros
--            where id_miembro = 1;
-- ==========================================
create or replace view sojg_v_miembros as 
select 
    l.id_miembro,
    l.nombre || ' ' || nvl(l.segundo_nombre, '') || ' ' || l.apellido || ' ' || nvl(l.segundo_apellido, '') as nombre_completo,
    l.fecha_nacimiento,
    sojg_edad_miembro(l.id_miembro) as edad,
    l.idiomas,
    l.correo_electronico,
    l.documento_identidad,
    l.autorizacion_representante,
    t.codigo || '-' || t.numero as telefono,
    t.tipo as tipo_telefono,
    hm.id_club,
    hm.fecha_inicio as fecha_ingreso_club,
    hm.estatus
from sojg_lector l 
join sojg_historico_membresia hm 
    on (l.id_miembro = hm.id_miembro)
left join sojg_telefono t 
    on (l.id_miembro = t.id_miembro)
where (hm.estatus = 'Activa');

-- ==========================================
-- Vista 2: participacion de miembro(s) 
-- por bimestre y anno
-- usos: 
--   1. todos los bimestres de un miembro:
--   select * from sojg_v_participacion
--       where id_miembro = 1;
--
--   2. bimestre especifico:
--   select * from sojg_v_participacion
--       where (id_miembro = 1)
--           and (anno = 2026)
--           and (bimestre = 2);
-- ==========================================
create or replace view sojg_v_participacion as 
select 
    l.id_miembro,
    l.nombre || ' ' || l.apellido as nombre_completo,
    hm.id_club,
    annos.anno,
    bimestres.bimestre,
    bimestres.mes_inicio || ' - ' || bimestres.mes_fin as periodo,
    sojg_pct_participacion_bimestre_miembro(
        l.id_miembro,
        bimestres.bimestre,
        annos.anno
    ) as pct_participacion
from sojg_lector l 
join sojg_historico_membresia hm 
    on (l.id_miembro = hm.id_miembro)
-- genera todos los annos disponibles en el historico 
cross join (
    select distinct extract(year from fecha_inicio) as anno 
    from sojg_historico_membresia
) annos
-- genera los 6 bimestres del anno con su periodo legible
cross join (
    select 1 as bimestre, 'Enero' as mes_inicio, 'Febrero' as mes_fin from dual union all 
    select 2, 'Marzo', 'Abril' from dual union all 
    select 3, 'Mayo', 'Junio' from dual union all 
    select 4, 'Julio', 'Agosto' from dual union all 
    select 5, 'Septiembre', 'Octubre' from dual union all 
    select 6, 'Noviembre', 'Diciembre' from dual 
) bimestres where (hm.estatus = 'Activa');

-- ==========================================
-- Vista 3: preferencias de lectura
-- por miembro ordenadas por preferencia
-- uso 1: select * from sojg_v_preferencias;
-- uso 2: select * from sojg_v_preferencias
--            where id_miembro = 1;
-- ==========================================
create or replace view sojg_v_preferencias as 
select 
    l.id_miembro,
    l.nombre || ' ' || l.apellido as nombre_completo,
    pl.orden_preferencia,
    li.isbn,
    li.titulo,
    li.tipo_narrativa,
    li.idioma 
from sojg_lector l 
join sojg_preferencia_lectura pl 
    on (l.id_miembro = pl.id_miembro)
join sojg_libro li 
    on (pl.isbn_libro = li.isbn)
order by l.id_miembro, pl.orden_preferencia;

-- ==========================================
-- Vista 4: representantes de miembros
-- menores de edad
-- muestra si el representante es otro
-- lector del club o una persona externa
-- uso 1: select * from sojg_v_representantes;
-- uso 2: select * from sojg_v_representantes
--            where id_miembro = 1;
-- ==========================================
create or replace view sojg_v_representantes as 
select 
    l.id_miembro,
    l.nombre || ' ' || l.apellido as nombre_miembro,
    l.autorizacion_representante,
    -- tipo representante
    case 
        when (l.id_representante is not null) then 'Externo'
        when (l.id_representante_lector is not null) then 'Lector del club'
    end as tipo_representante,
    -- datos del representante externo 
    r.nombre || ' ' || r.apellido as nombre_representante_externo,
    r.documento_identidad as doc_representante_externo,
    -- datos del representante lector 
    lr.nombre || ' ' || lr.apellido as nombre_representante_lector,
    lr.correo_electronico as correo_representante_lector
from sojg_lector l 
-- join representante externo 
left join sojg_representante r 
    on (l.id_representante = r.id)
-- join representante lector 
left join sojg_lector lr 
    on (l.id_representante_lector = lr.id_miembro)
where (l.id_representante is not null) or (l.id_representante_lector is not null);

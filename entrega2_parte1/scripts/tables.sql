-- ==========================================
-- FASE 1: SECUENCIAS
-- ==========================================

-- Secuencia PAIS 
create sequence sojg_seq_pais start with 1 increment by 1;
-- Secuencia INSTITUCION
create sequence sojg_seq_institucion start with 1 increment by 1;
-- Secuencia AUTOR 
create sequence sojg_seq_autor start with 1 increment by 1;
-- Secuencia REPRESENTANTE
create sequence sojg_seq_representante start with 1 increment by 1;

-- Secuencia CIUDAD
create sequence sojg_seq_ciudad start with 1 increment by 1;
-- Secuencias CLUB
CREATE SEQUENCE sojg_seq_club START WITH 1 INCREMENT BY 1;
-- Secuencia GRUPO_LECTURA
create sequence sojg_seq_grupo_de_lectura start with 1 increment by 1;
-- Secuencia OBRA
CREATE SEQUENCE sojg_seq_obra START WITH 1 INCREMENT BY 1;
-- Secuencia LECTOR
create sequence sojg_seq_lector start with 1 increment by 1;
-- Secuencia PAGO_MEMBRESIA
create sequence sojg_seq_pago_membresia start with 1 increment by 1;

commit;

-- ==========================================
-- FASE 2: TABLAS
-- ==========================================

-- Tabla PAIS
create table sojg_pais (
    id number default sojg_seq_pais.nextval,
    nombre varchar2(50) not null,
    moneda varchar2(10) not null,
    nacionalidad varchar2(50) not null,
    continente varchar2(20) not null,
    
    constraint sojg_pk_pais primary key (id),
    constraint sojg_uq_pais_nombre unique (nombre),
    constraint sojg_chk_pais_continente check (continente in ('Europa', 'Asia', 'America', 'Africa', 'Oceania'))
);

commit;

-- Tabla INSTITUCION
create table sojg_institucion (
    id number default sojg_seq_institucion.nextval,
    nombre varchar2(200) not null,
    tipo varchar2(50) not null,
    
    constraint sojg_pk_institucion primary key (id),
    constraint sojg_uq_institucion_nombre unique (nombre),
    constraint sojg_chk_inst_tipo check (tipo in ('Universidad','Colegio','Biblioteca','Escuela','Otro'))
);

commit;  

-- Tabla AUTOR
create table sojg_autor (
    id_autor number default sojg_seq_autor.nextval,
    nombre varchar2(100) not null,
    apellido varchar2(100) not null,
    "2do_nombre" varchar2(100),
    "2do_apellido" varchar2(100),
    nombre_artistico varchar2(150),
    
    constraint sojg_pk_autor primary key (id_autor)
);

commit;

-- Tabla REPRESENTANTE 
create table sojg_representante (
    id number default sojg_seq_representante.nextval not null,
    documento_identidad varchar2(50) not null,
    nombre varchar2(100) not null,
    apellido varchar2(100) not null,

    constraint sojg_pk_representante primary key (id),
    constraint sojg_uq_representante_doc unique (documento_identidad)
);

commit;  

-- Tabla CIUDAD
create table sojg_ciudad (
    id number default sojg_seq_ciudad.nextval,
    nombre varchar2(100) not null,
    id_pais number not null,
    
    constraint sojg_pk_ciudad primary key (id),
    constraint sojg_fk_ciudad_pais foreign key (id_pais) references sojg_pais(id)
);

commit;

-- Tabla LIBRO
create table sojg_libro (
    isbn number,
    titulo varchar2(300) not null,
    numero_paginas number not null,
    idioma varchar2(50) not null,
    anno_publicacion number(4) not null,
    sinopsis varchar2(1500) not null,
    tema_resumen varchar2(500) not null,
    tipo_narrativa varchar2(50) not null,
    primera_edicion char(2) not null,
    id_pais_publicacion number not null,
    isbn_continua_en number,
    
    constraint sojg_pk_libro primary key (isbn),
    constraint sojg_fk_libro_pais foreign key (id_pais_publicacion) references sojg_pais(id),
    constraint sojg_fk_libro_rec foreign key (isbn_continua_en) references sojg_libro(isbn),
    constraint sojg_chk_libro_pag check (numero_paginas > 0),
    constraint sogj_chk_libro_anno check (anno_publicacion != 0),
    constraint sojg_chk_libro_narra check (tipo_narrativa in ('Novela','Cuento','Mito','Leyenda','Fabula','Epopeya','Otro')),
    constraint sojg_chk_libro_edic check (primera_edicion in ('SI','NO')),
    constraint sojg_chk_libro_cont_dif check (isbn_continua_en != isbn)
);

commit;

-- Tabla AUTOR_LIBRO
create table sojg_autor_libro (
    id_autor number not null,
    isbn_libro number not null,
    
    constraint pk_sojg_pk_autor_libro primary key (id_autor, isbn_libro),
    constraint sojg_fk_al_autor foreign key (id_autor) references sojg_autor(id_autor),
    constraint sojg_fk_al_libro foreign key (isbn_libro) references sojg_libro(isbn)
);

commit;

-- Tabla CLUB
CREATE TABLE sojg_club (
  id_club number DEFAULT sojg_seq_club.nextval,
  nombre varchar2(200) NOT NULL UNIQUE,
  direccion varchar2(300) NOT NULL,
  codigo_postal varchar2(20) NOT NULL,
  idioma_del_club varchar2(100) NOT NULL,
  id_ciudad number NOT NULL REFERENCES sojg_ciudad(id),
  cuota_membresia char(2) CONSTRAINT sojg_check_cuota CHECK (cuota_membresia IN ('SI', 'NO')),
  id_institucion NUMBER REFERENCES sojg_institucion(id),

  CONSTRAINT sojg_pk_club PRIMARY KEY (id_club)
);

commit;

-- Tabla ASOCIACION
CREATE TABLE sojg_asociacion (
  id_club_1 number NOT NULL REFERENCES sojg_club(id_club),
  id_club_2 number NOT NULL REFERENCES sojg_club(id_club),
  fecha_asociacion date NOT NULL,
  CONSTRAINT sojg_pk_asociacion PRIMARY KEY (id_club_1, id_club_2),
  CONSTRAINT sojg_check_duplicate_asociacion CHECK (id_club_1 < id_club_2)
);

COMMENT ON TABLE sojg_asociacion IS 'La validacion de que dos clubes tengan el mismo idioma es externo a la base de datos';

commit;

-- Tabla LECTOR
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
    autorizacion_representante char(2),
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

commit;

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

commit;

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

commit;

-- Tabla GRUPO_DE_LECTURA
create table sojg_grupo_de_lectura (
    id_club number not null,
    numero_de_grupo number not null,
    fecha_de_creacion date not null,
    categoria_edad varchar2(10) not null,
    dia_reunion varchar2(15) not null,
    hora_inicio number(4, 2) not null,
 
    constraint sojg_pk_grupo_lectura primary key (id_club, numero_de_grupo),
    constraint sojg_fk_grupo_club foreign key (id_club) references sojg_club(id_club),
    constraint sojg_ck_grupo_edad check (categoria_edad in ('Adulto', 'Joven', 'Nino')),
    constraint sojg_ck_grupo_dia check (dia_reunion in ('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes')),
    constraint sojg_ck_grupo_hora check (hora_inicio between 17 and 19)
);

commit;

-- tabla HISTORICO_MEMBRESIA
create table sojg_historico_membresia (
    id_miembro number not null,
    id_club number not null,
    fecha_inicio_membresia date not null,
    fecha_fin date,
    estatus varchar2(20) not null,
    motivo_retiro varchar2(20),
 
    constraint sojg_pk_historico_membresia primary key (id_miembro, id_club, fecha_inicio_membresia),
    constraint sojg_fk_hmem_miembro foreign key (id_miembro) references sojg_lector(id_miembro),
    constraint sojg_fk_hmem_club foreign key (id_club) references sojg_club(id_club),
    constraint sojg_ck_hmem_estatus check (estatus in ('Activa', 'Inactiva', 'Retirada', 'Morosa', 'Expulsada')),
    constraint sojg_ck_hmem_motivo check (motivo_retiro in ('Voluntario', 'Inasistencia', 'Deudas', 'Otro'))
);

commit;

-- tabla HISTORICO_GRUPO_LECTURA
create table sojg_historico_grupo_lectura (
    id_club number not null,
    numero_de_grupo number not null,
    fecha_inicio_membresia date not null,
    id_miembro number not null,
    fecha_inicio date not null,
    fecha_fin date,
 
    constraint sojg_pk_historico_grupo_lectura primary key (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio),
    constraint sojg_fk_hgru_grupo foreign key (id_club, numero_de_grupo) references sojg_grupo_de_lectura(id_club, numero_de_grupo),
    constraint sojg_fk_hgru_membresia foreign key (id_miembro, id_club, fecha_inicio_membresia) references sojg_historico_membresia(id_miembro, id_club, fecha_inicio_membresia)
);

commit;

-- Tabla PAGO_MEMBRESIA
create table sojg_pago_membresia (
    id number default sojg_seq_pago_membresia.nextval not null,
    fecha date not null,
    monto number(10, 2) not null,
    id_miembro number not null,
    id_club number not null,
 
    constraint sojg_pk_pago_membresia primary key (id),
    constraint sojg_ck_pago_monto check (monto > 0),
    constraint sojg_fk_pago_miembro foreign key (id_miembro) references sojg_lector(id_miembro),
    constraint sojg_fk_pago_club foreign key (id_club) references sojg_club(id_club)
);

commit;

-- Tabla CALENDARIO_MES
create table sojg_calendario_mes (
    id_club number not null,
    numero_de_grupo number not null,
    isbn_libro number not null,
    fecha_reunion date not null,
    realizada char(2) not null,
    conclusiones varchar2(1500),
    valoracion_final number(2, 1),
    ultima_discusion char(2),
    id_moderador number not null,
 
    constraint sojg_pk_calendario primary key (id_club, numero_de_grupo, isbn_libro, fecha_reunion),
    constraint sojg_fk_cal_grupo foreign key (id_club, numero_de_grupo) references sojg_grupo_de_lectura(id_club, numero_de_grupo),
    constraint sojg_fk_cal_libro foreign key (isbn_libro) references sojg_libro(isbn),
    constraint sojg_fk_cal_moderador foreign key (id_moderador) references sojg_lector(id_miembro),
    constraint sojg_ck_cal_realizada check (realizada in ('SI', 'NO')),
    constraint sojg_ck_cal_valoracion check (valoracion_final between 1 and 5),
    constraint sojg_ck_cal_ultima check (ultima_discusion in ('SI', 'NO'))
);

commit;

-- Tabla INASISTENCIA
create table sojg_inasistencia (
    id_club number not null,
    numero_de_grupo number not null,
    isbn_libro number not null,
    fecha_reunion date not null,
    id_miembro number not null,
 
    constraint sojg_pk_inasistencia primary key (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro),
    constraint sojg_fk_inas_calendario foreign key (id_club, numero_de_grupo, isbn_libro, fecha_reunion) references sojg_calendario_mes(id_club, numero_de_grupo, isbn_libro, fecha_reunion),
    constraint sojg_fk_inas_miembro foreign key (id_miembro) references sojg_lector(id_miembro)
);

commit;

-- Tabla OBRA
CREATE TABLE sojg_obra(
  id_obra number DEFAULT sojg_seq_obra.nextval NOT NULL,
  titulo_de_obra varchar2(300) NOT NULL,
  activa char(2) NOT NULL CONSTRAINT sojg_check_activa CHECK (activa IN ('SI', 'NO')),
  descripcion_de_la_obra varchar2(1500),
  costo_entrada number(10,2) CONSTRAINT sojg_check_costo CHECK (costo_entrada > 0),
  id_club number NOT NULL REFERENCES sojg_club(id_club),

  CONSTRAINT sojg_pk_obra PRIMARY KEY (id_obra)
);

commit;

-- Tabla LIBRO_REFERENCIADO_POR_LA_OBRA
CREATE TABLE sojg_libro_referenciado_por_la_obra (
  id_obra number NOT NULL REFERENCES sojg_obra(id_obra),
  isbn_libro number NOT NULL REFERENCES sojg_libro(isbn),
  CONSTRAINT sojg_pk_libro_referenciado PRIMARY KEY (id_obra, isbn_libro)
);

commit;

-- Tabla ELENCO
CREATE TABLE sojg_elenco (
  id_obra number NOT NULL REFERENCES sojg_obra(id_obra),
  id_miembro number NOT NULL REFERENCES sojg_lector(id_miembro),
  CONSTRAINT sojg_pk_elenco PRIMARY KEY (id_obra, id_miembro)
);

commit;

-- tabla PRESENTACION_DE_LA_OBRA
create table sojg_presentacion_de_la_obra (
    id_obra number not null,
    fecha date not null,
    valoracion number(2, 1) not null,
    cantidad_asistentes number not null,
 
    constraint sojg_pk_presentacion primary key (id_obra, fecha),
    constraint sojg_fk_pres_obra foreign key (id_obra) references sojg_obra(id_obra),
    constraint sojg_ck_pres_valoracion check (valoracion between 1 and 5),
    constraint sojg_ck_pres_asistentes check (cantidad_asistentes > 0)
);

commit;

-- tabla MEJ0R_ACTOR
create table sojg_mejor_actor (
    id_obra number not null,
    id_miembro number not null,
    fecha_presentacion date not null,
    votos number not null,
 
    constraint sojg_pk_mejor_actor primary key (id_obra, id_miembro, fecha_presentacion),
    constraint sojg_fk_mact_elenco foreign key (id_obra, id_miembro) references sojg_elenco(id_obra, id_miembro),
    constraint sojg_fk_mact_presentacion foreign key (id_obra, fecha_presentacion) references sojg_presentacion_de_la_obra(id_obra, fecha),
    constraint sojg_ck_mact_votos check (votos > 0)
);

commit;


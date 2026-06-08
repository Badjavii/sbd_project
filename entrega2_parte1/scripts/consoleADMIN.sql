-- 1. Limpieza total (por si acaso quedaron restos)
drop table sojg_autor_libro cascade constraints;
drop table sojg_libro cascade constraints;
drop table sojg_autor cascade constraints;
drop table sojg_institucion cascade constraints;
drop table sojg_ciudad cascade constraints;
drop table sojg_pais cascade constraints;
drop sequence seq_sojg_pais;
drop sequence seq_sojg_ciudad;
drop sequence seq_sojg_institucion;
drop sequence seq_sojg_autor;
drop function sojg_conversion_monetaria;

-- 2. Creación de secuencias
create sequence seq_sojg_pais start with 1 increment by 1;
create sequence seq_sojg_ciudad start with 1 increment by 1;
create sequence seq_sojg_institucion start with 1 increment by 1;
create sequence seq_sojg_autor start with 1 increment by 1;

-- 3. Definición de tablas
create table sojg_pais (
    id number default seq_sojg_pais.nextval,
    nombre varchar2(50) not null,
    moneda varchar2(10) not null,
    continente varchar2(20) not null,
    constraint pk_sojg_pais primary key (id),
    constraint uq_sojg_pais_nombre unique (nombre),
    constraint chk_sojg_pais_continente check (continente in ('Europa', 'Asia', 'America', 'Africa', 'Oceania'))
);

create table sojg_ciudad (
    id number default seq_sojg_ciudad.nextval,
    nombre varchar2(50) not null,
    id_pais number not null,
    constraint pk_sojg_ciudad primary key (id),
    constraint fk_sojg_ciudad_pais foreign key (id_pais) references sojg_pais(id)
);

create table sojg_institucion (
    id number default seq_sojg_institucion.nextval,
    nombre varchar2(100) not null,
    tipo varchar2(50) not null,
    id_ciudad number not null,
    constraint pk_sojg_institucion primary key (id),
    constraint uq_sojg_institucion_nombre unique (nombre),
    constraint fk_sojg_inst_ciudad foreign key (id_ciudad) references sojg_ciudad(id),
    constraint chk_sojg_inst_tipo check (tipo in ('Universidad','Colegio','Biblioteca','Escuela','Otro'))
);

create table sojg_autor (
    id_autor number default seq_sojg_autor.nextval,
    nombre varchar2(50) not null,
    apellido varchar2(50) not null,
    "2do_nombre" varchar2(50),
    "2do_apellido" varchar2(50),
    nombre_artistico varchar2(50),
    constraint pk_sojg_autor primary key (id_autor)
);

create table sojg_libro (
    isbn number,
    titulo varchar2(100) not null,
    numero_paginas number not null,
    idioma varchar2(50) not null,
    anno_publicacion number(4) not null,
    sinopsis clob not null,
    tema_resumen varchar2(100) not null,
    tipo_narrativa varchar2(50) not null,
    primera_edicion char(2) not null,
    id_pais_publicacion number not null,
    isbn_continua_en number,
    constraint pk_sojg_libro primary key (isbn),
    constraint fk_sojg_libro_pais foreign key (id_pais_publicacion) references sojg_pais(id),
    constraint fk_sojg_libro_rec foreign key (isbn_continua_en) references sojg_libro(isbn),
    constraint chk_sojg_libro_pag check (numero_paginas > 0),
    constraint chk_sojg_libro_anno check (anno_publicacion > 0),
    constraint chk_sojg_libro_narra check (tipo_narrativa in ('Novela','Cuento','Mito','Leyenda','Fabula','Epopeya','Otro')),
    constraint chk_sojg_libro_edic check (primera_edicion in ('SI','NO'))
);

create table sojg_autor_libro (
    id_autor number not null,
    isbn_libro number not null,
    constraint pk_sojg_autor_libro primary key (id_autor, isbn_libro),
    constraint fk_sojg_al_autor foreign key (id_autor) references sojg_autor(id_autor),
    constraint fk_sojg_al_libro foreign key (isbn_libro) references sojg_libro(isbn)
);

-- 4. Inserción de datos
insert into sojg_pais (nombre, moneda, continente) values ('España', 'EUR', 'Europa');
insert into sojg_pais (nombre, moneda, continente) values ('Francia', 'EUR', 'Europa');
insert into sojg_pais (nombre, moneda, continente) values ('Reino Unido', 'GBP', 'Europa');
insert into sojg_pais (nombre, moneda, continente) values ('Grecia', 'EUR', 'Europa');
insert into sojg_pais (nombre, moneda, continente) values ('Uruguay', 'UYU', 'America');
insert into sojg_pais (nombre, moneda, continente) values ('Estados Unidos', 'USD', 'America');
insert into sojg_pais (nombre, moneda, continente) values ('Rusia', 'RUB', 'Europa');
insert into sojg_pais (nombre, moneda, continente) values ('Imperio Austrohungaro', 'EUR', 'Europa');
insert into sojg_pais (nombre, moneda, continente) values ('Venezuela', 'VES', 'America');
insert into sojg_pais (nombre, moneda, continente) values ('Mexico', 'MXN', 'America');
insert into sojg_pais (nombre, moneda, continente) values ('Colombia', 'COP', 'America');

insert into sojg_ciudad (nombre, id_pais) values ('Madrid', 1);
insert into sojg_ciudad (nombre, id_pais) values ('Paris', 2);
insert into sojg_ciudad (nombre, id_pais) values ('Londres', 3);
insert into sojg_ciudad (nombre, id_pais) values ('Nueva York', 6);
insert into sojg_ciudad (nombre, id_pais) values ('Caracas', 9);
insert into sojg_ciudad (nombre, id_pais) values ('Ciudad de Mexico', 10);
insert into sojg_ciudad (nombre, id_pais) values ('Bogota', 11);
insert into sojg_ciudad (nombre, id_pais) values ('Portland', 6);

insert into sojg_institucion (nombre, tipo, id_ciudad) values ('Biblioteca Los Palos Grandes', 'Biblioteca', 5);
insert into sojg_institucion (nombre, tipo, id_ciudad) values ('Biblioteca Nacional de España', 'Biblioteca', 1);
insert into sojg_institucion (nombre, tipo, id_ciudad) values ('Strand Book Store', 'Otro', 4);
insert into sojg_institucion (nombre, tipo, id_ciudad) values ('Libreria El Pendulo', 'Otro', 6);
insert into sojg_institucion (nombre, tipo, id_ciudad) values ('Powells Books', 'Otro', 8);
insert into sojg_institucion (nombre, tipo, id_ciudad) values ('Biblioteca Luis Angel Arango', 'Biblioteca', 7);
insert into sojg_institucion (nombre, tipo, id_ciudad) values ('Shakespeare and Company', 'Otro', 2);
insert into sojg_institucion (nombre, tipo, id_ciudad) values ('Biblioteca Vasconcelos', 'Biblioteca', 6);

insert into sojg_autor (nombre, apellido) values ('Miguel', 'de Cervantes');
insert into sojg_autor (nombre, apellido) values ('Victor', 'Hugo');
insert into sojg_autor (nombre, apellido) values ('Charles', 'Dickens');
insert into sojg_autor (nombre, apellido) values ('Charlotte', 'Bronte');
insert into sojg_autor (nombre, apellido) values ('Homero', 'De Quios');
insert into sojg_autor (nombre, apellido) values ('William', 'Shakespeare');
insert into sojg_autor (nombre, apellido) values ('Horacio', 'Quiroga');
insert into sojg_autor (nombre, "2do_nombre", apellido) values ('Francis', 'Scott', 'Fitzgerald');
insert into sojg_autor (nombre, apellido) values ('Fiodor', 'Dostoyevski');
insert into sojg_autor (nombre, apellido) values ('Franz', 'Kafka');
insert into sojg_autor (nombre, apellido) values ('Oscar', 'Wilde');
insert into sojg_autor (nombre, apellido) values ('Bram', 'Stoker');
insert into sojg_autor (nombre, apellido) values ('Mary', 'Shelley');
insert into sojg_autor (nombre, apellido) values ('Albert', 'Camus');
insert into sojg_autor (nombre, apellido) values ('John', 'Steinbeck');
insert into sojg_autor (nombre, apellido) values ('Jane', 'Austen');

insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978001, 'Don Quijote de la Mancha', 863, 'Español', 1605, 'Aventuras de un hidalgo y su escudero.', 'Caballeria', 'Novela', 'SI', 1);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978002, 'Los miserables', 1200, 'Frances', 1862, 'Historia de redencion de Jean Valjean.', 'Injusticia social', 'Novela', 'SI', 2);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978003, 'Historia de dos ciudades', 450, 'Ingles', 1859, 'Paris y Londres durante la revolucion.', 'Revolucion Francesa', 'Novela', 'SI', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978004, 'Jane Eyre', 500, 'Ingles', 1847, 'La vida y amores de una institutriz.', 'Romance y drama', 'Novela', 'SI', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978005, 'La Iliada', 600, 'Griego Antiguo', 800, 'Relato de la guerra de Troya.', 'Guerra', 'Epopeya', 'NO', 4);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978006, 'Hamlet', 200, 'Ingles', 1603, 'Tragedia del principe de Dinamarca.', 'Venganza', 'Otro', 'NO', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978007, 'Cuentos de amor de locura y de muerte', 150, 'Español', 1917, 'Coleccion de relatos oscuros.', 'Muerte y tragedia', 'Cuento', 'SI', 5);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978008, 'El gran Gatsby', 218, 'Ingles', 1925, 'La vida de los millonarios en los años 20.', 'Decadencia americana', 'Novela', 'SI', 6);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978009, 'Crimen y castigo', 600, 'Ruso', 1866, 'Un estudiante comete un asesinato.', 'Culpa y redencion', 'Novela', 'SI', 7);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978010, 'La metamorfosis', 100, 'Aleman', 1915, 'Un hombre amanece convertido en insecto.', 'Aislamiento', 'Novela', 'NO', 8);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978011, 'El retrato de Dorian Gray', 250, 'Ingles', 1890, 'Un joven no envejece mientras su retrato si.', 'Vanidad', 'Novela', 'SI', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978012, 'Dracula', 400, 'Ingles', 1897, 'El viaje del famoso vampiro a Londres.', 'Terror', 'Novela', 'SI', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978013, 'Frankenstein', 280, 'Ingles', 1818, 'Un cientifico da vida a una criatura.', 'Ciencia ficcion', 'Novela', 'SI', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978014, 'El extranjero', 120, 'Frances', 1942, 'La vida de un hombre apatico en Argel.', 'Absurdo', 'Novela', 'SI', 2);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978015, 'De ratones y hombres', 110, 'Ingles', 1937, 'Dos trabajadores rurales durante la gran depresion.', 'Amistad', 'Novela', 'SI', 6);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
values (978016, 'Orgullo y prejuicio', 430, 'Ingles', 1813, 'La relacion entre Elizabeth Bennet y Mr. Darcy.', 'Romance', 'Novela', 'SI', 3);

insert into sojg_autor_libro (id_autor, isbn_libro) values (1, 978001);
insert into sojg_autor_libro (id_autor, isbn_libro) values (2, 978002);
insert into sojg_autor_libro (id_autor, isbn_libro) values (3, 978003);
insert into sojg_autor_libro (id_autor, isbn_libro) values (4, 978004);
insert into sojg_autor_libro (id_autor, isbn_libro) values (5, 978005);
insert into sojg_autor_libro (id_autor, isbn_libro) values (6, 978006);
insert into sojg_autor_libro (id_autor, isbn_libro) values (7, 978007);
insert into sojg_autor_libro (id_autor, isbn_libro) values (8, 978008);
insert into sojg_autor_libro (id_autor, isbn_libro) values (9, 978009);
insert into sojg_autor_libro (id_autor, isbn_libro) values (10, 978010);
insert into sojg_autor_libro (id_autor, isbn_libro) values (11, 978011);
insert into sojg_autor_libro (id_autor, isbn_libro) values (12, 978012);
insert into sojg_autor_libro (id_autor, isbn_libro) values (13, 978013);
insert into sojg_autor_libro (id_autor, isbn_libro) values (14, 978014);
insert into sojg_autor_libro (id_autor, isbn_libro) values (15, 978015);
insert into sojg_autor_libro (id_autor, isbn_libro) values (16, 978016);

commit;

-- 5. Función almacenada
create or replace function sojg_conversion_monetaria (
    p_monto in number,
    p_moneda_origen in varchar2
) return number is
    v_monto_dolares number;
    v_tasa_cambio number;
begin
    if upper(p_moneda_origen) = 'EUR' then
        v_tasa_cambio := 1.08;
    elsif upper(p_moneda_origen) = 'COP' then
        v_tasa_cambio := 0.00026;
    elsif upper(p_moneda_origen) = 'VES' then
        v_tasa_cambio := 0.028;
    elsif upper(p_moneda_origen) = 'GBP' then
        v_tasa_cambio := 1.25;
    elsif upper(p_moneda_origen) = 'MXN' then
        v_tasa_cambio := 0.06;
    else
        v_tasa_cambio := 1;
    end if;

    v_monto_dolares := p_monto * v_tasa_cambio;
    return round(v_monto_dolares, 2);
end;
/

-- 6. Creación de la vista de prueba
create or replace view v_sojg_prueba_conversion as
select
    id as pais_id,
    nombre as pais_nombre,
    moneda as moneda_local,
    continente,
    100 as monto_local_prueba,
    sojg_conversion_monetaria(100, moneda) as monto_en_usd
from
    sojg_pais;
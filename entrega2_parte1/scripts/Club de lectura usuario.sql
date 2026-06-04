
-- secuencias base
create sequence seq_g1_pais start with 1 increment by 1;
create sequence seq_g1_ciudad start with 1 increment by 1;
create sequence seq_g1_institucion start with 1 increment by 1;
create sequence seq_g1_autor start with 1 increment by 1;

-- tablas

-- pais
create table g1_pais (
    id number default seq_g1_pais.nextval,
    nombre varchar2(50) not null,
    moneda varchar2(10) not null,
    continente varchar2(20) not null,
    constraint pk_g1_pais primary key (id),
    constraint uq_g1_pais_nombre unique (nombre),
    constraint chk_g1_pais_continente check (continente in ('Europa', 'Asia', 'America', 'Africa', 'Oceania'))
);

-- ciudad
create table g1_ciudad (
    id number default seq_g1_ciudad.nextval,
    nombre varchar2(50) not null,
    id_pais number not null,
    constraint pk_g1_ciudad primary key (id),
    constraint fk_g1_ciudad_pais foreign key (id_pais) references g1_pais(id)
);

-- institucion
create table g1_institucion (
    id number default seq_g1_institucion.nextval,
    nombre varchar2(100) not null,
    tipo varchar2(50) not null,
    id_ciudad number not null,
    constraint pk_g1_institucion primary key (id),
    constraint uq_g1_institucion_nombre unique (nombre),
    constraint fk_g1_inst_ciudad foreign key (id_ciudad) references g1_ciudad(id),
    constraint chk_g1_inst_tipo check (tipo in ('Universidad','Colegio','Biblioteca','Escuela','Otro'))
);

-- autor
create table g1_autor (
    id_autor number default seq_g1_autor.nextval,
    nombre varchar2(50) not null,
    apellido varchar2(50) not null,
    "2do_nombre" varchar2(50),
    "2do_apellido" varchar2(50),
    nombre_artistico varchar2(50),
    constraint pk_g1_autor primary key (id_autor)
);

-- libro
create table g1_libro (
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
    constraint pk_g1_libro primary key (isbn),
    constraint fk_g1_libro_pais foreign key (id_pais_publicacion) references g1_pais(id),
    constraint fk_g1_libro_rec foreign key (isbn_continua_en) references g1_libro(isbn),
    constraint chk_g1_libro_pag check (numero_paginas > 0),
    constraint chk_g1_libro_anno check (anno_publicacion > 0),
    constraint chk_g1_libro_narra check (tipo_narrativa in ('Novela','Cuento','Mito','Leyenda','Fabula','Epopeya','Otro')),
    constraint chk_g1_libro_edic check (primera_edicion in ('SI','NO'))
);

-- autor_libro (tabla asociativa m:n)
create table g1_autor_libro (
    id_autor number not null,
    isbn_libro number not null,
    constraint pk_g1_autor_libro primary key (id_autor, isbn_libro),
    constraint fk_g1_al_autor foreign key (id_autor) references g1_autor(id_autor),
    constraint fk_g1_al_libro foreign key (isbn_libro) references g1_libro(isbn)
);


-- insercion dml hay que decidir cuales usar de momento muchos placeholders

-- paises
insert into g1_pais (nombre, moneda, continente) values ('Venezuela', 'VES', 'America');
insert into g1_pais (nombre, moneda, continente) values ('España', 'EUR', 'Europa');
insert into g1_pais (nombre, moneda, continente) values ('Inglaterra', 'GBP', 'Europa');
insert into g1_pais (nombre, moneda, continente) values ('Colombia', 'COP', 'America');

-- ciudades
insert into g1_ciudad (nombre, id_pais) values ('Caracas', 1);
insert into g1_ciudad (nombre, id_pais) values ('Madrid', 2);
insert into g1_ciudad (nombre, id_pais) values ('Londres', 3);
insert into g1_ciudad (nombre, id_pais) values ('Bogotá', 4);

-- instituciones
insert into g1_institucion (nombre, tipo, id_ciudad) values ('Biblioteca Nacional', 'Biblioteca', 1);
insert into g1_institucion (nombre, tipo, id_ciudad) values ('Universidad Central de Venezuela', 'Universidad', 1);

-- autores
insert into g1_autor (nombre, apellido, "2do_nombre", "2do_apellido", nombre_artistico) 
values ('Gabriel', 'García', 'José', 'Márquez', 'Gabo');
insert into g1_autor (nombre, apellido, "2do_nombre", "2do_apellido", nombre_artistico) 
values ('Agatha', 'Christie', 'Mary', 'Clarissa', 'Reina del Crimen');

-- libros
insert into g1_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion) 
values (9780307, 'Cien años de soledad', 417, 'Español', 1967, 'La historia de las generaciones de la familia Buendía en Macondo.', 'Realismo mágico', 'Novela', 'SI', 4);

insert into g1_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion) 
values (9780007, 'Los trece problemas', 256, 'Español', 1932, 'Colección de relatos donde Miss Marple resuelve misterios desde su silla.', 'Misterio', 'Cuento', 'NO', 3);

-- relaciones autor y libro
insert into g1_autor_libro (id_autor, isbn_libro) values (1, 9780307);
insert into g1_autor_libro (id_autor, isbn_libro) values (2, 9780007);

commit;


-- funcion de conversion monetaria a dolar

create or replace function g1_conversion_monetaria (
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
    else
        v_tasa_cambio := 1;
    end if;

    v_monto_dolares := p_monto * v_tasa_cambio;
    return v_monto_dolares;
end;
/
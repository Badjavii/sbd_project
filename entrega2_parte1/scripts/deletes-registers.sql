-- Borrar en orden inverso de dependencias
delete from sojg_mejor_actor;
delete from sojg_presentacion_de_la_obra;
delete from sojg_elenco;
delete from sojg_libro_referenciado_por_la_obra;
delete from sojg_obra;
delete from sojg_inasistencia;
delete from sojg_calendario_mes;
delete from sojg_pago_membresia;
delete from sojg_historico_grupo_lectura;
delete from sojg_historico_membresia;
delete from sojg_grupo_de_lectura;
delete from sojg_preferencia_lectura;
delete from sojg_telefono;
delete from sojg_lector;
delete from sojg_asociacion;
delete from sojg_club;
delete from sojg_ciudad;
delete from sojg_autor_libro;
delete from sojg_libro;
delete from sojg_representante;
delete from sojg_autor;
delete from sojg_institucion;
delete from sojg_pais;

commit;

-- Resetear secuencias
drop sequence sojg_seq_lector;
drop sequence sojg_seq_club;
drop sequence sojg_seq_pais;
drop sequence sojg_seq_institucion;
drop sequence sojg_seq_autor;
drop sequence sojg_seq_representante;
drop sequence sojg_seq_ciudad;
drop sequence sojg_seq_grupo_de_lectura;
drop sequence sojg_seq_obra;
drop sequence sojg_seq_pago_membresia;

create sequence sojg_seq_lector       start with 1 increment by 1;
create sequence sojg_seq_club         start with 1 increment by 1;
create sequence sojg_seq_pais         start with 1 increment by 1;
create sequence sojg_seq_institucion  start with 1 increment by 1;
create sequence sojg_seq_autor        start with 1 increment by 1;
create sequence sojg_seq_representante start with 1 increment by 1;
create sequence sojg_seq_ciudad       start with 1 increment by 1;
create sequence sojg_seq_grupo_de_lectura start with 1 increment by 1;
create sequence sojg_seq_obra         start with 1 increment by 1;
create sequence sojg_seq_pago_membresia start with 1 increment by 1;

commit;

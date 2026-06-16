col id         format 999
col nombre     format a35
col documento  format a20
select id, nombre || ' ' || apellido as nombre,
       documento_identidad as documento
from sojg_representante
order by id;

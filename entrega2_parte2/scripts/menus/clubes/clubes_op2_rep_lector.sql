col id_miembro format 999
col nombre     format a35
select l.id_miembro, l.nombre || ' ' || l.apellido as nombre
from sojg_lector l
join sojg_historico_membresia hm on (l.id_miembro = hm.id_miembro)
where (hm.estatus = 'Activa')
    and (trunc(months_between(sysdate, l.fecha_nacimiento) / 12) >= 18)
order by l.id_miembro;

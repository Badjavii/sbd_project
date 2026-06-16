-- preview
prompt ==========================================
prompt   Clubes disponibles:
prompt ==========================================
col id_club format 999
col nombre  format a40
select id_club, nombre, idioma_del_club from sojg_club order by id_club;
prompt ==========================================
prompt   Grupos existentes por club:
prompt ==========================================
col numero_de_grupo format 999
col categoria_edad  format a10
col dia_reunion     format a12
select id_club, numero_de_grupo, categoria_edad, dia_reunion, hora_inicio
from sojg_grupo_de_lectura
order by id_club, numero_de_grupo;
prompt ==========================================

accept v_id_club   number prompt 'ID Club: '
accept v_categoria char   prompt 'Categoria (Adulto/Joven/Nino): '
accept v_dia       char   prompt 'Dia de reunion (Lunes/Martes/Miercoles/Jueves/Viernes): '
accept v_hora      number prompt 'Hora inicio (17-19): '

begin
    sojg_sp_registrar_grupo(
        p_id_club     => &v_id_club,
        p_categoria   => '&v_categoria',
        p_dia_reunion => '&v_dia',
        p_hora_inicio => &v_hora
    );
exception
    when others then dbms_output.put_line('Error: ' || sqlerrm);
end;
/

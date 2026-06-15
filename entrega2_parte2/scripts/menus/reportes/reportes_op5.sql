-- ==========================================
-- ARCHIVO: menu/reportes_op5.sql
-- ==========================================
accept v_id_miembro number prompt 'ID Miembro: '
accept v_anno       number prompt 'Anno (YYYY): '
select bimestre, periodo, pct_participacion
from sojg_v_participacion
where (id_miembro = &v_id_miembro) and (anno = &v_anno);

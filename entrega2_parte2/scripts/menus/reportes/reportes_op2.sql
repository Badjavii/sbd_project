-- ==========================================
-- ARCHIVO: menu/reportes_op2.sql
-- ==========================================
accept v_id_club number prompt 'ID Club: '
select * from sojg_v_reporte_ficha_club where id_club = &v_id_club;

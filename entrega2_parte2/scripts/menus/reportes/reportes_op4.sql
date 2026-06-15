-- ==========================================
-- ARCHIVO: menu/reportes_op4.sql
-- ==========================================
accept v_anno number prompt 'Anno (YYYY): '
select * from sojg_v_medidas_financieras where anno = &v_anno;

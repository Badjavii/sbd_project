-- ==========================================
-- ARCHIVO: menu/reportes_op1.sql
-- ==========================================
accept v_id_miembro number prompt 'ID Miembro: '
select * from sojg_v_reporte_ficha_miembro where id_miembro = &v_id_miembro;

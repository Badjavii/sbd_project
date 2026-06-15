-- ==========================================
-- ARCHIVO: menu/reportes_op3.sql
-- ==========================================
accept v_isbn number prompt 'ISBN del libro: '
select * from sojg_v_reporte_ficha_libro where isbn = &v_isbn;

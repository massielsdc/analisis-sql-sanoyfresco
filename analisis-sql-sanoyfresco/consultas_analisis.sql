-- 0. Ver datos
SELECT * FROM tickets LIMIT 100;

-- 1. Ingreso total
SELECT SUM(precio_total) AS ingreso_total
FROM tickets;

-- 2. Tendencia mensual de ingresos
SELECT strftime('%Y-%m', fecha) AS mes, SUM(precio_total) AS ingreso_mensual
FROM tickets
GROUP BY mes
ORDER BY mes;

-- 3. Ventas por departamento
SELECT id_departamento, SUM(precio_total) AS ventas_departamento
FROM tickets
GROUP BY id_departamento
ORDER BY ventas_departamento DESC;

-- 4. Ventas por sección
SELECT id_seccion, SUM(precio_total) AS ventas_seccion
FROM tickets
GROUP BY id_seccion
ORDER BY ventas_seccion DESC;

-- 5. Top 10 productos por cantidad
SELECT nombre_producto, SUM(cantidad) AS total_vendido
FROM tickets
GROUP BY nombre_producto
ORDER BY total_vendido DESC
LIMIT 10;

-- 6. Top 10 productos por ingresos
SELECT nombre_producto, SUM(precio_total) AS ingreso_producto
FROM tickets
GROUP BY nombre_producto
ORDER BY ingreso_producto DESC
LIMIT 10;

-- 7. Top 20 clientes por ingresos
SELECT id_cliente, SUM(precio_total) AS ingreso_cliente
FROM tickets
GROUP BY id_cliente
ORDER BY ingreso_cliente DESC
LIMIT 20;

-- 8. Compra media por cliente
SELECT AVG(compra_total_cliente) AS compra_media_por_cliente
FROM ( 
  SELECT id_cliente, SUM(precio_total) AS compra_total_cliente 
  FROM tickets 
  GROUP BY id_cliente
) subconsulta;

-- 9. Total de pedidos
SELECT COUNT(DISTINCT id_pedido) AS total_pedidos
FROM tickets;

-- 10. Valor promedio por pedido
SELECT AVG(total_pedido) AS valor_promedio_pedido
FROM (
  SELECT id_pedido, SUM(precio_total) AS total_pedido
  FROM tickets
  GROUP BY id_pedido
) subconsulta;

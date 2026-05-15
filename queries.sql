-- Nivel Basico:
-- Pregunta 1: Mostrar todos los clientes registrados.
select * from clientes;

-- Pregunta 2: Mostrar todos los productos.
select * from productos;

-- Pregunta 3: Mostrar únicamente el nombre y precio de los productos.
select nombre, precio 
from productos;

-- Pregunta 4: Mostrar los clientes que viven en Lima.
select nombre, ciudad
from clientes
where ciudad = "lima";

-- Pregunta 5: Mostrar productos con precio mayor a 100.
select nombre_producto, precio
from productos
where precio > 100
order by precio asc;

-- Pregunta 6: Mostrar productos ordenados del más caro al más barato.
select nombre_producto, precio
from productos
order by precio DESC;

-- Pregunta 7: Mostrar las ventas realizadas después del 2026-05-02.
select id_venta, fecha_venta
from ventas
where fecha_venta > "2026-05-02";

-- Pregunta 8: Mostrar los nombres de categorías existentes.
select nombre_categoria 
from categorias;

-- Pregunta 9: Mostrar productos cuyo precio esté entre 100 y 1000.
select nombre_producto, precio 
from productos
where precio between 100 and 1000
order by precio asc;

-- Pregunta 10: Mostrar clientes cuyo nombre empiece con la letra “A”.
-- Empieza con A
select nombre
from clientes
where nombre LIKE 'A%';

-- Termina con A
select nombre
from clientes
where nombre LIKE '%A';

-- Contiene A
select nombre
from clientes
where nombre LIKE '%a%';

-- Pregunta 11: Contar cuántos clientes existen.
select count(*) as cant_clientes
from clientes;

-- Pregunta 12: Mostrar el precio promedio de los productos.
select avg(precio) as promedio_precios
from productos;

-- Pregunta 13: Mostrar el producto más caro.
select nombre_producto, precio
from productos
order by precio desc
limit 1;

-- Otro metodo
select max(precio)
from productos;

-- Pregunta 14: Mostrar el producto más barato.
select nombre_producto, precio
from productos
order by precio asc
limit 1;

-- Otro metodo
select min(precio)
from productos;

-- Pregunta 15: Mostrar el total de ventas registradas.
select sum(total) as total_ventas
from ventas;

-- Nivel Intermedio
-- Pregunta 1: Mostrar el nombre del cliente y el total de cada venta realizada
select c.nombre, v.total
from clientes c
join ventas v
on c.id_cliente = v.id_cliente;

-- Pregunta 2: Mostrar el nombre de cada producto junto con su categoria
select p.nombre_producto, c.nombre_categoria
from productos p 
join categorias c
on p.id_categoria = c.id_categoria;

-- Pregunta 3: Mostrar todas las ventas realizadas por clientes que viven en lima
select c.nombre, c.ciudad, v.total, v.fecha_venta
from clientes c
join ventas v
on c.id_cliente = v.id_cliente
where c.ciudad = "lima";

-- Pregunta 4: Mostrar cuantas ventas realizo cada cliente
select c.nombre, count(v.id_venta) as cant_ventas
from clientes c
join ventas v
on c.id_cliente = v.id_cliente
group by c.nombre
order by cant_ventas desc;

-- Pregunta 5: Mostrar el total de dinero gastado por cada cliente
select c.nombre, sum(v.total) as total_gastado
from clientes c
join ventas v
on c.id_cliente = v.id_cliente
group by c.nombre
order by total_gastado desc;

-- Pregunta 6: Mostrar el nombre del cliente y la cantidad total de dinero que gastó, ordenado del mayor al menor
select c.nombre, sum(v.total) as venta_total
from clientes c
join ventas v
on c.id_cliente = v.id_cliente
group by c.nombre
order by venta_total desc;

-- Pregunta 7: Mostrar el nombre de cada categoría y cuántos productos tiene
select c.nombre_categoria, count(p.id_producto) as cant_total
from productos p
join categorias c
on p.id_categoria = c.id_categoria
group by nombre_categoria;

-- Pregunta 8: Mostrar el nombre del producto, la cantidad vendida y el subtotal de cada detalle de venta
select p.nombre_producto, d.cantidad, d.subtotal
from productos p
join detalle_ventas d
on p.id_producto = d.id_producto;

-- Pregunta 9: Mostrar qué cliente realizó la venta más cara
select c.nombre, v.total
from clientes c
join ventas v
on c.id_cliente = v.id_cliente
order by v.total desc
limit 1;

-- Pregunta 10: Mostrar cuantos productos distintos fueron vendidos
SELECT 
    COUNT(DISTINCT d.id_producto) AS productos_distintos
FROM detalle_ventas d;

-- Pregunta 11: Mostrar cuántas ciudades diferentes tienen clientes registrados
select count(distinct c.ciudad) as cant_ciudad
from clientes c;

-- Pregunta 12: Mostrar cuántos clientes distintos realizaron compras
select count(distinct v.id_cliente) as clientes_distintos
from ventas v;

-- Pregunta 13: Mostrar cuántas categorías diferentes tienen productos registrados.
select count(distinct p.id_categoria) as categ_diferentes
from productos p;

-- Pregunta 14: Mostrar el promedio de precios sin repetir valores iguales.
select round(AVG(distinct p.precio),2) as prom_precios
from productos p;

-- Pregunta 15: Mostrar la suma de precios únicos de productos.
select sum(distinct p.precio) as suma_precios
from productos p;

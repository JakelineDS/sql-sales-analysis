Nivel Basico:
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

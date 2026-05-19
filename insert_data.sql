INSERT INTO categorias (nombre_categoria) VALUES
("Laptos"),
("Accesorios"),
("Monitores"),
("Audio");

INSERT INTO clientes(nombre, ciudad, correo) VALUES 
('Ana Torres', 'Lima', 'ana@gmail.com'),
('Carlos Ruiz', 'Arequipa', 'carlos@gmail.com'),
('Lucia Mendoza', 'Cusco', 'lucia@gmail.com'),
('Pedro Silva', 'Lima', 'pedro@gmail.com');

INSERT INTO productos(nombre_producto, precio, id_categoria) VALUES 
('Laptop Lenovo', 2500.00, 1),
('Mouse Logitech', 80.00, 2),
('Monitor Samsung', 900.00, 3),
('Audifonos JBL', 150.00, 4),
('Teclado Redragon', 120.00, 2);

INSERT INTO ventas(id_cliente, fecha_venta, total) VALUES 
(1, '2026-05-01', 2580.00),
(2, '2026-05-03', 900.00),
(3, '2026-05-04', 230.00),
(1, '2026-05-06', 150.00);

INSERT INTO detalle_ventas(id_venta, id_producto, cantidad, subtotal) VALUES
(1, 1, 1, 2500.00),
(1, 2, 1, 80.00),
(2, 3, 1, 900.00),
(3, 5, 1, 120.00),
(3, 2, 1, 80.00),
(4, 4, 1, 150.00);

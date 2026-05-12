CREATE DATABASE analisis_ventas;
USE analisis_ventas;

CREATE TABLE clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100),
ciudad VARCHAR(100),
correo VARCHAR(100)
);

CREATE TABLE categorias (
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
nombre_categoria VARCHAR(100) 
);

CREATE TABLE productos (
id_producto INT PRIMARY KEY AUTO_INCREMENT,
nombre_producto VARCHAR(100),
precio DECIMAL(10,2),
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE ventas (
id_venta INT PRIMARY KEY AUTO_INCREMENT,
fecha_venta DATE,
total DECIMAL(10,2),
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE detalle_ventas (
id_detalle INT PRIMARY KEY AUTO_INCREMENT,
id_venta INT,
id_producto INT,
cantidad INT,
subtotal DECIMAL(10,2),
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

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

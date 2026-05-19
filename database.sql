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

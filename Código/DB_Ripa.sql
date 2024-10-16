CREATE DATABASE ripa;
USE ripa;

CREATE TABLE usuario (
id_usuario int NOT NULL auto_increment primary key,
nombre_usuario varchar(30) NOT NULL,
contraseña varchar(30) NOT NULL,
rol varchar(30) NOT NULL
);

CREATE TABLE empleados (
cod_empleado int NOT NULL primary key,
cedula int NOT NULL,
nombre varchar(50) NOT NULL,
apellido varchar(50) NOT NULL,
edad int NOT NULL,
fecha_ingreso date NOT NULL,
puesto varchar(30) NOT NULL
);

CREATE TABLE empleado_usuario (
cod_empleado int NOT NULL,
id_usuario int NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
FOREIGN KEY (cod_empleado) REFERENCES empleados(cod_empleado)
);

CREATE TABLE producto (
id_producto int NOT NULL auto_increment primary key,
nombre_producto varchar(50) NOT NULL,
precio_producto int NOT NULL,
stock_producto int NOT NULL
);

CREATE TABLE ventas (
id_venta int NOT NULL auto_increment primary key,
total_venta int NOT NULL,
vendedor varchar(30) NOT NULL
);

CREATE TABLE producto_venta (
id_producto int NOT NULL,
id_venta int NOT NULL,
FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta)
);

CREATE TABLE inventario (
id_inventario int NOT NULL primary key,
nombre_inv varchar(30) NOT NULL,
stock_inv int NOT NULL,
precio_inv int NOT NULL
);

CREATE TABLE inventario_proveedor (
id_inventario int NOT NULL,
id_proveedor int NOT NULL,
FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario),
FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor)
);

CREATE TABLE proveedor (
id_proveedor int NOT NULL primary key,
nombre varchar(30) NOT NULL,
telefono int NOT NULL
);

CREATE TABLE inventario_lotes (
id_inventario int NOT NULL,
lote int NOT NULL,
FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario),
FOREIGN KEY (lote) REFERENCES lotes(lote)
);

CREATE TABLE lotes (
lote int NOT NULL primary key,
fecha_vencimiento varchar(30) NOT NULL,
cantidad int NOT NULL
);

SELECT * FROM empleados;


insert into empleados(cod_empleado, cedula, nombre, apellido, edad, fecha_ingreso, puesto) values(1001, 1001687313, "Miguel Angel", "Restrepo Saavedra", 23, "2024-10-10", "cajero");
select * from usuario;
select * from empleado_usuario;






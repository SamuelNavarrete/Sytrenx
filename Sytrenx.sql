CREATE DATABASE Sytrenx;
USE Sytrenx;

CREATE TABLE Productos (
Id_Producto INT PRIMARY KEY IDENTITY (1,1),
Id_Tipo INT NOT NULL,
Nombre_Producto VARCHAR (100) NOT NULL,
Clave_Producto VARCHAR (50) NOT NULL,
Existencia_Producto INT NOT NULL,
Id_Vendedor INT NOT NULL);

CREATE TABLE Tipo_Producto (
Id_Tipo INT PRIMARY KEY IDENTITY (1,1),
Tipo_Producto VARCHAR (100) NOT NULL);

CREATE TABLE Vendedor (
Id_Vendedor INT PRIMARY KEY IDENTITY (1,1),
Nombre_Vendedor VARCHAR (100) NOT NULL,
Telefono_Vendedor VARCHAR (50) NOT NULL,
Correo_Vendedor VARCHAR (50) NOT NULL);

CREATE TABLE Cliente (
Id_Cliente INT PRIMARY KEY IDENTITY (1,1),
Nombre_Cliente VARCHAR (100) NOT NULL,
Direccion_Cliente VARCHAR (255) NOT NULL,
Telefono_Cliente VARCHAR (50) NOT NULL,
Correo_Cliente VARCHAR (50) NOT NULL,
Id_Vendedor INT NOT NULL);

CREATE TABLE Pedido (
Id_Pedido INT PRIMARY KEY IDENTITY (1,1),
Id_cliente INT NOT NULL,
Fecha_Pedido DATETIME NOT NULL,
Id_Producto INT NOT NULL,
Id_Cantidad_Producto INT NOT NULL,
Id_Vendedor INT NOT NULL);

SELECT * FROM Vendedor;
SELECT * FROM Productos;
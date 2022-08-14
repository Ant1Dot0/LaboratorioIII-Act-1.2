CREATE DATABASE UNOaUNO
GO

USE UNOaUNO
GO

CREATE TABLE CLIENTES
(
	IDCLIENTE BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	DNI BIGINT NOT NULL UNIQUE CHECK(DNI> 0),
	NOMBRE NVARCHAR(50) NOT NULL,
	APELLIDO NVARCHAR(50) NOT NULL,
)
GO


CREATE TABLE CONTACTO_CLIENTES
(
	ID BIGINT NOT NULL FOREIGN KEY REFERENCES CLIENTES(IDCLIENTE),
	NROTELEFONO NVARCHAR(50) NOT NULL,
	DIRECCION VARCHAR(60) NOT NULL,
	EMAIL VARCHAR(60) NULL,
	CP VARCHAR(6) NOT NULL,
	CIUDAD VARCHAR(30) NOT NULL,
	PROVINCIA VARCHAR(30) NOT NULL,
)
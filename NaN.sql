CREATE DATABASE NaN
GO
USE NaN

CREATE TABLE Medicos
(
[ID] INT NOT NULL PRIMARY KEY identity(1,1),     
nombreMedico varchar(100) not null,              
)

GO

CREATE TABLE Especialidades
(
[ID] INT NOT NULL PRIMARY KEY identity(1,1),     
nombreEspecialidad varchar(100) not null,            
)

GO
CREATE TABLE MedicosXespecialidades
(
[IDMedico] INT FOREIGN KEY REFERENCES Medicos,
[IDEspecialidad] INT FOREIGN KEY REFERENCES Especialidades
)
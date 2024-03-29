CREATE DATABASE ejemplo
USE  ejemplo

CREATE TABLE Persona (
PersonaID INT PRIMARY KEY,
Nombre1 NVARCHAR,

)

CREATE TABLE Cedula (
CedulaID INT PRIMARY KEY,
Nombre NVARCHAR,
PersonaID INT UNIQUE FOREIGN KEY REFERENCES Persona(PersonaID)

)

CREATE TABLE Clasificacion(
ClasificacionID INT PRIMARY KEY,
Nombre NVARCHAR
)

CREATE TABLE Producto (
ProductoID INT PRIMARY KEY,
Nombre NVARCHAR,
ClasificacionID INT FOREIGN KEY REFERENCES Clasificacion(ClasificacionID)
)

CREATE TABLE TipoTelefono (
TipoTelefonoID INT PRIMARY KEY, 
)


CREATE TABLE Telefono (
TelefonoID INT PRIMARY KEY,
PersonaID INT FOREIGN KEY REFERENCES Persona(PersonaID),
TipoTelefonoID INT FOREIGN KEY REFERENCES TipoTelefono(TipoTelefonoID)

)



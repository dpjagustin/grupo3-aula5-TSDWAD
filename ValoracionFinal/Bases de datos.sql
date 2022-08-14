DROP DATABASE peluqueriaCanina;
CREATE DATABASE peluqueriaCanina DEFAULT CHARACTER SET utf8;
USE peluqueriaCanina;

-- Realice la consulta correspondiente para crear la tabla Perro,
-- teniendo en cuenta sus claves foráneas y primarias

CREATE TABLE Dueno
(
    DNI INT(8) PRIMARY KEY NOT NULL,
    Nombre VARCHAR (30) NOT NULL,
    Apellido VARCHAR (30) NOT NULL,
    Telefono INT NOT NULL,
    Direccion VARCHAR (50) NOT NULL
);

CREATE TABLE Perro
(
    ID_Perro INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR (30) NOT NULL,
    Fecha_nac DATE NOT NULL,
    Sexo ENUM('M','H') NOT NULL,
    DNI_dueno INT,
    CONSTRAINT DNI_dueno_fk
	FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
);

CREATE TABLE Historial
(
    ID_Historial INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    Perro_ID INT,
    Descripcion VARCHAR(50) NOT NULL,
    Monto DOUBLE NOT NULL,
    CONSTRAINT  Perro_fk
	FOREIGN KEY (Perro_ID) REFERENCES Perro(ID_Perro)
);

-- Inserte en la tabla correspondiente un nuevo animal
-- (perro) como paciente y el dueño asociado a ese animal

INSERT INTO Dueno VALUES
(30419759, 'Dani', 'Lopez', 351245897, 'Patria 700'),
(34769125, 'Lean', 'Salguero', 353459789, 'Sucre 350'),
(36138957, 'Pedro', 'Gonzalez', 351698827, 'Tucuman 650'),
(33916789, 'Ivan', 'Alvarez', 351897462, ' Estrada 45');

INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
('Gri', '2017-12-15', 'H', 34769125),
('Pipi', '2014-10-11', 'H', 30419759),
('Negro', '2020-03-12', 'H', 30419759),
('Trucha', '2021-05-05', 'M', 33916789),
('Savora', '2022-09-08', 'M', 36138957),
('Pinnot', '2018-12-09', 'M', 36138957),
('Igyy', '2010-11-05', 'M', 34769125);

INSERT INTO Historial (Fecha, Perro_ID, Descripcion, Monto) VALUES
('2022-07-09', 6 , 'ConsultaBasica', 2000),
('2022-07-06', 2 , 'ConsultaUrgencia', 4000),
('2022-01-09', 1 , 'Peluqueria', 3000),
('2020-03-15', 3 , 'Inyectable', 5000),
('2018-12-09', 5 , 'Castracion', 7000),
('2018-12-09', 4 , 'Internacion', 20000),
('2006-05-04', 7 , 'Inyectable', 100);

-- Borre un animal que ya no va a ser atendido
-- Para ello consulte antes en el historial,
-- algún animal que ya no sea atendido desde hace mucho tiempo

SELECT *
FROM Historial
ORDER BY Fecha DESC;

DELETE FROM Historial
WHERE Perro_ID=7;
DELETE FROM Perro
WHERE ID_Perro=7;

-- Actualice la fecha de nacimiento de algún animal (perro) que usted considere

UPDATE Perro
SET Fecha_nac = '2018-12-31'
WHERE ID_Perro=6;

--- Realice una consulta multitabla que arroje el
-- nombre de todos los perros cuyos dueños se llaman Pedro

SELECT P.Nombre
FROM Perro P
INNER JOIN Dueno D
ON D.DNI = P.DNI_dueno
WHERE D.Nombre = 'Pedro';

-- Obtener todos los perros que asistieron a la peluquería en 2022

SELECT P.Nombre
FROM Perro P
INNER JOIN Historial H
ON H.Perro_ID = P.ID_Perro 
WHERE YEAR(Fecha) = 2022;

-- Obtener los ingresos percibidos en Julio del 2022

SELECT SUM(Monto)
FROM Historial
WHERE YEAR(fecha)=2022 AND MONTH(fecha)=07;

-- Insertar un nuevo registro en la tabla
-- historial de un perro cuyo ID Perro es igual a 10

INSERT INTO Perro VALUES
( 10, 'Manchita', '2015-12-15', 'M', 34769125);

-- Escriba una consulta que permita actualizar la dirección de un dueño
-- Su nueva dirección es Libertad 123

UPDATE Dueno
SET Direccion = "Libertad 123"
WHERE DNI = 34769125;

-- Vaciar la tabla historial y resetear el contador del campo ID

TRUNCATE Historial;

-- Obtener todos los dueños que tengan perros de menos de 5 años de edad
-- que no hayan visitado la peluquería en el año 2022

SELECT Nombre, TIMESTAMPDIFF(YEAR,Fecha_nac,CURDATE()) AS Edad
FROM Perro
WHERE Sexo = 'M'
AND TIMESTAMPDIFF(YEAR,Fecha_nac,CURDATE()) < 5;

-- Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022

SELECT * 
FROM Perro
WHERE Sexo ='M'
AND Fecha_nac BETWEEN '2020-01-01' AND '2022-12-31';
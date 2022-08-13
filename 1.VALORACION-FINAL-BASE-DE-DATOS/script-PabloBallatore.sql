## Resolucion de ejercicios

###  Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

CREATE DATABASE veterinariaCanina DEFAULT CHARSET utf8;

USE veterinariaCanina;


CREATE TABLE Dueno (
DNI INT (10) NOT NULL  ,
Nombre VARCHAR (30) NOT NULL ,
Apellido VARCHAR (30) NOT NULL ,
Telefono VARCHAR (30) NOT NULL,
Direccion VARCHAR (50) NOT NULL ,
PRIMARY KEY (DNI)) CHARSET utf8;


CREATE TABLE Perro (
ID_Perro INT (10) NOT NULL AUTO_INCREMENT  ,
Nombre VARCHAR (30) NOT NULL ,
Fecha_nac DATE NOT NULL,
Sexo CHAR  NOT NULL,
DNI_dueno INT(10) NOT NULL,
PRIMARY KEY (ID_Perro) ,
CONSTRAINT DNI_dueno_fk
FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
) CHARSET utf8;


CREATE TABLE Historial (
ID_Historial INT (10) NOT NULL AUTO_INCREMENT  ,
Fecha DATE NOT NULL,
Perro INT(10)  NOT NULL,
Descripcion VARCHAR(50) NOT NULL,
Monto DOUBLE NOT NULL,
PRIMARY KEY (ID_Historial) ,
CONSTRAINT  Perro_fk
FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
) CHARSET utf8;


###  Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

insert into dueno  values (32312323, 'Ivan', 'Soriano', '3548231289', 'Av. Eden 200');
insert into dueno  values (34769125, 'Claudia', 'Perez', '3548548978', ' San Vicente 123');
insert into dueno  values (25125304, 'Damián', 'Díaz', '3548324574', ' Sarmiento 1294');
insert into dueno  values (33916789, 'Pedro', 'Oliva', '3548746312', ' Chicago  1000');

insert into perro values ( DEFAULT,'Jym', '2015-11-20', 'M', 32312323);
insert into perro values ( DEFAULT,'Sam', '2010-09-09', 'M', 34769125);
insert into perro values ( DEFAULT,'Toto', '2020-09-01', 'M', 25125304);
insert into perro values ( DEFAULT,'Lola', '2018-07-05', 'H', 33916789);
insert into perro values ( DEFAULT,'Dana', '2019-03-24', 'H', 32312323);

insert into historial values (DEFAULT,'2022-07-09', 1 , 'ConsultaBasica', 2000);
insert into historial values (DEFAULT,'2022-07-06', 2 , 'ConsultaUrgencia', 4000);
insert into historial values (DEFAULT,'2022-01-09', 3 , 'Peluqueria', 3000);
insert into historial values (DEFAULT,'2020-03-15', 4 , 'Inyectable', 5000);

### Actualice la fecha de nacimiento de algún animal (perro) que usted considere.

update perro
set Fecha_nac = '2019-09-02'
where ID_Perro=5;

### Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro

select p.Nombre
 from perro p
 inner join dueno d
 on d.DNI = p.DNI_dueno
 where d.Nombre = 'Pedro';
 



















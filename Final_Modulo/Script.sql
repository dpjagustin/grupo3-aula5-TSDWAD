##Creacion de Base de Datos.
CREATE database Peluqueria_Canina; 

##Verificacion de la Base de datos Creada.
show databases;

##Seleccion de la Base de datos a utilizar.
use Peluqueria_Canina;

##Creacion de Tabla de los Dueños.
CREATE TABLE IF NOT EXISTS `Peluqueria_Canina`.`Dueño` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(255) NOT NULL,
  `Apellido` VARCHAR(255) NOT NULL,
  `Telefono` VARCHAR(255) NOT NULL,
  `Domicilio` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE INDEX `Apellido_UNIQUE` (`Apellido` ASC) VISIBLE,
  UNIQUE INDEX `Nombre_UNIQUE` (`Nombre` ASC) VISIBLE);
  
  
##Creacion de la Tabla de los Perros.
CREATE TABLE IF NOT EXISTS `Peluqueria_Canina`.`Perro` (
  `ID_Perro` INT NOT NULL,
  `Nombre` VARCHAR(255) NOT NULL,
  `Fecha_nac` VARCHAR(255) NOT NULL,
  `Sexo` VARCHAR(255) NOT NULL,
  `DNI_Dueño` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  UNIQUE INDEX `Nombre_UNIQUE` (`Nombre` ASC) VISIBLE,
  UNIQUE INDEX (`Fecha_nac` ASC) INVISIBLE,
  CONSTRAINT `DNI_Dueño`
    FOREIGN KEY (`DNI_Dueño`)
    REFERENCES `Peluqueria_Canina`.`Dueño` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

##Creacion de la Tabla de los Historiales. 
CREATE TABLE IF NOT EXISTS `Peluqueria_Canina`.`Historial` (
  `ID_Historial` INT NOT NULL,
  `Fecha` VARCHAR(255) NOT NULL,
  `Perro` INT NOT NULL,
  `Descripcion` VARCHAR(255) NOT NULL,
  `Monto` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  UNIQUE INDEX `Perro_UNIQUE` (`Perro` ASC) VISIBLE,
  CONSTRAINT `Perro`
    FOREIGN KEY (`Perro`)
    REFERENCES `Peluqueria_Canina`.`Perro` (`ID_Perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

## Agregado de los registros de animales , dueños e historiales.
INSERT into Dueño (DNI, Nombre, Apellido, Telefono, Domicilio)
values
 (38000111,'Alejandro','Romero','123456789','Romeo Santos 1'),
 (39000222,'Homero','Lala','123123123','Alberdi 9'),
 (40000333,'Tomas','Olmos','55554444','Colon 72'),
 (35000111,'Lucia','Ramos','145333329','Argentina 54');
 
 INSERT into Perro (ID_Perro,Nombre, Fecha_nac, Sexo, DNI_Dueño)
 values
  (1,'Pepito','1/6/22','Macho',38000111),
  (2,'Lolita','12/2/20','Hembra',39000222),
  (3,'Mirko','20/7/21','Macho',40000333),
  (4,'Tere','4/1/22','Hembra',35000111);
 
 INSERT into Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
 values
  (1,'1/6/22',1,'Chequeo General','1000'),
  (2,'4/6/22',2,'Ulcera','2500'),
  (3,'20/7/22',3,'Vomito','1500'),
  (4,'22/7/22',4,'Hongos en la piel','2200');


## Actualizar fecha de nacimiento de uno de los animales.
UPDATE Perro SET Fecha_nac = '21/7/22' WHERE ID_Perro =3;

#Actualizar Domicilio de uno de los dueños a Libertar 123.
UPDATE Dueño SET Domicilio = 'Libertad 123' WHERE DNI = 35000111;


  

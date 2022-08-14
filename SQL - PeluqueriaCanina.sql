-- Crear Base de Datos y Tablas según Modelo Relacional de una peluquería canina.

create database PeluqueriaCanina; 

use peluqueriacanina; 

create table dueno (
DNI int NOT NULL, 
Nombre varchar (35), 
Apellido varchar (50), 
Telefono int, 
Direccion varchar (150),
constraint pk_cd primary key (DNI)
);

create table perro (
ID_Perro int NOT NULL, 
Nombre varchar (20), 
Fecha_nac date, 
Sexo char (6), 
DNI_dueno int NOT NULL, 
constraint pk_cp primary key (ID_Perro),
constraint fk_fd1 foreign key (DNI_dueno) references dueno (DNI)
);

create table historial (
ID_Historial int NOT NULL, 
Fecha datetime, 
Perro int NOT NULL, 
Descripcion varchar (515), 
Monto float, 
constraint pk_ch primary key (ID_Historial), 
constraint fk_fp1 foreign key (Perro) references Perro (ID_Perro)
); 



/* 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.*/

INSERT INTO dueno VALUES (28957346, 'Carina', 'Payleman', 354128720, 'Calle Mitre 106');
INSERT INTO perro VALUES (13, 'Puppy', '2012-12-13', 'Macho', 28957346); 

SELECT * FROM dueno;
SELECT * FROM perro;


/*9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123*/
SELECT * FROM dueno; 

UPDATE dueno SET Direccion = 'Libertad 123' WHERE Direccion = 'Calle Mitre 106'; 

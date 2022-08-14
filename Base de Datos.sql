#Creacion de BD
create database if not exists PeluqueriaPerros;
#Seleccion de BD
use PeluqueriaPerros;
#Tabla Dueño
create table Dueño(
DNI int primary key not null,
Nombre varchar(25) not null,
Apellido varchar(25) not null,
Telefono bigint not null,
Dirección varchar(50)
);
USE PeluqueriaPerros;
#Nuevo Dato
insert into Dueño ( DNI, Nombre, Apellido, Telefono, Dirección) value
("4223", 'Guille', 'Zapata', 3516245556, 'Dean funes 143'),
("4123", 'Pedro', 'Perez', 4789689, 'Belgrano 101');
#Tabla Perro
create table Perro (
ID_Perro int primary key auto_increment,
Nombre varchar(25) not null,
Fecha_Nacimiento date,
Sexo varchar(25),
Dueño int,
foreign key (Dueño) references Dueño(Nombre)
);
USE PeluqueriaCanina;
#Inserto Perro 
insert into Perro (ID_Perro, Nombre, Fecha_Nacimiento, Sexo, Dueño) value
(1, 'Puppy', '2012-12-11', 'M', "Pedro"),
(3, 'Mirkito', '2020-10-8', 'M', "Guille");

#Ejercicio 5
select* from Perro
where Dueño = Pedro 
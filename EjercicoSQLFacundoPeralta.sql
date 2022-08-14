-- Ejercicio seleccionado numero 7
create TABLE Dueno (
DNI int not null auto_increment,
nombre varchar(50) not null,
apellido varchar(50) not null,
telefono int(255) not null,
direccion varchar(200) not null,
primary key (DNI)
);

-- cargo 3 dueños a la base de datos de dueno
insert into dueno (DNI,nombre,apellido,telefono,direccion) values (38281623,'Facundo','Peralta', 123456,'San Juan 300, Rio Ceballos, Córdoba');
insert into dueno (DNI,nombre,apellido,telefono,direccion) values (11236250,'Hector','Campos',123456887,'Av Chacabuco, Cba Captial');
insert into dueno (DNI,nombre,apellido,telefono,direccion) values (32426912, 'Valentina','Benitez', 558684,'Sarmiento 1234, Rio Ceballos'); 
-- corroboro la carga de los dueño en la tabla dueno
select * from dueno;

-- creo la tabla perro 
create table perro(
id_perro int not null auto_increment,
nombre varchar(50) not null,
fecha_nac date,
sexo varchar(12),
dni_dueno int not null,
primary key (id_perro),
foreign key (dni_dueno) references dueno (DNI)
);
-- Cargo los perros en la tabla.
insert into perro (nombre,fecha_nac,sexo,dni_dueno)
values
	('Ringo','2019-05-30','Macho',38281623),
    ('Pepper','2018-09-10','Hembra',32426912),
    ('Tom', '2022-05-19','Macho',11236250);
-- Verifico la carga
select * from perro;

-- Creo la tabla historial.
create table historial (
id_historial int not null auto_increment,
fecha date not null,
perro int not null,
descripcion varchar(250) not null,
monto float not null,
primary key(id_historial),
foreign key (perro) references perro(id_perro)
);

-- cargo transacciones
insert into historial(fecha,perro,descripcion,monto) 
values
	('2022-07-15',1,'Control por otitis. Se le indicó medicación y trat, volver en 24 horas para control',1500),
    ('2022-07-16',1,'Control por otitis. Se da de alta al perro',2500.50),
    ('2021-05-19',2,'Castración',5000);
    
select * from historial;

-- Ingresos percibidos en Julio del 2022.

Select sum(monto) as ingresos_julio_2022 from historial where fecha between '2022-07-01' and '2022-07-31';
 
    
    





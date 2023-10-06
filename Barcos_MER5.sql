drop database barcos;
create database barcos;
use barcos;

create table club(
id int auto_increment,
club varchar(100) unique not null,
primary key (id)
);

create table amarre(
id int auto_increment,
cuota double not null,
primary key (id)
);

create table barco(
id int auto_increment,
nombre varchar(50) unique not null,
matricula varchar(50) unique not null,
id_amarre int not null,
primary key (id),
foreign key (id_amarre) references amarre(id)
);

create table socio(
id int auto_increment,
nombre varchar(30) not null,
apellido_paterno varchar(30) not null,
apellido_materno varchar(30) not null,
rfc varchar(20) not null,
fecha_nacimiento date not null,
codigo_postal varchar(10) not null,
localidad varchar(50) not null,
calle varchar(100) not null,
primary key (id)
);

create table patron(
id int auto_increment,
nombre varchar(30) not null,
apellido_paterno varchar(30) not null,
apellido_materno varchar(30) not null,
rfc varchar(20) not null,
fecha_nacimiento date not null,
codigo_postal varchar(10) not null,
localidad varchar(50) not null,
calle varchar(100) not null,
primary key (id)
);

create table salida(
id int auto_increment,
destino varchar(100) not null,
hora_salida time not null,
fecha date not null,
id_barco int not null,
primary key(id),
foreign key (id_barco) references barco(id)
);

create table socio_barco(
id int auto_increment,
id_socio int not null,
id_barco int not null,
primary key (id),
foreign key (id_socio) references socio(id),
foreign key (id_barco) references barco(id)
);

create table socio_salida(
id int auto_increment,
id_socio int not null,
id_salida int not null,
primary key (id),
foreign key (id_socio) references socio(id),
foreign key (id_salida) references salida(id)
);

create table patron_salida(
id int auto_increment,
id_patron int not null,
id_salida int not null,
primary key (id),
foreign key (id_patron) references patron(id),
foreign key (id_salida) references salida(id)
);

create table patron_barco(
id int auto_increment,
id_patron int not null,
id_barco int not null,
primary key (id),
foreign key (id_barco) references barco(id),
foreign key (id_patron) references patron(id)
);

insert into club(club) values ('Club Náutico Marítimo'),
('Club Náutico Azul'),
('Club de Vela Estrella'),
('Club Náutico del Sol'),
('Club Náutico del Mar'),
('Club de Navegantes'),
('Club Náutico La Ola'),
('Club de Mar y Viento'),
('Club Náutico Bahía'),
('Club de Regatas Luna');

insert into amarre(cuota) values 
(150.50),(200.25),(180.75),(225.30),(175.00),(210.80),(190.50),(198.20),(185.75),(205.90);

insert into barco(nombre,matricula,id_amarre) values 
('Velero Azul', 'ABC123', 1),
('Yate Dorado', 'DEF456', 2),
('Lancha Veloz', 'GHI789', 3),
('Bote Marítimo', 'JKL012', 4),
('Catamarán Estrella', 'MNO345', 5),
('Barcaza Tranquila', 'PQR678', 6),
('Bote de Pesca', 'STU901', 7),
('Yate de Lujo', 'VWX234', 8),
('Barco de Vela', 'YZA567', 9),
('Catamarán Aventura', 'BCD890', 10);

insert into socio (nombre, apellido_paterno, apellido_materno, rfc, fecha_nacimiento, codigo_postal, localidad, calle) values
('Juan', 'Pérez', 'Gómez', 'PERJ800101ABC', '1980-01-01', '12345', 'Ciudad de México', 'Calle Principal 123'),
('María', 'López', 'García', 'LOGM850202DEF', '1985-02-02', '54321', 'Guadalajara', 'Avenida Secundaria 456'),
('Carlos', 'González', 'Hernández', 'GOHC900303GHI', '1990-03-03', '67890', 'Monterrey', 'Calle del Mar 789'),
('Ana', 'Martínez', 'Rodríguez', 'MARA750404JKL', '1975-04-04', '45678', 'Puebla', 'Avenida del Lago 101'),
('Pedro', 'Sánchez', 'Ramírez', 'SARP840505MNO', '1984-05-05', '98765', 'Tijuana', 'Boulevard Costero 202'),
('Laura', 'Herrera', 'Luna', 'HELJ820606PQR', '1982-06-06', '23456', 'Cancún', 'Calle de la Brisa 303'),
('Miguel', 'Flores', 'Díaz', 'FLDM810707STU', '1981-07-07', '87654', 'Mérida', 'Avenida del Sol 404'),
('Elena', 'Torres', 'Vargas', 'TOVE880808VWX', '1988-08-08', '76543', 'Acapulco', 'Calle del Puerto 505'),
('Ricardo', 'Ortega', 'Soto', 'ORSR890909YZA', '1989-09-09', '54321', 'Veracruz', 'Boulevard Marítimo 606'),
('Sofía', 'Gómez', 'Pérez', 'GOPH860910BCD', '1986-09-10', '12345', 'Mazatlán', 'Avenida del Mar 707'),
('Luis', 'Gómez', 'Hernández', 'GOHL800101ABC', '1980-01-01', '12345', 'Ciudad de México', 'Calle Principal 123'),
('María', 'López', 'García', 'LOGM850202DEF', '1985-02-02', '54321', 'Guadalajara', 'Avenida Secundaria 456'),
('Carlos', 'Martínez', 'Ramírez', 'MARC900303GHI', '1990-03-03', '67890', 'Monterrey', 'Calle del Mar 789'),
('Ana', 'Pérez', 'Rodríguez', 'PERA750404JKL', '1975-04-04', '45678', 'Puebla', 'Avenida del Lago 101'),
('Pedro', 'Sánchez', 'Díaz', 'SAPD840505MNO', '1984-05-05', '98765', 'Tijuana', 'Boulevard Costero 202'),
('Laura', 'Hernández', 'Luna', 'HEHL820606PQR', '1982-06-06', '23456', 'Cancún', 'Calle de la Brisa 303'),
('Miguel', 'Flores', 'Vargas', 'FLVM810707STU', '1981-07-07', '87654', 'Mérida', 'Avenida del Sol 404'),
('Elena', 'Torres', 'Soto', 'TORS880808VWX', '1988-08-08', '76543', 'Acapulco', 'Calle del Puerto 505'),
('Ricardo', 'Ortega', 'Vega', 'ORVR890909YZA', '1989-09-09', '54321', 'Veracruz', 'Boulevard Marítimo 606'),
('Sofía', 'García', 'Pérez', 'GAPG860910BCD', '1986-09-10', '12345', 'Mazatlán', 'Avenida del Mar 707');

insert into patron (nombre, apellido_paterno, apellido_materno, rfc, fecha_nacimiento, codigo_postal, localidad, calle) values
('Juan', 'Gómez', 'Hernández', 'GOHJ800101ABC', '1980-01-01', '12345', 'Ciudad de México', 'Calle Principal 123'),
('María', 'López', 'García', 'LOGM850202DEF', '1985-02-02', '54321', 'Guadalajara', 'Avenida Secundaria 456'),
('Carlos', 'Martínez', 'Ramírez', 'MARCR900303GHI', '1990-03-03', '67890', 'Monterrey', 'Calle del Mar 789'),
('Ana', 'Pérez', 'Rodríguez', 'PERA750404JKL', '1975-04-04', '45678', 'Puebla', 'Avenida del Lago 101'),
('Pedro', 'Sánchez', 'Díaz', 'SAPD840505MNO', '1984-05-05', '98765', 'Tijuana', 'Boulevard Costero 202'),
('Laura', 'Hernández', 'Luna', 'HEHL820606PQR', '1982-06-06', '23456', 'Cancún', 'Calle de la Brisa 303'),
('Miguel', 'Flores', 'Vargas', 'FLVM810707STU', '1981-07-07', '87654', 'Mérida', 'Avenida del Sol 404'),
('Elena', 'Torres', 'Soto', 'TORS880808VWX', '1988-08-08', '76543', 'Acapulco', 'Calle del Puerto 505'),
('Ricardo', 'Ortega', 'Vega', 'ORVR890909YZA', '1989-09-09', '54321', 'Veracruz', 'Boulevard Marítimo 606'),
('Sofía', 'García', 'Pérez', 'GAPG860910BCD', '1986-09-10', '12345', 'Mazatlán', 'Avenida del Mar 707'),
('Alejandro', 'Ramírez', 'Hernández', 'RAHA800101ABC', '1980-01-01', '12345', 'Ciudad de México', 'Calle Principal 123'),
('Fernanda', 'Gómez', 'López', 'GOLF850202DEF', '1985-02-02', '54321', 'Guadalajara', 'Avenida Secundaria 456'),
('Jorge', 'Martínez', 'Ramírez', 'MARR900303GHI', '1990-03-03', '67890', 'Monterrey', 'Calle del Mar 789'),
('Luisa', 'Pérez', 'Sánchez', 'PESL750404JKL', '1975-04-04', '45678', 'Puebla', 'Avenida del Lago 101'),
('Rodrigo', 'Sánchez', 'Díaz', 'SARD840505MNO', '1984-05-05', '98765', 'Tijuana', 'Boulevard Costero 202'),
('Paola', 'Hernández', 'Luna', 'HEPL820606PQR', '1982-06-06', '23456', 'Cancún', 'Calle de la Brisa 303'),
('Luis', 'Flores', 'Vargas', 'FLVL810707STU', '1981-07-07', '87654', 'Mérida', 'Avenida del Sol 404'),
('Daniela', 'Torres', 'Soto', 'TODL880808VWX', '1988-08-08', '76543', 'Acapulco', 'Calle del Puerto 505'),
('Andrés', 'Ortega', 'Vega', 'ORAL890909YZA', '1989-09-09', '54321', 'Veracruz', 'Boulevard Marítimo 606'),
('Camila', 'García', 'Pérez', 'GACP860910BCD', '1986-09-10', '12345', 'Mazatlán', 'Avenida del Mar 707');

insert into salida(destino,hora_salida,fecha,id_barco) values
('Isla Aventura', '09:00:00', '2023-07-29', 1),
('Playa Dorada', '10:30:00', '2023-07-30', 2),
('Bahía Escondida', '11:45:00', '2023-07-31', 3),
('Arrecifes del Mar', '12:15:00', '2023-08-01', 4),
('Isla del Tesoro', '13:30:00', '2023-08-02', 5),
('Cayo Azul', '14:00:00', '2023-08-03', 6),
('Isla del Sol', '15:20:00', '2023-08-04', 7),
('Playa Secreta', '16:45:00', '2023-08-05', 8),
('Cabo Marítimo', '17:30:00', '2023-08-06', 9),
('Isla de las Perlas', '18:15:00', '2023-08-07', 10),
('Isla Aventura', '09:30:00', '2023-08-08', 1),
('Playa Dorada', '10:45:00', '2023-08-09', 2),
('Bahía Escondida', '11:15:00', '2023-08-10', 3),
('Arrecifes del Mar', '12:30:00', '2023-08-11', 4),
('Isla del Tesoro', '13:45:00', '2023-08-12', 5),
('Cayo Azul', '14:30:00', '2023-08-13', 6),
('Isla del Sol', '15:45:00', '2023-08-14', 7),
('Playa Secreta', '16:15:00', '2023-08-15', 8),
('Cabo Marítimo', '17:30:00', '2023-08-16', 9),
('Isla de las Perlas', '18:00:00', '2023-08-17', 10);

insert into socio_barco(id_socio,id_barco) values 
(1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(9, 9),(10, 10),(11, 1),(12, 2),(13, 3),(14, 4),(15, 5),(16, 6),(17, 7),(18, 8),(19, 9),(20, 10);

insert into socio_salida (id_socio, id_salida) values
(1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(8, 8),(9, 9),(10, 10),(11, 11),(12, 12),(13, 13),(14, 14),(15, 15),(16, 16),(17, 17),(18, 18),(19, 19),(20, 20);

insert into patron_salida (id_patron, id_salida) values
(1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(8, 8),(9, 9),(10, 10),(11, 11),(12, 12),(13, 13),(14, 14),(15, 15),(16, 16),(17, 17),(18, 18),(19, 19),(20, 20); 

insert into patron_barco (id_patron, id_barco) values
(1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(8, 8),(9, 9),(10, 10),(1, 2),(2, 3),(3, 4),(4, 5),(5, 6),(6, 7),(7, 8),(8, 9),(9, 10),(10, 1);
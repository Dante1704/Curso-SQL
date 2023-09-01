create table Empleados(
idempleado int,
nombre varchar(20),
apellido varchar(30),
edad numeric(2), --edad de 2 digitos, entero.
telefono numeric(10),
direccion varchar(100),
fecha_nacimiento date,
salario decimal (18,2), --18 valores enteros y 2 decimales
activo char(2) --si o no
);


--ver las caracteristicas de la tabla
exec sp_help empleados; 

--insertar datos en la tabla
insert into empleados values(
1, 'José', 'Feliciano', 35, 1234567890, 'calle primera no 1', '1980-06-03', 300000.00, 'si'
);

insert into empleados values(
1, 'Dante', 'Kaddarian', 32, 1111122222, 'calle primera no 2', '1991-04-17', 0.00, 'no'
);

--consulta de toda la informacion a una tabla
select * from empleados;

--consulta a sys todas las tablas
select * from sys.tables;

--consulta de todos los nombres a una tabla
select nombre from empleados;

--consulta de varios campos ignorando otros a una tabla 
select nombre, apellido, salario from empleados;

--cambiar el nombre de una tabla, primero nombre viejo despues nombre nuevo
exec sp_rename 'Empleados', 'Usuarios';

exec sp_rename 'Usuarios', 'Empleados';

create database Prueba2;

--cambiar a otra base de datos
use Prueba2;

use Principal;

create table prueba(
campo int);

--eliminar una tabla de la base de datos actual
drop table prueba;


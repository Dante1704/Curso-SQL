--Constraint Default
--establecer un valor por defecto en una columna en caso de que estemos insertandole datos.

create table Personas (
idpersona int not null,
name varchar(10),
age int not null,
city varchar(50) default 'No tiene', --valor por default que va a tomar si no le asigno nada
);


insert into personas values(1, 'Dante', 30, default); --aca busca el valor asignado a default

--esto no se puede hacer, no se puede evitar pasarle un valor, si quiero el default le tengo que pasar default
insert into personas values(1, 'Dante', 30); --ahora acepta null en ese campo

-- creo una tabla pero me olvido de asignar un valor por default
create table Personas (
idpersona int not null,
name varchar(10),
age int not null,
city varchar(50),
);

--asigno un valor por default a un campo de una tabla despues de haberla creado
alter table personas 
add constraint DF_city
default 'No tiene' for city; 

-----elimino la constraint default de un campo, similar a primary key y unique
alter table personas 
drop constraint DF_city;





















Drop table Personas;

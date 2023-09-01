-- Constraint Unique
-- Controlamos valores repetidos

--se le puede asignar Unique a varios campos a diferencia de la primary key
--ese campo puede ser null a dif de la primary key

--declarar un campo como unique
create table Personas (
idpersona int not null,
credential varchar(10),
name varchar(10),
age int,
constraint UQ_idpersona unique(idpersona), --a la constraint unique le declaro el nombre UQ_idpersona.
constraint UQ_clave unique(credential),
);


insert into personas values(1,'sdfasf', 'Alberto', 30);

--esto no es posible porque idpersona no es unique
insert into personas values(1,'null','Ana', 50);

--esto si es posible porque credential admite null
insert into personas values(2,'null','Ana', 50);

--esta modificacion no es posible porque ya hay un registro con esa credential.
update personas set credential = 'sdfasf'
where idpersona = 2;

--esta modificacion es posible
update personas set credential = 'gdfgf'
where idpersona = 2;

--borrar una constraint unique, similar a primary key
alter table personas
drop UQ_idpersona;

--agregar una constraint unique si no la declare al crear la tabla, similar a primary key
alter table personas
add constraint UQ_idpersona unique (idpersona); --agregar regla, nombre, que regla y a que se la asigno.
















DROP TABLE personas;  

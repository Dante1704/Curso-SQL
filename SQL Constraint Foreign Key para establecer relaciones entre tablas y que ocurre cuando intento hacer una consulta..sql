-- Constraint Foreign key

-- esta constraint sirve para establecer un enlace entre la primary key de una tabla y la foreign key de otra.
-- se usa para prevenir daños en las relaciones de registros entre tablas
-- las foreign key evitan el insert de datos no compatibles con el campo de la PK
-- las FK no controlan valores nulos. 


-- asignar una FK a un campò que viene de otra tabla y es PK.
create table Clientes(
id_cliente int,
name varchar(20) not null,
last_name varchar(30) not null,
age int not null,
constraint PK_clientes primary key (id_cliente),
);

--creo la nueva tabla asignando la FK, foreign key references. 
create table Ordenes(
id_orden int not null,
article varchar(50) not null,
id_cliente int --este es el campo que traigo de la otra tabla pero tiene que ser PK, OJO!! no va la coma, no podia insertarla FK porque puse una , 
constraint FK_ordenes_clientes foreign key references Clientes(id_cliente), --aca si va la coma
);


insert into clientes values (1,'Dante', 'Kaddarian', 32);
insert into clientes values (2,'Jose', 'Castillo', 40);

--esto no se puede hacer porque no hay nada en la tabla clientes con id_cliente = 4
insert into ordenes values(1, 'Martillo', 4);

--esto esta ok, le estoy diciendo que la orden martillo es del cliente con id = 1
insert into ordenes values(2, 'Sierra', 2);

--esto esta ok, porque la FK no controla valores nulos. 
insert into ordenes values(3, 'Taladro', null);


--Si quiero borrar un registro que esta relacionado en dos tablas,
--No puedo borrar el de la tabla que tiene un campo asignado como PK, porque en otra tabla otro registro depende de este.
--Pero si puedo borrar el de la tabla que tiene un campo asignado como FK por que este es el dependiente.
--ejemplo

--No puedo hacer esto porque el campo id_cliente es PK en Clientes y esta relacionado con el campo id_cliente que es FK en Ordenes.
delete from Clientes where id_cliente = 1;

--Pero si puedo hacer esto
delete from Ordenes where id_cliente = 1;



-----lo mismo ocurre al intentar actualizar un registro que en otra tabla otro registro depende de este. 

--no se puede hacer, entra en conflicto
update Clientes set id_cliente = 2
where id_cliente = 1;

--se puede hacer, solo le estoy diciendo que el la orden del cliente 1 ahora pertenece al cliente 2. 
update ordenes set id_cliente = 2
where id_cliente = 1;



-----Tampoco puedo borrar una tabla que tiene un campo como PK relacionado con otra tabla. 

--Ahora no puedo hacer esto, hay otra tabla que tiene una FK que hace que dependa de esta
drop table clientes;

--pero si puedo hacer esto, porque no hay otra tabla que depende de esta. 
drop table ordenes;




--eliminar un registro de una tabla y todos los que dependen del mismo aunque esten en otra tabla, on delete cascade.
create table Ordenes(
id_orden int not null,
article varchar(50) not null,
id_cliente int 
constraint FK_ordenes_clientes foreign key references Clientes(id_cliente)
on delete cascade, --con esta instruccion, al borrar un registro de otras tablas, tambien se borran los de esta tabla que dependan de ese.
);

insert into ordenes values(1, 'Martillo', 2);

--ahora si puedo borrar un registro de cliente pero tambien se van a borrar los registros de la tabla de ordenes que esten relacionados
delete from Clientes where id_cliente = 2;
--se borro tambien el registro de martillo que estaba ligado a este id. 


select * from clientes;
select * from ordenes;



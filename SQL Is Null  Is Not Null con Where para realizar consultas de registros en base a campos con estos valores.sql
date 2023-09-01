create table Clientes (
idcliente int,
name varchar(20),
last_name varchar(30),
address varchar(100),
);

insert into clientes values(1,'Juan','Perez','Calle A, Ciudad');
insert into clientes values(2, 'Maria', NULL, 'Calle B, Ciudad');
insert into clientes values(3,'Carlos','Lopez', NULL);
insert into clientes values(4, NULL, 'Rodriguez', 'Calle D, Ciudad');
insert into clientes values(5,'Pedro', NULL, NULL);
insert into clientes values(6,NULL ,NULL,  'Calle D, Ciudad');
insert into clientes values(7,'Luis','Gonzales', 'Calle G, Ciudad');
insert into clientes values(8, NULL, 'Diaz', NULL);
insert into clientes values(9,'Jorge', NULL,' Calle I, Ciudad');
insert into clientes values(10,NULL, NULL, NULL);
insert into clientes values(11,'Ana', 'Hernandez', 'Calle M, Ciudad');
insert into clientes values(12,NULL, NULL, 'Calle M, Ciudad'); 
insert into clientes values(13,NULL, 'Sanchez', NULL);
insert into clientes values(14,'Sofía', NULL, 'Calle M, Ciudad');
insert into clientes values(15,NULL, NULL,  'Calle P, Ciudad');
insert into clientes values(16,'Daniel', 'Garcia', NULL);
insert into clientes values(17,'Martha','Fernandez', NULL);
insert into clientes values(18,NULL, 'Martinez',  'Calle Q, Ciudad');
insert into clientes values(19,'Pablo', NULL, NULL);
insert into clientes values(20, NULL, 'Lopez', 'Calle S, Ciudad');

select * from clientes;


-- consultar por registros con cierto valor nulo, is null
select * from clientes where name is null;

-- consultar por registros con cierto valor no nulo, is not null
select * from clientes where last_name is not null;

-- actualizar registros que tengan cierto campo nulo, 
update clientes set address = 'no tiene'
where address is null;

-- borrar registros que tengan cierto campo nulo, 
delete from clientes where name is null;
--Como indicar que campos admiten null y cuales no, Null o Not Null

--al declarar las columnas a continuacion les indico null o not null.
create table Clientes(
idcliente int not null,
name varchar(10) not null,
address varchar (100) null,
phone numeric(10) null,
email varchar(50) null,
);

--esto esta permitido porque dije que el phone es nulleable.
insert into clientes values(1, 'Jose', 'calle primera', null, 'jose@mail.com');

--esto no esta permitido segun como defini mi tabla para name, no admite valores nulos esta columna.
insert into clientes values(3, null, 'calle segunda', null, null);

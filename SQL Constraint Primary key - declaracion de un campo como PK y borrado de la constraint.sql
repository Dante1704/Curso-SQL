-- Constraints

-- Los constraints son reglas de parametros que van a tener los registros dentro de la base de datos.

-- Constraint Primary Key (PK)

/*
reglas para asignar PK
1 - En una tabla solo puede haber un unico campo que sea primary key
2 - Un campo que sea primary key no puede ser NULL
3 - no puede haber valores repetidos en este campo. 
*/

-- declarar un campo como PK. 
--Le asigno un nombre a la constraint primary key para personalizarla. (RECOMENDADA)

create table Personas(
idpersona int, 
name varchar(10) not null,
age int not null,
constraint PK_enlace_persona primary key (idpersona),
--de esta manera le asigno el nombre 'PK_enlace_persona' a la primary key
--cuando se produzca un error se va a referir a 'PK_enlace_persona'
);

--esto esta bien
insert into Personas values(1,'Dante', 32); 

-- esto no esta permitido por que rompe la regla 3.
insert into Personas values(1,'Camila', 19); 

-- esto no esta permitido por que rompe la regla 2.
insert into Personas values(null,'Camila', 19); 

select * from personas;


-----declarar una PK una vez que la tabla ya fue creada

--el campo que voy a declarar como PK tiene que estar indicado como Not Null, sino no va a funcionar
create table Personas(
idpersona int not null, --si no le indico que es not null no se puede elegir como PK.  
name varchar(10) not null,
age int not null,
);

--con esta instruccion declaro. 
alter table Personas
add constraint PK_enlace_persona primary key (idpersona);


-----como borrar una PK. Utilizo el nombre que le declare al enlace y uso alter table con drop constraint
alter table personas drop constraint PK_enlace_persona;



-- otras dos maneras de asignar PK aunque no son recomendadas. 

create table Personas(
idpersona int primary key, --asi le indico que es PK, ya se sabe que es NOT NULL. 
name varchar(10) not null,
age int not null,
);


--segunda manera de seleccionar un campo como PK
create table Personas(
idpersona int, 
name varchar(10) not null,
age int not null,
primary key (idpersona), --al final de la declaracion de los campos 
);

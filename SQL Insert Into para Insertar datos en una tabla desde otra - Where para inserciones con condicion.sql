create table salarios(
name varchar(20),
last_name varchar(30),
salary decimal(18,2),
);

-- insertar datos desde otra tabla pero los campos que tienen en comun.

--veo que tienen en comun los campos salario, nombre y apellido. 
--inserta en la tabla salarios nombre, apellido y salario(donde voy a insertar)
--seleccionando nombre, apellido y salario de los registros de la tabla empleados(que voy a insertar y desde donde)
insert into salarios(name, last_name, salary)
select name, last_name, salary from Empleados;


truncate table Salarios;

insert into salarios(name, last_name, salary) --a donde voy a insertar
select name, last_name, salary from Empleados --lo que voy a insertar, de donde y con que condicion
where salary > 2500;

select * from Salarios;


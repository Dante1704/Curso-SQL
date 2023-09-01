--consulta cambiando el nombre de los campos por un Alias, identificador as.

select * from empleados;

--primera manera
select id as Identificador, name as primer_nombre,
last_name as primer_apellido, salary as sueldo_actual from empleados
where salary > 2500;

--segunda manera, poner doble comilla para separar en vez de poner underscore
select id as Identificador, name as "primer nombre",
last_name as "primer apellido", salary as "sueldo actual" from empleados
where salary > 2500;
select * from Empleados;

--consulta por ciertos valores fijos
select * from empleados where id_empleado in(1,3,4,5,6);

--consulta por registro dentro de un rango de valores, Between con and
select * from empleados
where id_empleado between 1 and 7;

--consulta por registro dentro de un rango de valores, Between con and y or para agregar mas registros
select * from empleados
where id_empleado between 1 and 7 or cant_hijos between 5 and 8;

--consulta por los empleado con sueldo entre 2000 y 4000 y que su puesto no sea desarrollador
select * from empleados
where sueldo between 2000 and 4000
and not puesto = 'Desarrollador';

--consulta por los empleado con sueldo entre 2000 y 4000 y que su puesto no sea desarrollador ni tecnico
select * from empleados
where sueldo between 2000 and 4000
and puesto not in('Desarrollador','Técnico');

--consulta por registros entre dos cadenas de caracteres
select * from clientes
where pais between 'Alemania' and 'Canadá'
order by pais;


--consulta por un rango de fechas
select * from empleados
where fecha_contratacion between '1996-05-12' and '2003-07-24';
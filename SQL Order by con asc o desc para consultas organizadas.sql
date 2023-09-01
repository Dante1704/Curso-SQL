
--consulta por valores organizados por algun criterio en base a uno o varios campos, Order by con asc o desc

select * from Empleados;

select * from Empleados order by age; --de menor a mayor por default
select * from Empleados order by age asc; --de menor a mayor pero intencional
select * from Empleados order by age desc; --de mayor a menor

select name as Nombre, last_name as Apellido, age as Edad, salary as Salario
from empleados 
order by age asc, salary desc; --primero por edad ascendente y cuando coincide por salario descendiente


select top 10 name as Nombre, last_name as Apellido, age as Edad, salary as Salario
from empleados 
where salary > 2500
order by age asc, salary desc; --primero por edad ascendente y cuando coincide por salario descendiente
select * from empleados;

--operadores relacionales

= --compara si dos valores son iguales

<>, != --compara si dos valores son diferentes

> < --compara si un valor es mayor que o menor que

>= <= ----compara si un valor es mayor o igual que, o menor o igual que. 

--usos

select * from empleados where edad != 25;

select * from empleados where salario > 2000;

select * from empleados where salario >= 3000;

select nombre from empleados where salario <= 3000;

select idempleado, apellido, edad from empleados where idempleado >= 7;
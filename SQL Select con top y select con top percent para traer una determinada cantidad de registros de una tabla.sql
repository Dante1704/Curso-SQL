--consultar las primeras n filas, select top

select top 5 * from Empleados;

select top 8 id, name, last_name, is_active from Empleados;

--consultar un porcentaje especifico de filas, select top percent. El resultado es aproximado.
select top 50 percent id, name, last_name, is_active from Empleados;
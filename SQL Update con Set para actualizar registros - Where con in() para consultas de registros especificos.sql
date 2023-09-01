--actualizar algun o algunos registros de una tabla, update con set

--actualizar algo en base a un criterio, where
update Empleados set phone_number = 800333444
where id = 3;

--si no pongo el where actualiza todos los registros
update Empleados set is_active = 'SI';

--actualizar de una tabla el valor de campo.
update Empleados set is_active = 'NO'
-- pero Los registros que yo te diga (cuales exactamente). where con in() 
where id in(1,3,5,7,9);

-- aplicacion del where in() para eliminar registros puntuales
delete from Empleados where id in(3,8,15);

-- aplicacion del where in() para consultar registros puntuales
select id,name,last_name from Empleados where id in(2,10,14);

select * from empleados;


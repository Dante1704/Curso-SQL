--eliminar todos los registros de una tabla sin eliminar la misma, o sea que quede vacia.
truncate table empleados;

--eliminar un solo registro de una tabla delete, tengo que poner una condicion unica id, where
delete from empleados where idempleado = 7;
 
--delete y truncate funcionan igual. Pero con delete puedo poner filtros, con truncate se lleva todo. 

--cambiar la estructura de una tabla, alter. 
--por ejemplo agregar una campo mas, alter y add.
alter table empleados add sexo char(1);

insert into empleados values (1,'Juan', 'Perez', 25, 1234567890, 'Calle 123', '1978-06-15', 2500.00,'SI');

delete from empleados where idempleado = 1;

--por ejemplo eliminar una campo existente, alter y drop.
alter table empleados drop column sexo;

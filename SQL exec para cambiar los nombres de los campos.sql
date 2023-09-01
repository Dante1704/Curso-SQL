--cambiar los nombres de los campos de una tabla, primero el campo de que tabla y despues el nuevo nombre
--ojo, verificar que el campo de la tabla que estamos cambiando no este enlazado a otra tabla.
exec sp_rename 'Empleados.nombre', 'name';
exec sp_rename 'Empleados.apellido', 'last_name';
exec sp_rename 'Empleados.edad', 'age';
exec sp_rename 'Empleados.telefono', 'phone_number';
exec sp_rename 'Empleados.direccion', 'address';
exec sp_rename 'Empleados.fecha_nacimiento', 'birthday';
exec sp_rename 'Empleados.salario', 'salary';
exec sp_rename 'Empleados.activo', 'is_active';

select * from empleados;





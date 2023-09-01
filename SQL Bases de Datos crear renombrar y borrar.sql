----- crear una base de datos

-- Modo 1 - a traves del Object Explorer

-- para crear una base de datos hay que hacer click derecho en Databases, luego New Database
-- para hacer consultas sobre la misma, hacer click derecho sobre ella y elegir new query

-- Modo 2 - a traves de una consulta

create database Prueba3;

----- eliminar una base de datos
--tengo que no estar parado sobre la misma, si estoy parado me tengo que mover a otra.

drop database Prueba3;


----- ver todas las bases de datos creadas

select * from sys.databases;

----- cambiar el nombre de una base de datos
alter database Prueba modify name = Principal;

----- cambiar a otra base de datos
use Prueba2;

use Principal;
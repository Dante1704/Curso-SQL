-- like operador para hacer consultas en base a un patron
-- no es case sensitive, da igual si es mayuscula o minuscula

--todos los registros que empiezan con A
select * from clientes
where nombre like 'A%';

--todos los registros que terminan con A
select * from clientes
where nombre like '%A';

--todos los registros que tengan una letra A en cualquier parte del registro
select * from clientes
where nombre like '%A%';


--todos los registros que empiezan con A
select * from clientes
where nombre like 'ju%';

--todos los registros que tiene A en el segundo caracter
select * from clientes
where nombre like '_A%';

--todos los registros que tiene A como penultimo caracter
select * from clientes
where nombre like '%A_';


-- not like operador para hacer consultas en base a un patron que no se tiene que cumplir
-- no es case sensitive, da igual si es mayuscula o minuscula




--consultar por el maximo o minimo valor, max() min()

select max(precio) as "Mas Caro", min(precio) as "Mas Barato" from articulos;

select min(nombre) from articulos; --al ser valores varchar, el criterio que usa para comparar es el valor de la primer letra en unicode, si son iguales usa la segunda y asi. 

select * from articulos
order by nombre asc;

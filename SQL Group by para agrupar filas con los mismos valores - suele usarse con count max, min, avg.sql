-- Group by, agrupar filas con los mismos valores suele usarse con count max, min, avg

select * from clientes;


--consulta por la cantidad de registros de cada pais ordenado por cantidad cantidad descendiente
--cuenta cantidad de un pais, despues cuenta cantidad de otro pais y asi y despues muestra el conteo para cada pais por orden descendiente de conteo
select count(idcliente) as Cantidad, pais 
from clientes
group by pais 
order by count(idcliente) desc;

--consulta por el id mas grande de cada pais ordenado por id mas grande descendiente
select max(idcliente) as id_max, pais 
from clientes
group by pais 
order by max(idcliente) desc;


CREATE TABLE ordenes (
    idorden INT PRIMARY KEY,
    idcliente INT,
    idempleado INT,
    fecha_orden DATE,
    id_vendedor INT
);
	insert into ordenes values(1, 1001, 2001, '2023-06-01', 1);
    insert into ordenes values(2, 1002, 2002, '2023-06-02', 2);
    insert into ordenes values(3, 1003, 2003, '2023-06-03', 3);
    insert into ordenes values(4, 1004, 2004, '2023-06-04', 4);
    insert into ordenes values(5, 1005, 2005, '2023-06-05', 5);
    insert into ordenes values(6, 1006, 2006, '2023-06-06', 6);
    insert into ordenes values(7, 1007, 2007, '2023-06-07', 7);
    insert into ordenes values(8, 1008, 2008, '2023-06-08', 1);
    insert into ordenes values(9, 1009, 2009, '2023-06-09', 2);
    insert into ordenes values(10, 1010, 2010, '2023-06-10', 3);
    insert into ordenes values(11, 1011, 2011, '2023-06-11', 4);
    insert into ordenes values(12, 1012, 2012, '2023-06-12', 5);
    insert into ordenes values(13, 1013, 2013, '2023-06-13', 6);
    insert into ordenes values(14, 1014, 2014, '2023-06-14', 7);
    insert into ordenes values(15, 1015, 2015, '2023-06-15', 1);
    insert into ordenes values(16, 1016, 2016, '2023-06-16', 2);
    insert into ordenes values(17, 1017, 2017, '2023-06-17', 3);
    insert into ordenes values(18, 1018, 2018, '2023-06-18', 4);
    insert into ordenes values(19, 1019, 2019, '2023-06-19', 5);
    insert into ordenes values(20, 1020, 2020, '2023-06-20', 6);
    insert into ordenes values(21, 1021, 2021, '2019-07-15', 1);
    insert into ordenes values(22, 1022, 2022, '2020-02-28', 2);
    insert into ordenes values(23, 1023, 2023, '2020-11-10', 3);
    insert into ordenes values(24, 1024, 2024, '2021-05-07', 4);
    insert into ordenes values(25, 1025, 2025, '2021-12-25', 5);
    insert into ordenes values(26, 1026, 2026, '2022-08-18', 6);
    insert into ordenes values(27, 1027, 2027, '2023-03-01', 7);
    insert into ordenes values(28, 1028, 2028, '2019-10-22', 1);
    insert into ordenes values(29, 1029, 2029, '2020-07-12', 2);
    insert into ordenes values(30, 1030, 2030, '2020-11-30', 3);
    insert into ordenes values(31, 1031, 2031, '2021-08-04', 4);
    insert into ordenes values(32, 1032, 2032, '2022-01-15', 5);
    insert into ordenes values(33, 1033, 2033, '2022-10-05', 6);
    insert into ordenes values(34, 1034, 2034, '2023-05-18', 7);
    insert into ordenes values(35, 1035, 2035, '2019-12-08', 1);
    insert into ordenes values(36, 1036, 2036, '2020-06-25', 2);
    insert into ordenes values(37, 1037, 2037, '2020-09-17', 3);
    insert into ordenes values(38, 1038, 2038, '2021-04-02', 4);
    insert into ordenes values(39, 1039, 2039, '2022-01-05', 5);
    insert into ordenes values(40, 1040, 2040, '2022-09-28', 6);


CREATE TABLE vendedor (
    id_vendedor INT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(20)
);

    insert into vendedor values(1, 'Juan Pérez', '1234567890');
    insert into vendedor values(2, 'María Gómez', '9876543210');
    insert into vendedor values(3, 'Carlos Rodríguez', '5555555555');
    insert into vendedor values(4, 'Laura López', '9999999999');
    insert into vendedor values(5, 'Pedro Martínez', '1111111111');
    insert into vendedor values(6, 'Ana Sánchez', '2222222222');
    insert into vendedor values(7, 'José Morales', '3333333333');


select ve.nombre, count(o.idorden) as "Cantidad de Ordenes"
from ordenes o
left join vendedor ve on ve.id_vendedor = o.id_vendedor
group by ve.nombre;
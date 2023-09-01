--consultar valores unicos de una columna o un conjunto de columnas, DISTINCT
 
 
 CREATE TABLE Clientes (
  id_cliente INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(20) NOT NULL,
  apellido VARCHAR(20) NOT NULL,
  pais VARCHAR(50) NOT NULL,
  compras INT NULL
);
  

  insert into Clientes values(1, 'Juan', 'P�rez', 'Estados Unidos', 1);
  insert into Clientes values(2, 'Mar�a', 'G�mez', 'Argentina', 2);
  insert into Clientes values(3, 'Carlos', 'L�pez', 'Brasil', NULL);
  insert into Clientes values(4, 'Laura', 'Mart�nez', 'Canad�', 4);
  insert into Clientes values(5, 'Pedro', 'Hern�ndez', 'China', 5);
  insert into Clientes values(6, 'Ana', 'Ruiz', 'Colombia', NULL);
  insert into Clientes values(7, 'Luis', 'Torres', 'Egipto', 7);
  insert into Clientes values(8, 'Marta', 'S�nchez', 'Espa�a', 8);
  insert into Clientes values(9, 'Roberto', 'Garc�a', 'Francia', 9);
  insert into Clientes values(10, 'Sof�a', 'L�pez', 'Alemania', 10);
  insert into Clientes values(11, 'David', 'Hern�ndez', 'Argentina', NULL);
  insert into Clientes values(12, 'Andrea', 'G�mez', 'Brasil', 12);
  insert into Clientes values(13, 'Fernando', 'P�rez', 'Canad�', 13);
  insert into Clientes values(14, 'Patricia', 'Mart�nez', 'China', 14);
  insert into Clientes values(15, 'Javier', 'L�pez', 'Colombia', 15);
  insert into Clientes values(16, 'Carmen', 'Ruiz', 'Egipto', NULL);
  insert into Clientes values(17, 'Ricardo', 'Torres', 'Espa�a', 17);
  insert into Clientes values(18, 'Marina', 'S�nchez', 'Francia', 18);
  insert into Clientes values(19, 'Alejandro', 'Garc�a', 'Alemania', 19);
  insert into Clientes values(20, 'Claudia', 'L�pez', 'Argentina', 20);
  insert into Clientes values(21, 'Fernanda', 'G�mez', 'Brasil', 21);
  insert into Clientes values(22, 'Rodrigo', 'P�rez', 'Canad�', 22);
  insert into Clientes values(23, 'Luisa', 'Mart�nez', 'China', 23);
  insert into Clientes values(24, 'Emilio', 'Hern�ndez', 'Colombia', 24);
  insert into Clientes values(25, 'Valeria', 'Ruiz', 'Egipto', 25);
  insert into Clientes values(26, 'Rafael', 'Torres', 'Espa�a', 26);
  insert into Clientes values(27, 'Camila', 'S�nchez', 'Francia', 27);
  insert into Clientes values(28, 'Gabriel', 'Garc�a', 'Alemania', NULL);
  insert into Clientes values(29, 'Isabella', 'L�pez', 'Argentina', NULL);
  insert into Clientes values(30, 'Santiago', 'P�rez', 'Brasil', 30);

  select * from Clientes;


  --consulta de todos los paises sin repetir
  select distinct pais from Clientes;

  --consulta de todos los id_cliente con su pais donde el pais es Argentina sin repetir, distinct con where
  select distinct id_cliente, pais from Clientes
  where pais = 'Argentina';

  --consulta de todos los paises donde el registro al que pertenecen tiene el campo compras nulo, distinct con where y is null
  select distinct pais from clientes
  where compras is null;
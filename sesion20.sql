desc libros;

ALTER TABLE libros ADD(fecha_publicacion date, fecha_impresion datetime);

/*
UPDATE <NOMBRE_TABLA> SET <NOMBRE_COLUMNA> = <NUEVOVALOR>, <NOMBRE_COLUMNA2> = <NUEVOVALOR>,
... WHERE <CONDICION>
*/

UPDATE LIBROS SET FECHA_PUBLICACION = STR_TO_DATE('1-01-2012', '%d-%m-%Y');

UPDATE LIBROS SET FECHA_PUBLICACION = STR_TO_DATE('1-01-2012', '%d-%m-%Y'), FECHA_IMPRESION = STR_TO_DATE('13-12-2022', '%d-%m-%Y');


UPDATE LIBROS SET  FECHA_IMPRESION = STR_TO_DATE('16-12-1968 11:15:53', '%d-%m-%Y %h:%i:%s')
where titulo like 'El s%'
;


CREATE TABLE `puntosventa` (
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `pais` varchar(25) DEFAULT NULL,
  `ciudad` varchar(25) DEFAULT NULL
);

CREATE TABLE `puntosventa_PK` (
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `pais` varchar(25) DEFAULT NULL,
  `ciudad` varchar(25) DEFAULT NULL,
  PRIMARY KEY (NOMBRE, DIRECCION)
)

drop table puntosventa;
drop table puntosventa_pk;
desc autores;

INSERT INTO autores values ('Fabio Sin nombre', 'Cra. 15 #23-45', null, null, null);


CREATE TABLE `puntosventa` (
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `pais` varchar(25) DEFAULT NULL,
  `ciudad` varchar(25) DEFAULT NULL,
  PRIMARY KEY (NOMBRE, DIRECCION)
);

desc puntosventa;


alter table autores add (idPais int);

ALTER TABLE autores
ADD CONSTRAINT FK_paisAutores
FOREIGN KEY (idPais) REFERENCES Pais(idPais);

desc pais;

insert into pais values (1 , 'colombia');
insert into pais values (2, 'ecuador');
insert into pais values (3, 'Francia');
insert into pais values (4, 'Suiza');
insert into pais values (5, 'Inglaterra');
insert into pais values (6, 'Canada');

select * from autores;
select * from pais;

update autores set idpais = 1 where nombre != 'Carla Brown';

select nombre from autores ;

select au.nombre, pa.nombrePais from autores au inner join pais pa on(au.idPais= pa.idPais);

create table librosReto4 (codigo integer, titulo varchar(45), valor double, disponibilidad integer,
                          primary key (codigo));
                          
insert into librosReto4 values (1, 'La Iliada', 5000.0, 25);
insert into librosReto4 values (2, 'El relato de un Naufrago', 2300.0, 15);
insert into librosReto4 values (3, 'Satanás', 2700.0, 33);
insert into librosReto4 values (4, 'Romper la barrera del No', 9300.0, 5);
insert into librosReto4 values (5, 'Viaje al centro de la Tierra', 2100.0, 42);
insert into librosReto4 values (6, 'Arte del engaño', 4100.0, 3);
insert into librosReto4 values (7, 'Los cinco acuerdos', 4500.0, 41);
insert into librosReto4 values (8, 'Cuarenta y ocho leyes del poder', 500.0, 8);
insert into librosReto4 values (9, 'El arte de no amargarse la vida', 3500.0, 80);
insert into librosReto4 values (10, 'El principito', 15000.0, 10);

Select * from librosreto4;
/*
Obtener el titulo y la disponibilidad de los libros con un 
VALOR mayor o igual a 9000 
en orden ascendente por TITULO
*/
SELECT TITULO, DISPONIBILIDAD FROM LIBROSRETO4 Where valor >=9000
ORDER BY TITULO ASC;
/* ORDENAMIENTO CON EL NUMERO DE LA COLUMNA DEL SELECT
ORDER BY 1 ASC;
*/

/*
Obtener el promedio de VALORES de todos los libros en 
la tabla. Utilice el alias “promedio” para la respuesta 
obtenida
FUNCIONES BUILT IN (avg) 
*/
select avg(valor) promedio  from librosreto4;

/*
Obtener el titulo y el valor de todos los libros que 
comienzan con “A” o con “P” en orden ascendente
*/
SELECT TITULO, VAlor FROM librosreto4
where titulo like 'A%' or
titulo like  'L%'
order by 1 asc;

/*
Obtener el numero total de libros cuyos valores están 
entre 3000 y 10000. Utilice el alias “total” para la respuesta 
obtenida
*/
SELECT sum(disponibilidad) total FROM LIBROSRETO4
WHERE VALOR >= 3000 AND VALOR <= 10000

/*
Obtener valor total de los libros. Este valor se obtiene 
multiplicando el valor de cada libro por la disponibildad 
y luego sumando todos los resultados. 
Utilice el alias “total_inventario” para la respuesta obtenida
*/
select sum(valor*disponibilidad) toal_inventario  from librosReto4




/* Forma alternativa
WHERE VALOR BETWEEN 3000 AND 10000
*/


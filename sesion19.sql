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

insert into pais values (1 , 'colombia');
insert into pais values (2, 'ecuador');
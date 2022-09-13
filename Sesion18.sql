create table LIBROS (titulo varchar(45), dirección varchar(45), genero varchar(45), nombre varchar(45));

/*Comando de adicionar registros
*/
insert into autores_dos values ("Juan Días","Calle 2 # 3-4, Bogotá, Colombia","Realismo mágico,
Fantasía");
insert into autores_dos values ("Daniel Pardo","Calle 5 # 7-8, Bogotá, Colombia","Fantasía");
insert into autores_dos values ("Stephen King ","Calle 1 # 1-2, Cota, Colombia","Terror,
Romántico");
insert into autores_dos values ("Kali Gibran","Calle principal con plaza","Esoterismo");

/*Comando de recuperar registros (consultar)*/
SELECT  nombre AS Autor, direccion AS RESIDENCIA   FROM sesionessql.autores
where ciudad like "c%";

select DISTINCT CIUDAD from autores;

select * from  libros, autores;

Select au.*, li.titulo from autores au JOIN LIBROS LI ON (au.nombre = li.nombre) ;

Select au.*, li.titulo  from autores au left JOIN LIBROS LI ON (au.nombre = li.nombre);



Select au.*, li.titulo, li.nombre libros_nombre  from autores au right JOIN LIBROS LI ON (au.nombre = li.nombre);


desc libros;
/*
INSERT INTO <nombre_table> values (valorcol1,....,valorcoln);
*/
INSERT INTO autores values ("Carla Brown","Cra. 5 Cale 19","Fanstasia","Francia","Lille" );

INSERT INTO libros values ("El pescador","Cra 8 #23", "Fantasia","Carla Brown");
INSERT INTO libros values ("El arte de pensar","Cra 12 #23", "Logica","Carl Kupernick");
select * from  libros;

ALTER TABLE LIBROS ADD(NOMBRE_EDITORIAL VARCHAR(45));

DESC EDITORIALES;

INSERT INTO EDITORIALES values ("ALIANZA","ALIANZA OWN", 34, 2500.20);
INSERT INTO EDITORIALES values ("OVEJA NEGRA","GABO", 1234, 252200.20);
INSERT INTO EDITORIALES values ("BURTIZ","OWNER", 314, 2344500.20);
INSERT INTO EDITORIALES values ("BLANCO Y NEGRO","DIRECTORA", 3444, 99500.20);
INSERT INTO EDITORIALES values ("ROJO Y NEGRO","DIRECTOR", 34, 9900.12);

SELECT * FROM AUTORES, LIBROS, EDITORIALES;

Select au.*, li.titulo, ed.nombre NOMBRE_eDITORIAL from autores au JOIN LIBROS LI ON (au.nombre = li.nombre) 
join EDITORIALES ED ON (ED.NOMBRE = LI.NOMBRE_EDITORIAL) ;

Select au.*, li.titulo, ed.nombre NOMBRE_eDITORIAL from autores au LEFT JOIN LIBROS LI ON (au.nombre = li.nombre) 
LEFT join EDITORIALES ED ON (ED.NOMBRE = LI.NOMBRE_EDITORIAL) ;


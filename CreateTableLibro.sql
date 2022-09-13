CREATE TABLE `libro` (
  `id_libro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `autor` varchar(45) NOT NULL,
  `cantidadDisponible` int DEFAULT NULL,
  `cantidadPrestada` int DEFAULT NULL,
  `valorEjemplar` double DEFAULT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb3;
/*Insertar Registros*/
INSERT INTO `sesionessql`.`libro`
(`id_libro`,
`titulo`,
`autor`,
`cantidadDisponible`,
`cantidadPrestada`,
`valorEjemplar`)
VALUES
(<{id_libro: }>,
<{titulo: }>,
<{autor: }>,
<{cantidadDisponible: }>,
<{cantidadPrestada: }>,
<{valorEjemplar: }>);



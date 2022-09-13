CREATE TABLE `libro` (
  `id_libro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `autor` varchar(45) NOT NULL,
  `cantidadDisponible` int DEFAULT NULL,
  `cantidadPrestada` int DEFAULT NULL,
  `valorEjemplar` double DEFAULT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3;

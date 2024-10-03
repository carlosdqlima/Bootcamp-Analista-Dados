-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mysql
-- ------------------------------------------------------
-- Server version	8.0.31-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `locadora`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `locadora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `locadora`;

--
-- Table structure for table `aluguel`
--

DROP TABLE IF EXISTS `aluguel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluguel` (
  `codaluguel` int NOT NULL,
  `codcliente` int DEFAULT NULL,
  `codcarro` int DEFAULT NULL,
  `data_aluguel` date DEFAULT NULL,
  PRIMARY KEY (`codaluguel`),
  KEY `codcliente` (`codcliente`),
  KEY `codcarro` (`codcarro`),
  CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`),
  CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`codcarro`) REFERENCES `carro` (`codcarro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluguel`
--

LOCK TABLES `aluguel` WRITE;
/*!40000 ALTER TABLE `aluguel` DISABLE KEYS */;
INSERT INTO `aluguel` VALUES (1,3,2,'2023-04-01'),(2,2,1,'2023-04-02'),(3,2,1,'2023-04-03'),(4,2,3,'2023-04-04'),(5,1,4,'2023-04-05'),(6,1,4,'2023-04-13'),(7,1,1,'2023-04-15'),(8,5,2,'2023-04-19'),(9,5,2,'2023-04-21'),(10,3,1,'2023-04-25');
/*!40000 ALTER TABLE `aluguel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carro`
--

DROP TABLE IF EXISTS `carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carro` (
  `codcarro` int NOT NULL,
  `codmarca` int DEFAULT NULL,
  `modelo` varchar(30) NOT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`codcarro`),
  KEY `codmarca` (`codmarca`),
  CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codmarca`) REFERENCES `marca` (`codmarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` VALUES (1,1,'Ka',100),(2,2,'Argo',150),(3,3,'Onix',170),(4,4,'Polo',150),(5,5,'Kwid',120);
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codcliente` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `estadocivil` char(2) DEFAULT NULL,
  PRIMARY KEY (`codcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ana Silva','Duque de Caxias','F','RJ','C'),(2,'Bruna Pereira','Niterói','F','RJ','C'),(3,'Túlio Nascimento','Duque de Caxias','M','RJ','S'),(4,'Fernando Souza','Campinas','M','SP','S'),(5,'Lúcia Andrade','São Paulo','F','SP','C');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `codmarca` int NOT NULL,
  `marca` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codmarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Ford'),(2,'Fiat'),(3,'Chevrolet'),(4,'Volkswagen'),(5,'Renault');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `logistica`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `logistica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `logistica`;

--
-- Table structure for table `Motoristas`
--

DROP TABLE IF EXISTS `Motoristas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Motoristas` (
  `ID_Motorista` int NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Idade` int DEFAULT NULL,
  `Tempo_de_Empresa` int DEFAULT NULL,
  `Regiao` varchar(255) DEFAULT NULL,
  `Avaliacao_Desempenho` float DEFAULT NULL,
  PRIMARY KEY (`ID_Motorista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Motoristas`
--

LOCK TABLES `Motoristas` WRITE;
/*!40000 ALTER TABLE `Motoristas` DISABLE KEYS */;
INSERT INTO `Motoristas` VALUES (1,'William White',30,16,'New Tiffanyton',2.0398),(2,'Amber Stone',56,8,'Martinstad',2.81296),(3,'James Larson',45,6,'Lake Nicole',1.12926),(4,'Terri Hatfield',40,12,'Douglastown',2.11905),(5,'Richard Moore',45,24,'Michelleburgh',2.64483),(6,'Heather Miller',35,28,'Maryton',3.41113),(7,'Nicholas Jackson',59,21,'Christinaview',2.08383),(8,'David Gill',43,8,'Maryburgh',1.53274),(9,'Vicki Murphy',44,26,'Gloverberg',1.3048),(10,'Joshua Ortiz',42,28,'Freemanton',4.76213),(11,'Tim Martin',38,4,'Elizabethtown',2.66656),(12,'Nancy Figueroa',39,26,'West Gregorychester',3.32465),(13,'Daniel Hunt',55,8,'Masontown',4.67671),(14,'Jason Ward Jr.',25,26,'North Dylanland',1.33099),(15,'Craig Peterson',27,28,'North Curtisland',4.50665),(16,'Michael Davis',40,18,'Adamsbury',3.20635),(17,'Jennifer Moss',47,28,'Hallville',1.65934),(18,'Cassandra Gaines',35,28,'Tonychester',2.64502),(19,'Jason Padilla',36,5,'New Jeffreyborough',4.11041),(20,'Jamie Rivera',34,9,'North Kimberly',2.92148);
/*!40000 ALTER TABLE `Motoristas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pedidos`
--

DROP TABLE IF EXISTS `Pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedidos` (
  `ID_Pedido` int NOT NULL,
  `Data_Pedido` datetime DEFAULT NULL,
  `Data_Entrega_Estimada` datetime DEFAULT NULL,
  `Data_Entrega_Real` datetime DEFAULT NULL,
  `Distancia_km` float DEFAULT NULL,
  `Custo_Transporte` float DEFAULT NULL,
  `Peso_kg` float DEFAULT NULL,
  `Regiao` varchar(255) DEFAULT NULL,
  `Motorista` int DEFAULT NULL,
  `Veiculo` int DEFAULT NULL,
  PRIMARY KEY (`ID_Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedidos`
--

LOCK TABLES `Pedidos` WRITE;
/*!40000 ALTER TABLE `Pedidos` DISABLE KEYS */;
INSERT INTO `Pedidos` VALUES (1,'2023-01-01 00:00:00','2023-01-05 00:00:00','2023-01-06 00:00:00',380.795,128.286,322.806,'West Jon',13,9),(2,'2023-01-02 00:00:00','2023-01-06 00:00:00','2023-01-07 00:00:00',951.207,672.769,46.6493,'Laurenside',20,8),(3,'2023-01-03 00:00:00','2023-01-07 00:00:00','2023-01-08 00:00:00',734.674,382.92,85.0062,'Brookefurt',15,3),(4,'2023-01-04 00:00:00','2023-01-08 00:00:00','2023-01-09 00:00:00',602.672,557.714,449.784,'Justinshire',3,1),(5,'2023-01-05 00:00:00','2023-01-09 00:00:00','2023-01-10 00:00:00',164.458,916.81,305.182,'North Sarah',8,3),(6,'2023-01-06 00:00:00','2023-01-10 00:00:00','2023-01-11 00:00:00',164.435,324.363,9.55254,'Sarahbury',20,4),(7,'2023-01-07 00:00:00','2023-01-11 00:00:00','2023-01-12 00:00:00',67.5028,469.345,55.2284,'Perkinsmouth',16,2),(8,'2023-01-08 00:00:00','2023-01-12 00:00:00','2023-01-13 00:00:00',867.514,779.996,333.433,'North Sarahaven',13,1),(9,'2023-01-09 00:00:00','2023-01-13 00:00:00','2023-01-14 00:00:00',605.104,305.918,7.50548,'Belltown',18,7),(10,'2023-01-10 00:00:00','2023-01-14 00:00:00','2023-01-15 00:00:00',710.992,169.282,84.6,'North Rodneyborough',10,8),(11,'2023-01-11 00:00:00','2023-01-15 00:00:00','2023-01-16 00:00:00',30.3786,360.776,276.623,'West Maria',19,7),(12,'2023-01-12 00:00:00','2023-01-16 00:00:00','2023-01-17 00:00:00',970.211,245.099,347.488,'Turnerburgh',17,5),(13,'2023-01-13 00:00:00','2023-01-17 00:00:00','2023-01-18 00:00:00',834.118,936.728,327.721,'North Chelsea',19,1),(14,'2023-01-14 00:00:00','2023-01-18 00:00:00','2023-01-19 00:00:00',220.216,827.308,116.013,'Hollandborough',5,7),(15,'2023-01-15 00:00:00','2023-01-19 00:00:00','2023-01-20 00:00:00',190.007,670.063,357.529,'Wandabury',9,7),(16,'2023-01-16 00:00:00','2023-01-20 00:00:00','2023-01-21 00:00:00',191.57,884.315,122.438,'New Jesus',12,9),(17,'2023-01-17 00:00:00','2023-01-21 00:00:00','2023-01-22 00:00:00',311.2,823.305,166.073,'East Christopher',1,3),(18,'2023-01-18 00:00:00','2023-01-22 00:00:00','2023-01-23 00:00:00',529.509,267.913,374.513,'West Stephenshire',1,9),(19,'2023-01-19 00:00:00','2023-01-23 00:00:00','2023-01-24 00:00:00',437.626,903.303,326.568,'Jamestown',15,1),(20,'2023-01-20 00:00:00','2023-01-24 00:00:00','2023-01-25 00:00:00',298.317,585.408,425.366,'Davidhaven',2,1),(21,'2023-01-21 00:00:00','2023-01-25 00:00:00','2023-01-26 00:00:00',615.734,826.696,330.518,'West Andrea',16,4),(22,'2023-01-22 00:00:00','2023-01-26 00:00:00','2023-01-27 00:00:00',148.099,906.482,286.313,'Cynthiaton',8,9),(23,'2023-01-23 00:00:00','2023-01-27 00:00:00','2023-01-28 00:00:00',299.223,386.203,51.369,'South Michaelastad',13,6),(24,'2023-01-24 00:00:00','2023-01-28 00:00:00','2023-01-29 00:00:00',372.698,199.047,187.019,'Karenland',1,3),(25,'2023-01-25 00:00:00','2023-01-29 00:00:00','2023-01-30 00:00:00',461.509,305.142,136.275,'Jonathanview',16,1),(26,'2023-01-26 00:00:00','2023-01-30 00:00:00','2023-01-31 00:00:00',787.324,484.397,125.775,'Ewingfort',7,4),(27,'2023-01-27 00:00:00','2023-01-31 00:00:00','2023-02-01 00:00:00',207.677,836.213,486.64,'Morenoview',5,9),(28,'2023-01-28 00:00:00','2023-02-01 00:00:00','2023-02-02 00:00:00',519.092,874.658,199.583,'East Amandaside',3,3),(29,'2023-01-29 00:00:00','2023-02-02 00:00:00','2023-02-03 00:00:00',596.49,106.257,446.563,'Lake Frankburgh',12,9),(30,'2023-01-30 00:00:00','2023-02-03 00:00:00','2023-02-04 00:00:00',55.9859,559.673,317.414,'New Kevinview',16,7),(31,'2023-01-31 00:00:00','2023-02-04 00:00:00','2023-02-05 00:00:00',611.469,475.67,398.432,'Delgadoland',19,4),(32,'2023-02-01 00:00:00','2023-02-05 00:00:00','2023-02-06 00:00:00',178.819,299.897,253.805,'Hartmouth',5,3),(33,'2023-02-02 00:00:00','2023-02-06 00:00:00','2023-02-07 00:00:00',74.4011,207.879,290.567,'East Matthewburgh',14,10),(34,'2023-02-03 00:00:00','2023-02-07 00:00:00','2023-02-08 00:00:00',949.397,403.854,248.796,'Williamsbury',5,5),(35,'2023-02-04 00:00:00','2023-02-08 00:00:00','2023-02-09 00:00:00',965.976,948.619,101.645,'Port Keithside',15,5),(36,'2023-02-05 00:00:00','2023-02-09 00:00:00','2023-02-10 00:00:00',810.313,390.883,362.614,'East Stephen',17,3),(37,'2023-02-06 00:00:00','2023-02-10 00:00:00','2023-02-11 00:00:00',311.568,566.912,143.982,'Perryport',14,9),(38,'2023-02-07 00:00:00','2023-02-11 00:00:00','2023-02-12 00:00:00',106.695,732.717,17.0364,'South Richardhaven',20,4),(39,'2023-02-08 00:00:00','2023-02-12 00:00:00','2023-02-13 00:00:00',687.391,427.267,324.509,'Travisshire',5,5),(40,'2023-02-09 00:00:00','2023-02-13 00:00:00','2023-02-14 00:00:00',445.751,974.604,92.6698,'Cookfurt',12,4),(41,'2023-02-10 00:00:00','2023-02-14 00:00:00','2023-02-15 00:00:00',130.818,966.203,470.527,'West Tanyaside',16,5),(42,'2023-02-11 00:00:00','2023-02-15 00:00:00','2023-02-16 00:00:00',500.225,326.604,477.195,'Youngfort',16,7),(43,'2023-02-12 00:00:00','2023-02-16 00:00:00','2023-02-17 00:00:00',44.0446,547.524,457.858,'Ryanside',7,9),(44,'2023-02-13 00:00:00','2023-02-17 00:00:00','2023-02-18 00:00:00',910.227,370.79,188.229,'East Christopher',4,7),(45,'2023-02-14 00:00:00','2023-02-18 00:00:00','2023-02-19 00:00:00',266.192,356.356,12.651,'Gabriellachester',1,5),(46,'2023-02-15 00:00:00','2023-02-19 00:00:00','2023-02-20 00:00:00',665.897,133.198,464.518,'Hollyfurt',5,10),(47,'2023-02-16 00:00:00','2023-02-20 00:00:00','2023-02-21 00:00:00',318.594,648.608,216.951,'North Karina',10,10),(48,'2023-02-17 00:00:00','2023-02-21 00:00:00','2023-02-22 00:00:00',524.867,552.411,483.494,'Staceyshire',5,7),(49,'2023-02-18 00:00:00','2023-02-22 00:00:00','2023-02-23 00:00:00',551.243,146.331,481.992,'South Davidville',4,10),(50,'2023-02-19 00:00:00','2023-02-23 00:00:00','2023-02-24 00:00:00',193.006,350.782,427.24,'South Stevenport',2,5),(51,'2023-02-20 00:00:00','2023-02-24 00:00:00','2023-02-25 00:00:00',969.889,917.439,150.752,'Hancockshire',20,3),(52,'2023-02-21 00:00:00','2023-02-25 00:00:00','2023-02-26 00:00:00',777.381,315.606,195.623,'Joshuaborough',10,7),(53,'2023-02-22 00:00:00','2023-02-26 00:00:00','2023-02-27 00:00:00',940.104,230.405,426.313,'Connerfurt',19,2),(54,'2023-02-23 00:00:00','2023-02-27 00:00:00','2023-02-28 00:00:00',895.879,540.508,161.876,'Makaylaland',1,9),(55,'2023-02-24 00:00:00','2023-02-28 00:00:00','2023-03-01 00:00:00',601.921,987.085,88.8989,'East Chelseaburgh',5,10),(56,'2023-02-25 00:00:00','2023-03-01 00:00:00','2023-03-02 00:00:00',922.656,317.85,280.617,'Goldenbury',13,10),(57,'2023-02-26 00:00:00','2023-03-02 00:00:00','2023-03-03 00:00:00',97.6076,704.922,468.397,'Sotochester',4,1),(58,'2023-02-27 00:00:00','2023-03-03 00:00:00','2023-03-04 00:00:00',204.023,785.458,349.535,'South Paula',16,6),(59,'2023-02-28 00:00:00','2023-03-04 00:00:00','2023-03-05 00:00:00',54.775,313.874,287.18,'Arnoldfurt',16,7),(60,'2023-03-01 00:00:00','2023-03-05 00:00:00','2023-03-06 00:00:00',332.077,755.395,53.1024,'Kristenmouth',2,8),(61,'2023-03-02 00:00:00','2023-03-06 00:00:00','2023-03-07 00:00:00',394.791,431.005,309.429,'East Dustin',17,10),(62,'2023-03-03 00:00:00','2023-03-07 00:00:00','2023-03-08 00:00:00',278.636,669.075,495.077,'Hammondton',20,9),(63,'2023-03-04 00:00:00','2023-03-08 00:00:00','2023-03-09 00:00:00',830.45,670.177,74.3416,'Port Jason',12,2),(64,'2023-03-05 00:00:00','2023-03-09 00:00:00','2023-03-10 00:00:00',363.186,582.197,261.573,'Nelsonhaven',18,10),(65,'2023-03-06 00:00:00','2023-03-10 00:00:00','2023-03-11 00:00:00',288.125,181.261,439.3,'Taylorstad',3,2),(66,'2023-03-07 00:00:00','2023-03-11 00:00:00','2023-03-12 00:00:00',547.269,851.772,371.68,'South Robert',1,5),(67,'2023-03-08 00:00:00','2023-03-12 00:00:00','2023-03-13 00:00:00',149.515,388.702,350.023,'Lake Robertborough',1,5),(68,'2023-03-09 00:00:00','2023-03-13 00:00:00','2023-03-14 00:00:00',804.175,267.867,352.73,'Kaylaside',19,6),(69,'2023-03-10 00:00:00','2023-03-14 00:00:00','2023-03-15 00:00:00',83.8051,136.698,182.948,'Myersbury',11,3),(70,'2023-03-11 00:00:00','2023-03-15 00:00:00','2023-03-16 00:00:00',987.018,631.804,150.328,'Lake Jessicaland',5,8),(71,'2023-03-12 00:00:00','2023-03-16 00:00:00','2023-03-17 00:00:00',774.522,709.808,405.634,'East Timhaven',12,1),(72,'2023-03-13 00:00:00','2023-03-17 00:00:00','2023-03-18 00:00:00',206.729,114.929,406.006,'Alexandriaside',3,6),(73,'2023-03-14 00:00:00','2023-03-18 00:00:00','2023-03-19 00:00:00',15.4669,560.884,434.201,'Sarahside',1,4),(74,'2023-03-15 00:00:00','2023-03-19 00:00:00','2023-03-20 00:00:00',817.307,303.846,457.054,'Sabrinafurt',1,1),(75,'2023-03-16 00:00:00','2023-03-20 00:00:00','2023-03-21 00:00:00',709.789,680.656,258.115,'West Kevin',8,7),(76,'2023-03-17 00:00:00','2023-03-21 00:00:00','2023-03-22 00:00:00',731.717,256.93,253.251,'Silvachester',10,9),(77,'2023-03-18 00:00:00','2023-03-22 00:00:00','2023-03-23 00:00:00',773.558,721.844,400.156,'South Joshua',11,4),(78,'2023-03-19 00:00:00','2023-03-23 00:00:00','2023-03-24 00:00:00',83.3042,448.062,326.732,'Maryside',12,4),(79,'2023-03-20 00:00:00','2023-03-24 00:00:00','2023-03-25 00:00:00',364.881,943.057,352.474,'Orozcoside',13,6),(80,'2023-03-21 00:00:00','2023-03-25 00:00:00','2023-03-26 00:00:00',124.71,223.769,398.917,'Johnsonhaven',12,3),(81,'2023-03-22 00:00:00','2023-03-26 00:00:00','2023-03-27 00:00:00',864.472,406.96,445.553,'Lake Michaelfort',14,6),(82,'2023-03-23 00:00:00','2023-03-27 00:00:00','2023-03-28 00:00:00',627.065,202.126,172.308,'Gonzalezburgh',2,7),(83,'2023-03-24 00:00:00','2023-03-28 00:00:00','2023-03-29 00:00:00',337.589,932.224,190.914,'West Mariamouth',19,10),(84,'2023-03-25 00:00:00','2023-03-29 00:00:00','2023-03-30 00:00:00',72.9228,889.605,51.5211,'Alexanderland',18,10),(85,'2023-03-26 00:00:00','2023-03-30 00:00:00','2023-03-31 00:00:00',317.872,332.147,291.249,'Port Jesusside',3,3),(86,'2023-03-27 00:00:00','2023-03-31 00:00:00','2023-04-01 00:00:00',331.931,693.986,22.7914,'Barbaraville',17,7),(87,'2023-03-28 00:00:00','2023-04-01 00:00:00','2023-04-02 00:00:00',732.31,835.5,235.471,'New Jeremiahstad',8,3),(88,'2023-03-29 00:00:00','2023-04-02 00:00:00','2023-04-03 00:00:00',641.182,599.681,273.609,'Whitakerland',10,2),(89,'2023-03-30 00:00:00','2023-04-03 00:00:00','2023-04-04 00:00:00',888.341,576.686,146.838,'Lake Adrianastad',2,10),(90,'2023-03-31 00:00:00','2023-04-04 00:00:00','2023-04-05 00:00:00',477.493,317.667,297.462,'Abigailbury',19,4),(91,'2023-04-01 00:00:00','2023-04-05 00:00:00','2023-04-06 00:00:00',128.398,183.792,20.0976,'Andersonland',9,8),(92,'2023-04-02 00:00:00','2023-04-06 00:00:00','2023-04-07 00:00:00',716.112,907.494,23.4874,'Lake Ashleyberg',7,9),(93,'2023-04-03 00:00:00','2023-04-07 00:00:00','2023-04-08 00:00:00',763.177,910.376,412.187,'Jamestown',4,7),(94,'2023-04-04 00:00:00','2023-04-08 00:00:00','2023-04-09 00:00:00',565.664,669.791,183.294,'New Stephanie',18,1),(95,'2023-04-05 00:00:00','2023-04-09 00:00:00','2023-04-10 00:00:00',773.258,405.127,67.895,'Lake Kelly',13,3),(96,'2023-04-06 00:00:00','2023-04-10 00:00:00','2023-04-11 00:00:00',498.858,414.289,263.51,'Turnerville',11,9),(97,'2023-04-07 00:00:00','2023-04-11 00:00:00','2023-04-12 00:00:00',527.505,753.36,386.147,'Port Linda',4,1),(98,'2023-04-08 00:00:00','2023-04-12 00:00:00','2023-04-13 00:00:00',433.266,907.399,111.831,'East Jesse',4,9),(99,'2023-04-09 00:00:00','2023-04-13 00:00:00','2023-04-14 00:00:00',35.1649,898.378,313.331,'Leburgh',10,8),(100,'2023-04-10 00:00:00','2023-04-14 00:00:00','2023-04-15 00:00:00',116.813,801.888,47.247,'Port Pamstad',5,1);
/*!40000 ALTER TABLE `Pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Veiculos`
--

DROP TABLE IF EXISTS `Veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Veiculos` (
  `ID_Veiculo` int NOT NULL,
  `Tipo` varchar(255) DEFAULT NULL,
  `Capacidade_kg` float DEFAULT NULL,
  `Custo_Manutencao_Mensal` float DEFAULT NULL,
  `Consumo_Combustivel_km_l` float DEFAULT NULL,
  PRIMARY KEY (`ID_Veiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Veiculos`
--

LOCK TABLES `Veiculos` WRITE;
/*!40000 ALTER TABLE `Veiculos` DISABLE KEYS */;
INSERT INTO `Veiculos` VALUES (1,'Caminhão',986.757,839.116,8.07568),(2,'Van',439.065,3612.71,8.77164),(3,'Moto',774.62,2904.56,9.12098),(4,'Caminhão',453.69,3874.6,8.10841),(5,'Van',846.248,4609.25,18.1733),(6,'Moto',612.173,3133.17,16.355),(7,'Caminhão',157.161,3767.54,5.70345),(8,'Van',133.14,3906.87,9.03009),(9,'Moto',220.467,2200.33,5.33277),(10,'Caminhão',112.305,1584.88,12.4725);
/*!40000 ALTER TABLE `Veiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `loja`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `loja` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `loja`;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Eletrônicos'),(2,'Roupas'),(3,'Alimentos'),(4,'Móveis'),(5,'Cosméticos');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `renda` float DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'João Silva','(11) 98765-4321','São Paulo','joao@email.com','Masculino','Rua A, 123',5000,'1980-05-10'),(2,'Maria Santos','(21) 98765-5432','Rio de Janeiro','maria@email.com','Feminino','Av. B, 456',4000,'1985-08-15'),(3,'Carlos Oliveira','(31) 98765-6543','Belo Horizonte','carlos@email.com','Masculino','Rua C, 789',4500,'1982-03-25'),(4,'Ana Souza','(51) 98765-7654','Porto Alegre','ana@email.com','Feminino','Av. D, 987',3800,'1990-12-08'),(5,'Pedro Santos','(41) 98765-8765','Curitiba','pedro@email.com','Masculino','Rua E, 654',6000,'1975-09-14'),(6,'Luciana Lima','(11) 98765-9876','São Paulo','luciana@email.com','Feminino','Rua F, 321',4200,'1987-06-30'),(7,'Rafael Costa','(21) 98765-8765','Rio de Janeiro','rafael@email.com','Masculino','Av. G, 654',5500,'1983-04-18'),(8,'Mariana Oliveira','(31) 98765-7654','Belo Horizonte','mariana@email.com','Feminino','Rua H, 987',4800,'1989-02-22'),(9,'Gustavo Martins','(51) 98765-6543','Porto Alegre','gustavo@email.com','Masculino','Av. I, 234',7000,'1980-10-15'),(10,'Camila Silva','(41) 98765-5432','Curitiba','camila@email.com','Feminino','Rua J, 876',3200,'1992-07-05'),(11,'Felipe Santos','(11) 98765-4321','São Paulo','felipe@email.com','Masculino','Av. K, 567',5800,'1986-11-28'),(12,'Carla Lima','(21) 98765-3210','Rio de Janeiro','carla@email.com','Feminino','Rua L, 1098',3900,'1995-03-14'),(13,'Bruno Oliveira','(31) 98765-2109','Belo Horizonte','bruno@email.com','Masculino','Av. M, 432',4500,'1984-08-07'),(14,'Patrícia Costa','(51) 98765-1098','Porto Alegre','patricia@email.com','Feminino','Rua N, 765',4200,'1981-12-31'),(15,'Rodrigo Martins','(41) 98765-0987','Curitiba','rodrigo@email.com','Masculino','Av. O, 321',6500,'1978-06-23'),(16,'Juliana Ferreira','(11) 98765-9876','São Paulo','juliana@email.com','Feminino','Rua P, 876',4800,'1987-09-17'),(17,'Gabriel Silva','(21) 98765-8765','Rio de Janeiro','gabriel@email.com','Masculino','Av. Q, 543',5500,'1982-02-19'),(18,'Vanessa Souza','(31) 98765-7654','Belo Horizonte','vanessa@email.com','Feminino','Rua R, 234',4000,'1990-04-03'),(19,'Fernando Oliveira','(51) 98765-6543','Porto Alegre','fernando@email.com','Masculino','Av. S, 987',7000,'1983-11-11'),(20,'Larissa Santos','(41) 98765-5432','Curitiba','larissa@email.com','Feminino','Rua T, 432',3200,'1993-08-25'),(21,'Ricardo Lima','(11) 98765-4321','São Paulo','ricardo@email.com','Masculino','Av. U, 1098',5800,'1988-12-05'),(22,'Amanda Costa','(21) 98765-3210','Rio de Janeiro','amanda@email.com','Feminino','Rua V, 765',3900,'1996-05-19'),(23,'Renato Oliveira','(31) 98765-2109','Belo Horizonte','renato@email.com','Masculino','Av. W, 321',4500,'1985-10-14'),(24,'Tatiana Costa','(51) 98765-1098','Porto Alegre','tatiana@email.com','Feminino','Rua X, 876',4200,'1982-01-27'),(25,'Marcos Santos','(41) 98765-0987','Curitiba','marcos@email.com','Masculino','Av. Y, 987',6500,'1979-07-21'),(26,'Isabela Ferreira','(11) 98765-9876','São Paulo','isabela@email.com','Feminino','Rua Z, 234',4800,'1988-10-03'),(27,'Lucas Silva','(21) 98765-8765','Rio de Janeiro','lucas@email.com','Masculino','Av. A1, 543',5500,'1983-03-25'),(28,'Natália Souza','(31) 98765-7654','Belo Horizonte','natalia@email.com','Feminino','Rua B1, 987',4000,'1991-05-08'),(29,'Leandro Oliveira','(51) 98765-6543','Porto Alegre','leandro@email.com','Masculino','Av. C1, 321',7000,'1984-12-17'),(30,'Julia Santos','(41) 98765-5432','Curitiba','julia@email.com','Feminino','Rua D1, 876',3200,'1994-09-10'),(31,'Marcelo Lima','(11) 98765-4321','São Paulo','marcelo@email.com','Masculino','Av. E1, 1098',5800,'1989-01-22'),(32,'Carolina Costa','(21) 98765-3210','Rio de Janeiro','carolina@email.com','Feminino','Rua F1, 765',3900,'1997-04-15'),(33,'Paulo Oliveira','(31) 98765-2109','Belo Horizonte','paulo@email.com','Masculino','Av. G1, 321',4500,'1986-11-18'),(34,'Fernanda Costa','(51) 98765-1098','Porto Alegre','fernanda@email.com','Feminino','Rua H1, 876',4200,'1983-02-09'),(35,'Gabriel Santos','(41) 98765-0987','Curitiba','gabriel@email.com','Masculino','Av. I1, 987',6500,'1980-08-13'),(36,'Vanessa Ferreira','(11) 98765-9876','São Paulo','vanessa@email.com','Feminino','Rua J1, 234',4800,'1989-11-26'),(37,'Eduardo Silva','(21) 98765-8765','Rio de Janeiro','eduardo@email.com','Masculino','Av. K1, 543',5500,'1984-04-30'),(38,'Renata Oliveira','(31) 98765-7654','Belo Horizonte','renata@email.com','Feminino','Rua L1, 987',4000,'1992-06-03'),(39,'Thiago Martins','(51) 98765-6543','Porto Alegre','thiago@email.com','Masculino','Av. M1, 321',7000,'1985-01-14'),(40,'Mariana Santos','(41) 98765-5432','Curitiba','mariana@email.com','Feminino','Rua N1, 876',3200,'1993-04-27');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `exemplo`
--

DROP TABLE IF EXISTS `exemplo`;
/*!50001 DROP VIEW IF EXISTS `exemplo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `exemplo` AS SELECT 
 1 AS `id_categoria`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id_fornecedor` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cnpj` int DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Fornecedor A','São Paulo','Rua G, 234',1234),(2,'Fornecedor B','Rio de Janeiro','Av. H, 567',9876),(3,'Fornecedor C','Belo Horizonte','Rua I, 890',5678);
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id_funcionario` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `estado_civil` varchar(50) DEFAULT NULL,
  `dependentes` int DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Fernando Silva','1982-07-15','Masculino','Casado',2,'Vendedor',3500),(2,'Aline Costa','1980-12-20','Feminino','Solteira',0,'Gerente',6000),(3,'Marcos Oliveira','1975-03-10','Masculino','Divorciado',1,'Caixa',2800),(4,'Patrícia Souza','1988-06-05','Feminino','Solteira',0,'Vendedora',3200),(5,'Rafael Martins','1983-09-18','Masculino','Casado',3,'Gerente',6500),(6,'Carla Lima','1990-04-25','Feminino','Solteira',0,'Vendedora',3000),(7,'Rodrigo Santos','1977-11-30','Masculino','Divorciado',2,'Caixa',2800),(8,'Mariana Ferreira','1985-02-15','Feminino','Casada',1,'Gerente',6000),(9,'Lucas Costa','1989-08-10','Masculino','Solteiro',0,'Vendedor',3400),(10,'Ana Oliveira','1984-03-20','Feminino','Casada',2,'Caixa',3000);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `id_fornecedor` int DEFAULT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `id_fornecedor` (`id_fornecedor`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id_fornecedor`),
  CONSTRAINT `produtos_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Smartphone X',1500,1,1),(2,'Notebook Y',3000,1,2),(3,'Camiseta Z',50,2,3),(4,'Arroz Integral',10,3,3),(5,'Sofá Confort',2500,4,1),(6,'Shampoo Revitalizante',20,5,2),(7,'Monitor LED 24\"',800,1,1),(8,'Calça Jeans',120,2,3),(9,'Feijão Carioca',8,3,3),(10,'Mesa de Jantar',1500,4,1),(11,'Condicionador Hidratante',25,5,2),(12,'Fone de Ouvido Bluetooth',100,1,1),(13,'Vestido Floral',150,2,3),(14,'Azeite de Oliva Extra Virgem',15,3,3),(15,'Guarda-Roupa 6 Portas',1800,4,1),(16,'Perfume Masculino',80,5,2),(17,'Mouse Sem Fio',50,1,1),(18,'Blusa de Frio',80,2,3),(19,'Cereal Matinal',12,3,3),(20,'Sapateira',200,4,1);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `query`
--

DROP TABLE IF EXISTS `query`;
/*!50001 DROP VIEW IF EXISTS `query`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query` AS SELECT 
 1 AS `id_venda`,
 1 AS `quantidade`,
 1 AS `classe`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id_venda` int NOT NULL,
  `id_produto` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_funcionario` int DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_funcionario` (`id_funcionario`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`),
  CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,1,2,1,1,'2024-07-01'),(2,3,1,2,2,'2024-07-02'),(3,5,1,3,1,'2024-07-03'),(4,2,1,4,3,'2024-07-04'),(5,4,3,5,2,'2024-07-05'),(6,6,2,6,4,'2024-07-06'),(7,8,1,7,5,'2024-07-07'),(8,10,1,8,6,'2024-07-08'),(9,12,3,9,7,'2024-07-09'),(10,14,2,10,8,'2024-07-10'),(11,16,1,11,9,'2024-07-11'),(12,18,1,12,10,'2024-07-12'),(13,20,2,13,1,'2024-07-13'),(14,7,1,14,2,'2024-07-14'),(15,9,3,15,3,'2024-07-15'),(16,11,1,16,4,'2024-07-16'),(17,13,1,17,5,'2024-07-17'),(18,15,2,18,6,'2024-07-18'),(19,17,1,19,7,'2024-07-19'),(20,19,3,20,8,'2024-07-20'),(21,1,1,21,9,'2024-07-21'),(22,3,2,22,10,'2024-07-22'),(23,5,1,23,1,'2024-07-23'),(24,7,3,24,2,'2024-07-24'),(25,9,1,25,3,'2024-07-25'),(26,11,2,26,4,'2024-07-26'),(27,13,1,27,5,'2024-07-27'),(28,15,1,28,6,'2024-07-28'),(29,17,3,29,7,'2024-07-29'),(30,19,1,30,8,'2024-07-30'),(31,2,1,31,9,'2024-07-31'),(32,4,2,32,10,'2024-08-01'),(33,6,1,33,1,'2024-08-02'),(34,8,2,34,2,'2024-08-03'),(35,10,1,35,3,'2024-08-04'),(36,12,1,36,4,'2024-08-05'),(37,14,3,37,5,'2024-08-06'),(38,16,1,38,6,'2024-08-07'),(39,18,1,39,7,'2024-08-08'),(40,20,2,40,8,'2024-08-09'),(41,1,1,1,9,'2024-08-10'),(42,3,2,2,10,'2024-08-11'),(43,5,1,3,1,'2024-08-12'),(44,7,3,4,2,'2024-08-13'),(45,9,1,5,3,'2024-08-14'),(46,11,2,6,4,'2024-08-15'),(47,13,1,7,5,'2024-08-16'),(48,15,1,8,6,'2024-08-17'),(49,17,3,9,7,'2024-08-18'),(50,19,1,10,8,'2024-08-19'),(51,2,1,11,9,'2024-08-20'),(52,4,2,12,10,'2024-08-21'),(53,6,1,13,1,'2024-08-22'),(54,8,2,14,2,'2024-08-23'),(55,10,1,15,3,'2024-08-24'),(56,12,1,16,4,'2024-08-25'),(57,14,3,17,5,'2024-08-26'),(58,16,1,18,6,'2024-08-27'),(59,18,1,19,7,'2024-08-28'),(60,20,2,20,8,'2024-08-29'),(61,1,1,21,9,'2024-08-30'),(62,3,2,22,10,'2024-08-31'),(63,5,1,23,1,'2024-09-01'),(64,7,3,24,2,'2024-09-02'),(65,9,1,25,3,'2024-09-03'),(66,11,2,26,4,'2024-09-04'),(67,13,1,27,5,'2024-09-05'),(68,15,1,28,6,'2024-09-06'),(69,17,3,29,7,'2024-09-07'),(70,19,1,30,8,'2024-09-08'),(71,2,1,31,9,'2024-09-09'),(72,4,2,32,10,'2024-09-10'),(73,6,1,33,1,'2024-09-11'),(74,8,2,34,2,'2024-09-12'),(75,10,1,35,3,'2024-09-13'),(76,12,1,36,4,'2024-09-14'),(77,14,3,37,5,'2024-09-15'),(78,16,1,38,6,'2024-09-16'),(79,18,1,39,7,'2024-09-17'),(80,20,2,40,8,'2024-09-18'),(81,1,1,1,9,'2024-09-19'),(82,3,2,2,10,'2024-09-20'),(83,5,1,3,1,'2024-09-21'),(84,7,3,4,2,'2024-09-22'),(85,9,1,5,3,'2024-09-23'),(86,11,2,6,4,'2024-09-24'),(87,13,1,7,5,'2024-09-25'),(88,15,1,8,6,'2024-09-26'),(89,17,3,9,7,'2024-09-27'),(90,19,1,10,8,'2024-09-28'),(91,2,1,11,9,'2024-09-29'),(92,4,2,12,10,'2024-09-30'),(93,6,1,13,1,'2024-10-01'),(94,8,2,14,2,'2024-10-02'),(95,10,1,15,3,'2024-10-03'),(96,12,1,16,4,'2024-10-04'),(97,14,3,17,5,'2024-10-05'),(98,16,1,18,6,'2024-10-06'),(99,18,1,19,7,'2024-10-07'),(100,20,2,20,8,'2024-10-08'),(101,1,1,21,9,'2024-10-09'),(102,3,2,22,10,'2024-10-10'),(103,5,1,23,1,'2024-10-11'),(104,7,3,24,2,'2024-10-12'),(105,9,1,25,3,'2024-10-13'),(106,11,2,26,4,'2024-10-14'),(107,13,1,27,5,'2024-10-15'),(108,15,1,28,6,'2024-10-16'),(109,17,3,29,7,'2024-10-17'),(110,19,1,30,8,'2024-10-18'),(111,2,1,31,9,'2024-10-19'),(112,4,2,32,10,'2024-10-20'),(113,6,1,33,1,'2024-10-21'),(114,8,2,34,2,'2024-10-22'),(115,10,1,35,3,'2024-10-23'),(116,12,1,36,4,'2024-10-24'),(117,14,3,37,5,'2024-10-25'),(118,16,1,38,6,'2024-10-26'),(119,18,1,39,7,'2024-10-27'),(120,20,2,40,8,'2024-10-28'),(121,1,1,1,9,'2024-10-29'),(122,3,2,2,10,'2024-10-30'),(123,5,1,3,1,'2024-10-31');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `marketing_digital`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `marketing_digital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `marketing_digital`;

--
-- Table structure for table `Campanhas`
--

DROP TABLE IF EXISTS `Campanhas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Campanhas` (
  `ID_Campanha` int NOT NULL,
  `Plataforma` varchar(255) DEFAULT NULL,
  `Data_Inicio` datetime DEFAULT NULL,
  `Data_Fim` datetime DEFAULT NULL,
  `Investimento_Total` float DEFAULT NULL,
  `Impressoes` int DEFAULT NULL,
  `Cliques` int DEFAULT NULL,
  `Conversoes` int DEFAULT NULL,
  `Regiao_Alvo` varchar(255) DEFAULT NULL,
  `Segmento_Alvo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Campanha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campanhas`
--

LOCK TABLES `Campanhas` WRITE;
/*!40000 ALTER TABLE `Campanhas` DISABLE KEYS */;
INSERT INTO `Campanhas` VALUES (1,'Google','2023-01-01 00:00:00','2023-01-07 00:00:00',3014.64,33254,1050,485,'Tylershire','Saúde'),(2,'Google','2023-01-02 00:00:00','2023-01-08 00:00:00',8396.12,48362,2436,72,'Mayhaven','Educação'),(3,'Instagram','2023-01-03 00:00:00','2023-01-09 00:00:00',4105.74,21128,5473,710,'Lake Christopher','Saúde'),(4,'Instagram','2023-01-04 00:00:00','2023-01-10 00:00:00',4128.57,60383,2343,369,'Port Jenniferborough','Tecnologia'),(5,'Google','2023-01-05 00:00:00','2023-01-11 00:00:00',1286.24,66545,2745,570,'Molinaton','Saúde'),(6,'LinkedIn','2023-01-06 00:00:00','2023-01-12 00:00:00',5938.44,83180,4712,336,'Lake Kyleville','Tecnologia'),(7,'Facebook','2023-01-07 00:00:00','2023-01-13 00:00:00',5809.81,88958,1965,778,'Alexandrastad','Saúde'),(8,'Google','2023-01-08 00:00:00','2023-01-14 00:00:00',4203.92,10865,6128,745,'Mitchellview','Financeiro'),(9,'LinkedIn','2023-01-09 00:00:00','2023-01-15 00:00:00',9047.96,3219,7426,150,'Greenehaven','Tecnologia'),(10,'Facebook','2023-01-10 00:00:00','2023-01-16 00:00:00',2158.74,40809,6471,999,'Danielville','Saúde'),(11,'Google','2023-01-11 00:00:00','2023-01-17 00:00:00',3970.9,6287,6459,224,'South Robertport','Financeiro'),(12,'Google','2023-01-12 00:00:00','2023-01-18 00:00:00',3894.24,35387,7963,444,'Williamborough','Tecnologia'),(13,'Instagram','2023-01-13 00:00:00','2023-01-19 00:00:00',1830.62,9512,3328,900,'Ellisstad','Financeiro'),(14,'Facebook','2023-01-14 00:00:00','2023-01-20 00:00:00',5330.31,2342,3819,961,'West Jesusbury','Educação'),(15,'Facebook','2023-01-15 00:00:00','2023-01-21 00:00:00',7190.06,64076,2471,732,'Hollychester','Educação'),(16,'LinkedIn','2023-01-16 00:00:00','2023-01-22 00:00:00',5604.91,20216,2991,327,'Howardchester','Tecnologia'),(17,'Instagram','2023-01-17 00:00:00','2023-01-23 00:00:00',2412.8,94070,3856,41,'Gilesfurt','Saúde'),(18,'Instagram','2023-01-18 00:00:00','2023-01-24 00:00:00',4395.57,80767,4325,679,'Daltonside','Tecnologia'),(19,'Instagram','2023-01-19 00:00:00','2023-01-25 00:00:00',1023.36,98829,194,294,'Davisborough','Financeiro'),(20,'Instagram','2023-01-20 00:00:00','2023-01-26 00:00:00',8814.71,27614,2774,314,'Chrishaven','Saúde'),(21,'Facebook','2023-01-21 00:00:00','2023-01-27 00:00:00',1760.65,37258,6998,438,'North Eduardo','Educação'),(22,'Facebook','2023-01-22 00:00:00','2023-01-28 00:00:00',6375.5,94789,893,486,'South Emilyshire','Saúde'),(23,'Google','2023-01-23 00:00:00','2023-01-29 00:00:00',9876.31,43078,2216,295,'South Benjaminburgh','Educação'),(24,'Google','2023-01-24 00:00:00','2023-01-30 00:00:00',5829.32,84524,5879,153,'Darrylview','Saúde'),(25,'Instagram','2023-01-25 00:00:00','2023-01-31 00:00:00',9316.38,97573,6266,433,'Lawsonside','Saúde'),(26,'Instagram','2023-01-26 00:00:00','2023-02-01 00:00:00',3125.05,13219,914,28,'Chavezhaven','Saúde'),(27,'Instagram','2023-01-27 00:00:00','2023-02-02 00:00:00',7839.6,1235,445,27,'North Kevinfurt','Financeiro'),(28,'Google','2023-01-28 00:00:00','2023-02-03 00:00:00',5781.39,43929,8654,778,'Daviston','Financeiro'),(29,'LinkedIn','2023-01-29 00:00:00','2023-02-04 00:00:00',7484.64,68444,2543,599,'Lake Melaniechester','Tecnologia'),(30,'LinkedIn','2023-01-30 00:00:00','2023-02-05 00:00:00',1561.07,9567,7883,380,'Port Carl','Tecnologia'),(31,'Google','2023-01-31 00:00:00','2023-02-06 00:00:00',2329.65,71792,1084,184,'Smithborough','Educação'),(32,'Google','2023-02-01 00:00:00','2023-02-07 00:00:00',2198.05,66441,7890,203,'Kennethhaven','Financeiro'),(33,'Google','2023-02-02 00:00:00','2023-02-08 00:00:00',7184.49,85555,9931,511,'Lake Leonardland','Educação'),(34,'Google','2023-02-03 00:00:00','2023-02-09 00:00:00',8599.97,74698,927,997,'New Jacqueline','Tecnologia'),(35,'Google','2023-02-04 00:00:00','2023-02-10 00:00:00',7746.55,6415,3631,122,'Matthewfurt','Educação'),(36,'Google','2023-02-05 00:00:00','2023-02-11 00:00:00',1274.25,37159,7247,123,'Lake Brandimouth','Tecnologia'),(37,'Instagram','2023-02-06 00:00:00','2023-02-12 00:00:00',8804.93,44925,4551,231,'Port Mariaville','Financeiro'),(38,'Instagram','2023-02-07 00:00:00','2023-02-13 00:00:00',4187.32,6951,3976,687,'Amandaton','Saúde'),(39,'Instagram','2023-02-08 00:00:00','2023-02-14 00:00:00',4574.47,88388,6059,956,'Whitneyside','Financeiro'),(40,'Instagram','2023-02-09 00:00:00','2023-02-15 00:00:00',1943.82,9007,226,840,'West Philliptown','Educação'),(41,'Google','2023-02-10 00:00:00','2023-02-16 00:00:00',7636.65,42832,3277,653,'New Pamelamouth','Educação'),(42,'LinkedIn','2023-02-11 00:00:00','2023-02-17 00:00:00',2640.55,59596,8895,906,'Gonzalezview','Financeiro'),(43,'Facebook','2023-02-12 00:00:00','2023-02-18 00:00:00',6075.69,31523,6124,273,'North Laura','Financeiro'),(44,'Google','2023-02-13 00:00:00','2023-02-19 00:00:00',8566.39,89861,5209,934,'Hudsonbury','Tecnologia'),(45,'Facebook','2023-02-14 00:00:00','2023-02-20 00:00:00',1802.84,87740,4246,64,'Greenmouth','Educação'),(46,'LinkedIn','2023-02-15 00:00:00','2023-02-21 00:00:00',5818.02,16524,7296,880,'West Dillon','Educação'),(47,'Instagram','2023-02-16 00:00:00','2023-02-22 00:00:00',3098.95,20282,3468,652,'East Heatherton','Financeiro'),(48,'LinkedIn','2023-02-17 00:00:00','2023-02-23 00:00:00',4086.34,24930,3897,809,'Jessicaville','Saúde'),(49,'Google','2023-02-18 00:00:00','2023-02-24 00:00:00',5265.73,1077,1892,787,'East Sharontown','Educação'),(50,'Instagram','2023-02-19 00:00:00','2023-02-25 00:00:00',4195.94,21611,5832,467,'Tinaview','Saúde'),(51,'Google','2023-02-20 00:00:00','2023-02-26 00:00:00',6839.41,17984,3576,988,'North Adam','Financeiro'),(52,'Instagram','2023-02-21 00:00:00','2023-02-27 00:00:00',5316.24,15060,3517,887,'Lake Randallport','Financeiro'),(53,'Facebook','2023-02-22 00:00:00','2023-02-28 00:00:00',6257.8,83985,1745,171,'Jessicaland','Tecnologia'),(54,'Facebook','2023-02-23 00:00:00','2023-03-01 00:00:00',7631.4,85056,9497,389,'Russellside','Educação'),(55,'Facebook','2023-02-24 00:00:00','2023-03-02 00:00:00',6019.68,44303,3130,96,'Jessicatown','Saúde'),(56,'LinkedIn','2023-02-25 00:00:00','2023-03-03 00:00:00',6278.82,60207,2972,64,'Jessicaton','Tecnologia'),(57,'Google','2023-02-26 00:00:00','2023-03-04 00:00:00',6080.13,76046,3172,485,'Lake Lydia','Educação'),(58,'LinkedIn','2023-02-27 00:00:00','2023-03-05 00:00:00',4408.95,30287,1954,809,'New Williamstad','Tecnologia'),(59,'Facebook','2023-02-28 00:00:00','2023-03-06 00:00:00',4037.02,94709,4121,187,'Port Robert','Financeiro'),(60,'Google','2023-03-01 00:00:00','2023-03-07 00:00:00',9096.83,40711,4762,400,'Nelsonberg','Educação'),(61,'Facebook','2023-03-02 00:00:00','2023-03-08 00:00:00',6468,12954,6614,358,'East Paul','Tecnologia'),(62,'LinkedIn','2023-03-03 00:00:00','2023-03-09 00:00:00',3199.18,74340,5131,17,'Port Anthonymouth','Tecnologia'),(63,'LinkedIn','2023-03-04 00:00:00','2023-03-10 00:00:00',5484.23,73101,2808,842,'Lake Rodneyfurt','Saúde'),(64,'LinkedIn','2023-03-05 00:00:00','2023-03-11 00:00:00',3973.14,72520,7212,322,'Ryanfort','Tecnologia'),(65,'Facebook','2023-03-06 00:00:00','2023-03-12 00:00:00',9403.23,88062,9624,768,'Ariasfurt','Educação'),(66,'Google','2023-03-07 00:00:00','2023-03-13 00:00:00',1067.81,19574,8493,844,'Port Matthew','Educação'),(67,'Google','2023-03-08 00:00:00','2023-03-14 00:00:00',3028,10184,3607,993,'South Veronicaberg','Saúde'),(68,'Facebook','2023-03-09 00:00:00','2023-03-15 00:00:00',4288.21,20096,6556,992,'Port John','Educação'),(69,'Google','2023-03-10 00:00:00','2023-03-16 00:00:00',5390.29,68728,4312,452,'New Ashleyshire','Financeiro'),(70,'Facebook','2023-03-11 00:00:00','2023-03-17 00:00:00',8657.36,35016,8070,776,'Port David','Educação'),(71,'Google','2023-03-12 00:00:00','2023-03-18 00:00:00',1790.99,12246,8866,337,'New Sharonshire','Educação'),(72,'Instagram','2023-03-13 00:00:00','2023-03-19 00:00:00',8252.78,46558,636,63,'North Briana','Tecnologia'),(73,'Instagram','2023-03-14 00:00:00','2023-03-20 00:00:00',1500.88,19381,1725,770,'Michaelmouth','Tecnologia'),(74,'LinkedIn','2023-03-15 00:00:00','2023-03-21 00:00:00',8580.83,37455,8073,248,'Randallview','Educação'),(75,'Instagram','2023-03-16 00:00:00','2023-03-22 00:00:00',1464.72,93263,8677,238,'South Brandyberg','Saúde'),(76,'Instagram','2023-03-17 00:00:00','2023-03-23 00:00:00',1164.18,5018,8170,588,'North Stacey','Tecnologia'),(77,'Instagram','2023-03-18 00:00:00','2023-03-24 00:00:00',7272.65,12302,8766,60,'South Christopherland','Saúde'),(78,'Facebook','2023-03-19 00:00:00','2023-03-25 00:00:00',9975.3,68506,8709,618,'Campbellhaven','Educação'),(79,'Instagram','2023-03-20 00:00:00','2023-03-26 00:00:00',9069.49,42157,6590,613,'West Rhondaberg','Educação'),(80,'Instagram','2023-03-21 00:00:00','2023-03-27 00:00:00',6183.99,55917,3700,273,'Hillville','Financeiro'),(81,'LinkedIn','2023-03-22 00:00:00','2023-03-28 00:00:00',9256.56,93738,6883,427,'Port Joshuamouth','Tecnologia'),(82,'Instagram','2023-03-23 00:00:00','2023-03-29 00:00:00',1047.7,97646,9246,812,'Sarahport','Educação'),(83,'Instagram','2023-03-24 00:00:00','2023-03-30 00:00:00',9775.6,84122,5071,105,'Port Sharonside','Financeiro'),(84,'Google','2023-03-25 00:00:00','2023-03-31 00:00:00',5416.74,25519,1305,97,'South Katherineshire','Tecnologia'),(85,'LinkedIn','2023-03-26 00:00:00','2023-04-01 00:00:00',7506.06,97809,2090,87,'North Amber','Educação'),(86,'LinkedIn','2023-03-27 00:00:00','2023-04-02 00:00:00',8387.75,88487,5399,297,'Jasonchester','Educação'),(87,'LinkedIn','2023-03-28 00:00:00','2023-04-03 00:00:00',7466.12,57819,3672,129,'North Garrett','Tecnologia'),(88,'LinkedIn','2023-03-29 00:00:00','2023-04-04 00:00:00',5815.33,81910,6075,823,'Lake Sabrina','Tecnologia'),(89,'LinkedIn','2023-03-30 00:00:00','2023-04-05 00:00:00',5289.58,72324,6420,500,'West Rachelland','Tecnologia'),(90,'LinkedIn','2023-03-31 00:00:00','2023-04-06 00:00:00',8547.24,6408,4480,921,'Reeveschester','Educação'),(91,'Facebook','2023-04-01 00:00:00','2023-04-07 00:00:00',2845.7,60379,4857,461,'New Brian','Educação'),(92,'Instagram','2023-04-02 00:00:00','2023-04-08 00:00:00',9711.95,26053,2813,509,'Lake Joeburgh','Financeiro'),(93,'LinkedIn','2023-04-03 00:00:00','2023-04-09 00:00:00',7398.57,10446,5688,174,'West Suzannemouth','Saúde'),(94,'Instagram','2023-04-04 00:00:00','2023-04-10 00:00:00',2795.56,1922,1066,191,'Mcdanielfurt','Tecnologia'),(95,'Instagram','2023-04-05 00:00:00','2023-04-11 00:00:00',7626.22,99723,5044,478,'South Eugenefort','Educação'),(96,'Facebook','2023-04-06 00:00:00','2023-04-12 00:00:00',5768.56,52356,3532,919,'East Henrymouth','Educação'),(97,'LinkedIn','2023-04-07 00:00:00','2023-04-13 00:00:00',7365.07,11789,788,744,'Gloriaview','Tecnologia'),(98,'Google','2023-04-08 00:00:00','2023-04-14 00:00:00',7910.02,98720,4343,832,'Port Carla','Saúde'),(99,'Facebook','2023-04-09 00:00:00','2023-04-15 00:00:00',1785.61,67656,3801,953,'Patriciaton','Tecnologia'),(100,'Google','2023-04-10 00:00:00','2023-04-16 00:00:00',5554.94,45028,8633,987,'Alanbury','Saúde');
/*!40000 ALTER TABLE `Campanhas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plataformas`
--

DROP TABLE IF EXISTS `Plataformas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Plataformas` (
  `ID_Plataforma` int NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Custo_por_Clique` float DEFAULT NULL,
  `Custo_por_Impressao` float DEFAULT NULL,
  `Conversoes_Totais` int DEFAULT NULL,
  PRIMARY KEY (`ID_Plataforma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plataformas`
--

LOCK TABLES `Plataformas` WRITE;
/*!40000 ALTER TABLE `Plataformas` DISABLE KEYS */;
INSERT INTO `Plataformas` VALUES (1,'Facebook',0.662722,0.0178878,5399),(2,'Google',1.86408,0.0943262,7674),(3,'Instagram',1.68401,0.0598422,1789),(4,'LinkedIn',2.12061,0.0374972,3367);
/*!40000 ALTER TABLE `Plataformas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `ID_Usuario` int NOT NULL,
  `Idade` int DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Localizacao` varchar(255) DEFAULT NULL,
  `Interesses` varchar(255) DEFAULT NULL,
  `Historico_de_Compras` int DEFAULT NULL,
  `Tempo_de_Engajamento` float DEFAULT NULL,
  PRIMARY KEY (`ID_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,23,'Feminino','Palmershire','Viagem',60,15.4181),(2,44,'Masculino','Romerotown','Tecnologia',14,18.9176),(3,57,'Feminino','Port Logan','Educação',75,26.1982),(4,51,'Masculino','Robertland','Tecnologia',82,17.5477),(5,29,'Outro','Johnsonstad','Viagem',12,1.88122),(6,62,'Outro','Joemouth','Viagem',87,27.9975),(7,24,'Masculino','Port Brandymouth','Viagem',12,20.9963),(8,27,'Outro','Fergusonfort','Esportes',13,20.6189),(9,62,'Feminino','New Richard','Tecnologia',25,7.25458),(10,34,'Masculino','Richardsonborough','Educação',45,20.1077),(11,43,'Outro','Thomastown','Educação',19,12.4221),(12,38,'Masculino','Lake Matthewton','Educação',55,19.8858),(13,45,'Feminino','Port Brendafurt','Esportes',45,4.0912),(14,63,'Feminino','Vaughnview','Esportes',8,20.0775),(15,19,'Outro','Nolanbury','Viagem',93,29.983),(16,60,'Feminino','Brownville','Educação',53,2.39815),(17,18,'Masculino','Lake Robinview','Esportes',55,29.3381),(18,53,'Feminino','Andradeport','Viagem',32,12.8003),(19,43,'Masculino','North Debraburgh','Educação',51,26.2519),(20,46,'Masculino','Pennymouth','Tecnologia',44,23.6892),(21,38,'Feminino','Gillburgh','Viagem',82,17.4435),(22,28,'Outro','Copelandstad','Esportes',70,22.415),(23,57,'Feminino','North Jonathan','Esportes',18,26.477),(24,28,'Masculino','New Summer','Viagem',83,12.7201),(25,53,'Masculino','New Jennifermouth','Viagem',22,10.484),(26,56,'Feminino','Marybury','Esportes',37,20.3602),(27,57,'Outro','Port Michael','Tecnologia',96,24.4275),(28,52,'Outro','Richardtown','Educação',56,23.1063),(29,51,'Masculino','Keithstad','Tecnologia',59,24.1366),(30,64,'Masculino','East Sandra','Viagem',3,13.6319),(31,41,'Outro','New Rachel','Tecnologia',28,24.7172),(32,39,'Feminino','North Susanmouth','Esportes',74,4.48606),(33,22,'Masculino','Lake Robin','Viagem',35,16.7902),(34,50,'Masculino','West Clairetown','Educação',61,1.167),(35,53,'Outro','Adamsmouth','Esportes',93,10.413),(36,64,'Feminino','Port Calvin','Esportes',54,11.6274),(37,37,'Outro','Lake Patriciaport','Educação',63,12.489),(38,36,'Feminino','New Adamside','Educação',79,21.1685),(39,52,'Feminino','Port Monica','Tecnologia',97,12.2682),(40,60,'Feminino','South Hannah','Viagem',7,14.0121),(41,34,'Masculino','East Rebecca','Educação',76,7.88878),(42,62,'Outro','Joshuaview','Educação',49,11.8243),(43,60,'Outro','Port Bryan','Viagem',94,7.59082),(44,51,'Feminino','New Scott','Educação',85,3.12268),(45,26,'Masculino','New Kimberly','Educação',31,18.5),(46,43,'Masculino','Lake Michelle','Tecnologia',58,20.3782),(47,19,'Outro','Port Amyside','Esportes',61,18.9652),(48,26,'Masculino','Thomasside','Esportes',24,14.4413),(49,26,'Masculino','Port Savannahchester','Esportes',20,12.0138),(50,57,'Feminino','Andrewsmouth','Esportes',37,26.0367),(51,34,'Masculino','Johnsonchester','Educação',4,16.0534),(52,18,'Feminino','Port Gary','Viagem',92,14.8963),(53,42,'Outro','Mayshire','Viagem',20,1.74362),(54,60,'Masculino','Salinasport','Tecnologia',60,10.8962),(55,57,'Outro','East Joseph','Tecnologia',24,12.0257),(56,59,'Outro','Diazfort','Educação',50,12.5659),(57,42,'Masculino','Lake Eric','Viagem',49,17.825),(58,56,'Masculino','Griffinfort','Viagem',51,16.4745),(59,52,'Outro','Ryanhaven','Esportes',96,18.6292),(60,20,'Masculino','South Jonathan','Educação',36,23.1816),(61,54,'Feminino','North Eduardobury','Educação',98,24.5766),(62,61,'Feminino','Sharonfort','Esportes',66,21.8256),(63,61,'Masculino','Campbellview','Educação',79,28.7102),(64,47,'Outro','Moniqueland','Educação',34,1.52874),(65,55,'Masculino','Howardtown','Tecnologia',36,6.67756),(66,51,'Masculino','New Georgebury','Viagem',6,1.21932),(67,29,'Outro','New Marissa','Educação',39,19.7768),(68,36,'Outro','East Benjamin','Tecnologia',42,27.0429),(69,54,'Feminino','Caldwellburgh','Viagem',58,8.06099),(70,61,'Outro','North Sandra','Esportes',12,27.884),(71,34,'Feminino','West Dianemouth','Tecnologia',3,2.74775),(72,27,'Outro','Rojasstad','Tecnologia',18,28.0986),(73,64,'Masculino','Jenniferstad','Viagem',40,11.1971),(74,29,'Feminino','Chaseton','Esportes',21,3.9412),(75,33,'Feminino','Lake Jessicastad','Tecnologia',15,15.0903),(76,41,'Feminino','Obrienfurt','Educação',97,8.44652),(77,36,'Masculino','Danielleview','Educação',99,9.26131),(78,25,'Masculino','New Amy','Educação',26,9.91141),(79,48,'Masculino','Phillipsshire','Esportes',8,24.2878),(80,38,'Masculino','Johnsonberg','Tecnologia',94,16.6357),(81,34,'Masculino','Khanside','Educação',87,10.0279),(82,40,'Feminino','Hayesview','Esportes',42,18.6997),(83,54,'Masculino','Andersontown','Educação',44,21.7684),(84,33,'Feminino','Katrinashire','Viagem',14,8.9061),(85,23,'Masculino','Port James','Tecnologia',78,12.9929),(86,25,'Outro','South Christopherfort','Tecnologia',2,4.5347),(87,42,'Feminino','North Barbara','Esportes',37,6.25333),(88,35,'Outro','Carterfurt','Esportes',69,20.7524),(89,42,'Feminino','Randyton','Tecnologia',38,6.26171),(90,29,'Outro','Jenniferfort','Educação',41,16.2297),(91,32,'Masculino','Rachelstad','Educação',62,21.5623),(92,43,'Masculino','North Hannah','Viagem',60,4.09943),(93,58,'Masculino','Davidshire','Educação',14,17.4521),(94,62,'Feminino','New James','Esportes',89,8.44032),(95,43,'Outro','East Amanda','Esportes',84,28.9249),(96,64,'Masculino','Vernonmouth','Educação',2,15.0228),(97,49,'Outro','Douglasberg','Esportes',70,24.3738),(98,27,'Outro','Ashleyview','Tecnologia',17,16.9566),(99,33,'Masculino','West William','Tecnologia',89,2.25896),(100,24,'Masculino','West Loriborough','Educação',28,19.3614),(101,34,'Outro','North Michael','Tecnologia',66,28.5907),(102,40,'Masculino','Port Mary','Tecnologia',35,18.4467),(103,43,'Masculino','Port Amanda','Viagem',5,24.7565),(104,38,'Masculino','Josephland','Viagem',65,26.642),(105,39,'Feminino','Lake Melissaton','Tecnologia',40,7.61431),(106,24,'Outro','Port Samuelville','Educação',76,7.1493),(107,31,'Outro','Lake Aaronport','Viagem',56,18.7184),(108,32,'Feminino','Randallhaven','Esportes',36,12.9198),(109,24,'Outro','East Joseph','Esportes',45,25.356),(110,26,'Masculino','West Matthewbury','Esportes',23,27.1007),(111,25,'Outro','East Darius','Educação',47,11.2492),(112,40,'Masculino','Lake Dalefurt','Tecnologia',31,7.86925),(113,46,'Feminino','Riverahaven','Esportes',11,23.6352),(114,35,'Masculino','Keithtown','Educação',10,8.96937),(115,48,'Outro','Lake Michael','Viagem',67,24.8558),(116,47,'Outro','Wuhaven','Tecnologia',14,13.2884),(117,56,'Outro','Brandonmouth','Viagem',80,20.3589),(118,52,'Feminino','Daisytown','Educação',74,3.77052),(119,35,'Feminino','Kimfurt','Esportes',93,19.0919),(120,59,'Outro','Garciaside','Esportes',10,14.1013),(121,56,'Masculino','Riveraton','Educação',76,18.0116),(122,34,'Feminino','Lake Michaelberg','Esportes',94,5.87241),(123,31,'Outro','Jameschester','Tecnologia',1,22.3693),(124,48,'Outro','North Tinastad','Educação',5,26.0211),(125,41,'Feminino','Andreafurt','Viagem',20,7.28545),(126,52,'Feminino','Lake Kylehaven','Educação',8,3.77572),(127,61,'Feminino','West Adammouth','Tecnologia',43,1.68552),(128,62,'Masculino','Danieltown','Tecnologia',76,19.6172),(129,51,'Masculino','Coreyfurt','Educação',1,18.6057),(130,20,'Outro','Joshuachester','Educação',57,16.8542),(131,54,'Feminino','Phillipsmouth','Esportes',64,7.72647),(132,60,'Masculino','West Michael','Tecnologia',84,12.3363),(133,57,'Feminino','New Carolinemouth','Educação',28,18.2398),(134,43,'Outro','Port Karenton','Educação',37,15.4062),(135,40,'Masculino','South Michael','Tecnologia',47,29.6458),(136,61,'Masculino','South Noahborough','Educação',76,4.95675),(137,56,'Masculino','Medinashire','Esportes',37,21.1592),(138,32,'Outro','South Jessestad','Tecnologia',49,12.7252),(139,21,'Feminino','Ryanchester','Esportes',44,13.4178),(140,46,'Masculino','West Matthew','Esportes',56,21.8103),(141,39,'Outro','Lake Kristi','Esportes',28,21.0806),(142,42,'Feminino','Derrickstad','Esportes',79,29.7464),(143,30,'Outro','Lopeztown','Tecnologia',6,4.72343),(144,35,'Feminino','West Beverly','Esportes',61,4.01918),(145,50,'Outro','West Charlesfort','Esportes',20,22.0058),(146,33,'Feminino','Hartberg','Educação',78,17.7732),(147,62,'Masculino','New Jonathan','Tecnologia',2,8.95066),(148,59,'Feminino','Lake Justin','Tecnologia',73,3.30316),(149,61,'Outro','Thomasberg','Viagem',37,3.48409),(150,19,'Outro','Gregoryborough','Tecnologia',20,26.9315),(151,52,'Feminino','Phillipsside','Tecnologia',26,6.56415),(152,59,'Masculino','Stephaniefurt','Viagem',29,10.3778),(153,51,'Masculino','Matthewmouth','Tecnologia',1,7.57304),(154,47,'Feminino','Port April','Tecnologia',35,11.2949),(155,30,'Feminino','Danielleside','Tecnologia',70,3.01329),(156,30,'Outro','Douglasside','Tecnologia',59,16.0527),(157,35,'Masculino','Austinton','Viagem',69,2.96076),(158,49,'Feminino','New Jenny','Tecnologia',33,24.2103),(159,49,'Masculino','South Reginald','Tecnologia',51,7.77765),(160,52,'Feminino','Lake Jeremiah','Viagem',78,16.6603),(161,56,'Feminino','Lake Monicafort','Educação',12,26.5223),(162,63,'Masculino','Mcbridehaven','Esportes',20,19.8754),(163,46,'Feminino','Scotttown','Educação',53,16.4558),(164,46,'Feminino','East Monique','Viagem',88,10.4057),(165,61,'Outro','Traciland','Esportes',43,10.6571),(166,33,'Feminino','Johnsonport','Viagem',98,20.4151),(167,61,'Feminino','Beardland','Viagem',89,29.83),(168,64,'Feminino','Hawkinsmouth','Tecnologia',50,20.1933),(169,27,'Outro','Ericmouth','Esportes',29,17.1757),(170,47,'Masculino','Loweryburgh','Tecnologia',57,22.1889),(171,42,'Outro','Colemanshire','Esportes',39,14.491),(172,56,'Outro','New Alyssachester','Viagem',95,2.74413),(173,37,'Masculino','Sanchezland','Viagem',56,17.3066),(174,22,'Outro','New Amandatown','Educação',43,28.7711),(175,18,'Masculino','South Michaelside','Esportes',50,6.08379),(176,47,'Outro','West Paul','Tecnologia',23,21.0101),(177,20,'Masculino','Dyerchester','Educação',44,6.82708),(178,62,'Feminino','Port Dawn','Educação',38,16.539),(179,31,'Outro','Francofort','Educação',84,3.80362),(180,47,'Outro','New David','Tecnologia',23,14.0608),(181,21,'Outro','Lake Kristyborough','Educação',45,22.9287),(182,35,'Outro','Stricklandside','Tecnologia',52,11.0796),(183,54,'Feminino','Port Colin','Educação',80,20.2824),(184,42,'Outro','Karinaton','Tecnologia',50,24.068),(185,18,'Feminino','Meyerport','Viagem',8,27.8882),(186,63,'Feminino','Leemouth','Viagem',85,7.80462),(187,32,'Feminino','New Kathryn','Viagem',1,12.5802),(188,26,'Feminino','Jefferychester','Viagem',8,5.42006),(189,32,'Masculino','North Jonathan','Viagem',29,29.782),(190,41,'Masculino','Johnsonland','Educação',96,27.883),(191,21,'Outro','Josehaven','Educação',5,16.6588),(192,29,'Masculino','West Brent','Educação',86,25.419),(193,54,'Masculino','Villaland','Tecnologia',47,16.1078),(194,54,'Outro','Randolphfort','Tecnologia',34,19.084),(195,60,'Outro','Stephanieton','Tecnologia',65,3.58461),(196,23,'Outro','West Joshualand','Tecnologia',55,22.9028),(197,56,'Masculino','Lake Kennethton','Viagem',90,4.70369),(198,63,'Masculino','Lake Matthewborough','Viagem',43,24.956),(199,41,'Outro','New Amy','Viagem',74,23.6788),(200,28,'Feminino','South Melissaland','Esportes',30,21.5536);
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `recursos_humanos`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `recursos_humanos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `recursos_humanos`;

--
-- Table structure for table `Avaliacoes`
--

DROP TABLE IF EXISTS `Avaliacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Avaliacoes` (
  `ID_Avaliacao` int NOT NULL,
  `ID_Funcionario` int DEFAULT NULL,
  `Data_Avaliacao` datetime DEFAULT NULL,
  `Pontuacao` float DEFAULT NULL,
  `Comentario` text,
  PRIMARY KEY (`ID_Avaliacao`),
  KEY `ID_Funcionario` (`ID_Funcionario`),
  CONSTRAINT `Avaliacoes_ibfk_1` FOREIGN KEY (`ID_Funcionario`) REFERENCES `Funcionarios` (`ID_Funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Avaliacoes`
--

LOCK TABLES `Avaliacoes` WRITE;
/*!40000 ALTER TABLE `Avaliacoes` DISABLE KEYS */;
INSERT INTO `Avaliacoes` VALUES (1,24,'2022-01-31 00:00:00',2.16235,'Walk PM address worker experience.'),(2,30,'2022-02-28 00:00:00',4.14788,'Six learn executive term during team investment agency.'),(3,86,'2022-03-31 00:00:00',1.44774,'Check whole building just there cup.'),(4,92,'2022-04-30 00:00:00',2.42389,'Industry morning career impact various.'),(5,7,'2022-05-31 00:00:00',4.91225,'Positive give drug read it site mission.'),(6,35,'2022-06-30 00:00:00',4.17596,'Meet health myself much.'),(7,55,'2022-07-31 00:00:00',2.98902,'Piece almost how.'),(8,92,'2022-08-31 00:00:00',2.35911,'Property tonight evening.'),(9,14,'2022-09-30 00:00:00',4.48854,'Stay outside successful others day.'),(10,10,'2022-10-31 00:00:00',3.17939,'Standard dog water ever ask land.'),(11,80,'2022-11-30 00:00:00',4.0337,'Significant full magazine operation.'),(12,16,'2022-12-31 00:00:00',4.01643,'Tax station goal live word history company.'),(13,54,'2023-01-31 00:00:00',1.07178,'Worry water figure brother effort hard.'),(14,95,'2023-02-28 00:00:00',1.50502,'Another mission student truth still drive.'),(15,89,'2023-03-31 00:00:00',3.63852,'Together unit view argue western.'),(16,77,'2023-04-30 00:00:00',1.64648,'Campaign fine majority.'),(17,70,'2023-05-31 00:00:00',2.02197,'Office sister between head.'),(18,44,'2023-06-30 00:00:00',4.78655,'Mind scientist project pressure.'),(19,73,'2023-07-31 00:00:00',3.24073,'Traditional they mean coach.'),(20,45,'2023-08-31 00:00:00',4.00292,'Next gun career happy organization.'),(21,100,'2023-09-30 00:00:00',3.23192,'One check sure our.'),(22,56,'2023-10-31 00:00:00',3.21005,'Congress light manager I story from take each.'),(23,84,'2023-11-30 00:00:00',1.37661,'Piece few especially record.'),(24,82,'2023-12-31 00:00:00',2.37465,'Do establish build boy dark professional.'),(25,57,'2024-01-31 00:00:00',2.12972,'Family with cause for tax.'),(26,21,'2024-02-29 00:00:00',2.56291,'Pm name authority sing.'),(27,68,'2024-03-31 00:00:00',4.19338,'Large figure effect really if environment.'),(28,50,'2024-04-30 00:00:00',2.48773,'Cut bad himself run result education.'),(29,33,'2024-05-31 00:00:00',2.80679,'Indeed from hit generation.'),(30,91,'2024-06-30 00:00:00',2.58953,'Tax give late myself yeah reveal.'),(31,7,'2024-07-31 00:00:00',1.37363,'Child task daughter southern significant.'),(32,70,'2024-08-31 00:00:00',2.76429,'Blood your word hard but finish then.'),(33,15,'2024-09-30 00:00:00',1.78244,'Product position religious suggest conference since order.'),(34,82,'2024-10-31 00:00:00',1.74689,'Hospital coach method become yet wide.'),(35,32,'2024-11-30 00:00:00',1.37614,'Sense dog international.'),(36,75,'2024-12-31 00:00:00',2.42668,'Worry together arrive vote fall into.'),(37,20,'2025-01-31 00:00:00',4.02993,'Thank first size do.'),(38,88,'2025-02-28 00:00:00',2.10577,'Explain occur church fund itself issue less down.'),(39,15,'2025-03-31 00:00:00',2.2494,'Treat argue goal model.'),(40,48,'2025-04-30 00:00:00',3.5707,'Rate financial money family dinner.'),(41,71,'2025-05-31 00:00:00',1.78336,'Draw indeed find total soldier.'),(42,21,'2025-06-30 00:00:00',4.58783,'Five one sister some Democrat.'),(43,42,'2025-07-31 00:00:00',3.08076,'Information floor suffer difference example student reflect.'),(44,26,'2025-08-31 00:00:00',2.79041,'Every social goal two can minute others.'),(45,14,'2025-09-30 00:00:00',3.23128,'Newspaper thousand program true street buy course.'),(46,57,'2025-10-31 00:00:00',1.66414,'Set build name.'),(47,37,'2025-11-30 00:00:00',3.45389,'Example western get its.'),(48,58,'2025-12-31 00:00:00',2.4524,'Ready voice present everything.'),(49,21,'2026-01-31 00:00:00',4.58875,'Successful rock against dream.'),(50,82,'2026-02-28 00:00:00',1.67542,'Bill sure offer son study attorney year.'),(51,69,'2026-03-31 00:00:00',3.0282,'Cut tell buy tough nice figure middle.'),(52,3,'2026-04-30 00:00:00',3.39245,'Win place born week sister different.'),(53,87,'2026-05-31 00:00:00',1.13353,'Account less budget discover Mr.'),(54,90,'2026-06-30 00:00:00',2.45477,'Focus beautiful travel address base might unit.'),(55,37,'2026-07-31 00:00:00',3.93054,'General raise hit for computer industry.'),(56,88,'2026-08-31 00:00:00',4.28151,'Draw science author late sure stand.'),(57,49,'2026-09-30 00:00:00',2.25265,'With probably maybe financial language long behind network.'),(58,19,'2026-10-31 00:00:00',4.19437,'Country add media break later.'),(59,89,'2026-11-30 00:00:00',4.87102,'Town child difficult city low.'),(60,85,'2026-12-31 00:00:00',4.4275,'Age change early every talk.'),(61,12,'2027-01-31 00:00:00',1.47058,'Any technology face trip use the give.'),(62,61,'2027-02-28 00:00:00',3.95892,'Attorney as individual not fact.'),(63,41,'2027-03-31 00:00:00',2.27867,'Others must already quality energy share food.'),(64,33,'2027-04-30 00:00:00',4.95366,'Check figure small student event.'),(65,50,'2027-05-31 00:00:00',2.94144,'Low will police house order discover.'),(66,68,'2027-06-30 00:00:00',1.48974,'Purpose citizen design why feeling country apply.'),(67,71,'2027-07-31 00:00:00',3.90074,'Entire reveal consumer successful meet.'),(68,86,'2027-08-31 00:00:00',2.29204,'Hold success garden artist military top sell.'),(69,33,'2027-09-30 00:00:00',4.98831,'Night carry must show stage moment wait.'),(70,81,'2027-10-31 00:00:00',4.91913,'Green control fill safe talk.'),(71,24,'2027-11-30 00:00:00',3.62454,'Issue become during color smile teacher believe.'),(72,61,'2027-12-31 00:00:00',1.51931,'Picture activity student television ever.'),(73,61,'2028-01-31 00:00:00',3.74744,'Against window human describe maybe list federal.'),(74,98,'2028-02-29 00:00:00',1.37212,'Life to close that poor.'),(75,28,'2028-03-31 00:00:00',1.11746,'Coach action up current.'),(76,58,'2028-04-30 00:00:00',4.29183,'Seat seven letter black.'),(77,43,'2028-05-31 00:00:00',1.83901,'It scene maybe sure black miss.'),(78,41,'2028-06-30 00:00:00',2.51611,'Social vote crime effort.'),(79,39,'2028-07-31 00:00:00',4.89383,'Whatever girl significant mission near.'),(80,86,'2028-08-31 00:00:00',2.34736,'From good win full including visit.'),(81,49,'2028-09-30 00:00:00',2.18596,'Purpose peace investment executive oil.'),(82,17,'2028-10-31 00:00:00',4.67283,'Leg church center instead executive wrong public.'),(83,98,'2028-11-30 00:00:00',1.44299,'Before study something foot way recognize.'),(84,70,'2028-12-31 00:00:00',4.03833,'Space recognize southern box draw.'),(85,70,'2029-01-31 00:00:00',4.95226,'Machine democratic decision artist play.'),(86,98,'2029-02-28 00:00:00',4.60518,'Cover hospital main newspaper pay sit.'),(87,65,'2029-03-31 00:00:00',3.60667,'These with why rise development development human.'),(88,74,'2029-04-30 00:00:00',2.25624,'Approach Mr drug strategy free per degree.'),(89,85,'2029-05-31 00:00:00',2.01729,'Beat attack good eight too security admit watch.'),(90,5,'2029-06-30 00:00:00',4.27702,'Increase build shake yeah pretty well answer.'),(91,2,'2029-07-31 00:00:00',4.51929,'Huge evidence claim across source best bad music.'),(92,22,'2029-08-31 00:00:00',3.10174,'Opportunity it ever cost cup establish your.'),(93,57,'2029-09-30 00:00:00',1.97736,'Machine control start camera.'),(94,66,'2029-10-31 00:00:00',1.45177,'View water attorney operation.'),(95,74,'2029-11-30 00:00:00',1.34872,'Heavy shake man ability voice.'),(96,98,'2029-12-31 00:00:00',3.87631,'Thus when success administration happen.'),(97,16,'2030-01-31 00:00:00',2.68047,'Majority people especially bring base.'),(98,51,'2030-02-28 00:00:00',4.62144,'In dog short western necessary enjoy.'),(99,39,'2030-03-31 00:00:00',3.95869,'Doctor program debate face sometimes hard hit.'),(100,86,'2030-04-30 00:00:00',1.76504,'Personal officer produce.');
/*!40000 ALTER TABLE `Avaliacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Desligamentos`
--

DROP TABLE IF EXISTS `Desligamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Desligamentos` (
  `ID_Desligamento` int NOT NULL,
  `ID_Funcionario` int DEFAULT NULL,
  `Data_Desligamento` datetime DEFAULT NULL,
  `Motivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Desligamento`),
  KEY `ID_Funcionario` (`ID_Funcionario`),
  CONSTRAINT `Desligamentos_ibfk_1` FOREIGN KEY (`ID_Funcionario`) REFERENCES `Funcionarios` (`ID_Funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Desligamentos`
--

LOCK TABLES `Desligamentos` WRITE;
/*!40000 ALTER TABLE `Desligamentos` DISABLE KEYS */;
INSERT INTO `Desligamentos` VALUES (1,24,'2023-01-01 00:00:00','Pedido de Demissão'),(2,34,'2023-01-08 00:00:00','Pedido de Demissão'),(3,30,'2023-01-15 00:00:00','Pedido de Demissão'),(4,82,'2023-01-22 00:00:00','Corte de Custos'),(5,19,'2023-01-29 00:00:00','Corte de Custos'),(6,31,'2023-02-05 00:00:00','Desempenho Insatisfatório'),(7,60,'2023-02-12 00:00:00','Pedido de Demissão'),(8,60,'2023-02-19 00:00:00','Desempenho Insatisfatório'),(9,19,'2023-02-26 00:00:00','Pedido de Demissão'),(10,49,'2023-03-05 00:00:00','Corte de Custos'),(11,63,'2023-03-12 00:00:00','Corte de Custos'),(12,83,'2023-03-19 00:00:00','Corte de Custos'),(13,22,'2023-03-26 00:00:00','Pedido de Demissão'),(14,24,'2023-04-02 00:00:00','Corte de Custos'),(15,76,'2023-04-09 00:00:00','Pedido de Demissão'),(16,30,'2023-04-16 00:00:00','Desempenho Insatisfatório'),(17,58,'2023-04-23 00:00:00','Pedido de Demissão'),(18,31,'2023-04-30 00:00:00','Desempenho Insatisfatório'),(19,100,'2023-05-07 00:00:00','Pedido de Demissão'),(20,64,'2023-05-14 00:00:00','Desempenho Insatisfatório'),(21,19,'2023-05-21 00:00:00','Corte de Custos'),(22,48,'2023-05-28 00:00:00','Desempenho Insatisfatório'),(23,45,'2023-06-04 00:00:00','Corte de Custos'),(24,100,'2023-06-11 00:00:00','Corte de Custos'),(25,94,'2023-06-18 00:00:00','Desempenho Insatisfatório'),(26,55,'2023-06-25 00:00:00','Pedido de Demissão'),(27,55,'2023-07-02 00:00:00','Pedido de Demissão'),(28,97,'2023-07-09 00:00:00','Pedido de Demissão'),(29,18,'2023-07-16 00:00:00','Pedido de Demissão'),(30,63,'2023-07-23 00:00:00','Pedido de Demissão'),(31,92,'2023-07-30 00:00:00','Corte de Custos'),(32,47,'2023-08-06 00:00:00','Pedido de Demissão'),(33,75,'2023-08-13 00:00:00','Corte de Custos'),(34,57,'2023-08-20 00:00:00','Corte de Custos'),(35,45,'2023-08-27 00:00:00','Corte de Custos'),(36,33,'2023-09-03 00:00:00','Desempenho Insatisfatório'),(37,17,'2023-09-10 00:00:00','Desempenho Insatisfatório'),(38,70,'2023-09-17 00:00:00','Corte de Custos'),(39,4,'2023-09-24 00:00:00','Desempenho Insatisfatório'),(40,20,'2023-10-01 00:00:00','Pedido de Demissão'),(41,47,'2023-10-08 00:00:00','Pedido de Demissão'),(42,91,'2023-10-15 00:00:00','Corte de Custos'),(43,15,'2023-10-22 00:00:00','Pedido de Demissão'),(44,70,'2023-10-29 00:00:00','Corte de Custos'),(45,47,'2023-11-05 00:00:00','Corte de Custos'),(46,78,'2023-11-12 00:00:00','Pedido de Demissão'),(47,75,'2023-11-19 00:00:00','Desempenho Insatisfatório'),(48,9,'2023-11-26 00:00:00','Pedido de Demissão'),(49,90,'2023-12-03 00:00:00','Pedido de Demissão'),(50,16,'2023-12-10 00:00:00','Corte de Custos');
/*!40000 ALTER TABLE `Desligamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funcionarios`
--

DROP TABLE IF EXISTS `Funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Funcionarios` (
  `ID_Funcionario` int NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Idade` int DEFAULT NULL,
  `Departamento` varchar(255) DEFAULT NULL,
  `Cargo` varchar(255) DEFAULT NULL,
  `Salario` float DEFAULT NULL,
  `Data_Contratacao` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_Funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funcionarios`
--

LOCK TABLES `Funcionarios` WRITE;
/*!40000 ALTER TABLE `Funcionarios` DISABLE KEYS */;
INSERT INTO `Funcionarios` VALUES (1,'Jacob Lee',39,'RH','Diretor',11725,'2015-01-31 00:00:00'),(2,'Regina Young',27,'TI','Diretor',12553,'2015-02-28 00:00:00'),(3,'Steven Townsend',56,'RH','Gerente',10534.2,'2015-03-31 00:00:00'),(4,'David Miranda',43,'Vendas','Coordenador',3665.24,'2015-04-30 00:00:00'),(5,'Rebecca Cox',36,'Financeiro','Diretor',6397.48,'2015-05-31 00:00:00'),(6,'Marissa Barnes',43,'RH','Gerente',14065.1,'2015-06-30 00:00:00'),(7,'Samuel Brown',58,'TI','Coordenador',4920,'2015-07-31 00:00:00'),(8,'Alyssa Palmer',33,'Financeiro','Analista',6838.17,'2015-08-31 00:00:00'),(9,'Joseph Dickson',59,'Vendas','Diretor',7617,'2015-09-30 00:00:00'),(10,'Amy Parsons',39,'RH','Analista',7712.26,'2015-10-31 00:00:00'),(11,'Michelle Sherman',56,'RH','Coordenador',9968.21,'2015-11-30 00:00:00'),(12,'Margaret Harris',51,'RH','Diretor',14260,'2015-12-31 00:00:00'),(13,'Charles Bates',45,'Financeiro','Coordenador',5129.01,'2016-01-31 00:00:00'),(14,'Michelle Luna',51,'TI','Analista',3579.52,'2016-02-29 00:00:00'),(15,'Glenda Curry',35,'TI','Diretor',4567.12,'2016-03-31 00:00:00'),(16,'Chris Glover',27,'RH','Analista',13530,'2016-04-30 00:00:00'),(17,'Michael Mendoza',24,'Vendas','Coordenador',10395.5,'2016-05-31 00:00:00'),(18,'Emily Holden',37,'Vendas','Coordenador',5716.79,'2016-06-30 00:00:00'),(19,'Glenn Pham',28,'TI','Analista',12607.3,'2016-07-31 00:00:00'),(20,'Troy Mitchell',35,'Vendas','Diretor',13197.8,'2016-08-31 00:00:00'),(21,'Susan Santana',30,'TI','Analista',13004.7,'2016-09-30 00:00:00'),(22,'Joseph Clark',36,'RH','Coordenador',13946,'2016-10-31 00:00:00'),(23,'Paul Roberts',42,'TI','Analista',5279.13,'2016-11-30 00:00:00'),(24,'Annette Downs',56,'TI','Coordenador',11815.5,'2016-12-31 00:00:00'),(25,'Kevin Moore',23,'RH','Analista',7987.01,'2017-01-31 00:00:00'),(26,'Colin Moore',48,'Vendas','Diretor',12946,'2017-02-28 00:00:00'),(27,'Natalie Howell',23,'TI','Diretor',11470.4,'2017-03-31 00:00:00'),(28,'Sherry Perez',56,'TI','Analista',12093.8,'2017-04-30 00:00:00'),(29,'Shelby Johnson',39,'RH','Analista',10530.1,'2017-05-31 00:00:00'),(30,'Craig Benton',35,'Vendas','Diretor',4306.57,'2017-06-30 00:00:00'),(31,'Carol Alvarez',41,'TI','Coordenador',9085.35,'2017-07-31 00:00:00'),(32,'David Collins',39,'RH','Diretor',14800.7,'2017-08-31 00:00:00'),(33,'Jacob Lee',31,'TI','Coordenador',14186,'2017-09-30 00:00:00'),(34,'Erica Sanchez',46,'Financeiro','Analista',2561.26,'2017-10-31 00:00:00'),(35,'Lisa Williams',23,'RH','Analista',4142.59,'2017-11-30 00:00:00'),(36,'Derek Evans',46,'Vendas','Coordenador',3712.47,'2017-12-31 00:00:00'),(37,'William Austin',54,'Vendas','Analista',11437.7,'2018-01-31 00:00:00'),(38,'Karen Hernandez',57,'Vendas','Coordenador',12631.2,'2018-02-28 00:00:00'),(39,'Victoria Cohen',52,'Vendas','Gerente',4775.65,'2018-03-31 00:00:00'),(40,'Rhonda Douglas',35,'TI','Diretor',8576.08,'2018-04-30 00:00:00'),(41,'Joshua Gaines',22,'TI','Gerente',12929.1,'2018-05-31 00:00:00'),(42,'John Hill',37,'Vendas','Coordenador',11526.4,'2018-06-30 00:00:00'),(43,'James Henry',24,'Vendas','Diretor',9049.08,'2018-07-31 00:00:00'),(44,'Ana Watson',56,'Vendas','Coordenador',9674.52,'2018-08-31 00:00:00'),(45,'Dr. Robert Young',27,'TI','Diretor',8608.69,'2018-09-30 00:00:00'),(46,'Lisa Woodward',46,'Vendas','Diretor',5868.13,'2018-10-31 00:00:00'),(47,'Steven James',34,'Vendas','Diretor',9345.29,'2018-11-30 00:00:00'),(48,'Kenneth Smith',55,'Financeiro','Diretor',10955.5,'2018-12-31 00:00:00'),(49,'Lucas Parker',29,'Financeiro','Coordenador',13353.2,'2019-01-31 00:00:00'),(50,'James Martinez',42,'Vendas','Diretor',10271.8,'2019-02-28 00:00:00'),(51,'Kristine Lutz',55,'RH','Diretor',11894.6,'2019-03-31 00:00:00'),(52,'Morgan Roach',25,'Vendas','Gerente',4080.93,'2019-04-30 00:00:00'),(53,'Steven Alexander',46,'Financeiro','Analista',8000.25,'2019-05-31 00:00:00'),(54,'Ryan Cunningham',36,'RH','Analista',2121.31,'2019-06-30 00:00:00'),(55,'John Hawkins',25,'RH','Gerente',5206.83,'2019-07-31 00:00:00'),(56,'Monica Walsh',33,'Vendas','Gerente',11444,'2019-08-31 00:00:00'),(57,'Mark Bean',53,'Financeiro','Coordenador',14893.5,'2019-09-30 00:00:00'),(58,'Justin Zhang DDS',53,'Financeiro','Coordenador',3289.32,'2019-10-31 00:00:00'),(59,'Mark Huynh',49,'RH','Coordenador',7219.43,'2019-11-30 00:00:00'),(60,'Arthur Conley',34,'Vendas','Gerente',12400.9,'2019-12-31 00:00:00'),(61,'Angel Soto',52,'TI','Gerente',4652.46,'2020-01-31 00:00:00'),(62,'Nicole Smith',35,'TI','Diretor',9216.1,'2020-02-29 00:00:00'),(63,'Dennis Jones DDS',41,'Financeiro','Coordenador',11529.9,'2020-03-31 00:00:00'),(64,'Emily May',39,'TI','Coordenador',10007.8,'2020-04-30 00:00:00'),(65,'Barbara Jones',50,'Financeiro','Coordenador',4444.32,'2020-05-31 00:00:00'),(66,'Tiffany Schwartz MD',27,'Financeiro','Analista',6620,'2020-06-30 00:00:00'),(67,'Jeremy Martin',53,'Financeiro','Diretor',12189.3,'2020-07-31 00:00:00'),(68,'Michael Watson',50,'TI','Coordenador',9204.94,'2020-08-31 00:00:00'),(69,'Mark Walker',23,'Financeiro','Coordenador',2067.98,'2020-09-30 00:00:00'),(70,'Charles Underwood',44,'RH','Coordenador',11892.9,'2020-10-31 00:00:00'),(71,'Jessica Powell',40,'Vendas','Analista',2459.05,'2020-11-30 00:00:00'),(72,'Nathaniel Bean',52,'Vendas','Analista',11694.5,'2020-12-31 00:00:00'),(73,'Miss Audrey Farmer',26,'Financeiro','Gerente',4632.25,'2021-01-31 00:00:00'),(74,'Edward Cantu',40,'Vendas','Diretor',14455,'2021-02-28 00:00:00'),(75,'Dustin Jones',55,'TI','Gerente',6783.23,'2021-03-31 00:00:00'),(76,'Austin Austin',31,'TI','Diretor',6250.11,'2021-04-30 00:00:00'),(77,'Melanie Valenzuela',46,'Vendas','Analista',3935.54,'2021-05-31 00:00:00'),(78,'Maria Scott',23,'TI','Coordenador',5972.85,'2021-06-30 00:00:00'),(79,'Jennifer Flynn',32,'Vendas','Gerente',13396.5,'2021-07-31 00:00:00'),(80,'Amber Beard',52,'Vendas','Coordenador',14952.3,'2021-08-31 00:00:00'),(81,'Douglas Foster',36,'Vendas','Gerente',6788.02,'2021-09-30 00:00:00'),(82,'Debra Fuller',30,'Financeiro','Analista',7831.94,'2021-10-31 00:00:00'),(83,'Dr. Christopher Rodriguez',44,'Vendas','Analista',11386.9,'2021-11-30 00:00:00'),(84,'Ariel Cobb',40,'Financeiro','Analista',13520.5,'2021-12-31 00:00:00'),(85,'Barbara Hughes',30,'Vendas','Gerente',9709.58,'2022-01-31 00:00:00'),(86,'Brenda Anderson',56,'Vendas','Diretor',7089.83,'2022-02-28 00:00:00'),(87,'Robert Brown',42,'Vendas','Gerente',7364.08,'2022-03-31 00:00:00'),(88,'Donald Brown',30,'TI','Diretor',11043,'2022-04-30 00:00:00'),(89,'Melissa Morton',49,'Financeiro','Gerente',2041.84,'2022-05-31 00:00:00'),(90,'David Hernandez',28,'Financeiro','Gerente',10054.7,'2022-06-30 00:00:00'),(91,'Mandy Miller',37,'Vendas','Analista',6621.41,'2022-07-31 00:00:00'),(92,'Cheryl Miller',37,'Vendas','Coordenador',12324.6,'2022-08-31 00:00:00'),(93,'Leslie Carter',54,'TI','Coordenador',3208.88,'2022-09-30 00:00:00'),(94,'Erica Juarez',25,'TI','Diretor',9646.63,'2022-10-31 00:00:00'),(95,'Diane Wright',25,'TI','Coordenador',8252.65,'2022-11-30 00:00:00'),(96,'Brittney Garcia',38,'Financeiro','Gerente',10350.2,'2022-12-31 00:00:00'),(97,'Marcus Murphy',58,'Financeiro','Gerente',2843.1,'2023-01-31 00:00:00'),(98,'Christopher Martinez',50,'Financeiro','Analista',9539.79,'2023-02-28 00:00:00'),(99,'Donna Montes',57,'Vendas','Analista',9299.3,'2023-03-31 00:00:00'),(100,'Theresa Le',59,'Financeiro','Coordenador',9288.58,'2023-04-30 00:00:00');
/*!40000 ALTER TABLE `Funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `locadora`
--

USE `locadora`;

--
-- Current Database: `logistica`
--

USE `logistica`;

--
-- Current Database: `loja`
--

USE `loja`;

--
-- Final view structure for view `exemplo`
--

/*!50001 DROP VIEW IF EXISTS `exemplo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `exemplo` AS select `categorias`.`id_categoria` AS `id_categoria`,`categorias`.`nome` AS `nome` from `categorias` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query`
--

/*!50001 DROP VIEW IF EXISTS `query`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `query` AS select `vendas`.`id_venda` AS `id_venda`,`vendas`.`quantidade` AS `quantidade`,(case when (`vendas`.`quantidade` > 2) then 'Atacado' else 'Varejo' end) AS `classe` from `vendas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `marketing_digital`
--

USE `marketing_digital`;

--
-- Current Database: `recursos_humanos`
--

USE `recursos_humanos`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-07 13:16:27

-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (arm64)
--
-- Host: localhost    Database: progetto
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `affidamento`
--

DROP TABLE IF EXISTS `affidamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `affidamento` (
  `dipendente` int NOT NULL,
  `divisa` int NOT NULL,
  `DataAffidamento` date NOT NULL,
  `quantità` int NOT NULL,
  `dataRestituzione` date DEFAULT NULL,
  PRIMARY KEY (`dipendente`,`divisa`,`DataAffidamento`),
  KEY `divisa` (`divisa`),
  KEY `dataRestituzione` (`dataRestituzione`),
  CONSTRAINT `affidamento_ibfk_1` FOREIGN KEY (`dipendente`) REFERENCES `dipendente` (`IDdipendente`),
  CONSTRAINT `affidamento_ibfk_2` FOREIGN KEY (`divisa`) REFERENCES `divisa` (`IDdivisa`),
  CONSTRAINT `affidamento_ibfk_3` FOREIGN KEY (`dataRestituzione`) REFERENCES `restituzione` (`DataRestituzione`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affidamento`
--

LOCK TABLES `affidamento` WRITE;
/*!40000 ALTER TABLE `affidamento` DISABLE KEYS */;
INSERT INTO `affidamento` VALUES (3,186,'2023-03-25',3,NULL),(3,228,'2023-03-25',3,NULL),(19,237,'2023-03-25',8,NULL),(19,243,'2023-03-25',2,NULL),(19,250,'2023-03-25',2,NULL);
/*!40000 ALTER TABLE `affidamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appartenenza`
--

DROP TABLE IF EXISTS `appartenenza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartenenza` (
  `ordine` int NOT NULL,
  `divisa` int NOT NULL,
  `quantità` int NOT NULL,
  PRIMARY KEY (`ordine`,`divisa`),
  KEY `divisa` (`divisa`),
  CONSTRAINT `appartenenza_ibfk_1` FOREIGN KEY (`ordine`) REFERENCES `ordine` (`IDordine`),
  CONSTRAINT `appartenenza_ibfk_2` FOREIGN KEY (`divisa`) REFERENCES `divisa` (`IDdivisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartenenza`
--

LOCK TABLES `appartenenza` WRITE;
/*!40000 ALTER TABLE `appartenenza` DISABLE KEYS */;
/*!40000 ALTER TABLE `appartenenza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contratto`
--

DROP TABLE IF EXISTS `contratto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contratto` (
  `IDcontratto` int NOT NULL AUTO_INCREMENT,
  `dataInizio` date NOT NULL,
  `dataFine` date DEFAULT NULL,
  PRIMARY KEY (`IDcontratto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratto`
--

LOCK TABLES `contratto` WRITE;
/*!40000 ALTER TABLE `contratto` DISABLE KEYS */;
INSERT INTO `contratto` VALUES (3,'2019-05-06','2025-02-23'),(4,'2003-11-28','2026-02-13'),(5,'2008-02-06','2025-03-23'),(6,'2016-05-26','2024-08-31'),(7,'2015-01-07','2027-11-28'),(8,'2000-09-29','2024-09-05'),(9,'2014-03-31','2027-10-14'),(10,'2001-06-25','2026-04-16'),(11,'2015-09-11','2027-06-23'),(12,'2006-11-05','2027-06-30'),(13,'2009-12-04','2028-07-29'),(14,'2002-08-17','2029-07-15'),(15,'2002-03-06','2029-03-26'),(16,'2004-11-02','2028-01-06'),(17,'2008-10-22','2025-07-17'),(18,'2014-11-17','2025-11-27'),(19,'2015-03-25','2027-11-30'),(20,'2021-11-24','2028-03-25'),(21,'2010-01-12','2029-07-08'),(22,'2003-01-08','2026-02-20'),(23,'2000-03-04','2028-01-25'),(24,'2016-01-01','2025-01-01'),(25,'2013-07-07','2024-10-02'),(26,'2010-07-09','2026-02-08'),(28,'2009-06-10','2024-07-10'),(29,'2006-10-05','2027-02-22'),(30,'2022-02-23','2027-06-09'),(31,'2018-12-29','2024-12-26'),(32,'2007-06-30','2024-07-27'),(33,'2003-11-24','2025-06-20'),(34,'2021-12-29','2029-01-20'),(35,'2015-08-06','2025-12-25'),(36,'2004-06-14','2028-01-06'),(37,'2018-08-10','2028-09-17'),(38,'2000-02-03',NULL),(39,'2017-03-05','2026-03-04'),(40,'2005-01-01','2023-12-31'),(41,'2008-06-15','2024-03-31'),(42,'2011-09-01','2025-06-30'),(43,'2014-11-21','2026-09-30'),(44,'2017-03-10','2027-12-31'),(45,'2018-08-01','2028-06-30'),(46,'2019-11-01','2029-09-30'),(47,'2020-12-15','2030-03-31'),(48,'2021-05-01','2030-12-31'),(50,'2020-01-01',NULL);
/*!40000 ALTER TABLE `contratto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dipendente`
--

DROP TABLE IF EXISTS `dipendente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dipendente` (
  `IDdipendente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `ruolo` enum('Magazziniere','Corriere','Manager','Commerciale','Impiegato') NOT NULL,
  PRIMARY KEY (`IDdipendente`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dipendente`
--

LOCK TABLES `dipendente` WRITE;
/*!40000 ALTER TABLE `dipendente` DISABLE KEYS */;
INSERT INTO `dipendente` VALUES (3,'Giovanni','Verdi','Corriere'),(4,'Andrea','Ferrari','Corriere'),(5,'Gianni',' Bismarck','Corriere'),(6,'Alessandro','Romano','Corriere'),(7,'Davide','Marino','Corriere'),(8,'Marco','Greco','Corriere'),(9,'Antonio','Lombardi','Corriere'),(10,'Cristian','Moretti','Corriere'),(11,'Federico','Conti','Corriere'),(12,'Fabio','Costa','Corriere'),(13,'Emanuele','Rizzo','Corriere'),(14,'Mario','Rossi','Corriere'),(15,'Luigi','Bianchi','Corriere'),(16,'Marco','Verdi','Corriere'),(17,'Simone','Neri','Corriere'),(18,'Alessandro','Gialli','Corriere'),(19,'Francesco','Russo','Corriere'),(20,'Giuseppe','Ricci','Corriere'),(21,'Antonio','Ferrari','Corriere'),(23,'Lorenzo','Moretti','Corriere'),(24,'Giovanni','Fontana','Corriere'),(25,'Riccardo','Santoro','Corriere'),(26,'Paolo','Ferri','Corriere'),(28,'Enrico','Costa','Corriere'),(29,'Cristian','Mancini','Corriere'),(30,'Stefano','Lombardi','Corriere'),(31,'Emanuele','Greco','Corriere'),(32,'Claudio','Marino','Corriere'),(33,'Roberto','Longo','Corriere'),(34,'Luca','Pasquelli','Manager'),(35,'Margherita','Pincini','Manager'),(36,'Anna','Bianchi','Manager'),(37,'Claudia','De Beneddi','Manager'),(38,'Gianluigino','Bergomi','Manager'),(39,'Lucia','Marzini','Impiegato'),(40,'Mario','Rossi','Impiegato'),(41,'Giulia','Bianchi','Impiegato'),(42,'Luigi','Verdi','Impiegato'),(43,'Valentina','Rizzo','Impiegato'),(44,'Giovanni','Ferrari','Impiegato'),(45,'Sara','Conti','Impiegato'),(46,'Andrea','Mancini','Impiegato'),(47,'Paola','Galli','Impiegato'),(48,'Marco','Lombardi','Impiegato');
/*!40000 ALTER TABLE `dipendente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dipendente_contratto`
--

DROP TABLE IF EXISTS `dipendente_contratto`;
/*!50001 DROP VIEW IF EXISTS `dipendente_contratto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dipendente_contratto` AS SELECT 
 1 AS `IDdipendente`,
 1 AS `nome`,
 1 AS `cognome`,
 1 AS `ruolo`,
 1 AS `IDcontratto`,
 1 AS `dataInizio`,
 1 AS `dataFine`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `disponibilita`
--

DROP TABLE IF EXISTS `disponibilita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disponibilita` (
  `divisa` int NOT NULL,
  `dataInventario` date NOT NULL,
  `numInventario` int NOT NULL,
  `quantità` int NOT NULL,
  PRIMARY KEY (`divisa`,`dataInventario`,`numInventario`),
  KEY `dataInventario` (`dataInventario`,`numInventario`),
  CONSTRAINT `disponibilita_ibfk_1` FOREIGN KEY (`divisa`) REFERENCES `divisa` (`IDdivisa`),
  CONSTRAINT `disponibilita_ibfk_2` FOREIGN KEY (`dataInventario`, `numInventario`) REFERENCES `inventario` (`dataInventario`, `numInventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponibilita`
--

LOCK TABLES `disponibilita` WRITE;
/*!40000 ALTER TABLE `disponibilita` DISABLE KEYS */;
INSERT INTO `disponibilita` VALUES (2,'2023-01-01',1,85),(3,'2023-01-01',1,30),(5,'2023-01-01',1,24),(25,'2023-01-01',1,4),(32,'2023-01-01',1,2),(40,'2023-01-01',1,48),(43,'2023-01-01',1,12),(74,'2023-01-01',1,87),(83,'2023-01-01',1,14),(200,'2023-01-01',1,30);
/*!40000 ALTER TABLE `disponibilita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisa`
--

DROP TABLE IF EXISTS `divisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divisa` (
  `IDdivisa` int NOT NULL AUTO_INCREMENT,
  `tipo` enum('t-shirt','pantaloni','calzini','scarpe','cappello','pile','giacca','bermuda','maglietta termica','pantaloni termici','guanti','camicia','cravatta') NOT NULL,
  `taglia` enum('XS','S','M','L','XL','XXL') DEFAULT NULL,
  `ruolo` enum('Magazziniere','Corriere','Manager','Commerciale','Impiegato') NOT NULL,
  `stagione` enum('estiva','invernale') DEFAULT NULL,
  PRIMARY KEY (`IDdivisa`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisa`
--

LOCK TABLES `divisa` WRITE;
/*!40000 ALTER TABLE `divisa` DISABLE KEYS */;
INSERT INTO `divisa` VALUES (1,'t-shirt','XS','Magazziniere',NULL),(2,'t-shirt','S','Magazziniere',NULL),(3,'t-shirt','M','Magazziniere',NULL),(4,'t-shirt','L','Magazziniere',NULL),(5,'t-shirt','XL','Magazziniere',NULL),(6,'t-shirt','XXL','Magazziniere',NULL),(7,'scarpe','XS','Magazziniere',NULL),(8,'scarpe','S','Magazziniere',NULL),(9,'scarpe','M','Magazziniere',NULL),(10,'scarpe','L','Magazziniere',NULL),(11,'scarpe','XL','Magazziniere',NULL),(12,'scarpe','XXL','Magazziniere',NULL),(13,'pantaloni','XS','Magazziniere',NULL),(14,'pantaloni','S','Magazziniere',NULL),(15,'pantaloni','M','Magazziniere',NULL),(16,'pantaloni','L','Magazziniere',NULL),(17,'pantaloni','XL','Magazziniere',NULL),(18,'pantaloni','XXL','Magazziniere',NULL),(19,'pile','XS','Magazziniere',NULL),(20,'pile','S','Magazziniere',NULL),(21,'pile','M','Magazziniere',NULL),(22,'pile','L','Magazziniere',NULL),(23,'pile','XL','Magazziniere',NULL),(24,'pile','XXL','Magazziniere',NULL),(25,'cappello','XS','Magazziniere',NULL),(26,'cappello','S','Magazziniere',NULL),(27,'cappello','M','Magazziniere',NULL),(28,'cappello','L','Magazziniere',NULL),(29,'cappello','XL','Magazziniere',NULL),(30,'cappello','XXL','Magazziniere',NULL),(31,'guanti','XS','Magazziniere',NULL),(32,'guanti','S','Magazziniere',NULL),(33,'guanti','M','Magazziniere',NULL),(34,'guanti','L','Magazziniere',NULL),(35,'guanti','XL','Magazziniere',NULL),(36,'guanti','XXL','Magazziniere',NULL),(37,'calzini','XS','Magazziniere',NULL),(38,'calzini','S','Magazziniere',NULL),(39,'calzini','M','Magazziniere',NULL),(40,'calzini','L','Magazziniere',NULL),(41,'calzini','XL','Magazziniere',NULL),(42,'calzini','XXL','Magazziniere',NULL),(43,'scarpe','XS','Impiegato',NULL),(44,'scarpe','S','Impiegato',NULL),(45,'scarpe','M','Impiegato',NULL),(46,'scarpe','L','Impiegato',NULL),(47,'scarpe','XL','Impiegato',NULL),(48,'scarpe','XXL','Impiegato',NULL),(49,'t-shirt','XS','Impiegato',NULL),(50,'t-shirt','S','Impiegato',NULL),(51,'t-shirt','M','Impiegato',NULL),(52,'t-shirt','L','Impiegato',NULL),(53,'t-shirt','XL','Impiegato',NULL),(54,'t-shirt','XXL','Impiegato',NULL),(55,'pile','XS','Impiegato',NULL),(56,'pile','S','Impiegato',NULL),(57,'pile','M','Impiegato',NULL),(58,'pile','L','Impiegato',NULL),(59,'pile','XL','Impiegato',NULL),(60,'pile','XXL','Impiegato',NULL),(61,'giacca','XS','Impiegato',NULL),(62,'giacca','S','Impiegato',NULL),(63,'giacca','M','Impiegato',NULL),(64,'giacca','L','Impiegato',NULL),(65,'giacca','XL','Impiegato',NULL),(66,'giacca','XXL','Impiegato',NULL),(67,'pantaloni','XS','Impiegato',NULL),(68,'pantaloni','S','Impiegato',NULL),(69,'pantaloni','M','Impiegato',NULL),(70,'pantaloni','L','Impiegato',NULL),(71,'pantaloni','XL','Impiegato',NULL),(72,'pantaloni','XXL','Impiegato',NULL),(73,'maglietta termica','XS','Impiegato',NULL),(74,'maglietta termica','S','Impiegato',NULL),(75,'maglietta termica','M','Impiegato',NULL),(76,'maglietta termica','L','Impiegato',NULL),(77,'maglietta termica','XL','Impiegato',NULL),(78,'maglietta termica','XXL','Impiegato',NULL),(79,'pantaloni termici','XS','Impiegato',NULL),(80,'pantaloni termici','S','Impiegato',NULL),(81,'pantaloni termici','M','Impiegato',NULL),(82,'pantaloni termici','L','Impiegato',NULL),(83,'pantaloni termici','XL','Impiegato',NULL),(84,'pantaloni termici','XXL','Impiegato',NULL),(85,'cappello','XS','Impiegato',NULL),(86,'cappello','S','Impiegato',NULL),(87,'cappello','M','Impiegato',NULL),(88,'cappello','L','Impiegato',NULL),(89,'cappello','XL','Impiegato',NULL),(90,'cappello','XXL','Impiegato',NULL),(91,'guanti',NULL,'Impiegato',NULL),(92,'pantaloni','XS','Manager',NULL),(93,'pantaloni','S','Manager',NULL),(94,'pantaloni','M','Manager',NULL),(95,'pantaloni','L','Manager',NULL),(96,'pantaloni','XL','Manager',NULL),(97,'pantaloni','XXL','Manager',NULL),(98,'camicia','XS','Manager',NULL),(99,'camicia','S','Manager',NULL),(100,'camicia','M','Manager',NULL),(101,'camicia','L','Manager',NULL),(102,'camicia','XL','Manager',NULL),(103,'camicia','XXL','Manager',NULL),(104,'t-shirt','XS','Manager',NULL),(105,'t-shirt','S','Manager',NULL),(106,'t-shirt','M','Manager',NULL),(107,'t-shirt','L','Manager',NULL),(108,'t-shirt','XL','Manager',NULL),(109,'t-shirt','XXL','Manager',NULL),(110,'giacca','XS','Manager',NULL),(111,'giacca','S','Manager',NULL),(112,'giacca','M','Manager',NULL),(113,'giacca','L','Manager',NULL),(114,'giacca','XL','Manager',NULL),(115,'giacca','XXL','Manager',NULL),(116,'guanti','XS','Manager',NULL),(117,'guanti','S','Manager',NULL),(118,'guanti','M','Manager',NULL),(119,'guanti','L','Manager',NULL),(120,'guanti','XL','Manager',NULL),(121,'guanti','XXL','Manager',NULL),(122,'cappello','XS','Manager',NULL),(123,'cappello','S','Manager',NULL),(124,'cappello','M','Manager',NULL),(125,'cappello','L','Manager',NULL),(126,'cappello','XL','Manager',NULL),(127,'cappello','XXL','Manager',NULL),(128,'cravatta','XS','Manager',NULL),(129,'cravatta','S','Manager',NULL),(130,'cravatta','M','Manager',NULL),(131,'cravatta','L','Manager',NULL),(132,'cravatta','XL','Manager',NULL),(133,'cravatta','XXL','Manager',NULL),(134,'pantaloni','XS','Commerciale',NULL),(135,'pantaloni','S','Commerciale',NULL),(136,'pantaloni','M','Commerciale',NULL),(137,'pantaloni','L','Commerciale',NULL),(138,'pantaloni','XL','Commerciale',NULL),(139,'pantaloni','XXL','Commerciale',NULL),(140,'camicia','XS','Commerciale',NULL),(141,'camicia','S','Commerciale',NULL),(142,'camicia','M','Commerciale',NULL),(143,'camicia','L','Commerciale',NULL),(144,'camicia','XL','Commerciale',NULL),(145,'camicia','XXL','Commerciale',NULL),(146,'t-shirt','XS','Commerciale',NULL),(147,'t-shirt','S','Commerciale',NULL),(148,'t-shirt','M','Commerciale',NULL),(149,'t-shirt','L','Commerciale',NULL),(150,'t-shirt','XL','Commerciale',NULL),(151,'t-shirt','XXL','Commerciale',NULL),(152,'giacca','XS','Commerciale',NULL),(153,'giacca','S','Commerciale',NULL),(154,'giacca','M','Commerciale',NULL),(155,'giacca','L','Commerciale',NULL),(156,'giacca','XL','Commerciale',NULL),(157,'giacca','XXL','Commerciale',NULL),(158,'guanti','XS','Commerciale',NULL),(159,'guanti','S','Commerciale',NULL),(160,'guanti','M','Commerciale',NULL),(161,'guanti','L','Commerciale',NULL),(162,'guanti','XL','Commerciale',NULL),(163,'guanti','XXL','Commerciale',NULL),(164,'cappello','XS','Commerciale',NULL),(165,'cappello','S','Commerciale',NULL),(166,'cappello','M','Commerciale',NULL),(167,'cappello','L','Commerciale',NULL),(168,'cappello','XL','Commerciale',NULL),(169,'cappello','XXL','Commerciale',NULL),(170,'cravatta','XS','Commerciale',NULL),(171,'cravatta','S','Commerciale',NULL),(172,'cravatta','M','Commerciale',NULL),(173,'cravatta','L','Commerciale',NULL),(174,'cravatta','XL','Commerciale',NULL),(175,'cravatta','XXL','Commerciale',NULL),(176,'scarpe','XS','Corriere','estiva'),(177,'scarpe','S','Corriere','estiva'),(178,'scarpe','M','Corriere','estiva'),(179,'scarpe','L','Corriere','estiva'),(180,'scarpe','XL','Corriere','estiva'),(181,'scarpe','XXL','Corriere','estiva'),(182,'t-shirt','XS','Corriere','estiva'),(183,'t-shirt','S','Corriere','estiva'),(184,'t-shirt','M','Corriere','estiva'),(185,'t-shirt','L','Corriere','estiva'),(186,'t-shirt','XL','Corriere','estiva'),(187,'t-shirt','XXL','Corriere','estiva'),(188,'bermuda','XS','Corriere','estiva'),(189,'bermuda','S','Corriere','estiva'),(190,'bermuda','M','Corriere','estiva'),(191,'bermuda','L','Corriere','estiva'),(192,'bermuda','XL','Corriere','estiva'),(193,'bermuda','XXL','Corriere','estiva'),(194,'calzini','XS','Corriere','estiva'),(195,'calzini','S','Corriere','estiva'),(196,'calzini','M','Corriere','estiva'),(197,'calzini','L','Corriere','estiva'),(198,'calzini','XL','Corriere','estiva'),(199,'calzini','XXL','Corriere','estiva'),(200,'scarpe','XS','Corriere','invernale'),(201,'scarpe','S','Corriere','invernale'),(202,'scarpe','M','Corriere','invernale'),(203,'scarpe','L','Corriere','invernale'),(204,'scarpe','XL','Corriere','invernale'),(205,'scarpe','XXL','Corriere','invernale'),(206,'t-shirt','XS','Corriere','invernale'),(207,'t-shirt','S','Corriere','invernale'),(208,'t-shirt','M','Corriere','invernale'),(209,'t-shirt','L','Corriere','invernale'),(210,'t-shirt','XL','Corriere','invernale'),(211,'t-shirt','XXL','Corriere','invernale'),(212,'pile','XS','Corriere','invernale'),(213,'pile','S','Corriere','invernale'),(214,'pile','M','Corriere','invernale'),(215,'pile','L','Corriere','invernale'),(216,'pile','XL','Corriere','invernale'),(217,'pile','XXL','Corriere','invernale'),(218,'giacca','XS','Corriere','invernale'),(219,'giacca','S','Corriere','invernale'),(220,'giacca','M','Corriere','invernale'),(221,'giacca','L','Corriere','invernale'),(222,'giacca','XL','Corriere','invernale'),(223,'giacca','XXL','Corriere','invernale'),(224,'pantaloni','XS','Corriere','invernale'),(225,'pantaloni','S','Corriere','invernale'),(226,'pantaloni','M','Corriere','invernale'),(227,'pantaloni','L','Corriere','invernale'),(228,'pantaloni','XL','Corriere','invernale'),(229,'pantaloni','XXL','Corriere','invernale'),(230,'maglietta termica','XS','Corriere','invernale'),(231,'maglietta termica','S','Corriere','invernale'),(232,'maglietta termica','M','Corriere','invernale'),(233,'maglietta termica','L','Corriere','invernale'),(234,'maglietta termica','XL','Corriere','invernale'),(235,'maglietta termica','XXL','Corriere','invernale'),(236,'pantaloni termici','XS','Corriere','invernale'),(237,'pantaloni termici','S','Corriere','invernale'),(238,'pantaloni termici','M','Corriere','invernale'),(239,'pantaloni termici','L','Corriere','invernale'),(240,'pantaloni termici','XL','Corriere','invernale'),(241,'pantaloni termici','XXL','Corriere','invernale'),(242,'cappello','XS','Corriere','invernale'),(243,'cappello','S','Corriere','invernale'),(244,'cappello','M','Corriere','invernale'),(245,'cappello','L','Corriere','invernale'),(246,'cappello','XL','Corriere','invernale'),(247,'cappello','XXL','Corriere','invernale'),(248,'guanti','XS','Corriere','invernale'),(249,'guanti','S','Corriere','invernale'),(250,'guanti','M','Corriere','invernale'),(251,'guanti','L','Corriere','invernale'),(252,'guanti','XL','Corriere','invernale'),(253,'guanti','XXL','Corriere','invernale');
/*!40000 ALTER TABLE `divisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esecuzione`
--

DROP TABLE IF EXISTS `esecuzione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esecuzione` (
  `fornitore` int NOT NULL,
  `ordine` int NOT NULL,
  PRIMARY KEY (`fornitore`,`ordine`),
  KEY `ordine` (`ordine`),
  CONSTRAINT `esecuzione_ibfk_1` FOREIGN KEY (`fornitore`) REFERENCES `fornitore` (`IDfornitore`),
  CONSTRAINT `esecuzione_ibfk_2` FOREIGN KEY (`ordine`) REFERENCES `ordine` (`IDordine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esecuzione`
--

LOCK TABLES `esecuzione` WRITE;
/*!40000 ALTER TABLE `esecuzione` DISABLE KEYS */;
/*!40000 ALTER TABLE `esecuzione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornitore`
--

DROP TABLE IF EXISTS `fornitore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornitore` (
  `IDfornitore` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `indirizzo` varchar(50) NOT NULL,
  `citta` varchar(50) NOT NULL,
  PRIMARY KEY (`IDfornitore`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornitore`
--

LOCK TABLES `fornitore` WRITE;
/*!40000 ALTER TABLE `fornitore` DISABLE KEYS */;
INSERT INTO `fornitore` VALUES (1,'VarClothings','Via Roma 12','Milano'),(2,'King Shoes','Via rossi 33','Roma'),(3,'Snodo','Via del Mandrione','Roma'),(4,'Lillo & Co.','Via della Botte 32','Ancona'),(5,'Versacio','Via Gucci 13','Venezia'),(6,'Zalandont','Largo dei lavoratori 12/B ','Napoli');
/*!40000 ALTER TABLE `fornitore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `dataInventario` date NOT NULL,
  `numInventario` int NOT NULL,
  PRIMARY KEY (`dataInventario`,`numInventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES ('2023-01-01',1),('2023-01-01',2),('2023-01-02',1);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `IDordine` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `stato` enum('In transito','Consegnato') NOT NULL,
  `costo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`IDordine`),
  CONSTRAINT `ordine_chk_1` CHECK ((`costo` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

LOCK TABLES `ordine` WRITE;
/*!40000 ALTER TABLE `ordine` DISABLE KEYS */;
INSERT INTO `ordine` VALUES (4,'2023-03-23','Consegnato',50.00),(5,'2023-03-23','Consegnato',80.00),(6,'2023-03-23','In transito',12.00),(7,'2023-03-23','In transito',13.99),(8,'2023-03-23','In transito',80.00),(9,'2023-03-23','Consegnato',100.00);
/*!40000 ALTER TABLE `ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restituzione`
--

DROP TABLE IF EXISTS `restituzione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restituzione` (
  `DataRestituzione` date NOT NULL,
  `dipendente` int NOT NULL,
  `divisa` int NOT NULL,
  `quantità` int NOT NULL,
  PRIMARY KEY (`DataRestituzione`,`dipendente`,`divisa`),
  KEY `dipendente` (`dipendente`),
  KEY `divisa` (`divisa`),
  CONSTRAINT `restituzione_ibfk_1` FOREIGN KEY (`dipendente`) REFERENCES `dipendente` (`IDdipendente`),
  CONSTRAINT `restituzione_ibfk_2` FOREIGN KEY (`divisa`) REFERENCES `divisa` (`IDdivisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restituzione`
--

LOCK TABLES `restituzione` WRITE;
/*!40000 ALTER TABLE `restituzione` DISABLE KEYS */;
/*!40000 ALTER TABLE `restituzione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `richiesta`
--

DROP TABLE IF EXISTS `richiesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `richiesta` (
  `IDrichiesta` int NOT NULL AUTO_INCREMENT,
  `dipendente` int NOT NULL,
  `data` date NOT NULL,
  `divisa` int NOT NULL,
  `quantità` int NOT NULL,
  `ordine` int DEFAULT NULL,
  PRIMARY KEY (`IDrichiesta`),
  KEY `dipendente` (`dipendente`),
  KEY `divisa` (`divisa`),
  KEY `ordine` (`ordine`),
  CONSTRAINT `richiesta_ibfk_1` FOREIGN KEY (`dipendente`) REFERENCES `dipendente` (`IDdipendente`),
  CONSTRAINT `richiesta_ibfk_2` FOREIGN KEY (`divisa`) REFERENCES `divisa` (`IDdivisa`),
  CONSTRAINT `richiesta_ibfk_3` FOREIGN KEY (`ordine`) REFERENCES `ordine` (`IDordine`),
  CONSTRAINT `richiesta_chk_1` CHECK ((`quantità` >= 1))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `richiesta`
--

LOCK TABLES `richiesta` WRITE;
/*!40000 ALTER TABLE `richiesta` DISABLE KEYS */;
INSERT INTO `richiesta` VALUES (10,3,'2023-03-23',228,3,5),(11,3,'2023-03-23',186,3,5),(12,36,'2023-03-23',129,3,6),(13,36,'2023-03-23',129,3,6),(14,36,'2023-03-23',105,3,6),(15,36,'2023-03-23',108,3,6),(16,46,'2023-03-23',56,5,7),(17,34,'2023-03-23',101,4,8),(18,19,'2023-03-23',237,8,9),(19,19,'2023-03-23',243,2,9),(20,19,'2023-03-23',250,2,9);
/*!40000 ALTER TABLE `richiesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stipulazione`
--

DROP TABLE IF EXISTS `stipulazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stipulazione` (
  `dipendente` int NOT NULL,
  `contratto` int NOT NULL,
  PRIMARY KEY (`dipendente`,`contratto`),
  KEY `contratto_idx` (`contratto`),
  CONSTRAINT `contratto` FOREIGN KEY (`contratto`) REFERENCES `contratto` (`IDcontratto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dipendente` FOREIGN KEY (`dipendente`) REFERENCES `dipendente` (`IDdipendente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stipulazione`
--

LOCK TABLES `stipulazione` WRITE;
/*!40000 ALTER TABLE `stipulazione` DISABLE KEYS */;
INSERT INTO `stipulazione` VALUES (3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(23,23),(24,24),(25,25),(26,26),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48);
/*!40000 ALTER TABLE `stipulazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_ordine_richieste`
--

DROP TABLE IF EXISTS `vista_ordine_richieste`;
/*!50001 DROP VIEW IF EXISTS `vista_ordine_richieste`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ordine_richieste` AS SELECT 
 1 AS `IDrichiesta`,
 1 AS `dipendente`,
 1 AS `data`,
 1 AS `divisa`,
 1 AS `quantità`,
 1 AS `IDordine`,
 1 AS `data_ordine`,
 1 AS `stato`,
 1 AS `costo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `dipendente_contratto`
--

/*!50001 DROP VIEW IF EXISTS `dipendente_contratto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dipendente_contratto` AS select `dipendente`.`IDdipendente` AS `IDdipendente`,`dipendente`.`nome` AS `nome`,`dipendente`.`cognome` AS `cognome`,`dipendente`.`ruolo` AS `ruolo`,`contratto`.`IDcontratto` AS `IDcontratto`,`contratto`.`dataInizio` AS `dataInizio`,`contratto`.`dataFine` AS `dataFine` from ((`dipendente` join `stipulazione` on((`dipendente`.`IDdipendente` = `stipulazione`.`dipendente`))) join `contratto` on((`stipulazione`.`contratto` = `contratto`.`IDcontratto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ordine_richieste`
--

/*!50001 DROP VIEW IF EXISTS `vista_ordine_richieste`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ordine_richieste` AS select `r`.`IDrichiesta` AS `IDrichiesta`,`r`.`dipendente` AS `dipendente`,`r`.`data` AS `data`,`r`.`divisa` AS `divisa`,`r`.`quantità` AS `quantità`,`o`.`IDordine` AS `IDordine`,`o`.`data` AS `data_ordine`,`o`.`stato` AS `stato`,`o`.`costo` AS `costo` from (`richiesta` `r` join `ordine` `o` on((`r`.`ordine` = `o`.`IDordine`))) order by `o`.`IDordine` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-25 13:59:35

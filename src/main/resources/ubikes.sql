-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: ubikes
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bestellingen`
--

DROP TABLE IF EXISTS `bestellingen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bestellingen` (
  `idbestellingen` int(11) NOT NULL,
  `klant` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `besteld_aantal` int(11) DEFAULT NULL,
  `geleverd_aantal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbestellingen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestellingen`
--

LOCK TABLES `bestellingen` WRITE;
/*!40000 ALTER TABLE `bestellingen` DISABLE KEYS */;
/*!40000 ALTER TABLE `bestellingen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `framehoogte`
--

DROP TABLE IF EXISTS `framehoogte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `framehoogte` (
  `idframehoogte` int(11) NOT NULL AUTO_INCREMENT,
  `hoogte` int(11) NOT NULL,
  PRIMARY KEY (`idframehoogte`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `framehoogte`
--

LOCK TABLES `framehoogte` WRITE;
/*!40000 ALTER TABLE `framehoogte` DISABLE KEYS */;
INSERT INTO `framehoogte` VALUES (1,46),(2,49),(3,54),(4,59);
/*!40000 ALTER TABLE `framehoogte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hdk`
--

DROP TABLE IF EXISTS `hdk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hdk` (
  `idHDK` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`idHDK`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hdk`
--

LOCK TABLES `hdk` WRITE;
/*!40000 ALTER TABLE `hdk` DISABLE KEYS */;
INSERT INTO `hdk` VALUES (1,'heren'),(2,'dames'),(3,'kinder');
/*!40000 ALTER TABLE `hdk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klant`
--

DROP TABLE IF EXISTS `klant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klant` (
  `idklant` int(11) NOT NULL,
  `naam` varchar(20) NOT NULL,
  `telefoonnr` varchar(12) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idklant`),
  UNIQUE KEY `naam_UNIQUE` (`naam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klant`
--

LOCK TABLES `klant` WRITE;
/*!40000 ALTER TABLE `klant` DISABLE KEYS */;
/*!40000 ALTER TABLE `klant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kleur`
--

DROP TABLE IF EXISTS `kleur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kleur` (
  `idkleur` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(6) NOT NULL,
  PRIMARY KEY (`idkleur`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kleur`
--

LOCK TABLES `kleur` WRITE;
/*!40000 ALTER TABLE `kleur` DISABLE KEYS */;
INSERT INTO `kleur` VALUES (1,'zwart'),(2,'wit'),(3,'blauw'),(4,'groen'),(5,'rood');
/*!40000 ALTER TABLE `kleur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `idmodel` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(24) DEFAULT NULL,
  `type` varchar(12) NOT NULL,
  `prijs` int(11) NOT NULL,
  `versnelling` int(11) NOT NULL,
  `remsoort` varchar(12) NOT NULL,
  `kinderzitje` tinyint(1) NOT NULL,
  `merk` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idmodel`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'Orange C7 plus HMB','elektrisch',1986,7,'hydraulisch',0,'Gazelle'),(2,'Orange C7 HMS','elektrisch',2116,7,'rollerbrakes',0,'Gazelle'),(3,'Miss Grace C7 HMB','elektrisch',1736,7,'hydraulisch',0,'Gazelle'),(4,'Orange C7 plus','stads',659,7,'rollerbrakes',0,'Gazelle'),(5,'Puur_NL 3','transport',449,3,'terugtrap',1,'Gazelle'),(6,'Razer','sportief',2179,8,'hydraulisch',0,'Batavus'),(7,'Milano E-go Nu Vinci','lage instap',2249,1,'hydraulisch',0,'Batavus'),(8,'Mambo Deluxe','moederfiets',719,7,'rollerbrakes',0,'Batavus'),(9,'Dinsdag E-go','elektrisch',2039,8,'hydraulisch',0,'Batavus'),(10,'Zonar','hybride',638,27,'v-brakes',0,'Batavus'),(11,'Winner','stads',475,3,'rollerbrakes',1,'Batavus'),(12,'CNCTD RN3','transport',466,3,'terugtrap',1,'Batavus'),(13,'Cityzen C8','hybride',958,8,'hydraulisch',1,'Gazelle'),(14,'U4 Transport RN3','transport',515,3,'terugtrap',1,'Cortina'),(15,'E-U1 N3','elektrisch',1079,3,'rollerbrakes',1,'Cortina'),(16,'E-U1 N7','elektrisch',1179,7,'rollerbrakes',1,'Cortina'),(17,'Roots Transport N7','transport',655,7,'rollerbrakes',1,'Cortina'),(18,'E-Octa Plus','elektrisch',1979,8,'hydraulisch',1,'Cortina'),(19,'Speed N8','stads',809,8,'rollerbrakes',1,'Cortina'),(20,'Speed N7','stads',538,7,'rollerbrakes',1,'Cortina');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_framehoogte`
--

DROP TABLE IF EXISTS `model_has_framehoogte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_framehoogte` (
  `model_idmodel` int(11) NOT NULL,
  `framehoogte_idframehoogte` int(11) NOT NULL,
  PRIMARY KEY (`model_idmodel`,`framehoogte_idframehoogte`),
  KEY `fk_model_has_framehoogte_framehoogte1_idx` (`framehoogte_idframehoogte`),
  KEY `fk_model_has_framehoogte_model1_idx` (`model_idmodel`),
  CONSTRAINT `fk_model_has_framehoogte_framehoogte1` FOREIGN KEY (`framehoogte_idframehoogte`) REFERENCES `framehoogte` (`idframehoogte`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_model_has_framehoogte_model1` FOREIGN KEY (`model_idmodel`) REFERENCES `model` (`idmodel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_framehoogte`
--

LOCK TABLES `model_has_framehoogte` WRITE;
/*!40000 ALTER TABLE `model_has_framehoogte` DISABLE KEYS */;
INSERT INTO `model_has_framehoogte` VALUES (1,1),(2,1),(3,1),(5,1),(6,1),(7,1),(10,1),(12,1),(13,1),(14,1),(15,1),(16,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(1,4),(4,4),(5,4),(11,4),(12,4),(13,4),(14,4),(16,4),(20,4);
/*!40000 ALTER TABLE `model_has_framehoogte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_hdk`
--

DROP TABLE IF EXISTS `model_has_hdk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_hdk` (
  `model_idmodel` int(11) NOT NULL,
  `hdk_idHDK` int(11) NOT NULL,
  PRIMARY KEY (`model_idmodel`,`hdk_idHDK`),
  KEY `fk_model_has_hdk_hdk1_idx` (`hdk_idHDK`),
  KEY `fk_model_has_hdk_model1_idx` (`model_idmodel`),
  CONSTRAINT `fk_model_has_hdk_hdk1` FOREIGN KEY (`hdk_idHDK`) REFERENCES `hdk` (`idHDK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_model_has_hdk_model1` FOREIGN KEY (`model_idmodel`) REFERENCES `model` (`idmodel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_hdk`
--

LOCK TABLES `model_has_hdk` WRITE;
/*!40000 ALTER TABLE `model_has_hdk` DISABLE KEYS */;
INSERT INTO `model_has_hdk` VALUES (1,1),(2,1),(4,1),(5,1),(6,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(20,1),(1,2),(2,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(3,3);
/*!40000 ALTER TABLE `model_has_hdk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_kleur`
--

DROP TABLE IF EXISTS `model_has_kleur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_kleur` (
  `model_idmodel` int(11) NOT NULL,
  `kleur_idkleur` int(11) NOT NULL,
  PRIMARY KEY (`model_idmodel`,`kleur_idkleur`),
  KEY `fk_model_has_kleur_kleur1_idx` (`kleur_idkleur`),
  KEY `fk_model_has_kleur_model1_idx` (`model_idmodel`),
  CONSTRAINT `fk_model_has_kleur_kleur1` FOREIGN KEY (`kleur_idkleur`) REFERENCES `kleur` (`idkleur`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_model_has_kleur_model1` FOREIGN KEY (`model_idmodel`) REFERENCES `model` (`idmodel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_kleur`
--

LOCK TABLES `model_has_kleur` WRITE;
/*!40000 ALTER TABLE `model_has_kleur` DISABLE KEYS */;
INSERT INTO `model_has_kleur` VALUES (1,1),(2,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(1,2),(2,2),(4,2),(5,2),(8,2),(9,2),(10,2),(12,2),(18,2),(1,3),(6,3),(13,3),(17,3),(20,3),(2,4),(4,4),(8,4),(13,4),(3,5),(7,5),(8,5),(10,5),(13,5);
/*!40000 ALTER TABLE `model_has_kleur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-02 20:20:40

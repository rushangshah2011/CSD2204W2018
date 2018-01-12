-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

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
-- Table structure for table `citymaster`
--

DROP TABLE IF EXISTS `citymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citymaster` (
  `CityID` int(4) NOT NULL,
  `cityName` varchar(255) DEFAULT 'toronto',
  PRIMARY KEY (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citymaster`
--

LOCK TABLES `citymaster` WRITE;
/*!40000 ALTER TABLE `citymaster` DISABLE KEYS */;
INSERT INTO `citymaster` VALUES (1,'north york');
/*!40000 ALTER TABLE `citymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust`
--

DROP TABLE IF EXISTS `cust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust` (
  `customerID` int(2) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `nickname` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postalcode` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust`
--

LOCK TABLES `cust` WRITE;
/*!40000 ALTER TABLE `cust` DISABLE KEYS */;
INSERT INTO `cust` VALUES (1,'Ashley','Ash','32 Washington street','WDC',321200),(2,'Bob marley','Bm','Keele street','toronto',100100),(3,'Cherlies Theron','Cher','329 Empire state Building','north york',120134),(4,'deniel jack','Dj','spartan Building, east','brazil',341020),(5,'donna newman','new','250 carlson blvd','toronto',130120),(6,'eston m.','m.','21 york. dv.','toronto',201023),(7,'bobby chacko','chac','kennedy','new york',320300),(8,'ashko charles','ak','washington dc','usa',421044),(9,'tony special','specie','oakville','gta',418921),(10,'jack sp','sparrow','oakville','gta',418921),(1,'Ashley','Ash','32 Washington street','WDC',321200),(2,'Bob marley','Bm','Keele street','toronto',100100),(3,'Cherlies Theron','Cher','329 Empire state Building','north york',120134),(4,'deniel jack','Dj','spartan Building, east','brazil',341020),(5,'donna newman','new','250 carlson blvd','toronto',130120),(6,'eston m.','m.','21 york. dv.','toronto',201023),(7,'bobby chacko','chac','kennedy','new york',320300),(8,'ashko charles','ak','washington dc','usa',421044),(9,'tony special','specie','oakville','gta',418921),(10,'jack sp','sparrow','oakville','gta',418921);
/*!40000 ALTER TABLE `cust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerID` int(2) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `nickname` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postalcode` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Ashley','Ash','32 Washington street','WDC',321200),(2,'Bob marley','Bm','Keele street','toronto',100100),(3,'Cherlies Theron','Cher','329 Empire state Building','north york',120134),(4,'deniel jack','Dj','spartan Building, east','brazil',341020),(5,'donna newman','new','250 carlson blvd','toronto',130120),(6,'eston m.','m.','21 york. dv.','toronto',201023),(7,'bobby chacko','chac','kennedy','new york',320300),(8,'ashko charles','ak','washington dc','usa',421044),(9,'tony special','specie','oakville','gta',418921),(10,'jack sp','sparrow','oakville','gta',418921);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `ID` int(3) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `Age` int(3) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'shah','rushang',25),(2,'shah','rushang',15);
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons1`
--

DROP TABLE IF EXISTS `persons1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons1` (
  `ID` int(3) NOT NULL,
  `LasteName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `CityID` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_persons` (`CityID`),
  CONSTRAINT `fk_persons` FOREIGN KEY (`CityID`) REFERENCES `citymaster` (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons1`
--

LOCK TABLES `persons1` WRITE;
/*!40000 ALTER TABLE `persons1` DISABLE KEYS */;
/*!40000 ALTER TABLE `persons1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `cityname` varchar(40) DEFAULT NULL,
  UNIQUE KEY `cityName` (`cityname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES ('north york');
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-12 10:53:55

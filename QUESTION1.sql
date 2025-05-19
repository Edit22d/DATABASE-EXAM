-- MySQL dump 10.13  Distrib 5.6.22, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: student
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `tblFinance`
--

DROP TABLE IF EXISTS `tblFinance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblFinance` (
  `StudentID` int(11) NOT NULL,
  `Tuition_Fee` int(11) NOT NULL,
  `Administration_fee` int(11) NOT NULL,
  `Exams_fee` int(11) NOT NULL,
  `Medical_fee` int(11) NOT NULL,
  `Lowest_Tuition` int(11) DEFAULT NULL,
  `Highest_Tuition` int(11) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `StudentID` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblFinance`
--

LOCK TABLES `tblFinance` WRITE;
/*!40000 ALTER TABLE `tblFinance` DISABLE KEYS */;
INSERT INTO `tblFinance` VALUES (1,34000,5000,3000,4000,NULL,NULL),(2,23000,5000,3000,4000,NULL,NULL),(3,20000,5000,3000,4000,NULL,NULL),(26,40000,5000,2000,4000,NULL,NULL),(29,35000,5000,2000,4000,NULL,NULL),(127,28000,5000,3000,4000,NULL,NULL),(235,30000,5000,3000,4000,NULL,NULL),(236,50000,5000,3000,4000,NULL,NULL);
/*!40000 ALTER TABLE `tblFinance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstudent` (
  `StudentName` varchar(255) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Birthdate` varchar(20) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `MobileNo` varchar(10) NOT NULL,
  PRIMARY KEY (`StudentName`),
  UNIQUE KEY `StudentID` (`StudentID`),
  CONSTRAINT `tblstudent_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `tblFinance` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudent`
--

LOCK TABLES `tblstudent` WRITE;
/*!40000 ALTER TABLE `tblstudent` DISABLE KEYS */;
INSERT INTO `tblstudent` VALUES ('Caroline',3,'18/10/2002','Y1S1','072824532'),('Cyrus',1,'15/6/1989','Y2S1','0704231345'),('Dan',236,'20/4/2001','Y1S2','0723456123'),('Grace',127,'14/1/2000','Y1S2','0733765978'),('jane',235,'12/1/1987','Y1S2','072224532'),('Judith',29,'17/6/2003','Y4S2','076224532'),('Neema',2,'29/11/2008','Y2S1','0733876987'),('Nicholas',26,'22/7/2002','Y1S1','0720458674');
/*!40000 ALTER TABLE `tblstudent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-19 15:29:49

CREATE DATABASE  IF NOT EXISTS `echanneling` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `echanneling`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: echanneling
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertable` (
  `uID` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(150) DEFAULT NULL,
  `uAddress` varchar(150) DEFAULT NULL,
  `uAge` varchar(45) DEFAULT NULL,
  `uGender` varchar(45) DEFAULT NULL,
  `uPhone` varchar(45) DEFAULT NULL,
  `uEmail` varchar(45) DEFAULT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `imageFileName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES (7,'System Admin','company','-','-','0112345678','admin@gmail.com','admin','admin1234',NULL),(61,'Kaushi Perera    ','Colombo 7','45','female','0776223206','Kaushi@gmail.com','Kaushi','kaushi12','istockphoto.jpg'),(62,'Lahiru Wijesinghe','Rabawewa Kobeigane','23','male','0776223205','lahiru@gmail.com','Lahiru','lahiru12','Arif-Hossain-CEO.png'),(63,'Sithmi Nehara ','Pallewela kuliyapitiya','12','female','0776223200','sithmi@gmail.com','Sithmi','123sithm','porttraits.jpg'),(64,'Sagara Rathnayaka','Mulleriyawa','66','male','0775443228','sagara@gmail.com','Sagara','1234saga','article_image_2.jpg');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-21 14:50:16

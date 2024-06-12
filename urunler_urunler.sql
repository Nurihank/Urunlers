CREATE DATABASE  IF NOT EXISTS `urunler` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `urunler`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: urunler
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `urunler`
--

DROP TABLE IF EXISTS `urunler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urunler` (
  `idUrunler` int NOT NULL AUTO_INCREMENT,
  `urunAdi` varchar(45) DEFAULT NULL,
  `urunAciklamasi` varchar(45) DEFAULT NULL,
  `urunlerResmi` varchar(255) DEFAULT NULL,
  `urunlerUzunAciklama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idUrunler`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urunler`
--

LOCK TABLES `urunler` WRITE;
/*!40000 ALTER TABLE `urunler` DISABLE KEYS */;
INSERT INTO `urunler` VALUES (1,'4-5 Kişilik Cadir','4-5 Kişilik Cadırdır','C:\\Users\\Administrator\\Documents\\GitHub\\Urunler_RN\\assets',NULL),(3,'Açik Kamp Çadiri','Açık Kamp Çadırı','C:\\Users\\Administrator\\Documents\\GitHub\\Urunler_RN\\assets',NULL),(4,'Çok Fonksiyonlu Çaki','Çok Fonksiyonlu Çakı','C:\\Users\\Administrator\\Documents\\GitHub\\Urunler_RN\\assets',NULL),(5,'İsviçre Çakisi','İsviçre Çakısı','C:\\Users\\Administrator\\Documents\\GitHub\\Urunler_RN\\assets',NULL),(6,'Renkli Çaki','Renkli Çakı','C:\\Users\\Administrator\\Documents\\GitHub\\Urunler_RN\\assets',NULL),(7,'Tam Otomatik Çadir','Tam Otomatik Çadır','C:\\Users\\Administrator\\Documents\\GitHub\\Urunler_RN\\assets',NULL);
/*!40000 ALTER TABLE `urunler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13  0:36:07

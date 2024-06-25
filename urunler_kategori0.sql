-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: urunler
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori` (
  `idkategori` int NOT NULL AUTO_INCREMENT,
  `kategoriAdi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idkategori`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'Çadır'),(2,'Sandalye'),(3,'Tulum'),(5,'Çanta'),(6,'Sapka');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urunler`
--

DROP TABLE IF EXISTS `urunler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urunler` (
  `idUrunler` int NOT NULL AUTO_INCREMENT,
  `urunAdi` varchar(45) DEFAULT NULL,
  `urunAciklamasi` varchar(250) DEFAULT NULL,
  `urunlerResmi` varchar(550) DEFAULT NULL,
  `urunlerUzunAciklama` varchar(255) DEFAULT NULL,
  `IDKategori` int DEFAULT NULL,
  `fiyat` decimal(20,3) DEFAULT NULL,
  PRIMARY KEY (`idUrunler`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urunler`
--

LOCK TABLES `urunler` WRITE;
/*!40000 ALTER TABLE `urunler` DISABLE KEYS */;
INSERT INTO `urunler` VALUES (24,'2 Kişilik Çadır','2 Kişilik Plaj Çadırı',NULL,'Bestway 2 Kişilik Plaj Çadırı Güneş koruması 1.11 Kg. ağırlıktadır.Ölçüleri : 200 x 120 x 95 cm.',1,1200.000),(25,'4-5 Kişilik Çadır','4 Kişilik Kamp Çadırı ',NULL,'Bestway 2 Kişilik Plaj Çadırı Güneş koruması 1.11 Kg. ağırlıktadır.Ölçüleri : 200 x 120 x 95 cm.',1,2000.000),(26,'Otomatik Açılır Çadır','Otomatik Açılır Kamp Çadırı',NULL,'2-3 Kişilik Otomatik Kolay Kurulum Kamp Çadırı Otomatik kurulum özelliği ile diğer çadırlardan ayrılan esnek ve sağlam bir yapıya sahiptir. Rüzgar geçirmez üst kısmında gün ışığından faydalanmanız için şeffaf bölüm bulunmaktadır',1,1000.000),(27,'Kamp Sandalyesi','Kamp Sandalyesi Yeşil',NULL,'Genişlik49 cm Yükseklik84 cm Derinlik47 cm RenkYeşil MalzemeMetal İskelet ModeliKatlanabilir Kullanılabilir Kişi SayısıTek Kişilik Taşıma Kapasitesi 90 kg',2,450.000),(28,'2 Kişilik Tulum','Spor Outdoor Uyku Tulum',NULL,'Profesyonel Spor Outdoor Uyku Tulumu Sıcak Tutan Kamp 190x70 Cm Her Bedene Uyumlu Termal Tulum Kamp',3,950.000),(29,'1 Kişik Tulum','Spor Outdoor Uyku Tulum',NULL,'Profesyonel Spor Outdoor Uyku Tulumu Sıcak Tutan Kamp 190x70 Cm Her Bedene Uyumlu Termal Tulum Kamp',3,500.000),(46,'Askeri Çanta','15 Kiloya Kadar Taşıyabilir Askeri Çanta',NULL,NULL,5,750.000),(47,'Tek Gözlü Çanta','Tek Gözlü Çantadır İçinde Bilgisayar vb Ürünleri Taşıyabilirsin',NULL,NULL,5,320.000),(48,'Hasır Şapka','Sıcak Yaz Günlerinde Yakmayan Hasır Şapka',NULL,NULL,6,126.000);
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

-- Dump completed on 2024-06-25 17:54:43

-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: elotitosbd
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `subtotal_venta` float NOT NULL,
  `total_venta` float NOT NULL,
  `iva_venta` float NOT NULL,
  `id_cli` int NOT NULL,
  `id_product` int NOT NULL,
  `nom_produc` varchar(50) NOT NULL,
  `precio_produc` float NOT NULL,
  `cant_produc` int NOT NULL,
  `id_ticket` int NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_cli_venta_idx` (`id_cli`),
  KEY `id_produc_venta_idx` (`id_product`),
  CONSTRAINT `id_cli_venta` FOREIGN KEY (`id_cli`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `id_produc_venta` FOREIGN KEY (`id_product`) REFERENCES `producto` (`id_produc`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,175,203,28,1,1,'Elote en vaso grande ',35,5,1),(2,120,139.2,19.2,1,2,'Tostitos verdes preparados ',60,2,1),(3,35,40.6,5.6,1,1,'Elote en vaso grande ',35,1,2),(4,120,139.2,19.2,1,2,'Tostitos verdes preparados ',60,2,2),(5,70,81.2,11.2,1,1,'Elote en vaso grande ',35,2,3),(6,70,81.2,11.2,1,1,'Elote en vaso grande ',35,2,4),(7,35,40.6,5.6,1,1,'Elote en vaso grande ',35,1,5),(8,120,139.2,19.2,1,2,'Tostitos verdes preparados ',60,2,6),(9,60,69.6,9.6,1,2,'Tostitos verdes preparados ',60,1,7),(10,70,81.2,11.2,1,1,'Elote en vaso grande ',35,2,8),(11,120,139.2,19.2,1,2,'Tostitos verdes preparados ',60,2,9),(12,70,81.2,11.2,1,1,'Elote en vaso grande ',35,2,10),(13,60,69.6,9.6,1,2,'Tostitos verdes preparados ',60,1,11),(14,70,81.2,11.2,1,1,'Elote en vaso grande ',35,2,12),(15,70,81.2,11.2,1,1,'Elote en vaso grande ',35,2,13),(16,70,81.2,11.2,1,1,'Elote en vaso grande ',35,2,14),(17,120,139.2,19.2,1,2,'Tostitos verdes preparados ',60,2,14),(18,70,81.2,11.2,1,1,'Elote en vaso grande ',35,2,15),(19,60,69.6,9.6,1,2,'Tostitos verdes preparados ',60,1,16),(20,30,34.8,4.8,1,3,'Elote en vaso mediano',30,1,17),(21,180,208.8,28.8,1,2,'Tostitos verdes preparados ',60,3,18),(22,120,139.2,19.2,1,2,'Tostitos verdes preparados ',60,2,19),(23,35,40.6,5.6,1,1,'Elote en vaso grande ',35,1,19),(24,60,69.6,9.6,4,3,'Elote en vaso mediano',30,2,20);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-20 15:22:27

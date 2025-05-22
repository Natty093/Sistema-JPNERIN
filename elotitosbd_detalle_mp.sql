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
-- Table structure for table `detalle_mp`
--

DROP TABLE IF EXISTS `detalle_mp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_mp` (
  `id_detalle_mp` int NOT NULL AUTO_INCREMENT,
  `fecha_suministro` varchar(50) NOT NULL,
  `id_mat_prim` int NOT NULL,
  `nom_mat_prim` varchar(50) NOT NULL,
  `precio_mat_prim` float NOT NULL,
  `cant_mat_prim` int NOT NULL,
  `id_prove` int NOT NULL,
  PRIMARY KEY (`id_detalle_mp`),
  KEY `id_prove_detallemp_idx` (`id_prove`),
  KEY `id_mat_prim_detallemp_idx` (`id_mat_prim`),
  CONSTRAINT `id_mat_prim_detallemp` FOREIGN KEY (`id_mat_prim`) REFERENCES `materia_prim` (`id_mat_prim`),
  CONSTRAINT `id_prove_detallemp` FOREIGN KEY (`id_prove`) REFERENCES `proveedor` (`id_prove`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_mp`
--

LOCK TABLES `detalle_mp` WRITE;
/*!40000 ALTER TABLE `detalle_mp` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_mp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-20 15:22:26

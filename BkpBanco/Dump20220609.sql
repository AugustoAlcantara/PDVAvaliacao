-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: pdv_simples
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `tbcliente`
--

DROP TABLE IF EXISTS `tbcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcliente` (
  `codigo` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `uf` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcliente`
--

LOCK TABLES `tbcliente` WRITE;
/*!40000 ALTER TABLE `tbcliente` DISABLE KEYS */;
INSERT INTO `tbcliente` VALUES (1,'AUGUSTO CESAR','RECIFE','PE'),(2,'MARISA MONTE','RIO DE JANEIRO','RJ'),(3,'OSWALDO LENINE MACEDO','RECIFE','PE'),(4,'NEY MATOGROSSO','BELA VISTA','MS'),(5,'GILBERTO GIL','SALVADOR','BA'),(6,'CAETANO VELOSO','SANTO AMARO','BA'),(7,'CHICO BUARQUE','CATETE','RJ'),(8,'JORGE BEN JOR','RIO DE JANEIRO','RJ'),(9,'TOM JOBIM','TIJUCA ','RJ'),(10,'MILTON NASCIMENTO','TIJUCA','RJ'),(11,'ELIS REGINA','PORTO ALEGRE','RS'),(12,'JOÃO GILBERTO','JUAZEIRO','BA'),(13,'VINÍCIUS DE MORAES','GÁVEA','RJ'),(14,'ROBERTO CARLOS','CACHOEIRO DE ITAPEMIRIM','ES'),(15,'DJAVAN','MACEIÓ','AL'),(16,'ZÉ RAMALHO','BREJO DO CRUZ','PB'),(17,'RITA LEE','VILA MARIANA','SP'),(18,'RAUL SEIXAS','SALVADOR','BA'),(19,'HERBERT VIANNA','JOÃO PESSOA','PB'),(20,'ARNALDO ANTUNES','SÃO PAULO','SP');
/*!40000 ALTER TABLE `tbcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbitempedido`
--

DROP TABLE IF EXISTS `tbitempedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbitempedido` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `idpedido` int NOT NULL,
  `codproduto` int NOT NULL,
  `quantidade` float NOT NULL,
  `vlrunitario` float NOT NULL,
  `vlrtotal` float NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `idpedido` (`idpedido`),
  KEY `Produto_ItemPedido_idx` (`codproduto`),
  CONSTRAINT `Pedido_ItemPedido` FOREIGN KEY (`idpedido`) REFERENCES `tbpedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Produto_ItemPedido` FOREIGN KEY (`codproduto`) REFERENCES `tbproduto` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbitempedido`
--

LOCK TABLES `tbitempedido` WRITE;
/*!40000 ALTER TABLE `tbitempedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbitempedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpedido`
--

DROP TABLE IF EXISTS `tbpedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbpedido` (
  `idpedido` int NOT NULL,
  `dataemissao` datetime NOT NULL,
  `codcliente` int NOT NULL,
  `valortotal` float NOT NULL,
  PRIMARY KEY (`idpedido`),
  UNIQUE KEY `numpedido_UNIQUE` (`idpedido`),
  KEY `IdCliente_idx` (`codcliente`),
  CONSTRAINT `IdCliente` FOREIGN KEY (`codcliente`) REFERENCES `tbcliente` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpedido`
--

LOCK TABLES `tbpedido` WRITE;
/*!40000 ALTER TABLE `tbpedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbproduto`
--

DROP TABLE IF EXISTS `tbproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbproduto` (
  `codigo` int NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `precovenda` float NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbproduto`
--

LOCK TABLES `tbproduto` WRITE;
/*!40000 ALTER TABLE `tbproduto` DISABLE KEYS */;
INSERT INTO `tbproduto` VALUES (1,'VIOLINO',800),(2,'VIOLA',300),(3,'VIOLONCELO',3000),(4,'CONTRA BAIXO',2500),(5,'VIOLÃO',800),(6,'UKULELE',200),(7,'GUITARRA ELÉTRICA',2500),(8,'BANJO',300),(9,'BANDOLIM',280),(10,'TAMBOR',415),(11,'RECO-RECO',90),(12,'BONGOS',280),(13,'PRATOS',700),(14,'XILOFONE',420),(15,'BATERIA',2000),(16,'PIANO',10000),(17,'ACORDEÃO',730),(18,'SANFONA',600),(19,'SAXOFONE',700),(20,'FLAUTA',190);
/*!40000 ALTER TABLE `tbproduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pdv_simples'
--

--
-- Dumping routines for database 'pdv_simples'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 13:08:43

CREATE DATABASE  IF NOT EXISTS `tynesbd` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tynesbd`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tynesbd
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `nomeCliente` varchar(60) NOT NULL,
  `dataNascimento` varchar(10) NOT NULL,
  `cpf` bigint NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `telefone` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('José Silva','21/05/1971',14445678925,'Rua dos carneiros','99987524646'),('José Andrade','13/07/1976',14445679925,'Rua Tocantins','92187524646'),('Michel','05/05/2000',15562589419,'Rua do amor','(81) 99999-9999'),('Michel','02/02/2000',33564224211,'Rua da flor','(81) 92515-6654'),('Nalva Maria','11/04/1963',33665892320,'Rua Jardin Jordão','81939477722'),('Bruno ','05/06/2000',37811457784,'Rua do amor','(81) 98467-5252'),('Marina Silva','16/12/1954',51445236020,'Rua dos Palmares','81987334444'),('Jair bolson','19/05/1971',51445896320,'Rua dos Palmares','81987331258'),('Fernanda Martins','01/01/1990',55545679020,'Rua do Morro','81987334000'),('Beatriz Lima','11/05/1973',55545679925,'Rua Monsenhor','81987334646'),('Antonio Cristiano Campelo','19/03/1942',60009892320,'Rua Martinópolis','(81) 98752-4646'),('Valdir Sabino','11/05/1940',60326892320,'Rua oito','70476555552'),('Fabio Jose Da Silva','11/04/1960',60326892333,'Rua Do Cinema','70476525852'),('Madson De Lima Martins','18/05/1964',64825892333,'Rua Largo Da Paz','11126525852'),('Fabiana Lima','11/05/1949',65432892320,'Rua Morro Da Conceição','16357525852'),('Antônio Nunes de Lima','21/09/1692',65489892320,'Rua UR-11','(33) 33632-1722'),('Maria Vastir De Souza','26/08/1961',66669892320,'Rua Santos Silva','30306321722'),('Maria Isabel','11/05/1958',80065892320,'Rua Sabino','80647525852'),('Jéssica Maria','29/06/1964',95849825565,'Rua acaragi, 4565, Igarassu','81996321722'),('Vanessa Lima','11/03/1976',99945892320,'Rua Barão de Souza, 4565, Igarassu','98989484822');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `lote` bigint NOT NULL,
  `validade` varchar(10) NOT NULL,
  `dataEntrada` varchar(10) NOT NULL,
  `quantidadeLote` bigint NOT NULL,
  `quantidadeTotal` bigint NOT NULL,
  `codigobarras` bigint NOT NULL,
  `valorLote` float DEFAULT NULL,
  KEY `codigoBarra` (`codigobarras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,'2020-10-30','2020-09-30',100,100,7895554561215,NULL),(1,'2020-10-30','2020-09-30',100,100,7895554561215,NULL),(1,'2020-10-30','2020-09-30',100,100,7895554561217,NULL),(1,'2020-10-30','2020-09-30',100,100,7896664561217,NULL),(1,'2020-10-30','2020-09-30',100,100,7896664561218,NULL),(1,'2020-10-30','2020-09-30',100,100,7896664561219,NULL),(1,'2020-10-30','2020-09-30',100,100,7897774561216,NULL),(1,'2020-10-30','2020-09-30',100,100,7897774561217,NULL),(1,'2020-10-30','2020-09-30',100,100,7895554561220,NULL),(1,'2020-10-30','2020-09-30',100,100,7898884561220,NULL),(1,'2020-10-30','2020-09-30',100,100,7898884561221,NULL),(1,'2020-10-30','2020-09-30',100,100,7899994561222,NULL),(1,'2020-10-30','2020-09-30',100,100,7899994561222,NULL),(1,'2020-10-30','2020-09-30',100,100,7891114561222,NULL),(1,'2020-10-30','2020-09-30',80,80,7891114561223,NULL),(1,'2020-10-30','2020-09-30',80,80,7891114561226,NULL),(1,'2020-10-30','2020-09-30',80,80,7892224561226,NULL),(2,'2020-10-30','2020-09-30',80,80,7893334561226,NULL),(2,'2020-10-30','2020-09-30',70,70,7894444561226,NULL),(2,'2020-10-30','2020-09-30',70,70,7895555561226,NULL),(2,'2020-10-30','2020-09-30',70,70,789585561226,NULL);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `idFuncionario` int NOT NULL AUTO_INCREMENT,
  `nomeFuncionario` varchar(60) NOT NULL,
  `cargo` varchar(25) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(15) NOT NULL,
  PRIMARY KEY (`idFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Ademar Lemos da Silva','Gerente','admin','admin'),(12,'MIchel Castanha','dev','dev','123');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `nomeProduto` varchar(30) NOT NULL,
  `secao` varchar(10) NOT NULL,
  `porcentagemGanho` int DEFAULT NULL,
  `codigoBarras` bigint NOT NULL,
  `unidadeMedida` varchar(5) DEFAULT NULL,
  `lote` bigint DEFAULT NULL,
  `validade` varchar(10) DEFAULT NULL,
  `quantidadeLote` bigint DEFAULT NULL,
  `quantidadeTotal` bigint DEFAULT NULL,
  `valorLote` float DEFAULT NULL,
  `precoUnitario` float DEFAULT NULL,
  PRIMARY KEY (`codigoBarras`,`nomeProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES ('Bacon Fatiado Sadia 400g','Laticínios',80,789585561226,'uni',1,'2020-09-30',100,100,300,6.99),('Abacate','Frutas',NULL,3424235345345,'Uni',NULL,NULL,NULL,NULL,NULL,NULL),('Abacate d Roça','Frutas',NULL,3424235345345,'uni',NULL,NULL,NULL,NULL,NULL,NULL),('Massa De Pastel Massaleve 400g','Laticínios',80,7891114561222,'uni',1,'2020-09-30',100,100,150,5.99),('Massa De Pastel Massaleve 1kg','Laticínios',80,7891114561223,'uni',1,'2020-09-30',100,100,300,9.99),('Massa Folhada Massaleve 400g','Laticínios',80,7891114561226,'uni',1,'2020-09-30',100,100,300,5.98),('Presunto Fatiado Perdigão kg','Laticínios',80,7892224561226,'kg',1,'2020-09-30',100,100,300,25.99),('Queijo Mussarela Fat Davaca kg','Laticínios',80,7893334561226,'kg',1,'2020-09-30',100,100,500,29.99),('Salsicha Seara kg','Laticínios',80,7894444561226,'kg',1,'2020-09-30',100,100,300,8.99),('Margarina Deline Sadia 500g','Laticínios',80,7895554561216,'uni',1,'2020-09-30',100,100,300,4.99),('Margarina Deline Sadia 1kg','Laticínios',80,7895554561217,'kg',1,'2020-09-30',100,100,400,8.99),('Requeijão Sadia 200g','Laticínios',80,7895554561220,'uni',1,'2020-09-30',100,100,400,4.98),('Margarina Primor 50g','Laticínios',80,7896664561217,'uni',1,'2020-09-30',100,100,300,3.25),('Margarina Primor 500g','Laticínios',80,7896664561218,'uni',1,'2020-09-30',100,100,500,5.99),('Margarina Primor 1kg','Laticínios',80,7896664561219,'uni',1,'2020-09-30',100,100,300,11.39);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatorios`
--

DROP TABLE IF EXISTS `relatorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatorios` (
  `ProdutosMaisVendidos` varchar(50) NOT NULL,
  `ProdutosMenosVendidos` varchar(50) NOT NULL,
  `LucroLiquido` int NOT NULL,
  `ProdutosEmFalta` varchar(50) NOT NULL,
  `id` int NOT NULL,
  `DataDoRelatório` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorios`
--

LOCK TABLES `relatorios` WRITE;
/*!40000 ALTER TABLE `relatorios` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `codVendas` bigint NOT NULL AUTO_INCREMENT,
  `codigoBarras` bigint NOT NULL,
  `quantidadeProd` float NOT NULL,
  `valorFinal` float DEFAULT NULL,
  `nomeProduto` varchar(30) NOT NULL,
  `precoUnitario` float DEFAULT NULL,
  PRIMARY KEY (`codVendas`),
  KEY `codigoBarras` (`codigoBarras`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`codigoBarras`) REFERENCES `produtos` (`codigoBarras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-20 22:03:54

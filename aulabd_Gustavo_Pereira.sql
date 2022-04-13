-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: aulabd
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `RESPOSTA`
--

DROP TABLE IF EXISTS `RESPOSTA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESPOSTA` (
  `numquestao` int NOT NULL AUTO_INCREMENT,
  `descresposta` varchar(500) NOT NULL,
  PRIMARY KEY (`numquestao`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESPOSTA`
--

LOCK TABLES `RESPOSTA` WRITE;
/*!40000 ALTER TABLE `RESPOSTA` DISABLE KEYS */;
INSERT INTO `RESPOSTA` VALUES (1,'Feito.'),(2,'primery key, ou chave primaria é um identificador de tabela, sendo unico para cada item da tabela, sendo usado para pesquisa ou ligação entre tabelas'),(3,'foreign key ou chave estrangeira é uma coluna que aponta para uma chave primaria, criando assim uma relacao entra tabelas'),(4,'create table curso(id int not null auto_increment primary key, descricao varchar(50) not null);'),(5,'create table alunos(id int not null auto_increment primary key, nome varchar(50) not null, matricula varchar(12) not null, estado varchar(20) not null, sexo char(1) not null, fk_curso int not null, foreign key (fk_curso) references curso(id));'),(6,'alter table alunos add email varchar(30) not null;'),(7,'alter table professor drop column fone;'),(8,'update professor set sexo=\"M\";'),(9,'delete from professor where sexo=\"F\";'),(10,'select nome, matricula from alunos;'),(11,'select * from professor where sexo=\"M\";'),(12,'select alunos.nome, curso.descricao as \"Curso\" from alunos, curso where fk_curso=curso.id;'),(13,'Feito.'),(14,'select * from cidade where nome like \"a%\";'),(15,'select cidade.nome from cidade, estado where estado.nome=\"Minas Gerais\" and estado.id=fk_codestado;'),(16,'select cidade.nome as \"cidade\", estado.nome as \"estado\" from cidade, estado where estado.id=fk_codestado;'),(17,'select lower(nome) as \'Cidade\' from cidade;'),(18,'select upper(nome) as \'Cidade\' from cidade;'),(19,'select estado.nome as \"Estado\", count(cidade.nome) as \"N_de_Cidades\" from estado, cidade where estado.id=fk_codestado group by estado.nome;');
/*!40000 ALTER TABLE `RESPOSTA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `matricula` varchar(12) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fk_curso` int NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_curso` (`fk_curso`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`fk_curso`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'gabriel','1212121212','Minas Gerais','M',3,'gabrieldmaissss@gmail.com'),(2,'mariela','4565654465','Bahia','F',2,'Marieladelad@outlook.com');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `fk_codestado` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_codestado` (`fk_codestado`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`fk_codestado`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Teofilo Otoni',1),(2,'Belo Horizonte',1),(3,'Camaca',2),(4,'Canavieiras',2),(5,'Itabuna',2),(6,'Ilheus',2),(7,'Amatheus',3);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'sistemas de informcacao'),(2,'medicina'),(3,'engenharia'),(4,'enfermagem'),(5,'computacao');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Minas Gerais'),(2,'Bahia'),(3,'São Paulo'),(4,'Rio de Janeiro'),(5,'Espirito Santo');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` char(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `titulacao` varchar(50) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Pedro rocha lascado','98971985888','pedrorl1987@yahoo.com','doutorado','M'),(2,'Maria Mariana das Dores','24563548777','mariadoress95@hotmail.com','superior','M');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-13 18:36:10

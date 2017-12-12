-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dbpizzaria
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `tbl_ambiente`
--

DROP TABLE IF EXISTS `tbl_ambiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ambiente` (
  `idAmbiente` int(11) NOT NULL AUTO_INCREMENT,
  `idEstado` int(11) DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `ativarAmbiente` tinyint(4) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `nomePizzaria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAmbiente`),
  KEY `fk_estadoAmbiente_idx` (`idEstado`),
  CONSTRAINT `fk_estadoAmbiente` FOREIGN KEY (`idEstado`) REFERENCES `tblestado` (`idestado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ambiente`
--

LOCK TABLES `tbl_ambiente` WRITE;
/*!40000 ALTER TABLE `tbl_ambiente` DISABLE KEYS */;
INSERT INTO `tbl_ambiente` VALUES (1,45,'elton','2222',1,'teste','jandira',-23.5285,-46.898,'2222-2222','pizzara frajolas');
/*!40000 ALTER TABLE `tbl_ambiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_avaliacao`
--

DROP TABLE IF EXISTS `tbl_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_avaliacao` (
  `idAvaliacao` int(11) NOT NULL AUTO_INCREMENT,
  `avaliacao` float(10,2) DEFAULT NULL,
  `idProduto` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`idAvaliacao`),
  KEY `fk_avaliacao_produto_idx` (`idProduto`),
  CONSTRAINT `fk_avaliacao_produto` FOREIGN KEY (`idProduto`) REFERENCES `tbl_produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_avaliacao`
--

LOCK TABLES `tbl_avaliacao` WRITE;
/*!40000 ALTER TABLE `tbl_avaliacao` DISABLE KEYS */;
INSERT INTO `tbl_avaliacao` VALUES (1,4.00,3,NULL),(2,5.00,2,NULL),(3,2.00,1,NULL),(4,3.00,2,NULL),(5,3.00,2,NULL),(6,4.00,2,NULL),(7,5.00,2,NULL),(8,2.00,2,NULL),(9,1.00,2,NULL),(10,3.50,2,NULL),(11,2.50,3,NULL),(12,2.50,3,NULL),(13,2.50,3,NULL),(14,2.50,3,NULL),(15,2.50,3,NULL),(16,2.50,3,NULL),(17,2.50,3,NULL),(18,2.50,3,NULL),(19,2.50,3,NULL),(20,0.50,1,NULL),(21,1.50,1,NULL),(22,3.00,1,NULL),(23,2.00,1,NULL),(24,3.00,2,NULL),(25,3.50,2,NULL),(26,4.50,2,NULL),(27,1.00,2,NULL),(28,2.00,1,NULL),(29,2.50,1,NULL),(30,2.50,2,NULL),(31,3.50,2,NULL),(32,4.50,2,NULL),(33,3.00,2,NULL),(34,3.00,3,NULL),(35,5.00,1,NULL),(36,3.50,1,NULL),(37,4.00,1,NULL),(38,5.00,3,NULL),(39,5.00,3,NULL),(40,5.00,1,NULL),(41,5.00,1,NULL),(42,5.00,1,NULL),(43,4.00,3,NULL),(44,3.00,1,NULL),(45,5.00,1,NULL),(46,5.00,1,NULL),(47,0.00,3,NULL),(48,0.00,3,NULL),(49,0.00,3,NULL),(50,5.00,3,NULL),(51,4.50,1,NULL),(52,4.50,1,'2017-12-01 00:00:00'),(53,5.00,2,'2017-12-01 00:00:00'),(54,5.00,2,'2017-12-01 10:50:04'),(55,4.00,2,'2017-12-05 07:53:12'),(56,2.50,2,'2017-12-05 10:56:08'),(57,3.00,3,'2017-12-12 08:57:02'),(58,0.00,3,'2017-12-12 08:57:06'),(59,4.00,2,'2017-12-12 08:57:51'),(60,4.00,3,'2017-12-12 08:57:57'),(61,4.00,1,'2017-12-12 08:58:44'),(62,3.50,1,'2017-12-12 08:58:56');
/*!40000 ALTER TABLE `tbl_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_categorias`
--

DROP TABLE IF EXISTS `tbl_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_categorias` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categorias`
--

LOCK TABLES `tbl_categorias` WRITE;
/*!40000 ALTER TABLE `tbl_categorias` DISABLE KEYS */;
INSERT INTO `tbl_categorias` VALUES (1,'salgadas',NULL),(2,'doces',NULL),(3,'leves',NULL),(4,'tetetet',NULL),(5,'eeeeeeeee',NULL);
/*!40000 ALTER TABLE `tbl_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cinema`
--

DROP TABLE IF EXISTS `tbl_cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cinema` (
  `idCinema` int(11) NOT NULL AUTO_INCREMENT,
  `idAno` int(11) DEFAULT NULL,
  `tituloFilme` varchar(45) DEFAULT NULL,
  `linkTralheFilme` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCinema`),
  KEY `fk_cinema_pr_ano_idx` (`idAno`),
  CONSTRAINT `fk_cinema_pr_ano` FOREIGN KEY (`idAno`) REFERENCES `tblano` (`idAno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cinema`
--

LOCK TABLES `tbl_cinema` WRITE;
/*!40000 ALTER TABLE `tbl_cinema` DISABLE KEYS */;
INSERT INTO `tbl_cinema` VALUES (1,2,'teste de Insert','https://www.youtube.com/embed/Q0CbN8sfihY'),(2,2,'teste de funcoes','https://www.youtube.com/embed/cl-IgBOUcEc'),(3,1,'marcel 22222','https://www.youtube.com/embed/hGi9drk_RI4');
/*!40000 ALTER TABLE `tbl_cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_click`
--

DROP TABLE IF EXISTS `tbl_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_click` (
  `idClick` int(11) NOT NULL AUTO_INCREMENT,
  `idProduto` int(11) DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`idClick`),
  KEY `fk_click_produto_idx` (`idProduto`),
  CONSTRAINT `fk_click_produto` FOREIGN KEY (`idProduto`) REFERENCES `tbl_produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_click`
--

LOCK TABLES `tbl_click` WRITE;
/*!40000 ALTER TABLE `tbl_click` DISABLE KEYS */;
INSERT INTO `tbl_click` VALUES (1,1,1,'2017-12-04 11:07:20'),(2,2,1,'2017-12-04 11:07:31');
/*!40000 ALTER TABLE `tbl_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cultura`
--

DROP TABLE IF EXISTS `tbl_cultura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cultura` (
  `idCultura` int(11) NOT NULL AUTO_INCREMENT,
  `idAno` int(11) DEFAULT NULL,
  `tituloCultura` varchar(45) DEFAULT NULL,
  `imagenCultura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCultura`),
  KEY `fk_cultura_pr_ano_idx` (`idAno`),
  CONSTRAINT `fk_cultura_pr_ano` FOREIGN KEY (`idAno`) REFERENCES `tblano` (`idAno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cultura`
--

LOCK TABLES `tbl_cultura` WRITE;
/*!40000 ALTER TABLE `tbl_cultura` DISABLE KEYS */;
INSERT INTO `tbl_cultura` VALUES (1,2,'teste modal ','imagenCuriosidades/1.2.jpg'),(2,2,'Novo teste ','imagenCuriosidades/4.jpg'),(3,2,'teste 1 ','imagenCuriosidades/anterior.png'),(4,1,'gttttt=====  ','imagenCuriosidades/logoFrajola.png'),(5,3,'teste  ','imagenCuriosidades/7.png'),(6,1,'teste marcel','imagenCuriosidades/images.jpg');
/*!40000 ALTER TABLE `tbl_cultura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_curiosidade`
--

DROP TABLE IF EXISTS `tbl_curiosidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_curiosidade` (
  `idCuriosidade` int(11) NOT NULL AUTO_INCREMENT,
  `idAno` int(11) DEFAULT NULL,
  `descricaoAno` varchar(3000) DEFAULT NULL,
  `imagenCuriosidade` varchar(1000) DEFAULT NULL,
  `descricaoImagen` varchar(45) DEFAULT NULL,
  `ativar` tinyint(4) DEFAULT NULL,
  `tituloAno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCuriosidade`),
  KEY `fk_curiosidade_pr_ano_idx` (`idAno`),
  CONSTRAINT `fk_curiosidade_pr_ano` FOREIGN KEY (`idAno`) REFERENCES `tblano` (`idAno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_curiosidade`
--

LOCK TABLES `tbl_curiosidade` WRITE;
/*!40000 ALTER TABLE `tbl_curiosidade` DISABLE KEYS */;
INSERT INTO `tbl_curiosidade` VALUES (2,1,'teste 2','imagensCabecalho/carpe-diem-lounge-3-g4-group.jpg','teste 2',1,'74444'),(3,2,'teste','imagensCabecalho/logoFrajola.png','teste',1,'TESTE');
/*!40000 ALTER TABLE `tbl_curiosidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_historia`
--

DROP TABLE IF EXISTS `tbl_historia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_historia` (
  `idHistoria` int(11) NOT NULL AUTO_INCREMENT,
  `titulo1` varchar(100) DEFAULT NULL,
  `titulo2` varchar(100) DEFAULT NULL,
  `paragrafoTitulo1` varchar(2000) DEFAULT NULL,
  `paragrafoTitulo2` varchar(2000) DEFAULT NULL,
  `paragrafoTitulo3` varchar(2000) DEFAULT NULL,
  `paragrafoTitulo4` varchar(2000) DEFAULT NULL,
  `ativarHistoria` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idHistoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_historia`
--

LOCK TABLES `tbl_historia` WRITE;
/*!40000 ALTER TABLE `tbl_historia` DISABLE KEYS */;
INSERT INTO `tbl_historia` VALUES (3,'A tradiÃ§Ã£o da pizzaria Frajola','Um pouco da historia Frajola','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci. Aenean nec lorem. In porttitor. Donec laoreet nonummy augue. Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy. Fusce aliquet pede non pede. Suspendisse dapibus lorem pellentesque magna. Integer nulla. Donec blandit feugiat ligula. Donec hendrerit, felis et imperdiet euismod, purus ipsum pretium metus, in lacinia nulla nisl eget sapien. Donec ut est in lectus consequat consequat. Etiam eget dui. Aliquam erat volutpat. Sed at lorem in nunc porta tristique. Proin nec augue. Quisque aliquam tempor magna. Pellen','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci. Aenean nec lorem. In porttitor. Donec laoreet nonummy augue. Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy. Fusce aliquet pede non pede. Suspendisse dapibus lorem pellentesque magna. Integer nulla. Donec blandit feugiat ligula. Donec hendrerit, felis et imperdiet euismod, purus ipsum pretium metus, in lacinia nulla nisl eget sapien. Donec ut est in lectus consequat consequat. Etiam eget dui. Aliquam erat volutpat. Sed at lorem in nunc porta tristique. Proin nec augue. Quisque aliquam tempor magna. Pellen','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci. Aenean nec lorem. In porttitor. Donec laoreet nonummy augue. Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy. Fusce aliquet pede non pede. Suspendisse dapibus lorem pellentesque magna. Integer nulla. Donec blandit feugiat ligula. Donec hendrerit, felis et imperdiet euismod, purus ipsum pretium metus, in lacinia nulla nisl eget sapien. Donec ut est in lectus consequat consequat. Etiam eget dui. Aliquam erat volutpat. Sed at lorem in nunc porta tristique. Proin nec augue. Quisque aliquam tempor magna. Pellen','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci. Aenean nec lorem. In porttitor. Donec laoreet nonummy augue. Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy. Fusce aliquet pede non pede. Suspendisse dapibus lorem pellentesque magna. Integer nulla. Donec blandit feugiat ligula. Donec hendrerit, felis et imperdiet euismod, purus ipsum pretium metus, in lacinia nulla nisl eget sapien. Donec ut est in lectus consequat consequat. Etiam eget dui. Aliquam erat volutpat. Sed at lorem in nunc porta tristique. Proin nec augue. Quisque aliquam tempor magna. Pellen',0),(4,'Minha historia','Alguma coisa','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.','Pellentesque habitant Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.',1);
/*!40000 ALTER TABLE `tbl_historia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_imagem`
--

DROP TABLE IF EXISTS `tbl_imagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_imagem` (
  `idImagem` int(11) NOT NULL AUTO_INCREMENT,
  `ativaImagen` varchar(45) DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idImagem`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_imagem`
--

LOCK TABLES `tbl_imagem` WRITE;
/*!40000 ALTER TABLE `tbl_imagem` DISABLE KEYS */;
INSERT INTO `tbl_imagem` VALUES (2,'1','imagensSlider/2.jpg','teste'),(3,'1','imagensSlider/a-paper-clip-icon-94914.png','teste 3'),(4,'1','imagensSlider/4.jpg','fdfsdfds');
/*!40000 ALTER TABLE `tbl_imagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ingredientes`
--

DROP TABLE IF EXISTS `tbl_ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ingredientes` (
  `idIngredientes` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idIngredientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ingredientes`
--

LOCK TABLES `tbl_ingredientes` WRITE;
/*!40000 ALTER TABLE `tbl_ingredientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_musica`
--

DROP TABLE IF EXISTS `tbl_musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_musica` (
  `idMusica` int(11) NOT NULL AUTO_INCREMENT,
  `idAno` int(11) DEFAULT NULL,
  `tituloMusica` varchar(100) DEFAULT NULL,
  `linkVideoClip` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idMusica`),
  KEY `fk_musica_pr_ano_idx` (`idAno`),
  CONSTRAINT `fk_musica_pr_ano` FOREIGN KEY (`idAno`) REFERENCES `tblano` (`idAno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_musica`
--

LOCK TABLES `tbl_musica` WRITE;
/*!40000 ALTER TABLE `tbl_musica` DISABLE KEYS */;
INSERT INTO `tbl_musica` VALUES (1,2,'Musica teste','https://www.youtube.com/embed/Zi_XLOBDo_Y'),(2,2,'5555555555555;echo $sql','https://www.youtube.com/embed/sOnqjkJTMaA');
/*!40000 ALTER TABLE `tbl_musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nivel`
--

DROP TABLE IF EXISTS `tbl_nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_nivel` (
  `idNivel` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idNivel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nivel`
--

LOCK TABLES `tbl_nivel` WRITE;
/*!40000 ALTER TABLE `tbl_nivel` DISABLE KEYS */;
INSERT INTO `tbl_nivel` VALUES (1,'administrador de produto','cadastra,edita e exclui produtos'),(2,'administrador de usuario','cadastra,edita e exclui usuario'),(3,'administrador de curiosidades','cadastra,edita e exclui curiosidade'),(5,'meu nivel123','meu nivel 2');
/*!40000 ALTER TABLE `tbl_nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_politica`
--

DROP TABLE IF EXISTS `tbl_politica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_politica` (
  `idPolitica` int(11) NOT NULL AUTO_INCREMENT,
  `idAno` int(11) DEFAULT NULL,
  `tituloPolitica` varchar(45) DEFAULT NULL,
  `imagenPolitica` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPolitica`),
  KEY `fk_politica_pr_ano_idx` (`idAno`),
  CONSTRAINT `fk_politica_pr_ano` FOREIGN KEY (`idAno`) REFERENCES `tblano` (`idAno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_politica`
--

LOCK TABLES `tbl_politica` WRITE;
/*!40000 ALTER TABLE `tbl_politica` DISABLE KEYS */;
INSERT INTO `tbl_politica` VALUES (2,2,'teste de edicao sem imagen','imagenPolitica/logoFrajola.png'),(3,1,'meu teste','imagenPolitica/images.png');
/*!40000 ALTER TABLE `tbl_politica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produto`
--

DROP TABLE IF EXISTS `tbl_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_produto` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `descricaoProduto` varchar(1000) DEFAULT NULL,
  `preco` float(10,2) DEFAULT NULL,
  `nomeProduto` varchar(45) DEFAULT NULL,
  `imagen1` varchar(45) DEFAULT NULL,
  `imagen2` varchar(45) DEFAULT NULL,
  `imagen3` varchar(45) DEFAULT NULL,
  `imagen4` varchar(45) DEFAULT NULL,
  `produtoEmPromocao` tinyint(1) DEFAULT NULL,
  `percentualDesconto` int(11) DEFAULT NULL,
  `idingredientes` int(11) DEFAULT NULL,
  `pizzaDoMes` tinyint(1) DEFAULT NULL,
  `ativarProduto` tinyint(4) DEFAULT NULL,
  `idSubCategoria` int(11) DEFAULT NULL,
  `idAvaliacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `fk_produto_pr_ingredientes_idx` (`idingredientes`),
  KEY `fk_produto_subCategoria_idx` (`idSubCategoria`),
  KEY `fk_produto_avalicao_idx` (`idAvaliacao`),
  CONSTRAINT `fk_produto_avalicao` FOREIGN KEY (`idAvaliacao`) REFERENCES `tbl_avaliacao` (`idAvaliacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_pr_ingredientes` FOREIGN KEY (`idingredientes`) REFERENCES `tbl_ingredientes` (`idIngredientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_subCategoria` FOREIGN KEY (`idSubCategoria`) REFERENCES `tbl_subcategoria` (`idSubCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto`
--

LOCK TABLES `tbl_produto` WRITE;
/*!40000 ALTER TABLE `tbl_produto` DISABLE KEYS */;
INSERT INTO `tbl_produto` VALUES (1,'Carne seca desfiada, mussarela, catupiry, cebola, tomate e azeitonas.',43.50,'Carne seca','imagensProdutos/imagen1.jpg','imagensProdutos/imagen2.png','imagensProdutos/imagen3.jpg','imagensProdutos/imagen4.jpg',1,35,NULL,0,1,5,NULL),(2,' Mussarela, peperoni, cebola, tomate, manjericao e azeitonas.',40.00,'Peperoni','imagensProdutos/imagen5.jpg','imagensProdutos/imagen6.jpg','imagensProdutos/imagen7.png','imagensProdutos/imagen8.jpg',0,30,NULL,0,1,6,NULL),(3,'Mussarela, champignon, palmito, peperoni, tomate e azeitonas.',45.90,'Tarantela','imagensProdutos/imagen10.jpg','imagensProdutos/imagen11.jpg','imagensProdutos/imagen12.jpg','imagensProdutos/imagen13.jpg',1,39,NULL,1,1,5,NULL);
/*!40000 ALTER TABLE `tbl_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promocao`
--

DROP TABLE IF EXISTS `tbl_promocao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promocao` (
  `idPromocao` int(11) NOT NULL AUTO_INCREMENT,
  `tituloPromocao` varchar(45) DEFAULT NULL,
  `imagenPromocao` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativarPromocao` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idPromocao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocao`
--

LOCK TABLES `tbl_promocao` WRITE;
/*!40000 ALTER TABLE `tbl_promocao` DISABLE KEYS */;
INSERT INTO `tbl_promocao` VALUES (1,'teset','','dgdgd',NULL),(2,'55555555','','dgdgd',NULL),(3,'teset54545','','dgdgd',NULL);
/*!40000 ALTER TABLE `tbl_promocao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subcategoria`
--

DROP TABLE IF EXISTS `tbl_subcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_subcategoria` (
  `idSubCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `subCategoria` varchar(45) DEFAULT NULL,
  `descricaoSubCategoria` varchar(45) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSubCategoria`),
  KEY `fk_subCategoria_categoria_idx` (`idCategoria`),
  CONSTRAINT `fk_subCategoria_categoria` FOREIGN KEY (`idCategoria`) REFERENCES `tbl_categorias` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subcategoria`
--

LOCK TABLES `tbl_subcategoria` WRITE;
/*!40000 ALTER TABLE `tbl_subcategoria` DISABLE KEYS */;
INSERT INTO `tbl_subcategoria` VALUES (5,'brotinho','tttt',1),(6,'grande','ggggg',3),(7,'tamanho familia','ggggg',1),(8,'brotinho','erre',2),(9,'rr',NULL,4),(10,'yyy',NULL,4),(11,'tty',NULL,4),(12,'ytyy',NULL,4),(13,'ytyt',NULL,4),(14,'yt',NULL,4),(15,'dy',NULL,4),(16,'7777',NULL,5),(17,'777777',NULL,5),(18,'77777777777',NULL,5),(19,'77777777777',NULL,5);
/*!40000 ALTER TABLE `tbl_subcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_televisao`
--

DROP TABLE IF EXISTS `tbl_televisao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_televisao` (
  `idTelevisao` int(11) NOT NULL AUTO_INCREMENT,
  `idAno` int(11) DEFAULT NULL,
  `tituloPrograma` varchar(90) DEFAULT NULL,
  `imagenPrograma` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`idTelevisao`),
  KEY `fk_televisao_pr_ano_idx` (`idAno`),
  CONSTRAINT `fk_televisao_pr_ano` FOREIGN KEY (`idAno`) REFERENCES `tblano` (`idAno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_televisao`
--

LOCK TABLES `tbl_televisao` WRITE;
/*!40000 ALTER TABLE `tbl_televisao` DISABLE KEYS */;
INSERT INTO `tbl_televisao` VALUES (2,2,'Ultimo Teste','imagensTelevisao/4.jpg'),(3,3,'teste de imagen','imagensTelevisao/exit.png'),(4,2,'teste sem imagen','imagensTelevisao/worker-512.png'),(5,1,'marcel 222222','imagensTelevisao/hqdefault.jpg');
/*!40000 ALTER TABLE `tbl_televisao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblano`
--

DROP TABLE IF EXISTS `tblano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblano` (
  `idAno` int(11) NOT NULL AUTO_INCREMENT,
  `ano` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblano`
--

LOCK TABLES `tblano` WRITE;
/*!40000 ALTER TABLE `tblano` DISABLE KEYS */;
INSERT INTO `tblano` VALUES (1,'1980'),(2,'1970'),(3,'1960');
/*!40000 ALTER TABLE `tblano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcadastro_usuario`
--

DROP TABLE IF EXISTS `tblcadastro_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcadastro_usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nomeuser` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `dtNasc` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `idestado` int(11) DEFAULT NULL,
  `idendereco` int(11) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `idestadocivil` int(11) DEFAULT NULL,
  `idNivel` int(11) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fkestado` (`idestado`),
  KEY `fkendereco` (`idendereco`),
  KEY `idestadocivil` (`idestadocivil`),
  KEY `fk_nivel_idx` (`idNivel`),
  CONSTRAINT `fk_nivel` FOREIGN KEY (`idNivel`) REFERENCES `tbl_nivel` (`idNivel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkendereco` FOREIGN KEY (`idendereco`) REFERENCES `tblendereco` (`idendereco`),
  CONSTRAINT `fkestado` FOREIGN KEY (`idestado`) REFERENCES `tblestado` (`idestado`),
  CONSTRAINT `tblcadastro_usuario_ibfk_1` FOREIGN KEY (`idestadocivil`) REFERENCES `tblestado_civil` (`idestadocivil`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcadastro_usuario`
--

LOCK TABLES `tblcadastro_usuario` WRITE;
/*!40000 ALTER TABLE `tblcadastro_usuario` DISABLE KEYS */;
INSERT INTO `tblcadastro_usuario` VALUES (3,'willianafas','7646574','45454cxvc5','15/05/2000','1sfsfs','6363636sddd','dfgant@oul.com',36,28,'F','imagensUser/instagram.png','willi','123',5,1),(4,'antonio','586767','950604833','11/09/2000','03356435310','54322345','tgertyestr@gmail.com',30,29,'F','imagensUser/3.png','antonio','123456',5,1),(5,'marcelnt666','1234567898','97845454','10/10/2000','1234567','123456789','marcel@gmail.com',29,30,'F','imagensUser/hqdefault.jpg','marcelnt','123456',5,1),(6,'caique','11111111111','111111111111111111','04/06/1998','546546','8646846','asd@sda',32,31,'M','imagensUser/eat-pizza-rock.jpg','caique','123',5,1);
/*!40000 ALTER TABLE `tblcadastro_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcomentario`
--

DROP TABLE IF EXISTS `tblcomentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcomentario` (
  `idcomentario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(1000) DEFAULT NULL,
  `telefone` varchar(1000) DEFAULT NULL,
  `celular` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `profissao` varchar(1000) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `linkFace` varchar(1000) DEFAULT NULL,
  `homePage` varchar(1000) DEFAULT NULL,
  `sugestao` varchar(1000) DEFAULT NULL,
  `informacaoProduto` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idcomentario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcomentario`
--

LOCK TABLES `tblcomentario` WRITE;
/*!40000 ALTER TABLE `tblcomentario` DISABLE KEYS */;
INSERT INTO `tblcomentario` VALUES (2,'Antonio','45454545','454545','antwillian2014@gmail.com','progamador','M','https://www.youtube.com/watch?v=2ohmiztZs_k','https://www.youtube.com/watch?v=2ohmiztZs_k','hgdfgedafbadvbadvds','bvbvbvbv'),(3,'antonio','9888877856','2432435','antonio@uol.com','marteleiro','M','http://www.burgerking.com.br/?gclid=CKyDwbTIrtYCFVcFkQodmxQBdg','http://www.burgerking.com.br/?gclid=CKyDwbTIrtYCFVcFkQodmxQBdg','rye367e5','8u');
/*!40000 ALTER TABLE `tblcomentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblendereco`
--

DROP TABLE IF EXISTS `tblendereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblendereco` (
  `idendereco` int(11) NOT NULL AUTO_INCREMENT,
  `rua` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idendereco`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblendereco`
--

LOCK TABLES `tblendereco` WRITE;
/*!40000 ALTER TABLE `tblendereco` DISABLE KEYS */;
INSERT INTO `tblendereco` VALUES (25,'ttttttt','rtrtrtrtr','564565'),(26,'ttttttt','rtrtrtrtr','564565'),(27,'ttttttt','rtrtrtrtr','564565'),(28,'ttttttt','rtrtrtrtr','564565'),(29,'senai','jandira','36536'),(30,'Rua do Inferno, 666','teste','12345-678'),(31,'.asdsad','asd','0651513');
/*!40000 ALTER TABLE `tblendereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestado`
--

DROP TABLE IF EXISTS `tblestado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestado` (
  `idestado` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestado`
--

LOCK TABLES `tblestado` WRITE;
/*!40000 ALTER TABLE `tblestado` DISABLE KEYS */;
INSERT INTO `tblestado` VALUES (29,'AC','Acre'),(30,'AL','Alagoas'),(31,'AP','Amapá'),(32,'AM','Amazonas'),(33,'BA','Bahia'),(34,'CE','Ceará'),(35,'DF','Distrito Federal'),(36,'ES','Espírito Santo'),(37,'GO','Goiás'),(38,'MA','Maranhão'),(39,'MT','Mato Grosso'),(40,'MS','Mato Grosso do Sul'),(41,'MG','Minas Gerais'),(42,'PA','Pará'),(43,'PB','Paraíba'),(44,'PR','Paraná'),(45,'PE','Pernambuco'),(46,'PI','Piauí'),(47,'RJ','Rio de Janeiro'),(48,'RN','Rio Grande do Norte'),(49,'RS','Rio Grande do Sul'),(50,'RO','Rondônia'),(51,'RR','Roraima'),(52,'SC','Santa Catarina'),(53,'SP','São Paulo'),(54,'SE','Sergipe'),(55,'TO','Tocantins');
/*!40000 ALTER TABLE `tblestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestado_civil`
--

DROP TABLE IF EXISTS `tblestado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestado_civil` (
  `idestadocivil` int(11) NOT NULL AUTO_INCREMENT,
  `estadoCivil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idestadocivil`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestado_civil`
--

LOCK TABLES `tblestado_civil` WRITE;
/*!40000 ALTER TABLE `tblestado_civil` DISABLE KEYS */;
INSERT INTO `tblestado_civil` VALUES (5,'solteiro(a)'),(6,'casado(a)'),(7,'divorciado(a)'),(8,'viuvo(a)');
/*!40000 ALTER TABLE `tblestado_civil` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-12  9:26:33

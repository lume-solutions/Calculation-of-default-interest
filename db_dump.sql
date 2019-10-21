-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: zap_IZO
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

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
-- Table structure for table `sklep_placilo`
--

DROP TABLE IF EXISTS `sklep_placilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sklep_placilo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` date DEFAULT NULL,
  `znesek` decimal(10,2) DEFAULT NULL,
  `stevilkaRacuna` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dogovor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `stornacija` tinyint(4) NOT NULL DEFAULT '0',
  `virPlacila` tinyint(4) NOT NULL,
  `osnovaObracun` tinyint(2) NOT NULL DEFAULT '1',
  `sklep_id` int(11) NOT NULL,
  `strosek_id` int(11) NOT NULL DEFAULT '0',
  `dolznik_id` int(11) DEFAULT NULL,
  `refBanke` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `novoPlacilo` tinyint(4) NOT NULL,
  `datumKnjizenja` date NOT NULL,
  `prenosPlacila` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102293 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sklep_placilo`
--

LOCK TABLES `sklep_placilo` WRITE;
/*!40000 ALTER TABLE `sklep_placilo` DISABLE KEYS */;
INSERT INTO `sklep_placilo` VALUES (102289,'2011-09-07',46.00,'',673,128,0,2,1,12823,207332,2338997,'',1,'2017-05-10','0000-00-00 00:00:00'),(102290,'2011-09-07',1528.87,'',673,128,0,2,1,12823,207331,2338997,'',1,'2017-05-10','0000-00-00 00:00:00'),(102291,'2011-09-07',1.85,'',673,128,0,2,1,12823,207333,2338997,'',1,'2017-05-10','0000-00-00 00:00:00'),(102292,'2011-09-07',6363.28,'',673,128,0,2,1,12823,207330,2338997,'',1,'2017-05-10','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sklep_placilo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sklep_strosek`
--

DROP TABLE IF EXISTS `sklep_strosek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sklep_strosek` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datum_stroska` date NOT NULL,
  `datum_zapadlosti` date NOT NULL,
  `znesek` decimal(10,2) NOT NULL,
  `tip_stroska` tinyint(2) NOT NULL,
  `opomba` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `poplacan` tinyint(4) NOT NULL DEFAULT '0',
  `sklep_id` int(10) NOT NULL,
  `dolznik_id` int(11) NOT NULL,
  `obrestiOdStroskaID` int(11) NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `datum_vnosa` date NOT NULL,
  `oseba_vnos` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `provizija_obracun` double(10,2) DEFAULT '0.00',
  `obresti_zamikDni` int(11) NOT NULL,
  `noveObresti` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210297 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sklep_strosek`
--

LOCK TABLES `sklep_strosek` WRITE;
/*!40000 ALTER TABLE `sklep_strosek` DISABLE KEYS */;
INSERT INTO `sklep_strosek` VALUES (207330,'2010-08-16','2010-08-16',15942.76,1,'',0,12823,2338997,0,'','2017-04-13','jurem',0.00,0,0),(207331,'2017-04-13','2011-09-07',1528.87,2,'',1,12823,2338997,207330,'','2017-04-13','jurem',0.00,0,1),(207332,'2011-03-17','2011-03-30',46.00,4,'',1,12823,2338997,0,'PREJET','2017-04-13','jurem',0.00,0,0),(207333,'2017-04-13','2011-09-07',1.85,2,'',1,12823,2338997,207332,'','2017-04-13','jurem',0.00,0,1),(207334,'2015-01-09','2015-01-09',123.96,3,'',0,12823,2338997,0,'PREJET','2017-04-13','jurem',0.00,30,0),(207335,'2017-04-13','2015-01-09',22.38,2,'',0,12823,2338997,207334,'','2017-04-13','jurem',0.00,30,1),(207337,'2013-02-07','2013-02-07',51.00,8,'I 381/2013 v zvezi s P 118/2011',0,12823,2338997,0,'PREJET','2017-04-13','jurem',0.00,0,0),(207338,'2017-04-13','2013-02-07',17.76,2,'',0,12823,2338997,207337,'','2017-04-13','jurem',0.00,0,1),(207339,'2013-02-07','2013-02-07',591.44,8,'I 381/2013 v zvezi s P 118/2011',0,12823,2338997,0,'PREJET','2017-04-13','jurem',0.00,0,0),(207340,'2017-04-13','2013-02-07',205.99,2,'',0,12823,2338997,207339,'','2017-04-13','jurem',0.00,0,1),(210295,'2017-04-13','2010-08-16',4565.03,2,'',0,12823,2338997,207330,'','2017-04-13','jurem',0.00,0,1),(210296,'2017-04-13','2011-03-30',0.00,2,'',0,12823,2338997,207332,'','2017-04-13','jurem',0.00,0,1);
/*!40000 ALTER TABLE `sklep_strosek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_stroska`
--

DROP TABLE IF EXISTS `tip_stroska`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip_stroska` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tip` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `vrstaKnjizenja` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_stroska`
--

LOCK TABLES `tip_stroska` WRITE;
/*!40000 ALTER TABLE `tip_stroska` DISABLE KEYS */;
INSERT INTO `tip_stroska` VALUES (1,'glavnica',6),(2,'zamudne obresti',5),(3,'strosek izvrsitelja',4),(4,'osnovni priznani stroski izvrsbe',1),(5,'sodna taksa',0),(6,'pravdni stroski',3),(8,'ostali stroski postopka izvrsbe',2),(9,'odvetniski strosek',7);
/*!40000 ALTER TABLE `tip_stroska` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-10 17:09:43

-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: transaction
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `bank_transfer`
--

DROP TABLE IF EXISTS `bank_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_transfer` (
  `Transaction_ID` int NOT NULL,
  `Bank_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  CONSTRAINT `fk_Transaction_ID_bank_transfer` FOREIGN KEY (`Transaction_ID`) REFERENCES `transaction` (`Transaction_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_transfer`
--

LOCK TABLES `bank_transfer` WRITE;
/*!40000 ALTER TABLE `bank_transfer` DISABLE KEYS */;
INSERT INTO `bank_transfer` VALUES (1,'Mandiri'),(3,'BNI'),(13,'Permata'),(17,'BNI'),(18,'BRI'),(19,'Permata'),(23,'Permata'),(27,'BNI'),(34,'BRI'),(37,'BNI'),(38,'Permata'),(41,'BRI'),(44,'BNI'),(49,'Mandiri'),(50,'Mandiri'),(53,'BNI'),(56,'Maybank'),(58,'BNI'),(59,'BRI'),(62,'BNI'),(63,'Mandiri'),(64,'BNI'),(65,'Permata'),(69,'Permata'),(73,'BNI'),(74,'BNI'),(79,'Permata'),(85,'Mandiri'),(86,'BNI'),(93,'BRI'),(94,'BNI'),(96,'Mandiri'),(104,'Maybank'),(108,'BNI'),(110,'BNI'),(115,'Mandiri'),(117,'Maybank'),(118,'BNI'),(120,'BRI'),(123,'Mandiri'),(127,'BNI'),(137,'Permata'),(143,'BRI'),(150,'BNI');
/*!40000 ALTER TABLE `bank_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card` (
  `Transaction_ID` int NOT NULL,
  `Card_Number` varchar(16) NOT NULL,
  `Card_Number_exp_date` date NOT NULL,
  `CCV_Code` int NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  CONSTRAINT `fk_Transaction_ID_credit_card` FOREIGN KEY (`Transaction_ID`) REFERENCES `transaction` (`Transaction_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
INSERT INTO `credit_card` VALUES (2,'5147876297778207','2024-12-01',716),(4,'5175029288920108','2026-11-01',538),(6,'5232465157690375','2025-01-01',190),(8,'5309755526425893','2027-05-01',373),(11,'5426047451268227','2026-06-01',470),(15,'5266123725275091','2027-08-01',941),(20,'5548649323316911','2024-02-01',624),(21,'5100975564651744','2025-06-01',473),(26,'5116958787193605','2025-08-01',137),(31,'5342356273143604','2026-02-01',615),(33,'5387158980304495','2026-05-01',738),(39,'5476157763731173','2026-07-01',903),(43,'5373110337200583','2027-02-01',338),(47,'5423886807628599','2026-12-01',921),(51,'5463920657708978','2024-02-01',158),(60,'5465159029087948','2027-08-01',696),(67,'5264824705314899','2024-09-01',348),(68,'5382242027799589','2026-01-01',344),(72,'5586220098177889','2026-06-01',958),(77,'5593255030486619','2026-12-01',870),(80,'5262337296782285','2024-11-01',147),(84,'5243071353748608','2024-07-01',593),(88,'5449251828228038','2027-05-01',155),(91,'5380347960770257','2026-04-01',855),(95,'5228604126974058','2026-08-01',892),(99,'5552146066610876','2026-01-01',544),(100,'5322855441796536','2024-04-01',206),(105,'5151912742254214','2024-06-01',901),(109,'5409570452737461','2025-10-01',639),(112,'5125976637052044','2025-06-01',777),(122,'5487964590067771','2026-04-01',250),(128,'5125919153733886','2025-07-01',836),(132,'5217396666997432','2027-01-01',521),(138,'5236714555198572','2027-10-01',184),(144,'5538893080988254','2024-10-01',354),(147,'5310443921130304','2027-07-01',705),(148,'5561748303710473','2027-02-01',833);
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_wallet`
--

DROP TABLE IF EXISTS `e_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_wallet` (
  `Transaction_ID` int NOT NULL,
  `E_Wallet_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  CONSTRAINT `fk_Transaction_ID_e_wallet` FOREIGN KEY (`Transaction_ID`) REFERENCES `transaction` (`Transaction_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_wallet`
--

LOCK TABLES `e_wallet` WRITE;
/*!40000 ALTER TABLE `e_wallet` DISABLE KEYS */;
INSERT INTO `e_wallet` VALUES (10,'GoPay'),(14,'GoPay'),(24,'GoPay'),(30,'ShopeePay'),(40,'GoPay'),(45,'GoPay'),(54,'GoPay'),(57,'GoPay'),(61,'GoPay'),(66,'GoPay'),(75,'ShopeePay'),(78,'ShopeePay'),(81,'ShopeePay'),(83,'ShopeePay'),(87,'GoPay'),(89,'GoPay'),(92,'ShopeePay'),(97,'GoPay'),(101,'ShopeePay'),(103,'ShopeePay'),(106,'ShopeePay'),(113,'ShopeePay'),(114,'ShopeePay'),(116,'GoPay'),(119,'GoPay'),(121,'ShopeePay'),(124,'ShopeePay'),(126,'ShopeePay'),(129,'GoPay'),(131,'ShopeePay'),(134,'ShopeePay'),(140,'GoPay'),(141,'GoPay'),(145,'GoPay');
/*!40000 ALTER TABLE `e_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installment`
--

DROP TABLE IF EXISTS `installment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `installment` (
  `Transaction_ID` int NOT NULL,
  `Installment_Name` varchar(30) NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  CONSTRAINT `fk_Transaction_ID_installment` FOREIGN KEY (`Transaction_ID`) REFERENCES `transaction` (`Transaction_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installment`
--

LOCK TABLES `installment` WRITE;
/*!40000 ALTER TABLE `installment` DISABLE KEYS */;
INSERT INTO `installment` VALUES (12,'Akulaku'),(22,'Akulaku'),(28,'Akulaku'),(29,'Akulaku'),(35,'Akulaku'),(46,'Akulaku'),(71,'Akulaku'),(102,'Akulaku'),(111,'Akulaku'),(125,'Akulaku'),(133,'Akulaku'),(135,'Akulaku'),(136,'Akulaku'),(142,'Akulaku'),(146,'Akulaku');
/*!40000 ALTER TABLE `installment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kiosk`
--

DROP TABLE IF EXISTS `kiosk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kiosk` (
  `Transaction_ID` int NOT NULL,
  `Kiosk_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  CONSTRAINT `fk_Transaction_ID_kiosk` FOREIGN KEY (`Transaction_ID`) REFERENCES `transaction` (`Transaction_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kiosk`
--

LOCK TABLES `kiosk` WRITE;
/*!40000 ALTER TABLE `kiosk` DISABLE KEYS */;
INSERT INTO `kiosk` VALUES (5,'Alfamart'),(7,'Alfamart'),(9,'Alfamart'),(16,'Indomaret'),(25,'Indomaret'),(32,'Indomaret'),(36,'Indomaret'),(42,'Indomaret'),(48,'Indomaret'),(52,'Alfamart'),(55,'Alfamart'),(70,'Indomaret'),(76,'Indomaret'),(82,'Indomaret'),(90,'Indomaret'),(98,'Indomaret'),(107,'Alfamart'),(130,'Indomaret'),(139,'Alfamart'),(149,'Indomaret');
/*!40000 ALTER TABLE `kiosk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `Transaction_ID` int NOT NULL AUTO_INCREMENT,
  `Transaction_Method` varchar(45) NOT NULL,
  `Transaction_Date` date NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Plan` varchar(30) NOT NULL,
  PRIMARY KEY (`Transaction_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'Bank_Transfer','2022-07-01','folorenshaw0','SMA Super 1 Tahun Ajaran'),(2,'Credit_Card','2022-07-01','kgomery1','SMA Super Plus 1 Tahun Ajaran'),(3,'Bank_Transfer','2022-07-01','cclassen2','SMP Super Plus 1 Tahun Ajaran'),(4,'Credit_Card','2022-07-02','rbollon3','SMA Super 1 Tahun Ajaran'),(5,'Kiosk','2022-07-03','horkney4','SMP Super Plus 1 Tahun Ajaran'),(6,'Credit_Card','2022-07-03','esaunderson5','SMP Super 2 Tahun Ajaran'),(7,'Kiosk','2022-07-05','caffleck6','SMA Super Plus 1 Tahun Ajaran'),(8,'Credit_Card','2022-07-05','lmasterson7','SMP Super 1 Tahun Ajaran'),(9,'Kiosk','2022-07-06','asirmon8','SMA Reguler 1 Tahun Ajaran'),(10,'E_Wallet','2022-07-07','akirrens9','SMA Reguler 1 Tahun Ajaran'),(11,'Credit_Card','2022-07-07','bmclleesea','SMP Super Plus 1 Tahun Ajaran'),(12,'Installment','2022-07-07','ahousiauxb','SMA Super Plus 1 Tahun Ajaran'),(13,'Bank_Transfer','2022-07-07','gleelc','SMA Super 1 Tahun Ajaran'),(14,'E_Wallet','2022-07-07','mcorthesd','SMP Super 1 Tahun Ajaran'),(15,'Credit_Card','2022-07-10','ldeortegae','SMP Super 2 Tahun Ajaran'),(16,'Kiosk','2022-07-10','gcatanheiraf','SMP Super 1 Tahun Ajaran'),(17,'Bank_Transfer','2022-07-12','nbodessong','SMP Super 1 Tahun Ajaran'),(18,'Bank_Transfer','2022-07-13','bhellikesh','SMA Super Plus 1 Tahun Ajaran'),(19,'Bank_Transfer','2022-07-13','spenfoldi','Tryout UTBK s.d. Mei 2023'),(20,'Credit_Card','2022-07-13','rjedrzejewskij','SMP Super 1 Tahun Ajaran'),(21,'Credit_Card','2022-07-14','spaliak','SMA Super 1 Tahun Ajaran'),(22,'Installment','2022-07-14','lreamsl','SMP Super Plus 1 Tahun Ajaran'),(23,'Bank_Transfer','2022-07-17','jdimblebeem','SMP Super 1 Tahun Ajaran'),(24,'E_Wallet','2022-07-21','cdeansn','SMP Super 1 Tahun Ajaran'),(25,'Kiosk','2022-07-23','pcraneo','SMP Super Plus 1 Tahun Ajaran'),(26,'Credit_Card','2022-07-24','daspinalp','SMP Super 1 Tahun Ajaran'),(27,'Bank_Transfer','2022-07-24','eworldq','SMP Super 1 Tahun Ajaran'),(28,'Installment','2022-07-25','avinecomber','SMA Reguler 1 Tahun Ajaran'),(29,'Installment','2022-07-25','wbastins','SMP Super 1 Tahun Ajaran'),(30,'E_Wallet','2022-07-25','pcuddehayt','SMP Super 1 Tahun Ajaran'),(31,'Credit_Card','2022-07-26','dswappu','SMP Super 1 Tahun Ajaran'),(32,'Kiosk','2022-07-26','cjillardv','SMP Super 1 Tahun Ajaran'),(33,'Credit_Card','2022-07-27','hjeynessw','Tryout UTBK 1 Semester'),(34,'Bank_Transfer','2022-07-27','pdanielyx','SMP Super Plus 1 Tahun Ajaran'),(35,'Installment','2022-07-28','jjoliffey','SMP Super 1 Tahun Ajaran'),(36,'Kiosk','2022-07-29','maupolz','SMA Super Plus 1 Tahun Ajaran'),(37,'Bank_Transfer','2022-07-29','ifarebrother10','SMA Super 2 Tahun Ajaran'),(38,'Bank_Transfer','2022-07-30','wcleife11','SMA Reguler 1 Tahun Ajaran'),(39,'Credit_Card','2022-07-30','mlongstreeth12','Tryout UTBK Plus 1 Semester'),(40,'E_Wallet','2022-07-31','efitzsymon13','SMP Super Plus 1 Tahun Ajaran'),(41,'Bank_Transfer','2022-08-01','gdrinkel14','Tryout UTBK 1 Semester'),(42,'Kiosk','2022-08-02','knewcom15','SMA Reguler 1 Tahun Ajaran'),(43,'Credit_Card','2022-08-03','lbeevors16','Tryout UTBK 1 Semester'),(44,'Bank_Transfer','2022-08-03','laucock17','Tryout UTBK s.d. Mei 2023'),(45,'E_Wallet','2022-08-04','cvanderlinde18','SMP Super 1 Tahun Ajaran'),(46,'Installment','2022-08-04','jgullivan19','SMP Super Plus 1 Tahun Ajaran'),(47,'Credit_Card','2022-08-05','jrahl1a','SMA Super Plus 1 Tahun Ajaran'),(48,'Kiosk','2022-08-06','aelbourne1b','Tryout UTBK s.d. Mei 2023'),(49,'Bank_Transfer','2022-08-07','ebotterman1c','SMA Super 2 Tahun Ajaran'),(50,'Bank_Transfer','2022-08-09','roene1d','SMA Super 1 Tahun Ajaran'),(51,'Credit_Card','2022-08-09','rheakey1e','Tryout UTBK 1 Semester'),(52,'Kiosk','2022-08-09','rshann1f','SMA Super 1 Tahun Ajaran'),(53,'Bank_Transfer','2022-08-15','taprahamian1g','SMA Reguler 1 Tahun Ajaran'),(54,'E_Wallet','2022-08-15','kmaysor1h','SMA Reguler 1 Tahun Ajaran'),(55,'Kiosk','2022-08-17','bsansun1i','SMA Super Plus 1 Tahun Ajaran'),(56,'Bank_Transfer','2022-08-17','rfincher1j','Tryout UTBK 1 Semester'),(57,'E_Wallet','2022-08-18','cbathowe1k','SMP Super Plus 1 Tahun Ajaran'),(58,'Bank_Transfer','2022-08-19','jgresly1l','SMP Super 1 Tahun Ajaran'),(59,'Bank_Transfer','2022-08-19','tlewnden1m','SMA Super 1 Tahun Ajaran'),(60,'Credit_Card','2022-08-20','jcalterone1n','SMA Reguler 1 Tahun Ajaran'),(61,'E_Wallet','2022-08-23','agurry1o','SMA Super 1 Tahun Ajaran'),(62,'Bank_Transfer','2022-08-24','lmccloughlin1p','Tryout UTBK Plus 1 Semester'),(63,'Bank_Transfer','2022-08-24','kdinsale1q','Tryout UTBK s.d. Mei 2023'),(64,'Bank_Transfer','2022-08-25','imounsey1r','Tryout UTBK 1 Semester'),(65,'Bank_Transfer','2022-08-25','acattlow1s','Tryout UTBK s.d. Mei 2023'),(66,'E_Wallet','2022-08-25','jlofthouse1t','SMA Super 1 Tahun Ajaran'),(67,'Credit_Card','2022-08-26','cleppo1u','SMA Reguler 1 Tahun Ajaran'),(68,'Credit_Card','2022-08-26','mespinos1v','SMP Super 2 Tahun Ajaran'),(69,'Bank_Transfer','2022-08-27','arajchert1w','SMA Reguler 1 Tahun Ajaran'),(70,'Kiosk','2022-08-28','sgarken1x','SMA Reguler 1 Tahun Ajaran'),(71,'Installment','2022-08-29','nheintze1y','SMA Reguler 1 Tahun Ajaran'),(72,'Credit_Card','2022-08-29','wmerrick1z','SMP Super 2 Tahun Ajaran'),(73,'Bank_Transfer','2022-08-29','beverly20','SMP Super 1 Tahun Ajaran'),(74,'Bank_Transfer','2022-08-29','dlowdwell21','SMA Super Plus 1 Tahun Ajaran'),(75,'E_Wallet','2022-08-29','gsimmers22','SMA Super 2 Tahun Ajaran'),(76,'Kiosk','2022-08-30','wcockings23','Tryout UTBK s.d. Mei 2023'),(77,'Credit_Card','2022-08-30','mrymmer24','SMA Super Plus 1 Tahun Ajaran'),(78,'E_Wallet','2022-08-31','hgarvey25','SMP Super 1 Tahun Ajaran'),(79,'Bank_Transfer','2022-08-31','rdunster26','Tryout UTBK s.d. Mei 2023'),(80,'Credit_Card','2022-08-31','dbanaszewski27','SMP Super 1 Tahun Ajaran'),(81,'E_Wallet','2022-09-03','gfauning28','SMA Super 2 Tahun Ajaran'),(82,'Kiosk','2022-09-04','sspellecy29','SMP Super 2 Tahun Ajaran'),(83,'E_Wallet','2022-09-04','kshrimpling2a','SMA Super 2 Tahun Ajaran'),(84,'Credit_Card','2022-09-04','jginley2b','Tryout UTBK 1 Semester'),(85,'Bank_Transfer','2022-09-05','tcoyte2c','SMA Super 1 Tahun Ajaran'),(86,'Bank_Transfer','2022-09-06','shammel2d','SMP Super 1 Tahun Ajaran'),(87,'E_Wallet','2022-09-06','uanchor2e','SMP Super 1 Tahun Ajaran'),(88,'Credit_Card','2022-09-07','bmerrison2f','SMA Super 1 Tahun Ajaran'),(89,'E_Wallet','2022-09-07','acossam2g','SMP Super 1 Tahun Ajaran'),(90,'Kiosk','2022-09-07','jmawditt2h','SMA Super 2 Tahun Ajaran'),(91,'Credit_Card','2022-09-07','atapper2i','Tryout UTBK s.d. Mei 2023'),(92,'E_Wallet','2022-09-19','kdaughtry2j','SMP Super 1 Tahun Ajaran'),(93,'Bank_Transfer','2022-09-19','kbrundale2k','SMA Reguler 1 Tahun Ajaran'),(94,'Bank_Transfer','2022-09-21','ltarrier2l','SMA Reguler 1 Tahun Ajaran'),(95,'Credit_Card','2022-09-22','mstandell2m','SMA Super 2 Tahun Ajaran'),(96,'Bank_Transfer','2022-09-22','kwye2n','SMA Super 2 Tahun Ajaran'),(97,'E_Wallet','2022-09-23','hcamber2o','SMA Reguler 1 Tahun Ajaran'),(98,'Kiosk','2022-09-25','amannix2p','SMP Super Plus 1 Tahun Ajaran'),(99,'Credit_Card','2022-09-26','cgonsalo2q','SMA Super Plus 1 Tahun Ajaran'),(100,'Credit_Card','2022-09-26','acree2r','Tryout UTBK 1 Semester'),(101,'E_Wallet','2022-09-26','temer2s','Tryout UTBK s.d. Mei 2023'),(102,'Installment','2022-09-27','smctague2t','SMP Super 1 Tahun Ajaran'),(103,'E_Wallet','2022-09-27','kburgis2u','SMA Super Plus 1 Tahun Ajaran'),(104,'Bank_Transfer','2022-09-27','reisold2v','SMP Super 1 Tahun Ajaran'),(105,'Credit_Card','2022-09-28','wbaradel2w','SMA Reguler 1 Tahun Ajaran'),(106,'E_Wallet','2022-09-29','reouzan2x','SMA Super 2 Tahun Ajaran'),(107,'Kiosk','2022-10-02','wfrancino2y','SMA Super 1 Tahun Ajaran'),(108,'Bank_Transfer','2022-10-02','dtowriss2z','SMP Super Plus 1 Tahun Ajaran'),(109,'Credit_Card','2022-10-02','aegerton30','SMA Super Plus 1 Tahun Ajaran'),(110,'Bank_Transfer','2022-10-05','fcoghlin31','SMA Super 2 Tahun Ajaran'),(111,'Installment','2022-10-06','wdyche32','SMP Super 1 Tahun Ajaran'),(112,'Credit_Card','2022-10-07','apetherick33','SMA Super 2 Tahun Ajaran'),(113,'E_Wallet','2022-10-10','mheber34','SMP Super Plus 1 Tahun Ajaran'),(114,'E_Wallet','2022-10-10','kavramovich35','Tryout UTBK Plus 1 Semester'),(115,'Bank_Transfer','2022-10-11','astleger36','SMP Super 2 Tahun Ajaran'),(116,'E_Wallet','2022-10-12','rwagerfield37','Tryout UTBK s.d. Mei 2023'),(117,'Bank_Transfer','2022-10-13','dludron38','Tryout UTBK Plus 1 Semester'),(118,'Bank_Transfer','2022-10-13','mricciardi39','Tryout UTBK s.d. Mei 2023'),(119,'E_Wallet','2022-10-15','sbedson3a','Tryout UTBK s.d. Mei 2023'),(120,'Bank_Transfer','2022-10-16','myankishin3b','Tryout UTBK Plus 1 Semester'),(121,'E_Wallet','2022-10-17','jjiranek3c','SMP Super 2 Tahun Ajaran'),(122,'Credit_Card','2022-10-19','dbasnall3d','Tryout UTBK s.d. Mei 2023'),(123,'Bank_Transfer','2022-10-20','rbachnic3e','SMP Super 1 Tahun Ajaran'),(124,'E_Wallet','2022-10-22','sgotcliff3f','Tryout UTBK s.d. Mei 2023'),(125,'Installment','2022-10-25','ycloake3g','SMP Super 2 Tahun Ajaran'),(126,'E_Wallet','2022-10-27','searlam3h','SMA Super 1 Tahun Ajaran'),(127,'Bank_Transfer','2022-10-27','ekeaton3i','SMA Super 1 Tahun Ajaran'),(128,'Credit_Card','2022-10-28','mvasin3j','SMP Super Plus 1 Tahun Ajaran'),(129,'E_Wallet','2022-10-30','anannoni3k','SMA Super Plus 1 Tahun Ajaran'),(130,'Kiosk','2022-10-30','mkunrad3l','SMA Super 2 Tahun Ajaran'),(131,'E_Wallet','2022-10-30','jtheuff3m','SMP Super Plus 1 Tahun Ajaran'),(132,'Credit_Card','2022-10-30','msaffrin3n','SMA Super 2 Tahun Ajaran'),(133,'Installment','2022-10-30','bheiton3o','Tryout UTBK Plus 1 Semester'),(134,'E_Wallet','2022-10-30','fkattenhorn3p','SMA Super 2 Tahun Ajaran'),(135,'Installment','2022-10-31','nknok3q','Tryout UTBK 1 Semester'),(136,'Installment','2022-10-31','cbootton3r','SMP Super 1 Tahun Ajaran'),(137,'Bank_Transfer','2022-10-31','lpaybody3s','SMP Super Plus 1 Tahun Ajaran'),(138,'Credit_Card','2022-11-01','hdjokovic3t','SMA Super 2 Tahun Ajaran'),(139,'Kiosk','2022-11-01','pegginson3u','SMA Super 1 Tahun Ajaran'),(140,'E_Wallet','2022-11-01','tbridgstock3v','SMA Super Plus 1 Tahun Ajaran'),(141,'E_Wallet','2022-11-01','waizkovitch3w','SMP Super 1 Tahun Ajaran'),(142,'Installment','2022-11-02','hklugel3x','SMP Super 1 Tahun Ajaran'),(143,'Bank_Transfer','2022-11-02','dredihalgh3y','SMP Super Plus 1 Tahun Ajaran'),(144,'Credit_Card','2022-11-03','qnizet3z','SMP Super 1 Tahun Ajaran'),(145,'E_Wallet','2022-11-03','dthorald40','SMP Super 1 Tahun Ajaran'),(146,'Installment','2022-11-03','amccollum41','SMA Super Plus 1 Tahun Ajaran'),(147,'Credit_Card','2022-11-04','sriggey42','SMP Super 1 Tahun Ajaran'),(148,'Credit_Card','2022-11-04','cmorford43','SMP Super 1 Tahun Ajaran'),(149,'Kiosk','2022-11-04','jmacmechan44','SMA Super 1 Tahun Ajaran'),(150,'Bank_Transfer','2022-11-04','gsomerbell45','SMA Super 2 Tahun Ajaran');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04  9:51:55

-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: tubes
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
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `Plan` varchar(30) NOT NULL,
  `Price` int DEFAULT NULL,
  `Duration` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Plan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES ('SMA Reguler 1 Tahun Ajaran',549000,'30 Juni 2023'),('SMA Super 1 Tahun Ajaran',649000,'30 Juni 2023'),('SMA Super 2 Tahun Ajaran',949000,'30 Juni 2024'),('SMA Super Plus 1 Tahun Ajaran',2459000,'30 Juni 2023'),('SMP Super 1 Tahun Ajaran',449000,'30 Juni 2023'),('SMP Super 2 Tahun Ajaran',799000,'30 Juni 2024'),('SMP Super Plus 1 Tahun Ajaran',799000,'30 Juni 2023'),('Tryout UTBK 1 Semester',199000,'31 Desember 2022'),('Tryout UTBK Plus 1 Semester',499000,'31 Desember 2022'),('Tryout UTBK s.d. Mei 2023',349000,'31 Mei 2022');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_features`
--

DROP TABLE IF EXISTS `package_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_features` (
  `Plan` varchar(30) NOT NULL,
  `Features` varchar(150) NOT NULL,
  PRIMARY KEY (`Plan`,`Features`),
  CONSTRAINT `Plan` FOREIGN KEY (`Plan`) REFERENCES `package` (`Plan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_features`
--

LOCK TABLES `package_features` WRITE;
/*!40000 ALTER TABLE `package_features` DISABLE KEYS */;
INSERT INTO `package_features` VALUES ('SMA Reguler 1 Tahun Ajaran','[BONUS] Live Class SMA'),('SMA Reguler 1 Tahun Ajaran','[BONUS] Quipper Video English'),('SMA Reguler 1 Tahun Ajaran','Latihan soal & video pembahasan'),('SMA Reguler 1 Tahun Ajaran','Ribuan video pembelajaran & animasi'),('SMA Super 1 Tahun Ajaran','[BONUS] Live Class SMA'),('SMA Super 1 Tahun Ajaran','[BONUS] Quipper Video English'),('SMA Super 1 Tahun Ajaran','Latihan soal & video pembahasan'),('SMA Super 1 Tahun Ajaran','Materi Intensif SIMAK UI 2023'),('SMA Super 1 Tahun Ajaran','Materi Intensif UTBK 2023'),('SMA Super 1 Tahun Ajaran','Ribuan video pembelajaran & animasi'),('SMA Super 1 Tahun Ajaran','Tryout & Cek Peluang UTBK 2023'),('SMA Super 2 Tahun Ajaran','[BONUS] Live Class SMA'),('SMA Super 2 Tahun Ajaran','[BONUS] Quipper Video English'),('SMA Super 2 Tahun Ajaran','Latihan soal & video pembahasan'),('SMA Super 2 Tahun Ajaran','Materi Intensif SIMAK UI 2023'),('SMA Super 2 Tahun Ajaran','Materi Intensif UTBK 2023'),('SMA Super 2 Tahun Ajaran','Ribuan video pembelajaran & animasi'),('SMA Super 2 Tahun Ajaran','Tryout & Cek Peluang UTBK 2023'),('SMA Super Plus 1 Tahun Ajaran','[BONUS] Quipper Video English'),('SMA Super Plus 1 Tahun Ajaran','Latihan soal & video pembahasan'),('SMA Super Plus 1 Tahun Ajaran','Masterclass s.d. Juni 2023'),('SMA Super Plus 1 Tahun Ajaran','Materi Intensif SIMAK UI 2023'),('SMA Super Plus 1 Tahun Ajaran','Materi Intensif UTBK 2023'),('SMA Super Plus 1 Tahun Ajaran','Ribuan video pembelajaran & animasi'),('SMA Super Plus 1 Tahun Ajaran','Tryout & Cek Peluang UTBK 2023'),('SMP Super 1 Tahun Ajaran','[BONUS] Live Class SMP'),('SMP Super 1 Tahun Ajaran','[BONUS] Quipper Video English'),('SMP Super 1 Tahun Ajaran','Latihan soal & video pembahasan'),('SMP Super 1 Tahun Ajaran','Ribuan video pembelajaran'),('SMP Super 2 Tahun Ajaran','[BONUS] Live Class SMP'),('SMP Super 2 Tahun Ajaran','[BONUS] Quipper Video English'),('SMP Super 2 Tahun Ajaran','Latihan soal & video pembahasan'),('SMP Super 2 Tahun Ajaran','Ribuan video pembelajaran'),('SMP Super Plus 1 Tahun Ajaran','[BONUS] Live Class SMP'),('SMP Super Plus 1 Tahun Ajaran','[BONUS] Quipper Video English'),('SMP Super Plus 1 Tahun Ajaran','Laporan Orang Tua'),('SMP Super Plus 1 Tahun Ajaran','Latihan soal & video pembahasan'),('SMP Super Plus 1 Tahun Ajaran','Masterclass SMP 3 bulan'),('SMP Super Plus 1 Tahun Ajaran','Ribuan video pembelajaran'),('Tryout UTBK 1 Semester','[Bonus] Live Class UTBK'),('Tryout UTBK 1 Semester','Tryout & Cek Peluang UTBK 2023'),('Tryout UTBK Plus 1 Semester','[Bonus] Live Class UTBK'),('Tryout UTBK Plus 1 Semester','[Unlimited] Tanya Tutor 3 bulan'),('Tryout UTBK Plus 1 Semester','Tryout & Cek Peluang UTBK 2023'),('Tryout UTBK s.d. Mei 2023','[Bonus] Live Class UTBK'),('Tryout UTBK s.d. Mei 2023','Tryout UTBK s.d. Mei 2023');
/*!40000 ALTER TABLE `package_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promo` (
  `Username` varchar(30) NOT NULL,
  `Promo_Code` char(6) NOT NULL,
  `Promo_Details` varchar(20) DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  PRIMARY KEY (`Username`,`Promo_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
INSERT INTO `promo` VALUES ('acattlow1s','74mBXP','Diskon sebesar 13%',0.13),('acossam2g','NAemjn','Diskon sebesar 38%',0.38),('acree2r','s8FRP0','Diskon sebesar 27%',0.27),('aegerton30','xtssjK','Diskon sebesar 16%',0.16),('aelbourne1b','NAFuOi','Diskon sebesar 27%',0.27),('agurry1o','1hgtYh','Diskon sebesar 26%',0.26),('ahousiauxb','1uc4gU','Diskon sebesar 32%',0.32),('akirrens9','KBPRBY','Diskon sebesar 20%',0.2),('amannix2p','XhgmHP','Diskon sebesar 22%',0.22),('amccollum41','afiPWa','Diskon sebesar 1%',0.01),('anannoni3k','Z0Vzgh','Diskon sebesar 8%',0.08),('apetherick33','Y3ifqS','Diskon sebesar 29%',0.29),('arajchert1w','JJsrN6','Diskon sebesar 15%',0.15),('asirmon8','jLw2bn','Diskon sebesar 44%',0.44),('astleger36','JbgLzo','Diskon sebesar 26%',0.26),('atapper2i','ljDCu2','Diskon sebesar 16%',0.16),('avinecomber','o2JUSy','Diskon sebesar 38%',0.38),('beverly20','Zt1XrQ','Diskon sebesar 32%',0.32),('bheiton3o','mDN3Xt','Diskon sebesar 21%',0.21),('bhellikesh','OTvo5i','Diskon sebesar 16%',0.16),('bmclleesea','oYEswT','Diskon sebesar 49%',0.49),('bmerrison2f','osTKMd','Diskon sebesar 25%',0.25),('bsansun1i','p66Bki','Diskon sebesar 29%',0.29),('caffleck6','rdCyTT','Diskon sebesar 17%',0.17),('cbathowe1k','5pyEFO','Diskon sebesar 26%',0.26),('cbootton3r','puZurb','Diskon sebesar 16%',0.16),('cclassen2','O0hco5','Diskon sebesar 49%',0.49),('cdeansn','LLvtER','Diskon sebesar 16%',0.16),('cgonsalo2q','oxGN0c','Diskon sebesar 20%',0.2),('cjillardv','IW4iE1','Diskon sebesar 21%',0.21),('cleppo1u','rs854b','Diskon sebesar 16%',0.16),('cmorford43','K7hUpr','Diskon sebesar 25%',0.25),('cvanderlinde18','U4ABGB','Diskon sebesar 26%',0.26),('daspinalp','Q7SMn9','Diskon sebesar 17%',0.17),('dbanaszewski27','4xyLao','Diskon sebesar 32%',0.32),('dbasnall3d','huuz5Q','Diskon sebesar 19%',0.19),('dlowdwell21','3E5w33','Diskon sebesar 40%',0.4),('dludron38','Vt5ss8','Diskon sebesar 22%',0.22),('dredihalgh3y','7o3hN7','Diskon sebesar 26%',0.26),('dswappu','bBHa6n','Diskon sebesar 47%',0.47),('dthorald40','5WrOvD','Diskon sebesar 28%',0.28),('dtowriss2z','aqBYdc','Diskon sebesar 27%',0.27),('ebotterman1c','EOBJei','Diskon sebesar 43%',0.43),('efitzsymon13','Dt9y9Q','Diskon sebesar 18%',0.18),('ekeaton3i','oxe4Uo','Diskon sebesar 10%',0.1),('esaunderson5','XtbERL','Diskon sebesar 7%',0.07),('eworldq','D7duBv','Diskon sebesar 1%',0.01),('fcoghlin31','hmkzh3','Diskon sebesar 14%',0.14),('fkattenhorn3p','6gB0W0','Diskon sebesar 17%',0.17),('﻿folorenshaw0','p86Dnz','Diskon sebesar 15%',0.15),('gcatanheiraf','ccYo64','Diskon sebesar 20%',0.2),('gdrinkel14','5tKZbk','Diskon sebesar 9%',0.09),('gfauning28','TLLNzY','Diskon sebesar 31%',0.31),('gleelc','M9glQu','Diskon sebesar 30%',0.3),('gsimmers22','8lyBf0','Diskon sebesar 35%',0.35),('gsomerbell45','4mOJIN','Diskon sebesar 31%',0.31),('hcamber2o','K0ibHM','Diskon sebesar 44%',0.44),('hdjokovic3t','H9lFQf','Diskon sebesar 24%',0.24),('hgarvey25','MoeTNv','Diskon sebesar 4%',0.04),('hjeynessw','QRaPSX','Diskon sebesar 31%',0.31),('hklugel3x','3aMGkd','Diskon sebesar 28%',0.28),('horkney4','lm1UEp','Diskon sebesar 31%',0.31),('ifarebrother10','XLggKI','Diskon sebesar 11%',0.11),('imounsey1r','HdOST3','Diskon sebesar 16%',0.16),('jcalterone1n','SvjOnJ','Diskon sebesar 45%',0.45),('jdimblebeem','YMYtmP','Diskon sebesar 38%',0.38),('jginley2b','dXqvxj','Diskon sebesar 47%',0.47),('jgresly1l','MPnDzK','Diskon sebesar 6%',0.06),('jgullivan19','gFoKVR','Diskon sebesar 37%',0.37),('jjiranek3c','9QCYoF','Diskon sebesar 37%',0.37),('jjoliffey','bZziKi','Diskon sebesar 17%',0.17),('jlofthouse1t','GAc3jA','Diskon sebesar 15%',0.15),('jmacmechan44','64COt1','Diskon sebesar 26%',0.26),('jmawditt2h','9GcwXh','Diskon sebesar 23%',0.23),('jrahl1a','sydpBi','Diskon sebesar 41%',0.41),('jtheuff3m','7kNzAm','Diskon sebesar 18%',0.18),('kavramovich35','HT1LgV','Diskon sebesar 33%',0.33),('kbrundale2k','73GqjX','Diskon sebesar 17%',0.17),('kburgis2u','PPFFR4','Diskon sebesar 44%',0.44),('kdaughtry2j','BZINX0','Diskon sebesar 22%',0.22),('kdinsale1q','5nxnhp','Diskon sebesar 27%',0.27),('kgomery1','DocM3X','Diskon sebesar 38%',0.38),('kmaysor1h','MkyGDC','Diskon sebesar 28%',0.28),('knewcom15','qwcBil','Diskon sebesar 25%',0.25),('kshrimpling2a','vgHoqg','Diskon sebesar 22%',0.22),('kwye2n','jcraFq','Diskon sebesar 4%',0.04),('laucock17','poOIfx','Diskon sebesar 43%',0.43),('lbeevors16','E5oKln','Diskon sebesar 7%',0.07),('ldeortegae','2mFAmM','Diskon sebesar 13%',0.13),('lmasterson7','5MnZvm','Diskon sebesar 24%',0.24),('lmccloughlin1p','tTDOzx','Diskon sebesar 17%',0.17),('lpaybody3s','aDWVuQ','Diskon sebesar 29%',0.29),('lreamsl','gVkYxA','Diskon sebesar 17%',0.17),('ltarrier2l','ALjZWo','Diskon sebesar 16%',0.16),('maupolz','QffyNx','Diskon sebesar 32%',0.32),('mcorthesd','VSTalZ','Diskon sebesar 37%',0.37),('mespinos1v','IlDaeq','Diskon sebesar 20%',0.2),('mheber34','QTYSxC','Diskon sebesar 21%',0.21),('mkunrad3l','FwLzeY','Diskon sebesar 43%',0.43),('mlongstreeth12','WGXRHW','Diskon sebesar 28%',0.28),('mricciardi39','EoXosE','Diskon sebesar 24%',0.24),('mrymmer24','qmgp5l','Diskon sebesar 46%',0.46),('msaffrin3n','pnvTzT','Diskon sebesar 44%',0.44),('mstandell2m','r5MLQo','Diskon sebesar 26%',0.26),('mvasin3j','iN4cvC','Diskon sebesar 25%',0.25),('myankishin3b','wDnyrT','Diskon sebesar 17%',0.17),('nbodessong','JBDd7L','Diskon sebesar 10%',0.1),('nheintze1y','rJO3zn','Diskon sebesar 26%',0.26),('nknok3q','wxxY4r','Diskon sebesar 21%',0.21),('pcraneo','CqtYAx','Diskon sebesar 23%',0.23),('pcuddehayt','MaU6gD','Diskon sebesar 27%',0.27),('pdanielyx','Tdj3ep','Diskon sebesar 12%',0.12),('pegginson3u','2LJiEp','Diskon sebesar 16%',0.16),('qnizet3z','ExZbdY','Diskon sebesar 42%',0.42),('rbachnic3e','ZmkWv4','Diskon sebesar 21%',0.21),('rbollon3','RugPbB','Diskon sebesar 28%',0.28),('rdunster26','NYLBMk','Diskon sebesar 45%',0.45),('reisold2v','YysWkY','Diskon sebesar 36%',0.36),('reouzan2x','CAa6px','Diskon sebesar 14%',0.14),('rfincher1j','JUB1tQ','Diskon sebesar 43%',0.43),('rheakey1e','MZ4Njh','Diskon sebesar 6%',0.06),('rjedrzejewskij','KFl2a1','Diskon sebesar 29%',0.29),('roene1d','EPg7Nw','Diskon sebesar 28%',0.28),('rshann1f','CGTwBg','Diskon sebesar 2%',0.02),('rwagerfield37','y0r7yv','Diskon sebesar 43%',0.43),('sbedson3a','HUllsA','Diskon sebesar 23%',0.23),('searlam3h','nR8TgC','Diskon sebesar 40%',0.4),('sgarken1x','G4GzDp','Diskon sebesar 36%',0.36),('sgotcliff3f','lnMLVJ','Diskon sebesar 30%',0.3),('shammel2d','F4OYoz','Diskon sebesar 43%',0.43),('smctague2t','QpBh6n','Diskon sebesar 39%',0.39),('spaliak','wlN8TO','Diskon sebesar 44%',0.44),('spenfoldi','Cij2pN','Diskon sebesar 27%',0.27),('sriggey42','Ynq4vE','Diskon sebesar 31%',0.31),('sspellecy29','fumueF','Diskon sebesar 35%',0.35),('taprahamian1g','nNu75V','Diskon sebesar 35%',0.35),('tbridgstock3v','HpSmAp','Diskon sebesar 15%',0.15),('tcoyte2c','2GrJub','Diskon sebesar 38%',0.38),('temer2s','SqHfxH','Diskon sebesar 49%',0.49),('tlewnden1m','2LlLIX','Diskon sebesar 34%',0.34),('uanchor2e','GrPZLx','Diskon sebesar 33%',0.33),('waizkovitch3w','HsdW6d','Diskon sebesar 35%',0.35),('wbaradel2w','urdLDJ','Diskon sebesar 32%',0.32),('wbastins','gtoafo','Diskon sebesar 18%',0.18),('wcleife11','PzwXOB','Diskon sebesar 30%',0.3),('wcockings23','RUtcTG','Diskon sebesar 40%',0.4),('wdyche32','KcU7TW','Diskon sebesar 26%',0.26),('wfrancino2y','45a7rZ','Diskon sebesar 2%',0.02),('wmerrick1z','uAUN66','Diskon sebesar 9%',0.09),('ycloake3g','pFSM06','Diskon sebesar 32%',0.32);
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university_interest`
--

DROP TABLE IF EXISTS `university_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `university_interest` (
  `Username` varchar(30) NOT NULL,
  `University_Interest` varchar(250) NOT NULL,
  PRIMARY KEY (`Username`,`University_Interest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university_interest`
--

LOCK TABLES `university_interest` WRITE;
/*!40000 ALTER TABLE `university_interest` DISABLE KEYS */;
INSERT INTO `university_interest` VALUES ('acattlow1s','Universitas Pendidikan Indonesia \r'),('acossam2g','Institut Teknologi Bandung  \r'),('acree2r','Universitas Andalas  \r'),('aegerton30','Universitas Negeri Malang  \r'),('aelbourne1b','Universitas Muhammadiyah Yogyakarta \r'),('agurry1o','Institut Teknologi Bandung  \r'),('ahousiauxb','Universitas Gunadarma \r'),('akirrens9','Universitas Negeri Semarang  \r'),('amannix2p','Universitas Gadjah Mada \r'),('amccollum41','Teknologi Sepuluh Nopember \r'),('anannoni3k','Universitas Hasanuddin \r'),('apetherick33','Universitas Gunadarma \r'),('arajchert1w','Universitas Islam Negeri Raden Intan Lampung \r'),('asirmon8','Universitas Negeri Malang  \r'),('astleger36','Universitas Brawijaya \r'),('atapper2i','Universitas Jember \r'),('avinecomber','Universitas Muhammadiyah Yogyakarta \r'),('beverly20','Universitas Islam Negeri Raden Intan Lampung \r'),('bheiton3o','Universitas Pendidikan Indonesia \r'),('bhellikesh','Universitas Hasanuddin \r'),('bmclleesea','Universitas Islam Indonesia \r'),('bmerrison2f','Universitas Airlangga  \r'),('bsansun1i','Universitas Udayana  \r'),('caffleck6','Institut Pertanian Bogor \r'),('cbathowe1k','Institut Pertanian Bogor \r'),('cbootton3r','Universitas Indonesia  \r'),('cclassen2','Universitas Islam Indonesia \r'),('cdeansn','Universitas Telkom Institut \r'),('cgonsalo2q','Universitas Gunadarma \r'),('cjillardv','Universitas Andalas  \r'),('cleppo1u','Universitas Negeri Yogyakarta \r'),('cmorford43','Universitas Negeri Semarang  \r'),('cvanderlinde18','Universitas Jember \r'),('daspinalp','Universitas Sebelas Maret  \r'),('dbanaszewski27','Teknologi Sepuluh Nopember \r'),('dbasnall3d','Universitas Sebelas Maret  \r'),('dlowdwell21','Universitas Teknokrat Indonesia \r'),('dludron38','Universitas Negeri Malang  \r'),('dredihalgh3y','Universitas Padjadjaran  \r'),('dswappu','Universitas Bina Nusantara  \r'),('dthorald40','Universitas Islam Negeri Sunan Kalijaga Yogyakarta \r'),('dtowriss2z','Universitas Muhammadiyah Malang \r'),('ebotterman1c','Teknologi Sepuluh Nopember \r'),('efitzsymon13','Universitas Telkom Institut \r'),('ekeaton3i','Universitas Jember \r'),('esaunderson5','Universitas Indonesia  \r'),('eworldq','Universitas Teknokrat Indonesia \r'),('fcoghlin31','Universitas Hasanuddin \r'),('fkattenhorn3p','Universitas Muhammadiyah Yogyakarta \r'),('﻿folorenshaw0','Universitas Muhammadiyah Yogyakarta \r'),('gcatanheiraf','Universitas Muhammadiyah Yogyakarta \r'),('gdrinkel14','Universitas Riau \r'),('gfauning28','Universitas Telkom Institut \r'),('gleelc','Universitas Indonesia  \r'),('gsimmers22','Universitas Muhammadiyah Malang \r'),('gsomerbell45','Universitas Islam Negeri Sunan Kalijaga Yogyakarta \r'),('hcamber2o','Institut Pertanian Bogor \r'),('hdjokovic3t','Universitas Jenderal Soedirman \r'),('hgarvey25','Universitas Andalas  \r'),('hjeynessw','Universitas Hasanuddin \r'),('hklugel3x','Universitas Islam Indonesia \r'),('horkney4','Universitas Bina Nusantara  \r'),('ifarebrother10','Universitas Riau \r'),('imounsey1r','Universitas Muhammadiyah Yogyakarta \r'),('jcalterone1n','Universitas Negeri Yogyakarta \r'),('jdimblebeem','Universitas Riau \r'),('jginley2b','Universitas Diponegoro  \r'),('jgresly1l','Universitas Padjadjaran  \r'),('jgullivan19','Universitas Gadjah Mada \r'),('jjiranek3c','Universitas Muhammadiyah Malang \r'),('jjoliffey','Universitas Indonesia  \r'),('jlofthouse1t','Universitas Diponegoro  \r'),('jmacmechan44','Universitas Islam Negeri Sunan Kalijaga Yogyakarta \r'),('jmawditt2h','Universitas Islam Indonesia \r'),('jrahl1a','Institut Teknologi Bandung  \r'),('jtheuff3m','Universitas Indonesia  \r'),('kavramovich35','Universitas Jember \r'),('kbrundale2k','Universitas Jember \r'),('kburgis2u','Universitas Islam Negeri Raden Intan Lampung \r'),('kdaughtry2j','Universitas Padjadjaran  \r'),('kdinsale1q','Universitas Sumatera Utara \r'),('kgomery1','Universitas Negeri Yogyakarta \r'),('kmaysor1h','Universitas Riau \r'),('knewcom15','Universitas Indonesia  \r'),('kshrimpling2a','Universitas Bina Nusantara  \r'),('kwye2n','Universitas Pendidikan Indonesia \r'),('laucock17','Universitas Islam Indonesia \r'),('lbeevors16','Universitas Sebelas Maret  \r'),('ldeortegae','Universitas Padjadjaran  \r'),('lmasterson7','Institut Teknologi Bandung  \r'),('lmccloughlin1p','Universitas Muhammadiyah Yogyakarta \r'),('lpaybody3s','Teknologi Sepuluh Nopember \r'),('lreamsl','Universitas Muhammadiyah Malang \r'),('ltarrier2l','Universitas Islam Indonesia \r'),('maupolz','Universitas Muhammadiyah Yogyakarta \r'),('mcorthesd','Universitas Pendidikan Indonesia \r'),('mespinos1v','Universitas Islam Indonesia \r'),('mheber34','Universitas Airlangga  \r'),('mkunrad3l','Universitas Hasanuddin \r'),('mlongstreeth12','Universitas Riau \r'),('mricciardi39','Universitas Indonesia  \r'),('mrymmer24','Universitas Hasanuddin \r'),('msaffrin3n','Institut Teknologi Bandung  \r'),('mstandell2m','Universitas Udayana  \r'),('mvasin3j','Universitas Jember \r'),('myankishin3b','Universitas Negeri Yogyakarta \r'),('nbodessong','Universitas Islam Negeri Raden Intan Lampung \r'),('nheintze1y','Institut Pertanian Bogor \r'),('nknok3q','Universitas Jenderal Soedirman \r'),('pcraneo','Universitas Sumatera Utara \r'),('pcuddehayt','Universitas Padjadjaran  \r'),('pdanielyx','Universitas Gunadarma \r'),('pegginson3u','Universitas Hasanuddin \r'),('qnizet3z','Universitas Telkom Institut \r'),('rbachnic3e','Universitas Gunadarma \r'),('rbollon3','Universitas Jenderal Soedirman \r'),('rdunster26','Universitas Negeri Semarang  \r'),('reisold2v','Universitas Udayana  \r'),('reouzan2x','Universitas Pendidikan Indonesia \r'),('rfincher1j','Universitas Udayana  \r'),('rheakey1e','Universitas Negeri Yogyakarta \r'),('rjedrzejewskij','Institut Pertanian Bogor \r'),('roene1d','Universitas Airlangga  \r'),('rshann1f','Universitas Gunadarma \r'),('rwagerfield37','Universitas Airlangga  \r'),('sbedson3a','Universitas Indonesia  \r'),('searlam3h','Universitas Muhammadiyah Yogyakarta \r'),('sgarken1x','Universitas Islam Negeri Raden Intan Lampung \r'),('sgotcliff3f','Universitas Negeri Yogyakarta \r'),('shammel2d','Universitas Riau \r'),('smctague2t','Universitas Muhammadiyah Yogyakarta \r'),('spaliak','Universitas Brawijaya \r'),('spenfoldi','Universitas Negeri Yogyakarta \r'),('sriggey42','Universitas Diponegoro  \r'),('sspellecy29','Universitas Muhammadiyah Malang \r'),('taprahamian1g','Universitas Muhammadiyah Malang \r'),('tbridgstock3v','Universitas Riau \r'),('tcoyte2c','Universitas Jember \r'),('temer2s','Universitas Airlangga  \r'),('tlewnden1m','Institut Pertanian Bogor \r'),('uanchor2e','Institut Teknologi Bandung  \r'),('waizkovitch3w','Teknologi Sepuluh Nopember \r'),('wbaradel2w','Universitas Negeri Malang  \r'),('wbastins','Universitas Sumatera Utara \r'),('wcleife11','Universitas Islam Negeri Sunan Kalijaga Yogyakarta \r'),('wcockings23','Universitas Diponegoro  \r'),('wdyche32','Universitas Gadjah Mada \r'),('wfrancino2y','Universitas Riau \r'),('wmerrick1z','Universitas Padjadjaran  \r'),('ycloake3g','Universitas Negeri Semarang  \r');
/*!40000 ALTER TABLE `university_interest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 19:50:23

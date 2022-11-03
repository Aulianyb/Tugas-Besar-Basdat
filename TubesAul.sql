-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: quipper
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
-- Table structure for table `assessment`
--

DROP TABLE IF EXISTS `assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment` (
  `Assessment_ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Topic_ID` int NOT NULL,
  PRIMARY KEY (`Assessment_ID`),
  KEY `Topic_ID` (`Topic_ID`),
  CONSTRAINT `assessment_ibfk_1` FOREIGN KEY (`Topic_ID`) REFERENCES `topic` (`Topic_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment`
--

LOCK TABLES `assessment` WRITE;
/*!40000 ALTER TABLE `assessment` DISABLE KEYS */;
INSERT INTO `assessment` VALUES (1,'﻿Quiz Perjalanan belajar menggunakan quipper video',1),(2,'Quiz Cerita Sukses Pengguna Quipper',2),(3,'Quiz Cara Daftar Quipper',3),(4,'Quiz Fitur Chapter Search',4),(5,'Quiz Fitur Subtitle dan Perkecil Layar',5),(6,'Quiz Fitur Rekomendasi Topik',6),(7,'Quiz Fitur Prestasi Belajar',7),(8,'Quiz Fitur Cek peluang',8),(9,'Quiz Cara Menggunakan Fitur Tanya Tutor',9),(10,'Quiz Cara Menggunakan Fitur Online Coach',10),(11,'Quiz Konsep Dasar Kosakata',11),(12,'Quiz Benar atau Salah',12),(13,'Quiz Argumentasi',13),(14,'Quiz Posisi',14),(15,'Quiz Urutan',15),(16,'Quiz Simpulan',16),(17,'Quiz Pola Bilangan',17),(18,'Quiz Pemahaman Visual',18),(19,'Quiz Pola Gambar ',19),(20,'Quiz Perhitungan Data',20),(21,'Quiz Operasi Bilangan',21),(22,'Quiz Perbandingan',22),(23,'Quiz Vocabulary',23),(24,'Quiz Barisan dan Deret',24),(25,'Quiz Aritmatika Sosial',25),(26,'Quiz Persamaan dan Pertidaksamaan',26),(27,'Quiz Fungsi',27),(28,'Quiz Logika Matematika',28),(29,'Quiz Bangun Datar',29),(30,'Quiz Bangun Ruang',30),(31,'Quiz Statistika dan Peluang',31),(32,'Quiz General Direction',32),(33,'Quiz Listening',33),(34,'Quiz Structure and Written Expression',34),(35,'Quiz Reading',35),(36,'Quiz TOEFL ITP Practice Test',36),(37,'Quiz Sistem Organ pada Manusia',37),(38,'Quiz Klasifikasi Mahluk Hidup',38),(39,'Quiz Pewarisan Sifat',39),(40,'Quiz Struktur dna Fungsi Jaringan',40),(41,'Quiz Bioteknologi',41),(42,'Quiz Pengukuran',42),(43,'Quiz Suhu dan Kalor',43),(44,'Quiz Gerak dan Gaya',44),(45,'Quiz Tekanan',45),(46,'Quiz Getaran dan Gelombang',46),(47,'Quiz Alat Optik',47),(48,'Quiz Gagasan Utama',48),(49,'Quiz Teks Ulasan',49),(50,'Quiz Laporan',50),(51,'Quiz Ejaan dan Tanda Baca',51),(52,'Quiz Cerpen dan Fabel',52),(53,'Quiz Analisis Sastra',53),(54,'Quiz Aljabar',54),(55,'Quiz Garis dan Sudut',55),(56,'Quiz Himpulan dan Relasi',56),(57,'Quiz Persamaan Garis Lurus',57),(58,'Quiz Pertidaksamaan',58),(59,'Quiz Barisan dan Deret',59),(60,'Quiz Bangun Datar',60),(61,'Quiz Bangun Ruang',61),(62,'Quiz Preposition',62),(63,'Quiz Conjunction',63),(64,'Quiz Word Meaning',64),(65,'Quiz Synonym',65),(66,'Quiz Reference',66),(67,'Quiz Main Idea',67),(68,'Quiz Percepatan Gravitasi',68),(69,'Quiz Jam Bandul',69),(70,'Quiz Charging HP 30 detik',70),(71,'Quiz Jarak dan Perpindahan',71),(72,'Quiz Cara Kerja GPS',72),(73,'Quiz Hitung Ketinggian dengan Stopwatch',73),(74,'Quiz Cara Kerja Sabuk Pengaman',74),(75,'Quiz American Football',75),(76,'Quiz Pasang Surut Air Laut',76),(77,'Quiz Diet Ala Fisika',77),(78,'Quiz Hiung Kadar Karbohidrat',78),(79,'Quiz Jadi Miliarder dengan matematika',79),(80,'Quiz Matriks bantu pak tani',80),(81,'Quiz Badan Kecil jago Sudo',81),(82,'Quiz Pilih Investasi mana ya?',82),(83,'Quiz Ancaman persatuan Indonesia',83),(84,'Quiz Sumpah pemersatu Nusantara',84),(85,'Quiz Makna dari Jeans',85),(86,'Quiz Orang kota itu sombong?!',86),(87,'Quiz Cara Panjat Sosial',87),(88,'Quiz Identitas Anak Punk',88),(89,'Quiz Merawat Bibir',89),(90,'Quiz Merawat Kulit Wajah',90),(91,'Quiz Mengatasi Jerawat',91),(92,'Quiz Tangkal Sinar UV',92),(93,'Quiz Basmi Ketombe',93),(94,'Quiz Pentingnya Kesehatan Mental',94),(95,'Quiz Minat dan Bakat',95),(96,'Quiz Imposter Syndrome',96),(97,'Quiz Stop Bullying',97),(98,'Quiz Teks Deskripsi',98),(99,'Quiz Teks Narasi',99),(100,'Quiz Teks Prosedur',100),(101,'Quiz Teks Laporan',101),(102,'Quiz Literasi Fiksi',102),(103,'Quiz Literasi NonFiksi',103),(104,'Quiz Puisi Rakyat',104),(105,'Quiz Fabel dan Legenda',105),(106,'Quiz Greeting',106),(107,'Quiz Thanking',107),(108,'Quiz Apologizing',108),(109,'Quiz Introduction',109),(110,'Quiz Time',110),(111,'Quiz Information about Things',111),(112,'Quiz Description Things',112),(113,'Quiz Asking for Description',113),(114,'Quiz Descriptive Text',114),(115,'Quiz Song Appreciation',115),(116,'Quiz Bilangan Bulat',116),(117,'Quiz Pecahan',117),(118,'Quiz KPK dan FPB',118),(119,'Quiz Operasi Himpunan',119),(120,'Quiz Dasar Geografi',120),(121,'Quiz Jagad Raya',121),(122,'Quiz Tata Surya',122),(123,'Quiz Litosfer',123),(124,'Quiz Pedosfer',124),(125,'Quiz Atmosfer',125),(126,'Quiz Hidrosfer',126),(127,'Quiz Konsep Ekonomi',127),(128,'Quiz Produsen dan Konsumen',128),(129,'Quiz Pasar dan Harga Pasar',129),(130,'Quiz Struktur Pasar',130),(131,'Quiz Inflasi dan Indeks Harga',131),(132,'Quiz Uang',132),(133,'Quiz Sifat Koligatif Larutan',133),(134,'Quiz Reaksi Redoks',134),(135,'Quiz Sel Volta',135),(136,'Quiz Korosi Logam',136),(137,'Quiz Elektrolisis',137),(138,'Quiz Kimia Unsur',138),(139,'Quiz Senyawa Karbon',139),(140,'Quiz Polimer',140),(141,'Quiz Rangkaian',141),(142,'Quiz Listrik Statis',142),(143,'Quiz Gaya Magnetik',143),(144,'Quiz Induksi Elektromagnetik',144),(145,'Quiz Teknologi Digital',145),(146,'Quiz Inti Atom',146),(147,'Quiz Fenomena Kuantum',147),(148,'Quiz Tes Penguasaan Kota Kata',148),(149,'Quiz Membaca Hasil Tes',149),(150,'Quiz Latihan Soal',150);
/*!40000 ALTER TABLE `assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `Course_ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Grade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Course_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (108,'Informasi Tentang Quipper','Tutorial pemakaian Quipper',NULL),(109,'Materi Intensif UTBK','Materi persiapan intensif UTBK','SMA'),(110,'Quipper Video English','Video Quipper dalam Bahasa Inggris',NULL),(111,'Paket Intensif UN SMP','Materi Persiapan UN SMP','SMP'),(112,'Video Animasi Seru Bersama Super Teacher!','Video Seru bersama Super Teacher',NULL),(113,'Quipper Video After School','Perawatan Tubuh dan Kesehatan Mental',NULL),(114,'Materi SMP','Materi Tingkat SMP','SMP'),(115,'Materi SMA','Materi Tingkat SMA','SMA'),(116,'Uji Potensi Diri','Tes Uji Potensi Diri',NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `Topic_ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Course_ID` int NOT NULL,
  PRIMARY KEY (`Topic_ID`),
  KEY `Course_ID` (`Course_ID`),
  CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'﻿Perjalanan belajar menggunakan quipper video',108),(2,'Cerita Sukses Pengguna Quipper',108),(3,'Cara Daftar Quipper',108),(4,'Fitur Chapter Search',108),(5,'Fitur Subtitle dan Perkecil Layar',108),(6,'Fitur Rekomendasi Topik',108),(7,'Fitur Prestasi Belajar',108),(8,'Fitur Cek peluang',108),(9,'Cara Menggunakan Fitur Tanya Tutor',108),(10,'Cara Menggunakan Fitur Online Coach',108),(11,'Konsep Dasar Kosakata',109),(12,'Benar atau Salah',109),(13,'Argumentasi',109),(14,'Posisi',109),(15,'Urutan',109),(16,'Simpulan',109),(17,'Pola Bilangan',109),(18,'Pemahaman Visual',109),(19,'Pola Gambar ',109),(20,'Perhitungan Data',109),(21,'Operasi Bilangan',109),(22,'Perbandingan',109),(23,'Vocabulary',109),(24,'Barisan dan Deret',109),(25,'Aritmatika Sosial',109),(26,'Persamaan dan Pertidaksamaan',109),(27,'Fungsi',109),(28,'Logika Matematika',109),(29,'Bangun Datar',109),(30,'Bangun Ruang',109),(31,'Statistika dan Peluang',109),(32,'General Direction',110),(33,'Listening',110),(34,'Structure and Written Expression',110),(35,'Reading',110),(36,'TOEFL ITP Practice Test',110),(37,'Sistem Organ pada Manusia',111),(38,'Klasifikasi Mahluk Hidup',111),(39,'Pewarisan Sifat',111),(40,'Struktur dan Fungsi Jaringan',111),(41,'Bioteknologi',111),(42,'Pengukuran',111),(43,'Suhu dan Kalor',111),(44,'Gerak dan Gaya',111),(45,'Tekanan',111),(46,'Getaran dan Gelombang',111),(47,'Alat Optik',111),(48,'Gagasan Utama',111),(49,'Teks Ulasan',111),(50,'Laporan',111),(51,'Ejaan dan Tanda Baca',111),(52,'Cerpen dan Fabel',111),(53,'Analisis Sastra',111),(54,'Aljabar',111),(55,'Garis dan Sudut',111),(56,'Himpulan dan Relasi',111),(57,'Persamaan Garis Lurus',111),(58,'Pertidaksamaan',111),(59,'Barisan dan Deret',111),(60,'Bangun Datar',111),(61,'Bangun Ruang',111),(62,'Preposition',111),(63,'Conjunction',111),(64,'Word Meaning',111),(65,'Synonym',111),(66,'Reference',111),(67,'Main Idea',111),(68,'Percepatan Gravitasi',112),(69,'Jam Bandul',112),(70,'Charging HP 30 detik',112),(71,'Jarak dan Perpindahan',112),(72,'Cara Kerja GPS',112),(73,'Hitung Ketinggian dengan Stopwatch',112),(74,'Cara Kerja Sabuk Pengaman',112),(75,'American Football',112),(76,'Pasang Surut Air Laut',112),(77,'Diet Ala Fisika',112),(78,'Hiung Kadar Karbohidrat',112),(79,'Jadi Miliarder dengan matematika',112),(80,'Matriks bantu pak tani',112),(81,'Badan Kecil jago Sudo',112),(82,'Pilih Investasi mana ya?',112),(83,'Ancaman persatuan Indonesia',112),(84,'Sumpah pemersatu Nusantara',112),(85,'Makna dari Jeans',112),(86,'Orang kota itu sombong?!',112),(87,'Cara Panjat Sosial',112),(88,'Identitas Anak Punk',112),(89,'Merawat Bibir',113),(90,'Merawat Kulit Wajah',113),(91,'Mengatasi Jerawat',113),(92,'Tangkal Sinar UV',113),(93,'Basmi Ketombe',113),(94,'Pentingnya Kesehatan Mental',113),(95,'Minat dan Bakat',113),(96,'Imposter Syndrome',113),(97,'Stop Bullying',113),(98,'Teks Deskripsi',114),(99,'Teks Narasi',114),(100,'Teks Prosedur',114),(101,'Teks Laporan',114),(102,'Literasi Fiksi',114),(103,'Literasi NonFiksi',114),(104,'Puisi Rakyat',114),(105,'Fabel dan Legenda',114),(106,'Greeting',114),(107,'Thanking',114),(108,'Apologizing',114),(109,'Introduction',114),(110,'Time',114),(111,'Information about Things',114),(112,'Description Things',114),(113,'Asking for Description',114),(114,'Descriptive Text',114),(115,'Song Appreciation',114),(116,'Bilangan Bulat',114),(117,'Pecahan',114),(118,'KPK dan FPB',114),(119,'Operasi Himpunan',114),(120,'Dasar Geografi',115),(121,'Jagad Raya',115),(122,'Tata Surya',115),(123,'Litosfer',115),(124,'Pedosfer',115),(125,'Atmosfer',115),(126,'Hidrosfer',115),(127,'Konsep Ekonomi',115),(128,'Produsen dan Konsumen',115),(129,'Pasar dan Harga Pasar',115),(130,'Struktur Pasar',115),(131,'Inflasi dan Indeks Harga',115),(132,'Uang',115),(133,'Sifat Koligatif Larutan',115),(134,'Reaksi Redoks',115),(135,'Sel Volta',115),(136,'Korosi Logam',115),(137,'Elektrolisis',115),(138,'Kimia Unsur',115),(139,'Senyawa Karbon',115),(140,'Polimer',115),(141,'Rangkaian',115),(142,'Listrik Statis',115),(143,'Gaya Magnetik',115),(144,'Induksi Elektromagnetik',115),(145,'Teknologi Digital',115),(146,'Inti Atom',115),(147,'Fenomena Kuantum',115),(148,'Tes Penguasaan Kota Kata',116),(149,'Membaca Hasil Tes',116),(150,'Latihan Soal',116);
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `Video_ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Duration` int NOT NULL,
  `Topic_ID` int NOT NULL,
  PRIMARY KEY (`Video_ID`),
  KEY `Topic_ID` (`Topic_ID`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`Topic_ID`) REFERENCES `topic` (`Topic_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (2,'﻿Perjalanan belajar dengan Quipper Video',480,1),(3,'Kak Kevin lolos ke ITB!',1094,2),(4,'Cara Daftar Quipper',508,3),(5,'Cara Membayar Quipper',1112,3),(6,'Fitur Chapter Search',218,4),(7,'Fitur Subtitle',289,5),(8,'Fitur Memperkecil layar',521,5),(9,'Fitur Rekomendasi Topik',951,6),(10,'Fitur Prestasi Belajar',1092,7),(11,'Fitur Cek peluang',773,8),(12,'Cara Menggunakan Fitur Tanya Tutor',374,9),(13,'Cara Menggunakan Fitur Online Coach',621,10),(14,'Konsep Dasar Kosakata',1086,11),(15,'Pembahasan Latihan Soal',217,11),(16,'Benar atau Salah',478,12),(17,'Pembahasan Latihan Soal',834,12),(18,'Argumentasi',936,13),(19,'Pembahasan Latihan Soal',795,13),(20,'Posisi',348,14),(21,'Pembahasan Latihan Soal',1116,14),(22,'Urutan',811,15),(23,'Pembahasan Latihan Soal',1186,15),(24,'Simpulan',1169,16),(25,'Pembahasan Latihan Soal',894,16),(26,'Pola Bilangan',503,17),(27,'Pembahasan Latihan Soal',592,17),(28,'Pemahaman Visual',963,18),(29,'Pembahasan Latihan Soal',416,18),(30,'Pola Gambar ',633,19),(31,'Pembahasan Latihan Soal',784,19),(32,'Perhitungan Data',591,20),(33,'Pembahasan Latihan Soal',851,20),(34,'Operasi Bilangan',882,21),(35,'Pembahasan Latihan Soal',999,21),(36,'Perbandingan',1080,22),(37,'Pembahasan Latihan Soal',831,22),(38,'Vocabulary',346,23),(39,'Pembahasan Latihan Soal',191,23),(40,'Barisan',986,24),(41,'Deret',821,24),(42,'Pembahasan Latihan Soal',883,24),(43,'Aritmatika Sosial',571,25),(44,'Pembahasan Latihan Soal',886,25),(45,'Persamaan',1004,26),(46,'Pertidaksamaan',401,26),(47,'Pembahasan Latihan Soal',834,26),(48,'Fungsi',928,27),(49,'Pembahasan Latihan Soal',769,27),(50,'Logika Matematika',267,28),(51,'Pembahasan Latihan Soal',1050,28),(52,'Bangun Datar',659,29),(53,'Pembahasan Latihan Soal',241,29),(54,'Bangun Ruang',317,30),(55,'Pembahasan Latihan Soal',454,30),(56,'Statistika',318,31),(57,'Peluang',1025,31),(58,'Pembahasan Latihan Soal',721,31),(59,'Direction',632,32),(60,'Listening',581,33),(61,'Structure and Written Expression',505,34),(62,'Reading',519,35),(63,'TOEFL ITP Practice Test',857,36),(64,'Pembahasan TOEFL',238,36),(65,'Sistem Organ pada Manusia',275,37),(66,'Klasifikasi Mahluk Hidup',432,38),(67,'Pewarisan Sifat',517,39),(68,'Struktur Jaringan',774,40),(69,'Fungsi Jaringan',471,40),(70,'Bioteknologi',945,41),(71,'Pengukuran',778,42),(72,'Suhu',196,43),(73,'Kalor',510,43),(74,'Gerak',571,44),(75,'Gaya',493,44),(76,'Tekanan',452,45),(77,'Getaran',848,46),(78,'Gelombang',439,46),(79,'Alat Optik',978,47),(80,'Gagasan Utama',855,48),(81,'Teks Ulasan',231,49),(82,'Laporan',1079,50),(83,'Ejaan',346,51),(84,'Tanda Baca',215,51),(85,'Cerpen',374,52),(86,'Fabel',818,52),(87,'Analisis Sastra',221,53),(88,'Aljabar',478,54),(89,'Garis',489,55),(90,'Sudut',919,55),(91,'Himpunan',598,56),(92,'Relasi',407,56),(93,'Persamaan Garis Lurus',621,57),(94,'Pertidaksamaan',606,58),(95,'Barisan',820,59),(96,'Deret',896,59),(97,'Bangun Datar',709,60),(98,'Bangun Ruang',592,61),(99,'Preposition',261,62),(100,'Conjunction',805,63),(101,'Word Meaning',291,64),(102,'Synonym',288,65),(103,'Reference',410,66),(104,'Main Idea',986,67),(105,'Percepatan Gravitasi',892,68),(106,'Jam Bandul',641,69),(107,'Charging HP 30 detik',1026,70),(108,'Jarak',670,71),(109,'Perpindahan',868,71),(110,'Cara Kerja GPS',506,72),(111,'Hitung Ketinggian dengan Stopwatch',840,73),(112,'Cara Kerja Sabuk Pengaman',365,74),(113,'American Football',1096,75),(114,'Pasang Surut Air Laut',363,76),(115,'Diet Ala Fisika',838,77),(116,'Hiung Kadar Karbohidrat',988,78),(117,'Jadi Miliarder dengan matematika',628,79),(118,'Matriks bantu pak tani',484,80),(119,'Badan Kecil jago Sudo',1122,81),(120,'Pilih Investasi mana ya?',853,82),(121,'Ancaman persatuan Indonesia',744,83),(122,'Sumpah pemersatu Nusantara',1162,84),(123,'Makna dari Jeans',1096,85),(124,'Orang kota itu sombong?!',1146,86),(125,'Cara Panjat Sosial',769,87),(126,'Identitas Anak Punk',1113,88),(127,'Merawat Bibir',779,89),(128,'Merawat Kulit Wajah',505,90),(129,'Mengatasi Jerawat',544,91),(130,'Tangkal Sinar UV',648,92),(131,'Basmi Ketombe',1072,93),(132,'Pentingnya Kesehatan Mental',282,94),(133,'Minat',1173,95),(134,'Bakat',864,95),(135,'Imposter Syndrome',757,96),(136,'Stop Bullying',700,97),(137,'Teks Deskripsi',889,98),(138,'Teks Narasi',296,99),(139,'Teks Prosedur',622,100),(140,'Teks Laporan',542,101),(141,'Literasi Fiksi',417,102),(142,'Literasi NonFiksi',879,103),(143,'Puisi Rakyat',1048,104),(144,'Fabel',660,105),(145,'Legenda',624,105),(146,'Greeting',622,106),(147,'Thanking',913,107),(148,'Apologizing',1083,108),(149,'Introduction',502,109),(150,'Time',382,110),(151,'Information about Things',1031,111),(152,'Description Things',327,112),(153,'Asking for Description',219,113),(154,'Descriptive Text',506,114),(155,'Song Appreciation',273,115),(156,'Bilangan Bulat',493,116),(157,'Pecahan',651,117),(158,'KPK',617,118),(159,'FPB',680,118),(160,'Operasi Himpunan',821,119),(161,'Dasar Geografi',644,120),(162,'Jagad Raya',1108,121),(163,'Tata Surya',1090,122),(164,'Litosfer',662,123),(165,'Pedosfer',486,124),(166,'Atmosfer',773,125),(167,'Hidrosfer',1092,126),(168,'Konsep Ekonomi',1036,127),(169,'Produsen',1080,128),(170,'Konsumen',704,128),(171,'Pasar',644,129),(172,'Harga Pasar',420,129),(173,'Struktur Pasar',367,130),(174,'Inflasi',901,131),(175,'Indeks Harga',1144,131),(176,'Uang',1052,132),(177,'Sifat Koligatif Larutan',1075,133),(178,'Reaksi Redoks',679,134),(179,'Sel Volta',868,135),(180,'Korosi Logam',662,136),(181,'Elektrolisis',543,137),(182,'Kimia Unsur',1025,138),(183,'Senyawa Karbon',1033,139),(184,'Polimer',1143,140),(185,'Rangkaian',241,141),(186,'Listrik Statis',655,142),(187,'Gaya Magnetik',1092,143),(188,'Induksi Elektromagnetik',1013,144),(189,'Teknologi Digital',901,145),(190,'Inti Atom',860,146),(191,'Fenomena Kuantum',672,147),(192,'Tes Penguasaan Kota Kata',560,148),(193,'Membaca Hasil Tes',268,149),(194,'Pembahasan Latihan Soal',494,150);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 22:32:33

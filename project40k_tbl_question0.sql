CREATE DATABASE  IF NOT EXISTS `project40k` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `project40k`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: project40k
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `tbl_question`
--

DROP TABLE IF EXISTS `tbl_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL,
  `ansA` varchar(100) DEFAULT NULL,
  `ansB` varchar(100) DEFAULT NULL,
  `ansC` varchar(100) DEFAULT NULL,
  `ansD` varchar(100) DEFAULT NULL,
  `answer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_question`
--

LOCK TABLES `tbl_question` WRITE;
/*!40000 ALTER TABLE `tbl_question` DISABLE KEYS */;
INSERT INTO `tbl_question` VALUES (1,'Ban chon gi','cau A','cau B ','cau C','cau D ',2),(2,'Mai di dau','FSoft','Cucurum','Global','VietNam',2),(3,'Ai dang o dau','Toi','Ban','Ho ','Anh ay',4),(4,'Mau gi bay gio','trang','den','hong','tim',1),(5,'Ăn gì bay giờ','rau cau','banh flan','yoghurt','kem',2),(6,'Uống gì được','bia','ruou','coca','nuoc suoi',4),(7,'Đi đâu rảnh giờ ','di nha sach','di shopping','di an uong','di sieu thi',1),(8,'Du  lịch anh êiiiiii','Da Lat','Nha Trang','Da Nang','Sapa',2),(9,'Thich nước nào','Singapo','Nhat Ban','Han Quoc','Thai Lan',3),(10,'Bao nhiêu kg 1 con bò','51','52','53','54',3),(11,'Cao bao nhiêu 2 con ngựa','155','156','157','158',4),(12,'Hoa gì hái đây','hong','sen','lan','huong duong',2),(13,'ăn trái gì thì nói','tao','dao','cam','le',2),(14,'Sinh ngày','15/7','16/7','17/7','18/7',4),(15,'Làm gì ở nhà ta ','ngu','an','chat','nghe nhac',1),(16,'mặc màu gì đó','den','nau','tim','do',2),(17,'Thích môn nào','boi loi','yoga','cau long','chay bo',2),(18,'Đọc gì đó','TnBS','TnBS-Tren Duong Bang','Nha gia kim','Quoc gia khoi nghiep',2),(19,'Coi phim đi','Toi thay hoa vang tren co xanh','Trum Co','Maze Runner','Diem bao giac mo',1),(20,'Bài nào nghe được','See you again','Style','Jar of heart','Loving strangers',4),(21,'Làm gì chọn đi','Kien truc su','Ca si','Doanh nhan','Bac Si',1),(22,'Trời ơi nhiều qá','Toan','Ly','Hoa','Sinh',2),(23,'Giày nào mang nè ','Converse','Nike','Adidas','Puma',1),(24,'Thích em nào','Taylor Swift','Demi Lovato','Selena Gomez','Miley Cyrus',1),(25,'Đọc tiếp nè','Toi Tai Gioi','Day Con Lam Giau','Dac Nhan Tam','Lam Chu Tu Duy Thay Doi Van Menh',1),(26,'Thích ông nào','Adam Khoo','Napoleon Hill','Dale Carnegie','TnBS',3),(27,'Ngưỡng mộ ai hông','Hoai Linh','Thanh Loc','Chi Tai','Tran Thanh',2),(28,'Chơi gì nè','violin','organ','guitar','piano',1),(29,'Ở đâu gị ta','Mat tien Truong Chinh','Hang xom cau A','Hang xom cau B','Hem gan nha A',2),(30,'Mai di dau','Sai gon','Nha Trang','Mien Tay','Mien Bac',3);
/*!40000 ALTER TABLE `tbl_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-12 23:16:35

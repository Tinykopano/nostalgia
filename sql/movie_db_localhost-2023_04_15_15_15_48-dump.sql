-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movie_db
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `director_t`
--

DROP TABLE IF EXISTS `director_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director_t` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `ori_name` varchar(64) DEFAULT NULL,
  `chinese_name` varchar(64) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_t`
--

LOCK TABLES `director_t` WRITE;
/*!40000 ALTER TABLE `director_t` DISABLE KEYS */;
INSERT INTO `director_t` VALUES (1,'Andrei Tarkovsky','安德烈·塔可夫斯基','2023-04-08 19:16:05',NULL),(2,'小津 安二郎','小津安二郎','2023-04-08 19:39:01',NULL),(3,'Alfred Joseph Hitchcock','阿尔弗雷德·希区柯克','2023-04-15 02:17:09',NULL),(4,'Orson Welles','奥逊·威尔斯','2023-04-15 02:17:09',NULL),(5,'Stanley Kubrick','斯坦利·库布里克','2023-04-15 02:18:32',NULL),(6,'Federico Fellini','费德里科·费里尼','2023-04-15 02:19:41',NULL),(7,'Jean Renoir','让·雷诺阿','2023-04-15 02:20:38',NULL),(8,'F.W. Murnau','茂瑙','2023-04-15 02:21:55',NULL),(9,'Francis Ford Coppola','弗朗西斯·福特·科波拉','2023-04-15 02:22:52',NULL),(10,'Jean-Luc Godard','让-吕克·戈达尔','2023-04-15 02:23:50',NULL),(11,'Martin Scorsese','马丁·斯科塞斯','2023-04-15 02:26:16',NULL),(12,'Ingmar Bergman','英格玛·伯格曼','2023-04-15 02:28:47',NULL),(13,'黒澤 明','黑泽明','2023-04-15 02:30:58',NULL),(14,'François Truffaut','弗朗索瓦·特吕弗','2023-04-15 02:32:29',NULL),(15,'Robert Bresson','罗伯特·布列松','2023-04-15 02:34:03',NULL);
/*!40000 ALTER TABLE `director_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_t`
--

DROP TABLE IF EXISTS `movie_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_t` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `ori_name` varchar(64) NOT NULL,
  `chinese_name` varchar(64) DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  `director_id` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_t`
--

LOCK TABLES `movie_t` WRITE;
/*!40000 ALTER TABLE `movie_t` DISABLE KEYS */;
INSERT INTO `movie_t` VALUES (1,'Ностальгия','乡愁',1,1,'2023-04-08 19:08:32','2023-04-08 19:08:32',NULL),(2,'東京物語','东京物语',2,2,'2023-04-08 19:40:39',NULL,NULL),(3,'Vertigo','迷魂记',3,3,'2023-04-12 05:21:58',NULL,NULL),(4,'Citizen Kane','公民凯恩',3,4,'2023-04-12 05:22:52',NULL,NULL),(5,'2001: A Space Odyssey','2001太空漫游',4,5,'2023-04-15 02:15:50',NULL,NULL),(6,'Eight and a Half','八部半',NULL,6,'2023-04-15 02:19:10',NULL,NULL),(7,'La Règle du jeu','游戏规则',NULL,7,'2023-04-15 02:20:12',NULL,NULL),(8,'Sunrise: A Song of Two Humans','日出',NULL,8,'2023-04-15 02:21:14',NULL,NULL),(9,'Apocalypse Now','现代启示录',NULL,9,'2023-04-15 02:22:32',NULL,NULL),(10,'À bout de souffle','精疲力尽',NULL,10,'2023-04-15 02:23:25',NULL,NULL),(11,'Taxi Driver','出租车司机',NULL,11,'2023-04-15 02:24:18',NULL,'1976-02-08'),(12,'Зеркало','镜子',NULL,1,'2023-04-15 02:26:48',NULL,NULL),(13,'The Godfather','教父',NULL,9,'2023-04-15 02:27:25',NULL,NULL),(14,'Persona','假面',NULL,12,'2023-04-15 02:28:17',NULL,'1966-10-18'),(15,'Андрей Рублёв','安德烈·卢布廖夫',NULL,1,'2023-04-15 02:29:25',NULL,NULL),(16,'七人の侍','七武士',NULL,13,'2023-04-15 02:29:48',NULL,NULL),(17,'Les quatre cents coups','四百击',NULL,14,'2023-04-15 02:32:12',NULL,NULL),(18,'羅生門','罗生门',NULL,13,'2023-04-15 02:32:57',NULL,NULL),(19,'Au hasard Balthazar','驴子巴特萨',NULL,15,'2023-04-15 02:33:45',NULL,NULL),(20,'Raging Bull','愤怒的公牛',NULL,11,'2023-04-15 02:36:31',NULL,NULL),(21,'Fanny och Alexander','芬妮与亚历山大',NULL,12,'2023-04-15 02:37:17',NULL,NULL),(22,'Le mépris','蔑视',NULL,10,'2023-04-15 02:37:47',NULL,NULL),(23,'Сталкер','潜行者',NULL,1,'2023-04-15 02:38:27',NULL,NULL),(24,'Barry Lyndon','巴里·林登',NULL,5,'2023-04-15 02:40:28',NULL,NULL),(25,'Psycho','惊魂记',NULL,3,'2023-04-15 02:40:28',NULL,NULL),(26,'La dolce vita','甜蜜的生活',NULL,6,'2023-04-15 02:40:28',NULL,NULL),(27,'Touch of Evil','历劫佳人',NULL,4,'2023-04-15 02:41:56',NULL,NULL),(28,'晩春','晩春',NULL,2,'2023-04-15 02:41:56',NULL,NULL);
/*!40000 ALTER TABLE `movie_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_list_movie_t`
--

DROP TABLE IF EXISTS `ranking_list_movie_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking_list_movie_t` (
  `move_ranking_list_id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int NOT NULL,
  `ranking_list_id` int NOT NULL,
  `rank_order` int DEFAULT NULL,
  PRIMARY KEY (`move_ranking_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_list_movie_t`
--

LOCK TABLES `ranking_list_movie_t` WRITE;
/*!40000 ALTER TABLE `ranking_list_movie_t` DISABLE KEYS */;
INSERT INTO `ranking_list_movie_t` VALUES (1,2,1,3),(2,3,1,1),(3,4,1,2);
/*!40000 ALTER TABLE `ranking_list_movie_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_list_t`
--

DROP TABLE IF EXISTS `ranking_list_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking_list_t` (
  `list_id` int NOT NULL AUTO_INCREMENT,
  `list_name` varchar(64) NOT NULL,
  `release_time` date DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_list_t`
--

LOCK TABLES `ranking_list_t` WRITE;
/*!40000 ALTER TABLE `ranking_list_t` DISABLE KEYS */;
INSERT INTO `ranking_list_t` VALUES (1,'《视与听》影史TOP250 影评人版','2012-09-01');
/*!40000 ALTER TABLE `ranking_list_t` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15 15:15:48

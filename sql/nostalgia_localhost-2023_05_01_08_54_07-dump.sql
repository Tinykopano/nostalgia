-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nostalgia
-- ------------------------------------------------------
-- Server version	8.0.32

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
  `country` varchar(20) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `is_delete` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_t`
--

LOCK TABLES `director_t` WRITE;
/*!40000 ALTER TABLE `director_t` DISABLE KEYS */;
INSERT INTO `director_t` VALUES (1,'Andrei Tarkovsky','安德烈·塔可夫斯基','苏联','1932-04-04',NULL,'2023-04-08 19:16:05',NULL),(2,'小津 安二郎','小津安二郎','日本','1903-12-12',NULL,'2023-04-08 19:39:01',NULL),(3,'Alfred Joseph Hitchcock','阿尔弗雷德·希区柯克',NULL,NULL,NULL,'2023-04-15 02:17:09',NULL),(4,'Orson Welles','奥逊·威尔斯',NULL,NULL,NULL,'2023-04-15 02:17:09',NULL),(5,'Stanley Kubrick','斯坦利·库布里克',NULL,NULL,NULL,'2023-04-15 02:18:32',NULL),(6,'Federico Fellini','费德里科·费里尼',NULL,NULL,NULL,'2023-04-15 02:19:41',NULL),(7,'Jean Renoir','让·雷诺阿',NULL,NULL,NULL,'2023-04-15 02:20:38',NULL),(8,'F.W. Murnau','茂瑙',NULL,NULL,NULL,'2023-04-15 02:21:55',NULL),(9,'Francis Ford Coppola','弗朗西斯·福特·科波拉',NULL,NULL,NULL,'2023-04-15 02:22:52',NULL),(10,'Jean-Luc Godard','让-吕克·戈达尔',NULL,NULL,NULL,'2023-04-15 02:23:50',NULL),(11,'Martin Scorsese','马丁·斯科塞斯',NULL,NULL,NULL,'2023-04-15 02:26:16',NULL),(12,'Ingmar Bergman','英格玛·伯格曼',NULL,NULL,NULL,'2023-04-15 02:28:47',NULL),(13,'黒澤 明','黑泽明',NULL,NULL,NULL,'2023-04-15 02:30:58',NULL),(14,'François Truffaut','弗朗索瓦·特吕弗',NULL,NULL,NULL,'2023-04-15 02:32:29',NULL),(15,'Robert Bresson','罗伯特·布列松',NULL,NULL,NULL,'2023-04-15 02:34:03',NULL),(16,'John Ford','约翰·福特',NULL,'1894-02-01',NULL,'2023-04-29 04:43:00',NULL),(17,'Dziga Vertov','吉加·维尔托夫',NULL,'1896-01-02',NULL,'2023-04-29 04:44:26',NULL),(18,'Carl Theodor Dreyer','卡尔·西奥多·德莱叶',NULL,NULL,NULL,'2023-04-29 04:46:24',NULL),(19,'Sergei M. Eisenstein','谢尔盖·爱森斯坦',NULL,NULL,NULL,'2023-04-29 05:13:41',NULL),(20,'Jean Vigo','让·维果',NULL,NULL,NULL,'2023-04-29 05:15:08',NULL),(21,'Stanley Donen','斯坦利·多南',NULL,NULL,NULL,'2023-04-29 05:29:28',NULL),(22,'Michelangelo Antonioni','米开朗基罗·安东尼奥尼',NULL,NULL,NULL,'2023-04-29 05:30:40',NULL),(23,'王家卫','王家卫',NULL,NULL,NULL,'2023-04-29 05:35:35',NULL),(24,'David Lynch','大卫·林奇',NULL,NULL,NULL,'2023-04-29 05:37:46',NULL),(25,'Claude Lanzmann','克洛德·朗兹曼',NULL,NULL,NULL,'2023-04-29 05:39:47',NULL),(26,'Vittorio De Sica','维托里奥·德西卡',NULL,'1901-07-07',NULL,'2023-04-29 05:47:53',NULL);
/*!40000 ALTER TABLE `director_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_ranking_t`
--

DROP TABLE IF EXISTS `movie_ranking_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_ranking_t` (
  `move_ranking_id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int NOT NULL,
  `ranking_id` int NOT NULL,
  `rank_order` int DEFAULT NULL,
  PRIMARY KEY (`move_ranking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_ranking_t`
--

LOCK TABLES `movie_ranking_t` WRITE;
/*!40000 ALTER TABLE `movie_ranking_t` DISABLE KEYS */;
INSERT INTO `movie_ranking_t` VALUES (1,2,1,3),(2,3,1,1),(3,4,1,2),(4,7,1,4),(5,8,1,5),(6,5,1,6),(7,29,1,7),(8,30,1,8),(9,31,1,9),(10,6,1,10),(11,32,1,11),(12,33,1,12),(13,10,1,13),(14,9,1,14),(15,28,1,15),(16,19,1,16),(17,16,1,17),(18,14,1,18),(19,12,1,19),(20,34,1,20),(21,35,1,21),(22,13,1,22),(23,22,1,23),(24,18,1,24),(25,36,1,25),(26,37,1,26),(27,15,1,27),(28,38,1,28),(29,23,1,29),(30,39,1,30),(31,11,1,31),(32,40,1,32),(33,2,2,1),(34,5,2,2),(35,4,2,3),(36,6,2,4),(37,11,2,5),(38,9,2,6),(39,2,2,7),(40,13,2,8),(41,12,2,9),(42,41,2,10),(43,10,2,11),(44,20,2,12),(45,14,2,13),(46,17,2,14),(47,15,2,15);
/*!40000 ALTER TABLE `movie_ranking_t` ENABLE KEYS */;
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
  `release_date` date DEFAULT NULL,
  `is_delete` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_t`
--

LOCK TABLES `movie_t` WRITE;
/*!40000 ALTER TABLE `movie_t` DISABLE KEYS */;
INSERT INTO `movie_t` VALUES (1,'Ностальгия','乡愁',1,1,'1983-05-17',NULL,'2023-04-08 19:08:32','2023-04-08 19:08:32'),(2,'東京物語','东京物语',2,2,NULL,NULL,'2023-04-08 19:40:39',NULL),(3,'Vertigo','迷魂记',3,3,NULL,NULL,'2023-04-12 05:21:58',NULL),(4,'Citizen Kane','公民凯恩',3,4,NULL,NULL,'2023-04-12 05:22:52',NULL),(5,'2001: A Space Odyssey','2001太空漫游',4,5,NULL,NULL,'2023-04-15 02:15:50',NULL),(6,'Eight and a Half','八部半',NULL,6,NULL,NULL,'2023-04-15 02:19:10',NULL),(7,'La Règle du jeu','游戏规则',NULL,7,NULL,NULL,'2023-04-15 02:20:12',NULL),(8,'Sunrise: A Song of Two Humans','日出',NULL,8,NULL,NULL,'2023-04-15 02:21:14',NULL),(9,'Apocalypse Now','现代启示录',NULL,9,NULL,NULL,'2023-04-15 02:22:32',NULL),(10,'À bout de souffle','精疲力尽',NULL,10,NULL,NULL,'2023-04-15 02:23:25',NULL),(11,'Taxi Driver','出租车司机',NULL,11,'1976-02-08',NULL,'2023-04-15 02:24:18',NULL),(12,'Зеркало','镜子',NULL,1,NULL,NULL,'2023-04-15 02:26:48',NULL),(13,'The Godfather','教父',NULL,9,NULL,NULL,'2023-04-15 02:27:25',NULL),(14,'Persona','假面',NULL,12,'1966-10-18',NULL,'2023-04-15 02:28:17',NULL),(15,'Андрей Рублёв','安德烈·卢布廖夫',NULL,1,NULL,NULL,'2023-04-15 02:29:25',NULL),(16,'七人の侍','七武士',NULL,13,NULL,NULL,'2023-04-15 02:29:48',NULL),(17,'Les quatre cents coups','四百击',NULL,14,NULL,NULL,'2023-04-15 02:32:12',NULL),(18,'羅生門','罗生门',NULL,13,NULL,NULL,'2023-04-15 02:32:57',NULL),(19,'Au hasard Balthazar','驴子巴特萨',NULL,15,NULL,NULL,'2023-04-15 02:33:45',NULL),(20,'Raging Bull','愤怒的公牛',NULL,11,NULL,NULL,'2023-04-15 02:36:31',NULL),(21,'Fanny och Alexander','芬妮与亚历山大',NULL,12,NULL,NULL,'2023-04-15 02:37:17',NULL),(22,'Le mépris','蔑视',NULL,10,NULL,NULL,'2023-04-15 02:37:47',NULL),(23,'Сталкер','潜行者',NULL,1,NULL,NULL,'2023-04-15 02:38:27',NULL),(24,'Barry Lyndon','巴里·林登',NULL,5,NULL,NULL,'2023-04-15 02:40:28',NULL),(25,'Psycho','惊魂记',NULL,3,NULL,NULL,'2023-04-15 02:40:28',NULL),(26,'La dolce vita','甜蜜的生活',NULL,6,NULL,NULL,'2023-04-15 02:40:28',NULL),(27,'Touch of Evil','历劫佳人',NULL,4,NULL,NULL,'2023-04-15 02:41:56',NULL),(28,'晩春','晩春',NULL,2,NULL,NULL,'2023-04-15 02:41:56',NULL),(29,'The Searchers','搜索者',NULL,16,'1956-05-26',NULL,'2023-04-29 04:41:18',NULL),(30,'Человек с Киноаппаратом','持摄影机的人',NULL,17,'1929-01-08',NULL,'2023-04-29 04:45:22',NULL),(31,'La Passion de Jeanne d\'Arc','圣女贞德蒙难记',NULL,18,NULL,NULL,'2023-04-29 04:47:09',NULL),(32,'Броненосец Потёмкин','战舰波将金号',NULL,19,NULL,NULL,'2023-04-29 05:14:01',NULL),(33,'L\'Atalante','亚特兰大号',NULL,20,NULL,NULL,'2023-04-29 05:15:26',NULL),(34,'Singin\' in the Rain','雨中曲',NULL,21,NULL,NULL,'2023-04-29 05:29:50',NULL),(35,'L\'avventura','奇遇',NULL,22,NULL,NULL,'2023-04-29 05:31:05',NULL),(36,'Ordet','词语',NULL,18,NULL,NULL,'2023-04-29 05:33:58',NULL),(37,'花樣年華','花样年华',NULL,23,'2000-05-20',NULL,'2023-04-29 05:35:15',NULL),(38,'Mulholland Dr.','穆赫兰道',NULL,24,NULL,NULL,'2023-04-29 05:38:19',NULL),(39,'Shoah','浩劫',NULL,25,NULL,NULL,'2023-04-29 05:40:10',NULL),(40,'The Godfather: Part II','教父2',NULL,9,NULL,NULL,'2023-04-29 05:41:42',NULL),(41,'Ladri di biciclette','偷自行车的人',NULL,26,NULL,NULL,'2023-04-29 05:48:04',NULL);
/*!40000 ALTER TABLE `movie_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_t`
--

DROP TABLE IF EXISTS `ranking_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking_t` (
  `ranking_id` int NOT NULL AUTO_INCREMENT,
  `ranking_name` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `is_delete` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ranking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_t`
--

LOCK TABLES `ranking_t` WRITE;
/*!40000 ALTER TABLE `ranking_t` DISABLE KEYS */;
INSERT INTO `ranking_t` VALUES (1,'《视与听》影史TOP100 影评人版',NULL,'2012-09-01',NULL,NULL,NULL),(2,'《视与听》影史TOP100 导演版',NULL,'2012-09-01',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ranking_t` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-01  8:54:07

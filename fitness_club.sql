-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: fitness_club
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `abonement`
--

DROP TABLE IF EXISTS `abonement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abonement` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `period_validity` int unsigned DEFAULT NULL,
  `freezing` int unsigned DEFAULT NULL,
  `type_abonement` varchar(40) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abonement`
--

LOCK TABLES `abonement` WRITE;
/*!40000 ALTER TABLE `abonement` DISABLE KEYS */;
INSERT INTO `abonement` VALUES (1,'индивидуальная 365/45',365,45,'индивидуальная','Стартовый пакет: фитнес-тестирование, вводное занятие в тренажерном зале, \r\n	зоне групповых программ и бассейне, комплимент от бара, spa-услуга в подарок, один гостевой визит, доступ во все зоны клуба',35000),(2,'индивидуальная 730/90',730,90,'индивидуальная','Стартовый пакет: фитнес-тестирование, вводное занятие в тренажерном зале, \r\n	зоне групповых программ и бассейне, комплимент от бара, spa-услуга в подарок, один гостевой визит, доступ во все зоны клуба',47000),(3,'индивидуальная 730/60',730,60,'индивидуальная','Стартовый пакет: фитнес-тестирование, вводное занятие в тренажерном зале, \r\n	зоне групповых программ и бассейне, комплимент от бара, spa-услуга в подарок, один гостевой визит, доступ во все зоны клуба',42000),(4,'корпортативная 365/45',365,45,'корпоративная','Стартовый пакет: фитнес-тестирование, вводное занятие в тренажерном зале, \r\n	зоне групповых программ и бассейне, комплимент от бара, spa-услуга в подарок, один гостевой визит, доступ во все зоны клуба',38000),(5,'дневная 365/30',365,30,'дневная','Стартовый пакет: фитнес-тестирование, вводное занятие в тренажерном зале, \r\n	зоне групповых программ и бассейне, комплимент от бара, spa-услуга в подарок, один гостевой визит, доступ во все зоны клуба, только\r\n	в определенный период времени (7-17)',28000),(6,'детская 365/45',365,45,'детская','Стартовый пакет: фитнес-тестирование, вводное занятие в зоне групповых программ и бассейне,\r\n	комплимент от бара, spa-услуга в подарок, один гостевой визит, доступ во все зоны клуба, только для возраста 3-14',28000);
/*!40000 ALTER TABLE `abonement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (1,'Мосфильмовский','ул. Мосфильмовская, д. 88, корп. 2','84956630001','Москва'),(2,'Отрадное','ул. Отрадная, д. 8','84956630002','Москва'),(3,'Фьюжн','ул. Усачева, д. 2, стр. 3','84956630004','Москва'),(4,'Авиамоторная','ул. Авиамоторная, д. 10 корп.1','84956630003','Москва'),(5,'Гагаринский','Юрия Гагарина пр-кт, д.71','88126630005','Санкт-Петербург'),(6,'Арена','проспект Ямашева, 115а','84006630005','Казань'),(7,'ANTARES','ул. Шейнкмана, д. 121','87006630006','Екатеринбург'),(8,'Иркутск','ул. Советская, д. 58','83952792500','Иркутск'),(9,'Морской фасад','ул. Кораблестроителей, д. 32/2','88124493311','Санкт-Петербург'),(10,'Клевер','ул. Ткачей, д. 17','83433129999','Екатеринбург');
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `education` text,
  `advances` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,'Лидия','Макарова','Российский государственный университет нефти и газа им. И. М. Губкина. Диплом о профессиональной переподготовке с правом ведения \r\n	профессиональной деятельности в сфере физической культуры и спорта','Кандидат в мастера спорта по спортивной аэробике. Презентер российских конвенций по \r\n	направлениям step, aero'),(2,'Софья','Петрова','Высшее. Российский государственный университет физической культуры спорта молодёжи и \r\n	туризма. Магистратура: физиология РГУФКСМиТ','Мастер спорта по художественной гимнастике'),(3,'Иван','Богатырев','Московская государственная академия физической культуры. Сертифицированный тренер Les Mills','КМС по плаванию'),(4,'Наталья','Егорова','Школа фитнес инструктора Fitnesservice. Международный образовательный центр фитнеса TOP Eurofit',NULL),(5,'Игорь','Ершов','Высшее профессиональное, педагогическое - Российский Государственный Педагогический Университет, \r\n	спортивный менеджмент','МС по тайскому боксу и кикбоксингу'),(6,'Антон','Харитонов','Белгородский Государственный университет, педагогическое образование по ФК','Мастер спорта по боевому самбо, мастер спорта по смешанным единоборствам (ММА)'),(7,'Аделина','Колосова','Российский Государственный Университет Прикладной Биотехнологии. Сертифицированный тренер ФФАР','Лектор обучающих семинаров'),(8,'Оксана','Морозова','Преподаватель йоги Айенгара и методов Yamuna Zake. Международный сертификат Junior \r\n	Intermediate ll 2017 год',NULL),(9,'Илья','Савинов','Владимирский Государственный Педагогический Университет, факультет физической культуры','КМС по тхэквондо'),(10,'Анна','Антонова','Московский Психилого-социальный институт. Сертифицированный тренер Synergy - программы Les Mills','Кандидат в мастера спорта по художественной гимнастике');
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_programm`
--

DROP TABLE IF EXISTS `manage_programm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_programm` (
  `id_programm` bigint unsigned NOT NULL,
  `id_coach` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_programm`,`id_coach`),
  KEY `id_coach` (`id_coach`),
  CONSTRAINT `manage_programm_ibfk_1` FOREIGN KEY (`id_coach`) REFERENCES `coaches` (`id`),
  CONSTRAINT `manage_programm_ibfk_2` FOREIGN KEY (`id_programm`) REFERENCES `programms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_programm`
--

LOCK TABLES `manage_programm` WRITE;
/*!40000 ALTER TABLE `manage_programm` DISABLE KEYS */;
INSERT INTO `manage_programm` VALUES (1,1),(1,2),(6,2),(4,3),(5,3),(2,4),(8,4),(3,5),(3,6),(9,6),(2,7),(8,8),(10,8),(6,10),(7,10);
/*!40000 ALTER TABLE `manage_programm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programms`
--

DROP TABLE IF EXISTS `programms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `description` text,
  `programm_type` varchar(100) DEFAULT NULL,
  `level_workload` enum('любой','начальный','средний','интенсивный') DEFAULT NULL,
  `age_category` enum('дети','взрослые') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programms`
--

LOCK TABLES `programms` WRITE;
/*!40000 ALTER TABLE `programms` DISABLE KEYS */;
INSERT INTO `programms` VALUES (1,'Make body','00:55:00','Тренировки по этой программе укрепляют все основные группы мышц, сжигают лишние калории,\r\n	способствуют снижению веса, заменяют тренировку в тренажерном зале, повышают общую силу и выносливость, улучшают \r\n	кардиовыносливость','Силовой и функциональный тренинг','любой','взрослые'),(2,'Функциональный тренинг','00:55:00','Одно из самых энергоемких занятий, которое развивает все основные \r\n	двигательные качества человека. Использование самого различного оборудования в виде нестабильных платформ и поверхностей, \r\n	разнообразных свободных весов и амортизаторов позволяет сделать эту тренировку максимально эффективной','Силовой и функциональный тренинг','любой','взрослые'),(3,'CBS','00:55:00','Программа CBS создана на основе трех составляющих – Contact (с использованием fit-box), \r\n	Blade (фехтование), Shadow (с тенью). В уроке сочетаются такие стили боевых искусств, как бокс, кикбоксинг, таэквондо, \r\n	фехтование, элементы капоэйро.','Боевые искусства','любой','взрослые'),(4,'Noodles Begginers','00:50:00','Соединение базовой аквааэробики и оборудования noodle - гибкой палки, которая \r\n	помогает держаться на воде. Обучение основным движениям, тренировка аэробной выносливости и координации.','Водные программы','начальный','взрослые'),(5,'Плавание для детей','00:45:00','Для детей  и подростков 9 - 16 лет. Тренировка по спортивному плаванию, \r\n	совершенствование техники, развитие скоростно-силовых качеств и выносливости. На занятии используются специальные упражнения, \r\n	которые помогут исправить основные ошибки в технике плавания.','Детский фитнес','любой','дети'),(6,'Dance mix','00:55:00','Танцевальная программа с хореографией в различных танцевальных стилях.','Танцевальные программы','интенсивный','взрослые'),(7,'Body ballet','00:55:00','Танцевальная программа с элементами классической хореографии','Танцевальные программы','средний','взрослые'),(8,'Hiit','00:30:00','Это интенсивная плиометрическая тренировка с быстрым результатом! Сочетание принципов \r\n	плиометрической тренировки и тренировки мощности и выносливости мышц, с использованием степ платформы, позволит достичь \r\n	стройного, атлетического телосложения за короткий срок.','Силовой и функциональный тренинг','средний','взрослые'),(9,'Boxing','00:55:00','Занятия боксом вырабатывают способность быстро принимать решения и максимально полно и \r\n	рационально использовать окружающее пространство. Бокс тренирует скорость, выносливость и реакцию.','Боевые искусства','любой','взрослые'),(10,'Йога для начинающих','00:55:00','Yoga 1 — это первый этап изучения древней восточной мудрости, нацеленный на \r\n	изучение основных поз йоги, техник правильного дыхания и расслабления. Тренировки по этой программе укрепляют глубокие мышцы \r\n	всего тела, способствуют вытяжению позвоночника, развивают гибкость и контроль над телом.','Mind and body','средний','взрослые');
/*!40000 ALTER TABLE `programms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mark_1` tinyint(1) DEFAULT '0' COMMENT 'Реально помогает достичь цели в ожидаемый срок',
  `mark_2` tinyint(1) DEFAULT '0' COMMENT 'Мотивирует к работе над собой',
  `mark_3` tinyint(1) DEFAULT '0' COMMENT 'Творчески подходит к построению тренировок',
  `mark_4` tinyint(1) DEFAULT '0' COMMENT 'Заряжает положительными эмоциями и уверенностью в своих силах',
  `mark_5` tinyint(1) DEFAULT '0' COMMENT 'Внимателен ко всем клиентам на групповом занятии',
  `id_coach` bigint unsigned NOT NULL,
  `id_card` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_coach` (`id_coach`),
  KEY `id_card` (`id_card`),
  CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`id_coach`) REFERENCES `coaches` (`id`),
  CONSTRAINT `responses_ibfk_2` FOREIGN KEY (`id_card`) REFERENCES `user_card` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
INSERT INTO `responses` VALUES (1,0,0,1,1,0,1,288591),(2,1,0,1,1,0,7,288592),(3,0,1,1,1,0,10,288600),(4,1,1,1,1,0,3,288596),(5,0,0,1,0,1,3,288592),(6,0,1,1,1,1,7,288597),(7,0,0,1,1,0,8,288600),(8,1,0,1,0,0,8,288593),(9,1,0,1,0,0,2,288598),(10,1,0,1,1,1,10,288594);
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_club` bigint unsigned NOT NULL,
  `id_programm` bigint unsigned NOT NULL,
  `id_coach` bigint unsigned NOT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `participant_limit` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_club` (`id_club`),
  KEY `id_programm` (`id_programm`,`id_coach`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`id_club`) REFERENCES `clubs` (`id`),
  CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`id_programm`, `id_coach`) REFERENCES `manage_programm` (`id_programm`, `id_coach`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,1,1,1,'2022-03-14','19:00:00',12),(2,1,9,6,'2022-03-15','20:00:00',5),(3,2,4,3,'2022-03-15','19:00:00',10),(4,2,2,7,'2022-03-14','19:30:00',15),(5,3,3,5,'2022-03-16','19:00:00',6),(6,3,1,2,'2022-03-14','20:30:00',12),(7,4,6,10,'2022-03-14','19:00:00',10),(8,1,1,1,'2022-03-18','19:00:00',12),(9,3,6,2,'2022-03-19','11:00:00',12),(10,2,8,8,'2022-03-14','19:30:00',15);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign_up_for_programm`
--

DROP TABLE IF EXISTS `sign_up_for_programm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sign_up_for_programm` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_card` bigint unsigned NOT NULL,
  `id_schedule` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_card` (`id_card`),
  KEY `id_schedule` (`id_schedule`),
  CONSTRAINT `sign_up_for_programm_ibfk_1` FOREIGN KEY (`id_card`) REFERENCES `user_card` (`id`),
  CONSTRAINT `sign_up_for_programm_ibfk_2` FOREIGN KEY (`id_schedule`) REFERENCES `schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign_up_for_programm`
--

LOCK TABLES `sign_up_for_programm` WRITE;
/*!40000 ALTER TABLE `sign_up_for_programm` DISABLE KEYS */;
INSERT INTO `sign_up_for_programm` VALUES (1,288591,1,'2022-03-13 18:18:05','2022-03-13 18:18:05'),(2,288592,4,'2022-03-13 18:18:05','2022-03-13 18:18:05'),(3,288593,10,'2022-03-13 18:18:05','2022-03-13 18:18:05'),(4,288591,8,'2022-03-13 18:18:05','2022-03-13 18:18:05'),(5,288594,5,'2022-03-13 18:18:05','2022-03-13 18:18:05'),(6,288595,1,'2022-03-13 18:18:05','2022-03-13 18:18:05'),(7,288596,3,'2022-03-13 18:18:05','2022-03-13 18:18:05'),(8,288592,3,'2022-03-13 18:18:05','2022-03-13 18:18:05'),(9,288598,9,'2022-03-13 18:18:05','2022-03-13 18:18:05'),(10,288594,9,'2022-03-13 18:18:05','2022-03-13 18:18:05');
/*!40000 ALTER TABLE `sign_up_for_programm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_card`
--

DROP TABLE IF EXISTS `user_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_card` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `abonement_id` bigint unsigned NOT NULL,
  `date_validity_start` datetime DEFAULT NULL,
  `date_validaty_end` datetime DEFAULT NULL,
  `freezing_available` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_id_2` (`user_id`),
  KEY `abonement_id` (`abonement_id`),
  CONSTRAINT `user_card_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_card_ibfk_2` FOREIGN KEY (`abonement_id`) REFERENCES `abonement` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=288601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_card`
--

LOCK TABLES `user_card` WRITE;
/*!40000 ALTER TABLE `user_card` DISABLE KEYS */;
INSERT INTO `user_card` VALUES (288591,1,1,'2021-12-03 00:00:00','2022-12-03 00:00:00',45),(288592,2,1,'2021-06-17 00:00:00','2022-06-17 00:00:00',45),(288593,3,2,'2021-12-03 00:00:00','2023-12-03 00:00:00',90),(288594,4,5,'2021-11-07 00:00:00','2022-11-07 00:00:00',30),(288595,5,2,'2020-07-25 00:00:00','2022-07-25 00:00:00',90),(288596,6,3,'2022-01-25 00:00:00','2024-01-25 00:00:00',60),(288597,7,3,'2021-08-04 00:00:00','2023-08-04 00:00:00',60),(288598,8,1,'2021-09-14 00:00:00','2022-09-14 00:00:00',45),(288599,9,2,'2020-10-13 00:00:00','2022-10-13 00:00:00',90),(288600,10,4,'2022-02-07 00:00:00','2023-02-07 00:00:00',45);
/*!40000 ALTER TABLE `user_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_freezing_av` BEFORE INSERT ON `user_card` FOR EACH ROW BEGIN 
	SET @id = NEW.abonement_id;
	SET @freezing1 = (SELECT freezing FROM abonement WHERE id = @id);
	IF NEW.freezing_available > @freezing1 
	THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Disallowed value for column "freezing_available"';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `add_date_validaty_end` BEFORE INSERT ON `user_card` FOR EACH ROW BEGIN 
	SET @id = NEW.abonement_id;
	SET @pv = (SELECT period_validity FROM abonement WHERE id = @id);
	SET NEW.date_validaty_end = adddate(NEW.date_validity_start, @pv);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `password_hash` char(65) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Екатерина','Родинова','2000-07-24','89623566621','rodionova@mail.ru','81dc9bdb52d04dc20036dbd8313ed055','2022-03-06 11:35:12','2022-03-06 11:35:12'),(2,'Петр','Семенов','1981-12-07','89623566622','semenov@mail.ru','81dc9bdb52d04dc20036dbd8313ed056','2022-03-06 11:35:12','2022-03-06 11:35:12'),(3,'Ольга','Максимова','1972-08-15','89623566623','maksimova@mail.ru','81dc9bdb52d04dc20036dbd8313ed057','2022-03-06 11:35:12','2022-03-06 11:35:12'),(4,'Павел','Леонов','1985-07-12','89623566624','leonov@mail.ru','81dc9bdb52d04dc20036dbd8313ed058','2022-03-06 11:35:12','2022-03-06 11:35:12'),(5,'Антон','Сергеев','1995-11-04','89623566625','sergeev@mail.ru','81dc9bdb52d04dc20036dbd8313ed059','2022-03-06 11:35:12','2022-03-06 11:35:12'),(6,'Мария','Семыкина','1992-10-10','89623566626','semykina@mail.ru','81dc9bdb52d04dc20036dbd8313ed060','2022-03-06 11:35:12','2022-03-06 11:35:12'),(7,'Анастасия','Капралова','1983-01-13','89623566627','kapralova@mail.ru','81dc9bdb52d04dc20036dbd8313ed061','2022-03-06 11:35:12','2022-03-06 11:35:12'),(8,'Андрей','Коровьев','1976-02-28','89623566628','koroviev@mail.ru','81dc9bdb52d04dc20036dbd8313ed062','2022-03-06 11:35:12','2022-03-06 11:35:12'),(9,'Сергей','Манилов','1980-03-04','89623566629','manilov@mail.ru','81dc9bdb52d04dc20036dbd8313ed063','2022-03-06 11:35:12','2022-03-06 11:35:12'),(10,'Федор','Любимов','1988-05-24','89623566630','lubimov@mail.ru','81dc9bdb52d04dc20036dbd8313ed064','2022-03-06 11:35:12','2022-03-06 11:35:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-13 19:10:52

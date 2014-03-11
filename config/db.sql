-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: helmholtz_development
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.2

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
-- Table structure for table `refinery_images`
--

DROP TABLE IF EXISTS `refinery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `image_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_images`
--

LOCK TABLES `refinery_images` WRITE;
/*!40000 ALTER TABLE `refinery_images` DISABLE KEYS */;
INSERT INTO `refinery_images` VALUES (1,'image/jpeg','053ce480796ca8fc5b1a81ea3612854b.jpg',295919,960,640,'2014/03/10/23_50_11_630_053ce480796ca8fc5b1a81ea3612854b.jpg','2014-03-10 15:50:11','2014-03-10 15:50:11'),(2,'image/jpeg','053ce480796ca8fc5b1a81ea3612854b.jpg',181257,960,320,'2014/03/11/16_04_35_36_053ce480796ca8fc5b1a81ea3612854b.jpg','2014-03-11 08:04:35','2014-03-11 08:04:35');
/*!40000 ALTER TABLE `refinery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_part_translations`
--

DROP TABLE IF EXISTS `refinery_page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_part_translations_on_refinery_page_part_id` (`refinery_page_part_id`),
  KEY `index_refinery_page_part_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_part_translations`
--

LOCK TABLES `refinery_page_part_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_part_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_part_translations` VALUES (1,1,'en','2014-03-05 09:47:56','2014-03-05 09:47:56','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>'),(2,2,'en','2014-03-05 09:47:56','2014-03-05 09:47:56','<p>This is another block of content over here.</p>'),(3,3,'en','2014-03-05 09:47:56','2014-03-05 09:47:56','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>'),(4,4,'en','2014-03-05 09:47:56','2014-03-05 13:45:35','<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\r\n\r\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>'),(5,5,'en','2014-03-05 09:47:56','2014-03-05 09:47:56','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>'),(6,6,'en','2014-03-05 13:45:50','2014-03-05 13:45:50',''),(7,7,'en','2014-03-05 13:45:50','2014-03-05 13:45:50',''),(8,8,'en','2014-03-05 13:46:18','2014-03-05 13:46:18',''),(9,9,'en','2014-03-05 13:46:18','2014-03-05 13:46:18',''),(12,12,'en','2014-03-05 13:55:18','2014-03-05 13:55:18',''),(13,13,'en','2014-03-05 13:55:18','2014-03-05 13:55:18',''),(14,14,'en','2014-03-05 13:55:33','2014-03-05 13:55:33',''),(15,15,'en','2014-03-05 13:55:33','2014-03-05 13:55:33',''),(16,16,'en','2014-03-05 13:55:53','2014-03-05 13:55:53',''),(17,17,'en','2014-03-05 13:55:53','2014-03-05 13:55:53',''),(18,18,'en','2014-03-05 13:56:19','2014-03-05 13:56:19',''),(19,19,'en','2014-03-05 13:56:19','2014-03-05 13:56:19',''),(20,20,'en','2014-03-05 14:26:44','2014-03-05 14:26:44',''),(21,21,'en','2014-03-05 14:26:44','2014-03-05 14:26:44',''),(22,22,'en','2014-03-05 14:27:00','2014-03-05 14:27:00',''),(23,23,'en','2014-03-05 14:27:00','2014-03-05 14:27:00',''),(24,24,'en','2014-03-05 14:27:27','2014-03-11 07:37:15','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMDMvMTAvMjNfNTBfMTFfNjMwXzA1M2NlNDgwNzk2Y2E4ZmM1YjFhODFlYTM2MTI4NTRiLmpwZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MD4iXSxbInAiLCJzdHJpcCJdXQ/053ce480796ca8fc5b1a81ea3612854b.jpg\" title=\"053ce480796ca8fc5b1a81ea3612854b\" alt=\"053ce480796ca8fc5b1a81ea3612854b\" data-rel=\"450x450\" width=\"450\" height=\"300\" />hello world</p>'),(25,25,'en','2014-03-05 14:27:27','2014-03-05 14:27:27',''),(26,26,'en','2014-03-05 14:29:42','2014-03-05 14:29:42',''),(27,27,'en','2014-03-05 14:29:42','2014-03-05 14:29:42',''),(28,28,'en','2014-03-05 14:30:03','2014-03-05 14:30:03',''),(29,29,'en','2014-03-05 14:30:03','2014-03-05 14:30:03',''),(30,30,'en','2014-03-05 15:25:57','2014-03-10 15:50:39','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMDMvMTAvMjNfNTBfMTFfNjMwXzA1M2NlNDgwNzk2Y2E4ZmM1YjFhODFlYTM2MTI4NTRiLmpwZyJdLFsicCIsInRodW1iIiwiMjI1eDI1NT4iXSxbInAiLCJzdHJpcCJdXQ/053ce480796ca8fc5b1a81ea3612854b.jpg\" title=\"053ce480796ca8fc5b1a81ea3612854b\" alt=\"053ce480796ca8fc5b1a81ea3612854b\" data-rel=\"225x255\" width=\"225\" height=\"150\" /></p>\r\n<p>dstdsafffffffffffffffffffffffffffffffffffffff</p>'),(31,31,'en','2014-03-05 15:25:57','2014-03-05 15:25:57',''),(32,32,'en','2014-03-11 08:04:54','2014-03-11 08:04:54','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMDMvMTEvMTZfMDRfMzVfMzZfMDUzY2U0ODA3OTZjYThmYzViMWE4MWVhMzYxMjg1NGIuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdLFsicCIsInN0cmlwIl1d/053ce480796ca8fc5b1a81ea3612854b.jpg\" title=\"053ce480796ca8fc5b1a81ea3612854b\" alt=\"053ce480796ca8fc5b1a81ea3612854b\" data-rel=\"225x255\" width=\"225\" height=\"75\" /></p>');
/*!40000 ALTER TABLE `refinery_page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_parts`
--

DROP TABLE IF EXISTS `refinery_page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_parts_on_id` (`id`),
  KEY `index_refinery_page_parts_on_refinery_page_id` (`refinery_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_parts`
--

LOCK TABLES `refinery_page_parts` WRITE;
/*!40000 ALTER TABLE `refinery_page_parts` DISABLE KEYS */;
INSERT INTO `refinery_page_parts` VALUES (1,1,'Body','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>',0,'2014-03-05 09:47:56','2014-03-05 09:47:56'),(2,1,'Side Body','<p>This is another block of content over here.</p>',1,'2014-03-05 09:47:56','2014-03-05 09:47:56'),(3,2,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2014-03-05 09:47:56','2014-03-05 09:47:56'),(4,3,'Body','<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\r\n\r\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>',0,'2014-03-05 09:47:56','2014-03-05 13:45:35'),(5,3,'Side Body','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>',1,'2014-03-05 09:47:56','2014-03-05 09:47:56'),(6,4,'Body','',0,'2014-03-05 13:45:50','2014-03-05 13:45:50'),(7,4,'Side Body','',1,'2014-03-05 13:45:50','2014-03-05 13:45:50'),(8,5,'Body','',0,'2014-03-05 13:46:18','2014-03-05 13:46:18'),(9,5,'Side Body','',1,'2014-03-05 13:46:18','2014-03-05 13:46:18'),(12,7,'Body','',0,'2014-03-05 13:55:18','2014-03-05 13:55:18'),(13,7,'Side Body','',1,'2014-03-05 13:55:18','2014-03-05 13:55:18'),(14,8,'Body','',0,'2014-03-05 13:55:33','2014-03-05 13:55:33'),(15,8,'Side Body','',1,'2014-03-05 13:55:33','2014-03-05 13:55:33'),(16,9,'Body','',0,'2014-03-05 13:55:53','2014-03-05 13:55:53'),(17,9,'Side Body','',1,'2014-03-05 13:55:53','2014-03-05 13:55:53'),(18,10,'Body','',0,'2014-03-05 13:56:19','2014-03-05 13:56:19'),(19,10,'Side Body','',1,'2014-03-05 13:56:19','2014-03-05 13:56:19'),(20,11,'Body','',0,'2014-03-05 14:26:44','2014-03-05 14:26:44'),(21,11,'Side Body','',1,'2014-03-05 14:26:44','2014-03-05 14:26:44'),(22,12,'Body','',0,'2014-03-05 14:27:00','2014-03-05 14:27:00'),(23,12,'Side Body','',1,'2014-03-05 14:27:00','2014-03-05 14:27:00'),(24,13,'Body','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMDMvMTAvMjNfNTBfMTFfNjMwXzA1M2NlNDgwNzk2Y2E4ZmM1YjFhODFlYTM2MTI4NTRiLmpwZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MD4iXSxbInAiLCJzdHJpcCJdXQ/053ce480796ca8fc5b1a81ea3612854b.jpg\" title=\"053ce480796ca8fc5b1a81ea3612854b\" alt=\"053ce480796ca8fc5b1a81ea3612854b\" data-rel=\"450x450\" width=\"450\" height=\"300\" />hello world</p>',0,'2014-03-05 14:27:27','2014-03-11 07:37:15'),(25,13,'Side Body','',1,'2014-03-05 14:27:27','2014-03-05 14:27:27'),(26,14,'Body','',0,'2014-03-05 14:29:42','2014-03-05 14:29:42'),(27,14,'Side Body','',1,'2014-03-05 14:29:42','2014-03-05 14:29:42'),(28,15,'Body','',0,'2014-03-05 14:30:03','2014-03-05 14:30:03'),(29,15,'Side Body','',1,'2014-03-05 14:30:03','2014-03-05 14:30:03'),(30,16,'Body','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMDMvMTAvMjNfNTBfMTFfNjMwXzA1M2NlNDgwNzk2Y2E4ZmM1YjFhODFlYTM2MTI4NTRiLmpwZyJdLFsicCIsInRodW1iIiwiMjI1eDI1NT4iXSxbInAiLCJzdHJpcCJdXQ/053ce480796ca8fc5b1a81ea3612854b.jpg\" title=\"053ce480796ca8fc5b1a81ea3612854b\" alt=\"053ce480796ca8fc5b1a81ea3612854b\" data-rel=\"225x255\" width=\"225\" height=\"150\" /></p>\r\n<p>dstdsafffffffffffffffffffffffffffffffffffffff</p>',0,'2014-03-05 15:25:57','2014-03-10 15:50:39'),(31,16,'Side Body','',1,'2014-03-05 15:25:57','2014-03-05 15:25:57'),(32,16,'smallpage','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMDMvMTEvMTZfMDRfMzVfMzZfMDUzY2U0ODA3OTZjYThmYzViMWE4MWVhMzYxMjg1NGIuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdLFsicCIsInN0cmlwIl1d/053ce480796ca8fc5b1a81ea3612854b.jpg\" title=\"053ce480796ca8fc5b1a81ea3612854b\" alt=\"053ce480796ca8fc5b1a81ea3612854b\" data-rel=\"225x255\" width=\"225\" height=\"75\" /></p>',2,'2014-03-11 08:04:54','2014-03-11 08:04:54');
/*!40000 ALTER TABLE `refinery_page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_translations`
--

DROP TABLE IF EXISTS `refinery_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_translations_on_refinery_page_id` (`refinery_page_id`),
  KEY `index_refinery_page_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_translations`
--

LOCK TABLES `refinery_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_translations` VALUES (1,1,'en','2014-03-05 09:47:56','2014-03-10 15:44:18','Home','','','home'),(2,2,'en','2014-03-05 09:47:56','2014-03-05 09:47:56','Page not found',NULL,NULL,'page-not-found'),(3,3,'en','2014-03-05 09:47:56','2014-03-05 13:45:35','ueber_uns','','','ueber_uns'),(4,4,'en','2014-03-05 13:45:50','2014-03-05 13:45:50','themen','','','themen'),(5,5,'en','2014-03-05 13:46:18','2014-03-10 19:16:29','mission','mission','任务','mission'),(7,7,'en','2014-03-05 13:55:18','2014-03-05 13:55:18','pakt_fuer_forschung_und_innovation','','','pakt_fuer_forschung_und_innovation'),(8,8,'en','2014-03-05 13:55:33','2014-03-05 13:55:33','programmorientierte_foerderung','','','programmorientierte_foerderung'),(9,9,'en','2014-03-05 13:55:53','2014-03-05 13:55:53','bildung','','','bildung'),(10,10,'en','2014-03-05 13:56:19','2014-03-05 13:56:19','energie','','','energie'),(11,11,'en','2014-03-05 14:26:44','2014-03-05 14:26:44','helmholtz_zentren_netzwerke','','','helmholtz_zentren_netzwerke'),(12,12,'en','2014-03-05 14:27:00','2014-03-05 14:27:00','helmholtz_institute','','','helmholtz_institute'),(13,13,'en','2014-03-05 14:27:27','2014-03-05 14:27:27','helmholtz_institut_erlangen_nuernberg','','','helmholtz_institut_erlangen_nuernberg'),(14,14,'en','2014-03-05 14:29:42','2014-03-05 14:29:42','helmholtz_institut_freiberg','','','helmholtz_institut_freiberg'),(15,15,'en','2014-03-05 14:30:03','2014-03-05 14:30:03','helmholtz_institut_jena','','','helmholtz_institut_jena'),(16,16,'en','2014-03-05 15:25:57','2014-03-05 15:25:57','helmholtz_zentren','','','helmholtz_zentren');
/*!40000 ALTER TABLE `refinery_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_pages`
--

DROP TABLE IF EXISTS `refinery_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_match` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `view_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_sticky_page` tinyint(1) DEFAULT '0',
  `is_top_page` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_refinery_pages_on_depth` (`depth`),
  KEY `index_refinery_pages_on_id` (`id`),
  KEY `index_refinery_pages_on_lft` (`lft`),
  KEY `index_refinery_pages_on_parent_id` (`parent_id`),
  KEY `index_refinery_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_pages`
--

LOCK TABLES `refinery_pages` WRITE;
/*!40000 ALTER TABLE `refinery_pages` DISABLE KEYS */;
INSERT INTO `refinery_pages` VALUES (1,NULL,NULL,'home',0,'/','^/$',0,0,0,1,4,0,'home','homelayout','2014-03-05 09:47:56','2014-03-10 19:48:34',0,0),(2,1,NULL,'page-not-found',0,NULL,'^/404$',0,0,0,2,3,1,NULL,NULL,'2014-03-05 09:47:56','2014-03-05 09:47:56',0,0),(3,NULL,NULL,'ueber_uns',1,'',NULL,1,0,0,5,12,0,'show','subpagelayout','2014-03-05 09:47:56','2014-03-10 15:48:07',0,0),(4,NULL,NULL,'themen',1,'',NULL,1,0,0,13,18,0,'show','subpagelayout','2014-03-05 13:45:50','2014-03-10 15:46:01',0,0),(5,3,NULL,'mission',1,'',NULL,1,0,0,6,7,1,'show','subpagelayout','2014-03-05 13:46:18','2014-03-10 19:16:29',0,0),(7,3,NULL,'pakt_fuer_forschung_und_innovation',1,'',NULL,1,0,0,8,9,1,'show','subpagelayout','2014-03-05 13:55:18','2014-03-10 15:47:46',0,0),(8,3,NULL,'programmorientierte_foerderung',1,'',NULL,1,0,0,10,11,1,'show','subpagelayout','2014-03-05 13:55:33','2014-03-10 15:47:34',0,0),(9,4,NULL,'bildung',1,'',NULL,1,0,0,14,15,1,'show','subpagelayout','2014-03-05 13:55:53','2014-03-10 15:46:59',0,0),(10,4,NULL,'energie',1,'',NULL,1,0,0,16,17,1,'show','subpagelayout','2014-03-05 13:56:19','2014-03-10 15:45:51',0,0),(11,NULL,NULL,'helmholtz_zentren_netzwerke',1,'',NULL,1,0,0,19,30,0,'show','subpagelayout','2014-03-05 14:26:44','2014-03-05 15:16:49',0,0),(12,11,NULL,'helmholtz_institute',1,'',NULL,1,0,0,20,27,1,'show','subpagelayout','2014-03-05 14:27:00','2014-03-05 15:16:27',0,0),(13,12,NULL,'helmholtz_institut_erlangen_nuernberg',1,'',NULL,1,0,0,21,22,2,'show','subpagelayout','2014-03-05 14:27:27','2014-03-11 07:36:08',0,1),(14,12,NULL,'helmholtz_institut_freiberg',1,'',NULL,1,0,0,23,24,2,'show','subpagelayout','2014-03-05 14:29:42','2014-03-05 15:15:46',0,0),(15,12,NULL,'helmholtz_institut_jena',1,'',NULL,1,0,0,25,26,2,'show','subpagelayout','2014-03-05 14:30:03','2014-03-05 15:15:58',0,0),(16,11,NULL,'helmholtz_zentren',1,'',NULL,1,0,0,28,29,1,'show','subpagelayout','2014-03-05 15:25:57','2014-03-11 07:40:30',1,0);
/*!40000 ALTER TABLE `refinery_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_resources`
--

DROP TABLE IF EXISTS `refinery_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_resources`
--

LOCK TABLES `refinery_resources` WRITE;
/*!40000 ALTER TABLE `refinery_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_roles`
--

DROP TABLE IF EXISTS `refinery_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_roles`
--

LOCK TABLES `refinery_roles` WRITE;
/*!40000 ALTER TABLE `refinery_roles` DISABLE KEYS */;
INSERT INTO `refinery_roles` VALUES (1,'Refinery'),(2,'Superuser');
/*!40000 ALTER TABLE `refinery_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_roles_users`
--

DROP TABLE IF EXISTS `refinery_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_refinery_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_refinery_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_roles_users`
--

LOCK TABLES `refinery_roles_users` WRITE;
/*!40000 ALTER TABLE `refinery_roles_users` DISABLE KEYS */;
INSERT INTO `refinery_roles_users` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `refinery_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_user_plugins`
--

DROP TABLE IF EXISTS `refinery_user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_refinery_user_plugins_on_user_id_and_name` (`user_id`,`name`),
  KEY `index_refinery_user_plugins_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_user_plugins`
--

LOCK TABLES `refinery_user_plugins` WRITE;
/*!40000 ALTER TABLE `refinery_user_plugins` DISABLE KEYS */;
INSERT INTO `refinery_user_plugins` VALUES (1,1,'refinery_users',0),(2,1,'refinery_dashboard',1),(3,1,'refinery_images',2),(4,1,'refinery_files',3),(5,1,'refinery_pages',4);
/*!40000 ALTER TABLE `refinery_user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_users`
--

DROP TABLE IF EXISTS `refinery_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_users_on_id` (`id`),
  KEY `index_refinery_users_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_users`
--

LOCK TABLES `refinery_users` WRITE;
/*!40000 ALTER TABLE `refinery_users` DISABLE KEYS */;
INSERT INTO `refinery_users` VALUES (1,'fit','f@1.com','$2a$10$xazanKcqi121jRtw2rqNjeS4wecVmDc3sCO1kag1Oo.oUzvju1rp.','2014-03-10 14:30:31','2014-03-05 13:44:57','127.0.0.1','127.0.0.1',2,NULL,NULL,NULL,'2014-03-05 13:44:57','2014-03-10 14:30:31','fit');
/*!40000 ALTER TABLE `refinery_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140225144347'),('20140225144348'),('20140225144350'),('20140225144354'),('20140225144358'),('20140225144359'),('20140225144402'),('20140225144403'),('20140311071626'),('20140311072508');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `id_type_index_on_seo_meta` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (1,1,'Refinery::Page::Translation','','','2014-03-05 09:47:56','2014-03-10 15:44:18'),(2,2,'Refinery::Page::Translation',NULL,NULL,'2014-03-05 09:47:56','2014-03-05 09:47:56'),(3,3,'Refinery::Page::Translation','','','2014-03-05 09:47:56','2014-03-05 13:45:35'),(4,4,'Refinery::Page::Translation','','','2014-03-05 13:45:50','2014-03-05 13:45:50'),(5,5,'Refinery::Page::Translation','','','2014-03-05 13:46:18','2014-03-05 13:46:18'),(7,7,'Refinery::Page::Translation','','','2014-03-05 13:55:18','2014-03-05 13:55:18'),(8,8,'Refinery::Page::Translation','','','2014-03-05 13:55:33','2014-03-05 13:55:33'),(9,9,'Refinery::Page::Translation','','','2014-03-05 13:55:53','2014-03-05 13:55:53'),(10,10,'Refinery::Page::Translation','','','2014-03-05 13:56:19','2014-03-05 13:56:19'),(11,11,'Refinery::Page::Translation','','','2014-03-05 14:26:44','2014-03-05 14:26:44'),(12,12,'Refinery::Page::Translation','','','2014-03-05 14:27:00','2014-03-05 14:27:00'),(13,13,'Refinery::Page::Translation','','','2014-03-05 14:27:27','2014-03-05 14:27:27'),(14,14,'Refinery::Page::Translation','','','2014-03-05 14:29:42','2014-03-05 14:29:42'),(15,15,'Refinery::Page::Translation','','','2014-03-05 14:30:03','2014-03-05 14:30:03'),(16,16,'Refinery::Page::Translation','','','2014-03-05 15:25:57','2014-03-05 15:25:57');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-11 16:31:47

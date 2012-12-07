-- MySQL dump 10.10
--
-- Host: localhost    Database: interest
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `activity_title` varchar(100) default NULL,
  `activity_begintime` datetime default NULL,
  `activity_endtime` datetime default NULL,
  `activity_content` varchar(2000) default NULL,
  `activity_islegal` tinyint(4) default NULL,
  `activity_status` tinyint(4) default NULL,
  PRIMARY KEY  (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `activity`
--


/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
LOCK TABLES `activity` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;

--
-- Table structure for table `activitycomment`
--

DROP TABLE IF EXISTS `activitycomment`;
CREATE TABLE `activitycomment` (
  `activitycomment_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `activity_id` int(11) default NULL,
  `activitycomment_content` varchar(1000) default NULL,
  `activitycomment_time` datetime default NULL,
  PRIMARY KEY  (`activitycomment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `activitycomment`
--


/*!40000 ALTER TABLE `activitycomment` DISABLE KEYS */;
LOCK TABLES `activitycomment` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `activitycomment` ENABLE KEYS */;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `user_id` int(11) default NULL,
  `activity_id` int(11) default NULL,
  `collection_time` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `collection`
--


/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
LOCK TABLES `collection` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
CREATE TABLE `friendship` (
  `user1id` int(11) default NULL,
  `user2id` int(11) default NULL,
  `friendship_status` tinyint(4) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `friendship`
--


/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
LOCK TABLES `friendship` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;

--
-- Table structure for table `participation`
--

DROP TABLE IF EXISTS `participation`;
CREATE TABLE `participation` (
  `user_id` int(11) default NULL,
  `activity_id` int(11) default NULL,
  `participation_time` datetime default NULL,
  `participation_duty` tinyint(4) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `participation`
--


/*!40000 ALTER TABLE `participation` DISABLE KEYS */;
LOCK TABLES `participation` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `participation` ENABLE KEYS */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL auto_increment,
  `post_time` datetime default NULL,
  `post_content` varchar(1000) default NULL,
  `userid` int(11) default NULL,
  PRIMARY KEY  (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `post`
--


/*!40000 ALTER TABLE `post` DISABLE KEYS */;
LOCK TABLES `post` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_password` varchar(100) default NULL,
  `user_name` varchar(50) default NULL,
  `user_email` varchar(100) default NULL,
  `user_birthday` datetime default NULL,
  `user_address` varchar(100) default NULL,
  `user_university` varchar(50) default NULL,
  `user_hometown` varchar(100) default NULL,
  `user_hobby` varchar(100) default NULL,
  `user_major` varchar(100) default NULL,
  `user_sex` tinyint(4) default NULL,
  `user_dream` varchar(1000) default NULL,
  `user_motto` varchar(1000) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `user`
--


/*!40000 ALTER TABLE `user` DISABLE KEYS */;
LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'123456','shanyuan',NULL,'2012-12-05 22:31:47','北京海淀','北京交通大学','广东省东莞市桥头镇',NULL,'软件工程',NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


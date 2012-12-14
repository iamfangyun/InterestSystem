-- MySQL dump 10.13  Distrib 5.1.62, for Win32 (ia32)
--
-- Host: localhost    Database: interest
-- ------------------------------------------------------
-- Server version	5.1.62-community

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `activity_title` varchar(100) DEFAULT NULL,
  `activity_begintime` datetime DEFAULT NULL,
  `activity_endtime` datetime DEFAULT NULL,
  `activity_content` varchar(2000) DEFAULT NULL,
  `activity_islegal` tinyint(4) DEFAULT NULL,
  `activity_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,1,'圣诞夜派对','2012-12-24 20:00:00','2012-12-25 01:00:00','平安夜晚上8点，在北京交通大学逸夫楼602，我们将举办圣诞夜派对哦！人数仅限35人！当晚参加者可以免费领取圣诞夜苹果一个哦！我们还会放映电影，希望大家赶快报名参加！',0,0),(2,3,'集体打雪仗','2012-12-19 14:00:00','2012-12-19 16:00:00','北京好久没有下这么大的雪了，今天看到雪真的超级兴奋，所以我想在12月19号的时候，举办一场集体打雪仗，地点就在北京交通大学芳华园！下午2点，大家快来报名啊！还可以拍下很多有意义的照片哦！人数只限20人！',0,0),(3,4,'集体看电影','2012-12-20 20:00:00','2012-12-20 22:00:00','在世界末日的前一天晚上，大家一起出来看电影吧，在北京交通大学逸夫楼602，人数限30人，本来计划放映2012，但是大家都看过了，所以改为看CUBE，集体看恐怖片哦，让我们给你一个不一样的末日前夜！',0,0),(4,2,'呷哺呷哺','2012-12-16 11:30:00','2012-12-16 13:30:00','冬天吃货们是不是总想要吃暖胃的食物呢？一起走起去吃呷哺呷哺吧，在北京四道口那里，认识仅限10人哦！大家一起品尝美味，何乐而不为？大家快来报名吧！！',0,0),(5,5,'刷夜复习','2012-12-27 23:00:00','2012-12-27 23:00:00','大作业，期末复习...千万种作业以及复习资料，让人鸭梨真的很大啊...我想说，在27号晚上，大家一起刷夜出来复习吧，地点在北京交通大学东门小熊咖啡，仅限4人，大家一起苦逼的复习吧，王道！',0,0),(6,4,'故宫冬日游','2012-12-29 10:00:00','2012-12-29 13:00:00','冬日游故宫，正逢北京下雪，白雪皑皑的故宫，会不会给人一种穿越的感觉呢，在12月29日早上10点，我们一起出发去故宫，仅限8人！相机我可以带哦！我们一起美美的感受冬日故宫吧！期待你的加入！',0,0),(7,3,'外出滑雪','2012-01-26 10:00:00','2012-01-26 16:00:00','寒假的时候组团出来滑雪吧！体验一下大家滑雪的热闹哦！地点在北京南山滑雪场，限人数15人！在寒假的时候，让我们一起High起来吧！',0,0);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activitycomment`
--

DROP TABLE IF EXISTS `activitycomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activitycomment` (
  `activitycomment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `activitycomment_content` varchar(1000) DEFAULT NULL,
  `activitycomment_time` datetime DEFAULT NULL,
  PRIMARY KEY (`activitycomment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitycomment`
--

LOCK TABLES `activitycomment` WRITE;
/*!40000 ALTER TABLE `activitycomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `activitycomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `user_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `collection_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendship` (
  `user1id` int(11) DEFAULT NULL,
  `user2id` int(11) DEFAULT NULL,
  `friendship_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participation`
--

DROP TABLE IF EXISTS `participation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participation` (
  `user_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `participation_time` datetime DEFAULT NULL,
  `participation_duty` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participation`
--

LOCK TABLES `participation` WRITE;
/*!40000 ALTER TABLE `participation` DISABLE KEYS */;
/*!40000 ALTER TABLE `participation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_time` datetime DEFAULT NULL,
  `post_content` varchar(1000) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'2012-12-18 20:00:00','win 8 体验真的很棒很棒呀！据说是什么浸入式的设计！全屏的应用，配合快捷键使用起来相当爽！输入法终于有一次不打算装第三方的了！很有开发win8应用的冲动',1),(2,'2012-12-05 14:33:40','《狙击野鸭：一个HTML5 + JavaScript游戏》：当“愤怒的小鸟”这款游戏红遍全球、挣得盆满钵盈时，相信很多程序员都对游戏开发有蠢蠢欲动之想，但我也相信的大部分从未开发过游戏的程序员会对这个深不可测的领域望而却步。其实，会者不难，难者不会。',2),(3,'2012-12-11 19:34:09','阿！我要崩溃拉！手动创建live cd无数次！还是失败！从一开始报错，拼命修复，到最后它终于不报错，可他娘的也就彻底等光标闪半天啥也不出来！！！我才恍然大悟有报错是多么幸福的一件事！起码还可以谷歌一下！！！',3),(4,'2012-12-13 22:32:07','今天总算知道见识到’奇葩‘。。。一个女生端着电脑去让修电脑的给她装个wps, 原因是micro office老自动升级，好麻烦。搞软件的真是苦逼呀，就算搞成一键安装，估计还是一堆人不懂怎么安装。。。',4),(5,'2012-12-14 20:12:04','我的ubuntu版本有点老哦，10.04，安装显卡驱动参考了http://t.cn/zjAixzK，不过到在nvidia官网下驱动较麻烦，我是开了GAE下的！第一次装没成功，重启再试一次就装上了！BTW，gnome的弹性窗口好可爱哟',1),(6,'2012-11-20 13:21:20','最近在看《Head First Design Patterns》, 这本书实在写的太好了，很清楚很明白地告诉你遇到问题之后，这方案不行，那方案也不好，最后发现某方案敲到好处，然后才告诉你这就是某某某设计模式！',1),(7,'2012-12-08 10:09:10','编程界，高手真多，各种高手的建议让我摇晃不定，我该往何处走，犹豫这么久就一个钱的问题，一有高手说他那条路钱多我就心动半天。不过想想大学还有两年，真不想这么早就被金钱化，还是再浪费两年时间走我自己喜欢的过山车一样刺激的编程道路吧。',2),(8,'2012-12-17 14:20:20','【[置顶]J2SE中流的介绍与文件的字符流】 所有的程序都离不开信息的输入和输出。在Java程序中也经常需要对相关文件等数据进行读写操作，这时就需要用到对输入、输出流的相关处理操作。例如，从键盘读取数据、在网络上交换..',5),(9,'2012-11-27 07:04:20','OPPO正式发布Find 5，5英寸1920*1080p全高清屏幕，1.5GHz高通APQ8064四核处理器，2GB RAM，1300万摄像头，首次支持120帧/秒高速摄像。采用了Android 4.1 Jelly Bean操作系统，该机售价2998元。',4),(10,'2012-11-16 16:20:31','【升级不是必须，Win 8无法取代Win 7！】Windows的精华是什么？是窗口化，用户可随意在不同窗口间轻易切换进行多任务操作；但Win 8的Metro完全背离这一初衷，只能使用平板的单窗口任务模式，将PC这种追求操作效率的键鼠设备按平板和智能手机的思路来设计，试问，没有Window的Windows还能叫Windows么..',5),(11,'2012-11-03 12:11:30','2012百度游戏风云榜数据：企鹅继续霸气外露——腾讯相关游戏搜索量达惊人的35.1亿次，是其他游戏商的总和（网易8.3亿次，盛大6.7亿次，完美2.4亿次）；儿童页游方面，腾讯洛克王国搜索量已经是淘米赛尔号的1.6倍！小游戏4399搜索量是7k7k的三倍',3),(12,'2012-11-18 22:12:40','曾经天真地以为写一套HTML5加PhoneGap就能跑在iOS/Android/WP7/Win8上，干了一个月才发现这样做demo没问题，做产品的话还不行。我甚至觉得每个平台自己写个native的都会更省时间。如果不是时刻在线的WebApp而是离线的，各平台的兼容性很费劲，而性能差异更是难以兼顾。尤其Win8安卓不守规矩标记太多。',5);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_password` varchar(100) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_birthday` date DEFAULT NULL,
  `user_address` varchar(100) DEFAULT NULL,
  `user_university` varchar(50) DEFAULT NULL,
  `user_hometown` varchar(100) DEFAULT NULL,
  `user_hobby` varchar(100) DEFAULT NULL,
  `user_major` varchar(100) DEFAULT NULL,
  `user_sex` varchar(20) DEFAULT NULL,
  `user_dream` varchar(1000) DEFAULT NULL,
  `user_motto` varchar(1000) DEFAULT NULL,
  `user_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'root','shanyuan','10301077@bjtu.edu.cn','2012-12-05','北京海淀','北京交通大学','广东省东莞市桥头镇','打排球','软件工程','男','我想走不寻常的路',NULL,'headImage/photo1.jpg'),(2,'root','yunhan','10301156@bjtu.edu.cn','1992-02-02','北京海淀','北京交通大学','新疆伊犁','打羽毛球','软件工程','女','我想周游世界',NULL,'headImage/photo2.jpg'),(3,'root','cindy','10301107@bjtu.edu.cn','1991-06-15','北京石景山区','北京交通大学','北京','打篮球','软件工程','女','我想玩遍欧洲',NULL,'headImage/photo3.jpg'),(4,'root','juchen','10301063@bjtu.edu.cn','1991-08-08','北京海淀','北京交通大学','广东省深圳市','打乒乓球','软件工程','女','我想玩遍宇宙',NULL,'headImage/photo4.jpg'),(5,'root','ziyuan','10301016@bjtu.edu.cn','1991-07-26','北京海淀','北京交通大学','四川自贡','打篮球','软件工程','男','我想看扁世界最美的风景',NULL,'headImage/photo5.jpg'),(6,'root','李一佳',NULL,'1989-12-12','北京海淀','北京交通大学','北京','打羽毛球','软件工程','女','做最好的助教',NULL,'headImage/photo6.jpg'),(7,'root','刘人员',NULL,'1989-12-12','北京海淀','北京交通大学','北京','打保龄球','软件工程','男','认真做好每一件事情',NULL,'headImage/photo7.jpg'),(8,'root','任媛',NULL,'1992-11-22','北京海淀','北京交通大学','陕西','打雪球','软件工程','女',NULL,NULL,'headImage/photo8.jpg'),(9,'root','路人甲',NULL,'1989-12-12','北京海淀','北京交通大学','海南','打酱油','软件工程','男',NULL,NULL,'headImage/photo9.jpg'),(10,'root','郭智明',NULL,'1992-11-22','北京海淀','北京交通大学','福建','高尔夫','软件工程','男','创造不凡',NULL,'headImage/photo10.jpg'),(11,'root','春娇',NULL,'1992-11-22','北京海淀','北京交通大学','香港','打水球','软件工程','女',NULL,NULL,'headImage/photo11.jpg'),(12,'root','郑京杰',NULL,'1992-11-22','北京海淀','北京交通大学','朝鲜','高尔夫','软件工程','男',NULL,NULL,'headImage/photo12.jpg'),(13,'root','李雷',NULL,'1992-11-22','北京海淀','北京交通大学','英国','打麻将','软件工程','男',NULL,NULL,'headImage/photo13.jpg'),(14,'root','韩梅梅',NULL,'1992-11-22','北京海淀','北京交通大学','英国','打保龄球','软件工程','女',NULL,NULL,'headImage/photo14.jpg'),(15,'root','韩刚',NULL,'1992-11-22','北京海淀','北京交通大学','英国','打水球','软件工程','男',NULL,NULL,'headImage/photo15.jpg'),(16,'root','蜡笔小新',NULL,'1992-11-22','日本','日本快乐大学','日本','打屁屁','软件工程','男',NULL,NULL,'headImage/photo16.jpg'),(17,'root','廖励志',NULL,'1992-11-22','北京海淀','北京交通大学','湖南','滑冰','软件工程','男',NULL,NULL,'headImage/photo17.jpg'),(18,'root','刘畅',NULL,'1992-11-22','北京海淀','北京交通大学','山东','打地鼠','软件工程','男',NULL,NULL,'headImage/photo18.jpg'),(19,'root','武依文',NULL,'1992-11-22','北京海淀','北京交通大学','山西','跑步','软件工程','女',NULL,NULL,'headImage/photo19.jpg'),(20,'root','王冠南',NULL,'1992-11-22','北京海淀','北京交通大学','宁夏','滑雪','软件工程','男',NULL,NULL,'headImage/photo20.jpg'),(21,'root','刘人员',NULL,'1992-11-22','北京海淀','北京交通大学','北京','健身','软件工程','男',NULL,NULL,'headImage/photo21.jpg'),(22,'root','王坤',NULL,'1992-11-22','北京海淀','北京交通大学','甘肃','跑步','软件工程','男',NULL,NULL,'headImage/photo22.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-14 21:07:20

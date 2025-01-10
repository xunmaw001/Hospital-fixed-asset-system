-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootd9y56
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootd9y56`
--

/*!40000 DROP DATABASE IF EXISTS `springbootd9y56`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootd9y56` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootd9y56`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gudingzichan`
--

DROP TABLE IF EXISTS `gudingzichan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gudingzichan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianma` varchar(200) DEFAULT NULL COMMENT '资产编码',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichantupian` varchar(200) NOT NULL COMMENT '资产图片',
  `zichandanjia` int(11) NOT NULL COMMENT '资产单价',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `zichanzongjia` varchar(200) DEFAULT NULL COMMENT '资产总价',
  `shiyongzhuangkuang` varchar(200) NOT NULL COMMENT '使用状况',
  `goumaishijian` date DEFAULT NULL COMMENT '购买时间',
  `zichanxiangqing` longtext COMMENT '资产详情',
  `guishushuoming` longtext COMMENT '归属说明',
  `shiyongmiaoshu` longtext COMMENT '使用描述',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zichanbianma` (`zichanbianma`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='固定资产';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gudingzichan`
--

LOCK TABLES `gudingzichan` WRITE;
/*!40000 ALTER TABLE `gudingzichan` DISABLE KEYS */;
INSERT INTO `gudingzichan` VALUES (21,'2022-05-27 09:12:18','1111111111','资产名称1','资产类型1','upload/gudingzichan_zichantupian1.jpg',1,1,'资产总价1','使用状况1','2022-05-27','资产详情1','归属说明1','使用描述1'),(22,'2022-05-27 09:12:18','2222222222','资产名称2','资产类型2','upload/gudingzichan_zichantupian2.jpg',2,2,'资产总价2','使用状况2','2022-05-27','资产详情2','归属说明2','使用描述2'),(23,'2022-05-27 09:12:18','3333333333','资产名称3','资产类型3','upload/gudingzichan_zichantupian3.jpg',3,3,'资产总价3','使用状况3','2022-05-27','资产详情3','归属说明3','使用描述3'),(24,'2022-05-27 09:12:18','4444444444','资产名称4','资产类型4','upload/gudingzichan_zichantupian4.jpg',4,4,'资产总价4','使用状况4','2022-05-27','资产详情4','归属说明4','使用描述4'),(25,'2022-05-27 09:12:18','5555555555','资产名称5','资产类型5','upload/gudingzichan_zichantupian5.jpg',5,5,'资产总价5','使用状况5','2022-05-27','资产详情5','归属说明5','使用描述5'),(26,'2022-05-27 09:12:18','6666666666','资产名称6','资产类型6','upload/gudingzichan_zichantupian6.jpg',6,6,'资产总价6','使用状况6','2022-05-27','资产详情6','归属说明6','使用描述6');
/*!40000 ALTER TABLE `gudingzichan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshi`
--

DROP TABLE IF EXISTS `keshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshihao` varchar(200) DEFAULT NULL COMMENT '科室号',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keshihao` (`keshihao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='科室';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshi`
--

LOCK TABLES `keshi` WRITE;
/*!40000 ALTER TABLE `keshi` DISABLE KEYS */;
INSERT INTO `keshi` VALUES (11,'2022-05-27 09:12:18','科室号1','科室名称1','123456','医生姓名1','联系电话1'),(12,'2022-05-27 09:12:18','科室号2','科室名称2','123456','医生姓名2','联系电话2'),(13,'2022-05-27 09:12:18','科室号3','科室名称3','123456','医生姓名3','联系电话3'),(14,'2022-05-27 09:12:18','科室号4','科室名称4','123456','医生姓名4','联系电话4'),(15,'2022-05-27 09:12:18','科室号5','科室名称5','123456','医生姓名5','联系电话5'),(16,'2022-05-27 09:12:18','科室号6','科室名称6','123456','医生姓名6','联系电话6');
/*!40000 ALTER TABLE `keshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-27 09:12:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanchuku`
--

DROP TABLE IF EXISTS `zichanchuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianma` varchar(200) DEFAULT NULL COMMENT '资产编码',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichantupian` varchar(200) NOT NULL COMMENT '资产图片',
  `zichandanjia` int(11) NOT NULL COMMENT '资产单价',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `zichanzongjia` varchar(200) DEFAULT NULL COMMENT '资产总价',
  `shiyongzhuangkuang` varchar(200) NOT NULL COMMENT '使用状况',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  `chukushuoming` varchar(200) DEFAULT NULL COMMENT '出库说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='资产出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanchuku`
--

LOCK TABLES `zichanchuku` WRITE;
/*!40000 ALTER TABLE `zichanchuku` DISABLE KEYS */;
INSERT INTO `zichanchuku` VALUES (41,'2022-05-27 09:12:18','资产编码1','资产名称1','资产类型1','upload/zichanchuku_zichantupian1.jpg',1,1,'资产总价1','使用状况1','2022-05-27 17:12:18','出库说明1'),(42,'2022-05-27 09:12:18','资产编码2','资产名称2','资产类型2','upload/zichanchuku_zichantupian2.jpg',2,2,'资产总价2','使用状况2','2022-05-27 17:12:18','出库说明2'),(43,'2022-05-27 09:12:18','资产编码3','资产名称3','资产类型3','upload/zichanchuku_zichantupian3.jpg',3,3,'资产总价3','使用状况3','2022-05-27 17:12:18','出库说明3'),(44,'2022-05-27 09:12:18','资产编码4','资产名称4','资产类型4','upload/zichanchuku_zichantupian4.jpg',4,4,'资产总价4','使用状况4','2022-05-27 17:12:18','出库说明4'),(45,'2022-05-27 09:12:18','资产编码5','资产名称5','资产类型5','upload/zichanchuku_zichantupian5.jpg',5,5,'资产总价5','使用状况5','2022-05-27 17:12:18','出库说明5'),(46,'2022-05-27 09:12:18','资产编码6','资产名称6','资产类型6','upload/zichanchuku_zichantupian6.jpg',6,6,'资产总价6','使用状况6','2022-05-27 17:12:18','出库说明6');
/*!40000 ALTER TABLE `zichanchuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanruku`
--

DROP TABLE IF EXISTS `zichanruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianma` varchar(200) DEFAULT NULL COMMENT '资产编码',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichantupian` varchar(200) NOT NULL COMMENT '资产图片',
  `zichandanjia` int(11) NOT NULL COMMENT '资产单价',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `zichanzongjia` varchar(200) DEFAULT NULL COMMENT '资产总价',
  `shiyongzhuangkuang` varchar(200) NOT NULL COMMENT '使用状况',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  `rukushuoming` varchar(200) DEFAULT NULL COMMENT '入库说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='资产入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanruku`
--

LOCK TABLES `zichanruku` WRITE;
/*!40000 ALTER TABLE `zichanruku` DISABLE KEYS */;
INSERT INTO `zichanruku` VALUES (31,'2022-05-27 09:12:18','资产编码1','资产名称1','资产类型1','upload/zichanruku_zichantupian1.jpg',1,1,'资产总价1','使用状况1','2022-05-27 17:12:18','入库说明1'),(32,'2022-05-27 09:12:18','资产编码2','资产名称2','资产类型2','upload/zichanruku_zichantupian2.jpg',2,2,'资产总价2','使用状况2','2022-05-27 17:12:18','入库说明2'),(33,'2022-05-27 09:12:18','资产编码3','资产名称3','资产类型3','upload/zichanruku_zichantupian3.jpg',3,3,'资产总价3','使用状况3','2022-05-27 17:12:18','入库说明3'),(34,'2022-05-27 09:12:18','资产编码4','资产名称4','资产类型4','upload/zichanruku_zichantupian4.jpg',4,4,'资产总价4','使用状况4','2022-05-27 17:12:18','入库说明4'),(35,'2022-05-27 09:12:18','资产编码5','资产名称5','资产类型5','upload/zichanruku_zichantupian5.jpg',5,5,'资产总价5','使用状况5','2022-05-27 17:12:18','入库说明5'),(36,'2022-05-27 09:12:18','资产编码6','资产名称6','资产类型6','upload/zichanruku_zichantupian6.jpg',6,6,'资产总价6','使用状况6','2022-05-27 17:12:18','入库说明6');
/*!40000 ALTER TABLE `zichanruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanshengou`
--

DROP TABLE IF EXISTS `zichanshengou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanshengou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichantupian` varchar(200) NOT NULL COMMENT '资产图片',
  `zichandanjia` int(11) NOT NULL COMMENT '资产单价',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `zichanzongjia` varchar(200) DEFAULT NULL COMMENT '资产总价',
  `zichanshuoming` longtext NOT NULL COMMENT '资产说明',
  `shengouyuanyin` longtext COMMENT '申购原因',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `keshihao` varchar(200) DEFAULT NULL COMMENT '科室号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='资产申购';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanshengou`
--

LOCK TABLES `zichanshengou` WRITE;
/*!40000 ALTER TABLE `zichanshengou` DISABLE KEYS */;
INSERT INTO `zichanshengou` VALUES (51,'2022-05-27 09:12:18','资产名称1','资产类型1','upload/zichanshengou_zichantupian1.jpg',1,1,'资产总价1','资产说明1','申购原因1','2022-05-27 17:12:18','科室号1','医生姓名1','是',''),(52,'2022-05-27 09:12:18','资产名称2','资产类型2','upload/zichanshengou_zichantupian2.jpg',2,2,'资产总价2','资产说明2','申购原因2','2022-05-27 17:12:18','科室号2','医生姓名2','是',''),(53,'2022-05-27 09:12:18','资产名称3','资产类型3','upload/zichanshengou_zichantupian3.jpg',3,3,'资产总价3','资产说明3','申购原因3','2022-05-27 17:12:18','科室号3','医生姓名3','是',''),(54,'2022-05-27 09:12:18','资产名称4','资产类型4','upload/zichanshengou_zichantupian4.jpg',4,4,'资产总价4','资产说明4','申购原因4','2022-05-27 17:12:18','科室号4','医生姓名4','是',''),(55,'2022-05-27 09:12:18','资产名称5','资产类型5','upload/zichanshengou_zichantupian5.jpg',5,5,'资产总价5','资产说明5','申购原因5','2022-05-27 17:12:18','科室号5','医生姓名5','是',''),(56,'2022-05-27 09:12:18','资产名称6','资产类型6','upload/zichanshengou_zichantupian6.jpg',6,6,'资产总价6','资产说明6','申购原因6','2022-05-27 17:12:18','科室号6','医生姓名6','是','');
/*!40000 ALTER TABLE `zichanshengou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanshenling`
--

DROP TABLE IF EXISTS `zichanshenling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanshenling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianma` varchar(200) DEFAULT NULL COMMENT '资产编码',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichantupian` varchar(200) NOT NULL COMMENT '资产图片',
  `zichandanjia` int(11) NOT NULL COMMENT '资产单价',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `zichanzongjia` varchar(200) DEFAULT NULL COMMENT '资产总价',
  `shiyongzhuangkuang` varchar(200) NOT NULL COMMENT '使用状况',
  `shenlingshijian` datetime DEFAULT NULL COMMENT '申领时间',
  `shenlingshuoming` varchar(200) DEFAULT NULL COMMENT '申领说明',
  `keshihao` varchar(200) DEFAULT NULL COMMENT '科室号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='资产申领';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanshenling`
--

LOCK TABLES `zichanshenling` WRITE;
/*!40000 ALTER TABLE `zichanshenling` DISABLE KEYS */;
INSERT INTO `zichanshenling` VALUES (61,'2022-05-27 09:12:18','资产编码1','资产名称1','资产类型1','upload/zichanshenling_zichantupian1.jpg',1,1,'资产总价1','使用状况1','2022-05-27 17:12:18','申领说明1','科室号1','医生姓名1','是',''),(62,'2022-05-27 09:12:18','资产编码2','资产名称2','资产类型2','upload/zichanshenling_zichantupian2.jpg',2,2,'资产总价2','使用状况2','2022-05-27 17:12:18','申领说明2','科室号2','医生姓名2','是',''),(63,'2022-05-27 09:12:18','资产编码3','资产名称3','资产类型3','upload/zichanshenling_zichantupian3.jpg',3,3,'资产总价3','使用状况3','2022-05-27 17:12:18','申领说明3','科室号3','医生姓名3','是',''),(64,'2022-05-27 09:12:18','资产编码4','资产名称4','资产类型4','upload/zichanshenling_zichantupian4.jpg',4,4,'资产总价4','使用状况4','2022-05-27 17:12:18','申领说明4','科室号4','医生姓名4','是',''),(65,'2022-05-27 09:12:18','资产编码5','资产名称5','资产类型5','upload/zichanshenling_zichantupian5.jpg',5,5,'资产总价5','使用状况5','2022-05-27 17:12:18','申领说明5','科室号5','医生姓名5','是',''),(66,'2022-05-27 09:12:18','资产编码6','资产名称6','资产类型6','upload/zichanshenling_zichantupian6.jpg',6,6,'资产总价6','使用状况6','2022-05-27 17:12:18','申领说明6','科室号6','医生姓名6','是','');
/*!40000 ALTER TABLE `zichanshenling` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15 14:58:13

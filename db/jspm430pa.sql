-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm430pa
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
-- Table structure for table `chaoshizixun`
--

DROP TABLE IF EXISTS `chaoshizixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chaoshizixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='超市资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaoshizixun`
--

LOCK TABLES `chaoshizixun` WRITE;
/*!40000 ALTER TABLE `chaoshizixun` DISABLE KEYS */;
INSERT INTO `chaoshizixun` VALUES (121,'2021-03-01 08:57:01','标题1','http://localhost:8080/jspm430pa/upload/chaoshizixun_fengmian1.jpg','内容1','2021-03-01','发布人1'),(122,'2021-03-01 08:57:01','标题2','http://localhost:8080/jspm430pa/upload/chaoshizixun_fengmian2.jpg','内容2','2021-03-01','发布人2'),(123,'2021-03-01 08:57:01','标题3','http://localhost:8080/jspm430pa/upload/chaoshizixun_fengmian3.jpg','内容3','2021-03-01','发布人3'),(124,'2021-03-01 08:57:01','标题4','http://localhost:8080/jspm430pa/upload/chaoshizixun_fengmian4.jpg','内容4','2021-03-01','发布人4'),(125,'2021-03-01 08:57:01','标题5','http://localhost:8080/jspm430pa/upload/chaoshizixun_fengmian5.jpg','内容5','2021-03-01','发布人5'),(126,'2021-03-01 08:57:01','标题6','http://localhost:8080/jspm430pa/upload/chaoshizixun_fengmian6.jpg','内容6','2021-03-01','发布人6');
/*!40000 ALTER TABLE `chaoshizixun` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm430pa/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm430pa/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm430pa/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangzhanghao` varchar(200) NOT NULL COMMENT '供应商账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `gongyingshangmingcheng` varchar(200) NOT NULL COMMENT '供应商名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `fuzerenxingming` varchar(200) NOT NULL COMMENT '负责人姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyingshangzhanghao` (`gongyingshangzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (21,'2021-03-01 08:57:01','1','1','供应商名称1','地址1','联系电话1','负责人姓名1','联系方式1'),(22,'2021-03-01 08:57:01','供应商2','123456','供应商名称2','地址2','联系电话2','负责人姓名2','联系方式2'),(23,'2021-03-01 08:57:01','供应商3','123456','供应商名称3','地址3','联系电话3','负责人姓名3','联系方式3'),(24,'2021-03-01 08:57:01','供应商4','123456','供应商名称4','地址4','联系电话4','负责人姓名4','联系方式4'),(25,'2021-03-01 08:57:01','供应商5','123456','供应商名称5','地址5','联系电话5','负责人姓名5','联系方式5'),(26,'2021-03-01 08:57:01','供应商6','123456','供应商名称6','地址6','联系电话6','负责人姓名6','联系方式6');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshangshangpin`
--

DROP TABLE IF EXISTS `gongyingshangshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshangshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `gongyingshangzhanghao` varchar(200) DEFAULT NULL COMMENT '供应商账号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649365813 DEFAULT CHARSET=utf8 COMMENT='供应商商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshangshangpin`
--

LOCK TABLES `gongyingshangshangpin` WRITE;
/*!40000 ALTER TABLE `gongyingshangshangpin` DISABLE KEYS */;
INSERT INTO `gongyingshangshangpin` VALUES (51,'2021-03-01 08:57:01','商品名称1','http://localhost:8080/jspm430pa/upload/gongyingshangshangpin_tupian1.jpg','规格1','数量1','供应商账号1','供应商名称1'),(52,'2021-03-01 08:57:01','商品名称2','http://localhost:8080/jspm430pa/upload/gongyingshangshangpin_tupian2.jpg','规格2','数量2','供应商账号2','供应商名称2'),(53,'2021-03-01 08:57:01','商品名称3','http://localhost:8080/jspm430pa/upload/gongyingshangshangpin_tupian3.jpg','规格3','数量3','供应商账号3','供应商名称3'),(54,'2021-03-01 08:57:01','商品名称4','http://localhost:8080/jspm430pa/upload/gongyingshangshangpin_tupian4.jpg','规格4','数量4','供应商账号4','供应商名称4'),(55,'2021-03-01 08:57:01','商品名称5','http://localhost:8080/jspm430pa/upload/gongyingshangshangpin_tupian5.jpg','规格5','数量5','供应商账号5','供应商名称5'),(56,'2021-03-01 08:57:01','商品名称6','http://localhost:8080/jspm430pa/upload/gongyingshangshangpin_tupian6.jpg','规格6','数量6','供应商账号6','供应商名称6'),(1614649365812,'2021-03-02 01:42:45','xxx商品','http://localhost:8080/jspm430pa/upload/1614649361935.jpg','1','11','1','供应商名称1');
/*!40000 ALTER TABLE `gongyingshangshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpindingdan`
--

DROP TABLE IF EXISTS `shangpindingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpindingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinjiage` varchar(200) DEFAULT NULL COMMENT '商品价格',
  `shuliang` varchar(200) NOT NULL COMMENT '数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `songhuodizhi` varchar(200) DEFAULT NULL COMMENT '送货地址',
  `tianjiashijian` datetime DEFAULT NULL COMMENT '添加时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649658963 DEFAULT CHARSET=utf8 COMMENT='商品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpindingdan`
--

LOCK TABLES `shangpindingdan` WRITE;
/*!40000 ALTER TABLE `shangpindingdan` DISABLE KEYS */;
INSERT INTO `shangpindingdan` VALUES (81,'2021-03-01 08:57:01','订单编号1','商品名称1','商品价格1','数量1','总价格1','用户账号1','用户姓名1','用户手机1','送货地址1','2021-03-01 16:57:01','是','','未支付'),(82,'2021-03-01 08:57:01','订单编号2','商品名称2','商品价格2','数量2','总价格2','用户账号2','用户姓名2','用户手机2','送货地址2','2021-03-01 16:57:01','是','','未支付'),(83,'2021-03-01 08:57:01','订单编号3','商品名称3','商品价格3','数量3','总价格3','用户账号3','用户姓名3','用户手机3','送货地址3','2021-03-01 16:57:01','是','','未支付'),(84,'2021-03-01 08:57:01','订单编号4','商品名称4','商品价格4','数量4','总价格4','用户账号4','用户姓名4','用户手机4','送货地址4','2021-03-01 16:57:01','是','','未支付'),(85,'2021-03-01 08:57:01','订单编号5','商品名称5','商品价格5','数量5','总价格5','用户账号5','用户姓名5','用户手机5','送货地址5','2021-03-01 16:57:01','是','','未支付'),(86,'2021-03-01 08:57:01','订单编号6','商品名称6','商品价格6','数量6','总价格6','用户账号6','用户姓名6','用户手机6','送货地址6','2021-03-01 16:57:01','是','','未支付'),(1614649658962,'2021-03-02 01:47:38','2021329473761865263','xxx商品','100','10','1000','2','xxx用户','12345678910','xxx地址','2021-03-02 09:47:43','否',NULL,'已支付');
/*!40000 ALTER TABLE `shangpindingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinjinhuo`
--

DROP TABLE IF EXISTS `shangpinjinhuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinjinhuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinhuobianhao` varchar(200) DEFAULT NULL COMMENT '进货编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `jinhuodanjia` int(11) NOT NULL COMMENT '进货单价',
  `jinhuozongjiage` varchar(200) DEFAULT NULL COMMENT '进货总价格',
  `jinhuoshijian` datetime DEFAULT NULL COMMENT '进货时间',
  `gongyingshangzhanghao` varchar(200) DEFAULT NULL COMMENT '供应商账号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jinhuobianhao` (`jinhuobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649501389 DEFAULT CHARSET=utf8 COMMENT='商品进货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinjinhuo`
--

LOCK TABLES `shangpinjinhuo` WRITE;
/*!40000 ALTER TABLE `shangpinjinhuo` DISABLE KEYS */;
INSERT INTO `shangpinjinhuo` VALUES (61,'2021-03-01 08:57:01','进货编号1','商品名称1',1,1,'进货总价格1','2021-03-01 16:57:01','供应商账号1','供应商名称1','备注1'),(62,'2021-03-01 08:57:01','进货编号2','商品名称2',2,2,'进货总价格2','2021-03-01 16:57:01','供应商账号2','供应商名称2','备注2'),(63,'2021-03-01 08:57:01','进货编号3','商品名称3',3,3,'进货总价格3','2021-03-01 16:57:01','供应商账号3','供应商名称3','备注3'),(64,'2021-03-01 08:57:01','进货编号4','商品名称4',4,4,'进货总价格4','2021-03-01 16:57:01','供应商账号4','供应商名称4','备注4'),(65,'2021-03-01 08:57:01','进货编号5','商品名称5',5,5,'进货总价格5','2021-03-01 16:57:01','供应商账号5','供应商名称5','备注5'),(66,'2021-03-01 08:57:01','进货编号6','商品名称6',6,6,'进货总价格6','2021-03-01 16:57:01','供应商账号6','供应商名称6','备注6'),(1614649501388,'2021-03-02 01:45:00','1614649410','xxx商品',100,100,'10000','2021-03-02 05:05:30','1','供应商名称1','无');
/*!40000 ALTER TABLE `shangpinjinhuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleixing`
--

DROP TABLE IF EXISTS `shangpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleixing`
--

LOCK TABLES `shangpinleixing` WRITE;
/*!40000 ALTER TABLE `shangpinleixing` DISABLE KEYS */;
INSERT INTO `shangpinleixing` VALUES (31,'2021-03-01 08:57:01','日用品'),(32,'2021-03-01 08:57:01','电器'),(33,'2021-03-01 08:57:01','商品类型3'),(34,'2021-03-01 08:57:01','商品类型4'),(35,'2021-03-01 08:57:01','商品类型5'),(36,'2021-03-01 08:57:01','商品类型6');
/*!40000 ALTER TABLE `shangpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinpandian`
--

DROP TABLE IF EXISTS `shangpinpandian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinpandian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pandianshijian` datetime DEFAULT NULL COMMENT '盘点时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shidianshuliang` int(11) DEFAULT NULL COMMENT '实点数量',
  `shifouquehuo` varchar(200) DEFAULT NULL COMMENT '是否缺货',
  `shifouqueshao` varchar(200) DEFAULT NULL COMMENT '是否缺少',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649586338 DEFAULT CHARSET=utf8 COMMENT='商品盘点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinpandian`
--

LOCK TABLES `shangpinpandian` WRITE;
/*!40000 ALTER TABLE `shangpinpandian` DISABLE KEYS */;
INSERT INTO `shangpinpandian` VALUES (111,'2021-03-01 08:57:01','2021-03-01 16:57:01','商品名称1','商品类型1',1,'否','否','备注1'),(112,'2021-03-01 08:57:01','2021-03-01 16:57:01','商品名称2','商品类型2',2,'否','否','备注2'),(113,'2021-03-01 08:57:01','2021-03-01 16:57:01','商品名称3','商品类型3',3,'否','否','备注3'),(114,'2021-03-01 08:57:01','2021-03-01 16:57:01','商品名称4','商品类型4',4,'否','否','备注4'),(115,'2021-03-01 08:57:01','2021-03-01 16:57:01','商品名称5','商品类型5',5,'否','否','备注5'),(116,'2021-03-01 08:57:01','2021-03-01 16:57:01','商品名称6','商品类型6',6,'否','否','备注6'),(1614649586337,'2021-03-02 01:46:26','2021-03-01 09:13:18','商品名称3','商品类型3',100,'否','否','11');
/*!40000 ALTER TABLE `shangpinpandian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpintuihuo`
--

DROP TABLE IF EXISTS `shangpintuihuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpintuihuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tuihuanbianhao` varchar(200) DEFAULT NULL COMMENT '退换编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `tuihuandanjia` int(11) NOT NULL COMMENT '退换单价',
  `tuihuanzongjia` varchar(200) DEFAULT NULL COMMENT '退换总价',
  `tuihuanshijian` datetime DEFAULT NULL COMMENT '退换时间',
  `gongyingshangzhanghao` varchar(200) DEFAULT NULL COMMENT '供应商账号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tuihuanbianhao` (`tuihuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649528321 DEFAULT CHARSET=utf8 COMMENT='商品退货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpintuihuo`
--

LOCK TABLES `shangpintuihuo` WRITE;
/*!40000 ALTER TABLE `shangpintuihuo` DISABLE KEYS */;
INSERT INTO `shangpintuihuo` VALUES (71,'2021-03-01 08:57:01','退换编号1','商品名称1',1,1,'退换总价1','2021-03-01 16:57:01','供应商账号1','供应商名称1','备注1'),(72,'2021-03-01 08:57:01','退换编号2','商品名称2',2,2,'退换总价2','2021-03-01 16:57:01','供应商账号2','供应商名称2','备注2'),(73,'2021-03-01 08:57:01','退换编号3','商品名称3',3,3,'退换总价3','2021-03-01 16:57:01','供应商账号3','供应商名称3','备注3'),(74,'2021-03-01 08:57:01','退换编号4','商品名称4',4,4,'退换总价4','2021-03-01 16:57:01','供应商账号4','供应商名称4','备注4'),(75,'2021-03-01 08:57:01','退换编号5','商品名称5',5,5,'退换总价5','2021-03-01 16:57:01','供应商账号5','供应商名称5','备注5'),(76,'2021-03-01 08:57:01','退换编号6','商品名称6',6,6,'退换总价6','2021-03-01 16:57:01','供应商账号6','供应商名称6','备注6'),(1614649528320,'2021-03-02 01:45:27','1614649521','xxx商品',10,20,'200','2021-03-02 09:04:20','1','供应商名称1','无');
/*!40000 ALTER TABLE `shangpintuihuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shangpinjiage` varchar(200) DEFAULT NULL COMMENT '商品价格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `gongyingshangzhanghao` varchar(200) DEFAULT NULL COMMENT '供应商账号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649399976 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-03-01 08:57:01','商品名称1','商品类型1','http://localhost:8080/jspm430pa/upload/shangpinxinxi_tupian1.jpg','规格1','地址1',1,'商品价格1','商品详情1','供应商账号1','供应商名称1'),(42,'2021-03-01 08:57:01','商品名称2','商品类型2','http://localhost:8080/jspm430pa/upload/shangpinxinxi_tupian2.jpg','规格2','地址2',2,'商品价格2','商品详情2','供应商账号2','供应商名称2'),(43,'2021-03-01 08:57:01','商品名称3','商品类型3','http://localhost:8080/jspm430pa/upload/shangpinxinxi_tupian3.jpg','规格3','地址3',3,'商品价格3','商品详情3','供应商账号3','供应商名称3'),(44,'2021-03-01 08:57:01','商品名称4','商品类型4','http://localhost:8080/jspm430pa/upload/shangpinxinxi_tupian4.jpg','规格4','地址4',4,'商品价格4','商品详情4','供应商账号4','供应商名称4'),(45,'2021-03-01 08:57:01','商品名称5','商品类型5','http://localhost:8080/jspm430pa/upload/shangpinxinxi_tupian5.jpg','规格5','地址5',5,'商品价格5','商品详情5','供应商账号5','供应商名称5'),(46,'2021-03-01 08:57:01','商品名称6','商品类型6','http://localhost:8080/jspm430pa/upload/shangpinxinxi_tupian6.jpg','规格6','地址6',6,'商品价格6','商品详情6','供应商账号6','供应商名称6'),(1614649399975,'2021-03-02 01:43:19','xxx商品','日用品','http://localhost:8080/jspm430pa/upload/1614649361935.jpg','1','地址1',41,'100','111\r\n','1','供应商名称1');
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','b8otm27r25tcwdijrhpk2py8y2je210m','2021-03-01 13:02:03','2021-03-02 02:48:38'),(2,21,'1','gongyingshang','供应商','932h194mfcaon6as4ejrz6x23n3ifgl0','2021-03-02 01:42:18','2021-03-02 02:42:18'),(3,1614649642369,'2','yonghu','用户','3k4lyo7wxq9uxcm27t3xeftaisxo463x','2021-03-02 01:47:27','2021-03-02 02:47:27');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-01 08:57:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshouchuku`
--

DROP TABLE IF EXISTS `xiaoshouchuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshouchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `chukudanjia` int(11) NOT NULL COMMENT '出库单价',
  `chukuzongjiage` varchar(200) DEFAULT NULL COMMENT '出库总价格',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  `xiaoshouduixiang` varchar(200) DEFAULT NULL COMMENT '销售对象',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649557455 DEFAULT CHARSET=utf8 COMMENT='销售出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshouchuku`
--

LOCK TABLES `xiaoshouchuku` WRITE;
/*!40000 ALTER TABLE `xiaoshouchuku` DISABLE KEYS */;
INSERT INTO `xiaoshouchuku` VALUES (101,'2021-03-01 08:57:01','出库编号1','商品名称1',1,1,'出库总价格1','2021-03-01 16:57:01','销售对象1','备注1'),(102,'2021-03-01 08:57:01','出库编号2','商品名称2',2,2,'出库总价格2','2021-03-01 16:57:01','销售对象2','备注2'),(103,'2021-03-01 08:57:01','出库编号3','商品名称3',3,3,'出库总价格3','2021-03-01 16:57:01','销售对象3','备注3'),(104,'2021-03-01 08:57:01','出库编号4','商品名称4',4,4,'出库总价格4','2021-03-01 16:57:01','销售对象4','备注4'),(105,'2021-03-01 08:57:01','出库编号5','商品名称5',5,5,'出库总价格5','2021-03-01 16:57:01','销售对象5','备注5'),(106,'2021-03-01 08:57:01','出库编号6','商品名称6',6,6,'出库总价格6','2021-03-01 16:57:01','销售对象6','备注6'),(1614649557454,'2021-03-02 01:45:56','1614649545','xxx商品',50,10,'500','2021-03-01 04:04:44','某企业','无');
/*!40000 ALTER TABLE `xiaoshouchuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `songhuodizhi` varchar(200) DEFAULT NULL COMMENT '送货地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649642370 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-01 08:57:01','1','1','用户姓名1','男','年龄1','http://localhost:8080/jspm430pa/upload/yonghu_touxiang1.jpg','13823888881','送货地址1'),(12,'2021-03-01 08:57:01','用户2','123456','用户姓名2','男','年龄2','http://localhost:8080/jspm430pa/upload/yonghu_touxiang2.jpg','13823888882','送货地址2'),(13,'2021-03-01 08:57:01','用户3','123456','用户姓名3','男','年龄3','http://localhost:8080/jspm430pa/upload/yonghu_touxiang3.jpg','13823888883','送货地址3'),(14,'2021-03-01 08:57:01','用户4','123456','用户姓名4','男','年龄4','http://localhost:8080/jspm430pa/upload/yonghu_touxiang4.jpg','13823888884','送货地址4'),(15,'2021-03-01 08:57:01','用户5','123456','用户姓名5','男','年龄5','http://localhost:8080/jspm430pa/upload/yonghu_touxiang5.jpg','13823888885','送货地址5'),(16,'2021-03-01 08:57:01','用户6','123456','用户姓名6','男','年龄6','http://localhost:8080/jspm430pa/upload/yonghu_touxiang6.jpg','13823888886','送货地址6'),(1614649642369,'2021-03-02 01:47:22','2','2','xxx用户','男','20','http://localhost:8080/jspm430pa/upload/1614649683815.jpg','12345678910','xxx地址');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghutuihuo`
--

DROP TABLE IF EXISTS `yonghutuihuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghutuihuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinjiage` varchar(200) DEFAULT NULL COMMENT '商品价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `tuihuoshijian` datetime DEFAULT NULL COMMENT '退货时间',
  `tuihuoliyou` longtext COMMENT '退货理由',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649704967 DEFAULT CHARSET=utf8 COMMENT='用户退货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghutuihuo`
--

LOCK TABLES `yonghutuihuo` WRITE;
/*!40000 ALTER TABLE `yonghutuihuo` DISABLE KEYS */;
INSERT INTO `yonghutuihuo` VALUES (91,'2021-03-01 08:57:01','商品名称1','商品价格1','数量1','总价格1','用户账号1','用户姓名1','用户手机1','2021-03-01 16:57:01','退货理由1','是',''),(92,'2021-03-01 08:57:01','商品名称2','商品价格2','数量2','总价格2','用户账号2','用户姓名2','用户手机2','2021-03-01 16:57:01','退货理由2','是',''),(93,'2021-03-01 08:57:01','商品名称3','商品价格3','数量3','总价格3','用户账号3','用户姓名3','用户手机3','2021-03-01 16:57:01','退货理由3','是',''),(94,'2021-03-01 08:57:01','商品名称4','商品价格4','数量4','总价格4','用户账号4','用户姓名4','用户手机4','2021-03-01 16:57:01','退货理由4','是',''),(95,'2021-03-01 08:57:01','商品名称5','商品价格5','数量5','总价格5','用户账号5','用户姓名5','用户手机5','2021-03-01 16:57:01','退货理由5','是',''),(96,'2021-03-01 08:57:01','商品名称6','商品价格6','数量6','总价格6','用户账号6','用户姓名6','用户手机6','2021-03-01 16:57:01','退货理由6','是',''),(1614649704966,'2021-03-02 01:48:24','xxx商品','100','10','1000','2','xxx用户','12345678910','2021-03-10 09:09:23','不满意','是','11');
/*!40000 ALTER TABLE `yonghutuihuo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-17 11:13:02

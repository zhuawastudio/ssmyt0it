-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmyt0it
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924176892 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-29 12:31:09',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-29 12:31:09',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-29 12:31:09',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-29 12:31:09',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-29 12:31:09',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-29 12:31:09',6,'宇宙银河系月球1号','月某','13823888886','是'),(1611924176891,'2021-01-29 12:42:56',1611924121320,'湖南省益阳市桃江县三堂街镇319省道','小邹','16459878981','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'rexiaoshangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924273946 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924512980 DEFAULT CHARSET=utf8 COMMENT='客服中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-01-29 12:31:09',1,1,'提问1','回复1',1),(62,'2021-01-29 12:31:09',2,2,'提问2','回复2',2),(63,'2021-01-29 12:31:09',3,3,'提问3','回复3',3),(64,'2021-01-29 12:31:09',4,4,'提问4','回复4',4),(65,'2021-01-29 12:31:09',5,5,'提问5','回复5',5),(66,'2021-01-29 12:31:09',6,6,'提问6','回复6',6),(1611924316476,'2021-01-29 12:45:16',1611924121320,NULL,'这里可以向管理员咨询',NULL,0),(1611924512979,'2021-01-29 12:48:32',1611924121320,1,NULL,'这里回复用户咨询',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmyt0it/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmyt0it/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmyt0it/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `pingjiabiaoti` varchar(200) NOT NULL COMMENT '评价标题',
  `dingdanpingfen` varchar(200) DEFAULT NULL COMMENT '订单评分',
  `dingdanpingjia` longtext COMMENT '订单评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924602035 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (1611924602034,'2021-01-29 12:50:01','202112920445111549105','这里进行订单评价','5','<p><img src=\"http://localhost:8080/ssmyt0it/upload/1611924578756.jpg\"></p><p><strong class=\"ql-size-huge\">评价这里可以插入图片</strong></p>','2021-02-06','666','16459878983','是','这里回复评价');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussrexiaoshangpin`
--

DROP TABLE IF EXISTS `discussrexiaoshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussrexiaoshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924220203 DEFAULT CHARSET=utf8 COMMENT='热销商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussrexiaoshangpin`
--

LOCK TABLES `discussrexiaoshangpin` WRITE;
/*!40000 ALTER TABLE `discussrexiaoshangpin` DISABLE KEYS */;
INSERT INTO `discussrexiaoshangpin` VALUES (121,'2021-01-29 12:31:09',1,1,'评论内容1','回复内容1'),(122,'2021-01-29 12:31:09',2,2,'评论内容2','回复内容2'),(123,'2021-01-29 12:31:09',3,3,'评论内容3','回复内容3'),(124,'2021-01-29 12:31:09',4,4,'评论内容4','回复内容4'),(125,'2021-01-29 12:31:09',5,5,'评论内容5','回复内容5'),(126,'2021-01-29 12:31:09',6,6,'评论内容6','回复内容6'),(1611924220202,'2021-01-29 12:43:39',21,1611924121320,'登录后可收藏  评论  购买  客服咨询等操作','这里回复用户评论');
/*!40000 ALTER TABLE `discussrexiaoshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-01-29 12:31:09','全国“最大”的鲜花产地，“鲜花”论斤卖，好想去称20斤','　全国“最大”的鲜花产地，“鲜花”论斤卖，好想去称20斤\n\n　　人们都说，“全国鲜花看云南，云南鲜花看斗南”','http://localhost:8080/ssmyt0it/upload/news_picture1.jpg','<p>内容1</p>'),(112,'2021-01-29 12:31:09','鲜花俏迎新春 成都年宵花节开市','春节即将来临，又时值成都2021年第31届世界大学生夏季运动会倒计时200天之际，为营造“身在公园、春暖花开”幸福美好生活场景，让留在成都过春节的市民游客感受浓浓的“蓉味”年','http://localhost:8080/ssmyt0it/upload/news_picture2.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">春节即将来临，又时值成都2021年第31届世界大学生夏季运动会倒计时200天之际，为营造“身在公园、春暖花开”幸福美好生活场景，让留在成都过春节的市民游客感受浓浓的“蓉味”年</span></p>'),(113,'2021-01-29 12:31:09','云南昆明：亚洲最大的鲜花市场 晚上比白天人多','四季如春的昆明最大的特色是遍地都是鲜花，在我去过的城市中可能只有在厦门才能看到类似的景象。昆明的花多源于云南的气候，整座城市如同一片花的海洋。这次到昆明，特意来到了亚洲最大的鲜花市场，看到了午夜时分不可思议的交易场景。','http://localhost:8080/ssmyt0it/upload/news_picture3.jpg','<p>四季如春的昆明最大的特色是遍地都是鲜花，在我去过的城市中可能只有在厦门才能看到类似的景象。昆明的花多源于云南的气候，整座城市如同一片花的海洋。这次到昆明，特意来到了亚洲最大的鲜花市场，看到了午夜时分不可思议的交易场景。</p>'),(114,'2021-01-29 12:31:09','没有冬天的海南，海浪、鲜花、绿植，四季如此','海南是我国最南端的省级行政区域。它位于热带北部边缘，年平均气温为22-27度。它被称为“天然温室”，因为它一年四季都像夏天，受到无数游客的喜爱。','http://localhost:8080/ssmyt0it/upload/news_picture4.jpg','<p>海南是我国最南端的省级行政区域。它位于热带北部边缘，年平均气温为22-27度。它被称为“天然温室”，因为它一年四季都像夏天，受到无数游客的喜爱。</p>'),(115,'2021-01-29 12:31:09','广西“花哥”让中国鲜花绽放东盟','广西“花哥”让中国鲜花绽放东盟','http://localhost:8080/ssmyt0it/upload/news_picture5.jpg','<h1>广西“花哥”让中国鲜花绽放东盟</h1><p><br></p>'),(116,'2021-01-29 12:31:09','广州线上线下相结合开展春节鲜花售卖','　新华社广州1月27日电（记者李悦、胡林果）记者27日从广州市政府新闻办举行的新闻发布会上获悉，今年广州将按照线上线下相结合的方式组织开展春节鲜花售卖工作，目前线下已明确设置的现场售卖点有153个，同时开启线上花市。','http://localhost:8080/ssmyt0it/upload/news_picture6.jpg','<p>　新华社广州1月27日电（记者李悦、胡林果）记者27日从广州市政府新闻办举行的新闻发布会上获悉，今年广州将按照线上线下相结合的方式组织开展春节鲜花售卖工作，目前线下已明确设置的现场售卖点有153个，同时开启线上花市。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'rexiaoshangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924300099 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1611924292284,'2021-01-29 12:44:51','202112920445111549105','rexiaoshangpin',1611924121320,21,'商品名称1','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian1.jpg',2,19,19,38,38,1,'已完成','湖南省益阳市桃江县三堂街镇319省道'),(1611924300098,'2021-01-29 12:44:59','20211292044599157253','rexiaoshangpin',1611924121320,24,'商品名称4','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian4.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','湖南省益阳市桃江县三堂街镇319省道');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rexiaoshangpin`
--

DROP TABLE IF EXISTS `rexiaoshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rexiaoshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `huayu` varchar(200) DEFAULT NULL COMMENT '花语',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) NOT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924404843 DEFAULT CHARSET=utf8 COMMENT='热销商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rexiaoshangpin`
--

LOCK TABLES `rexiaoshangpin` WRITE;
/*!40000 ALTER TABLE `rexiaoshangpin` DISABLE KEYS */;
INSERT INTO `rexiaoshangpin` VALUES (21,'2021-01-29 12:31:08','商品名称1','夏花','花语1','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian1.jpg','规格1','<p>详情1</p>','2021-01-29 20:48:57','2021-02-04 00:00:00',9,19),(22,'2021-01-29 12:31:08','商品名称2','分类2','花语2','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian2.jpg','规格2','<p>详情2</p>','2021-01-29 20:43:49','2021-01-25 00:00:00',4,10),(23,'2021-01-29 12:31:08','商品名称3','分类3','花语3','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian3.jpg','规格3','详情3','2021-01-29 20:44:31','2021-01-30 00:00:00',4,99.9),(24,'2021-01-29 12:31:08','商品名称4','分类4','花语4','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian4.jpg','规格4','详情4','2021-01-29 20:44:59','2021-01-30 00:00:00',6,99.9),(25,'2021-01-29 12:31:08','商品名称5','分类5','花语5','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian5.jpg','规格5','详情5','2021-01-29 20:31:08','2021-01-30 00:00:00',5,99.9),(26,'2021-01-29 12:31:08','商品名称6','分类6','花语6','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian6.jpg','规格6','详情6','2021-01-29 20:31:08','2021-01-30 00:00:00',6,99.9),(1611924404842,'2021-01-29 12:46:44','这里添加鲜花信息','木本花卉','百年好合','http://localhost:8080/ssmyt0it/upload/1611924371990.jpg','束','<p><img src=\"http://localhost:8080/ssmyt0it/upload/1611924385392.jpg\"></p>','2021-01-29 20:48:50','2021-02-04 00:00:00',1,68);
/*!40000 ALTER TABLE `rexiaoshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924226663 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611924226662,'2021-01-29 12:43:46',1611924121320,21,'rexiaoshangpin','商品名称1','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','ns3cxyae5odcdjt25bzdehscvv94co5y','2021-01-29 12:38:00','2021-01-29 13:50:06'),(2,1611924121320,'666','yonghu','用户','ggxigpvjqc6k9xz1v8iy8tz7wkukb8cg','2021-01-29 12:42:05','2021-01-29 13:50:21');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-29 12:31:09'),(2,'000','000','管理员','2021-01-29 12:48:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xianhuafenlei`
--

DROP TABLE IF EXISTS `xianhuafenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xianhuafenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924350118 DEFAULT CHARSET=utf8 COMMENT='鲜花分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xianhuafenlei`
--

LOCK TABLES `xianhuafenlei` WRITE;
/*!40000 ALTER TABLE `xianhuafenlei` DISABLE KEYS */;
INSERT INTO `xianhuafenlei` VALUES (11,'2021-01-29 12:31:08','木本花卉'),(12,'2021-01-29 12:31:08','草本花卉'),(13,'2021-01-29 12:31:08','春花'),(14,'2021-01-29 12:31:08','夏花'),(15,'2021-01-29 12:31:08','秋花'),(16,'2021-01-29 12:31:08','冬花'),(1611924350117,'2021-01-29 12:45:49','这里添加鲜花分类');
/*!40000 ALTER TABLE `xianhuafenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshoutongji`
--

DROP TABLE IF EXISTS `xiaoshoutongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshoutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `xiaoshoubeizhu` varchar(200) DEFAULT NULL COMMENT '销售备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924425166 DEFAULT CHARSET=utf8 COMMENT='销售统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshoutongji`
--

LOCK TABLES `xiaoshoutongji` WRITE;
/*!40000 ALTER TABLE `xiaoshoutongji` DISABLE KEYS */;
INSERT INTO `xiaoshoutongji` VALUES (31,'2021-01-29 12:31:08','商品名称1','分类1','http://localhost:8080/ssmyt0it/upload/xiaoshoutongji_tupian1.jpg',1,1,1,'销售备注1'),(32,'2021-01-29 12:31:08','商品名称2','分类2','http://localhost:8080/ssmyt0it/upload/xiaoshoutongji_tupian2.jpg',2,2,2,'销售备注2'),(33,'2021-01-29 12:31:08','商品名称3','分类3','http://localhost:8080/ssmyt0it/upload/xiaoshoutongji_tupian3.jpg',3,3,3,'销售备注3'),(34,'2021-01-29 12:31:08','商品名称4','分类4','http://localhost:8080/ssmyt0it/upload/xiaoshoutongji_tupian4.jpg',4,4,4,'销售备注4'),(35,'2021-01-29 12:31:08','商品名称5','分类5','http://localhost:8080/ssmyt0it/upload/xiaoshoutongji_tupian5.jpg',5,5,5,'销售备注5'),(36,'2021-01-29 12:31:08','商品名称6','分类6','http://localhost:8080/ssmyt0it/upload/xiaoshoutongji_tupian6.jpg',6,6,6,'销售备注6'),(1611923982227,'2021-01-29 12:39:41','商品名称1','夏花','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian1.jpg',19,10,190,''),(1611923987477,'2021-01-29 12:39:46','商品名称2','分类2','http://localhost:8080/ssmyt0it/upload/rexiaoshangpin_tupian2.jpg',10,20,200,''),(1611924425165,'2021-01-29 12:47:04','这里添加鲜花信息','木本花卉','http://localhost:8080/ssmyt0it/upload/1611924371990.jpg',68,20,1360,'');
/*!40000 ALTER TABLE `xiaoshoutongji` ENABLE KEYS */;
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611924121321 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2021-01-29 12:31:08','用户1','123456','姓名1','男','http://localhost:8080/ssmyt0it/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com',100),(42,'2021-01-29 12:31:08','用户2','123456','姓名2','男','http://localhost:8080/ssmyt0it/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',100),(45,'2021-01-29 12:31:08','用户5','123456','姓名5','男','http://localhost:8080/ssmyt0it/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com',100),(46,'2021-01-29 12:31:08','用户6','123456','姓名6','男','http://localhost:8080/ssmyt0it/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com',100),(1611924121320,'2021-01-29 12:42:01','666','666','小邹','女','http://localhost:8080/ssmyt0it/upload/1611924140517.jpeg','16459878983','135@123.com',462.1);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 11:07:34

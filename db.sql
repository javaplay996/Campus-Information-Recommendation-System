/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanzixuntuijian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanzixuntuijian` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanzixuntuijian`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/xiaoyuanzixuntuijian/upload/1617801685731.jpg'),(2,'picture2','http://localhost:8080/xiaoyuanzixuntuijian/upload/1617801695296.jpg'),(3,'picture3','http://localhost:8080/xiaoyuanzixuntuijian/upload/1617801710209.jpg'),(6,'homepage','http://localhost:8080/xiaoyuanzixuntuijian/upload/1617801720320.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-07 19:26:19'),(2,'sex_types','性别',2,'女',NULL,'2021-04-07 19:26:19'),(3,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-07 19:26:19'),(4,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-07 19:26:19'),(5,'commentback_types','类型',1,'评论',NULL,'2021-04-07 19:26:19'),(6,'commentback_types','类型',2,'回复',NULL,'2021-04-07 19:26:19'),(7,'news_types','新闻类型名称',3,'娱乐新闻',NULL,'2021-04-08 09:36:04');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1',1,'http://localhost:8080/xiaoyuanzixuntuijian/file/download?fileName=1617801750648.jpg','2021-04-07 19:39:52','新闻内容1\r\n','2021-04-07 19:39:52'),(2,'新闻名称2',3,'http://localhost:8080/xiaoyuanzixuntuijian/file/download?fileName=1617844501411.jpg','2021-04-08 09:15:16','123123123\r\n','2021-04-08 09:15:16'),(3,'新闻名称3',2,'http://localhost:8080/xiaoyuanzixuntuijian/file/download?fileName=1617845707474.jpg','2021-04-08 09:35:18',' 新闻内容 新闻内容 新闻内容 新闻内容 新闻内容 新闻内容 新闻内容 新闻内容 新闻内容 新闻内容 新闻内容 新闻内容\r\n','2021-04-08 09:35:18');

/*Table structure for table `news_commentback` */

DROP TABLE IF EXISTS `news_commentback`;

CREATE TABLE `news_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_id` int(11) DEFAULT NULL COMMENT '新闻评论',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '评论人',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `xinwen_commentback_content` text COMMENT '评论内容',
  `commentback_types` int(11) DEFAULT NULL COMMENT '类型',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='新闻评论';

/*Data for the table `news_commentback` */

insert  into `news_commentback`(`id`,`news_id`,`yonghu_id`,`insert_time`,`xinwen_commentback_content`,`commentback_types`,`create_time`) values (22,1,1,'2021-04-07 20:54:13','评论内容1\r\n',1,'2021-04-07 20:54:13'),(31,1,1,'2021-04-07 21:34:36','31231231',1,'2021-04-07 21:34:36'),(32,31,1,'2021-04-07 21:34:46','123123123',2,'2021-04-07 21:34:46'),(33,31,1,'2021-04-08 09:06:44','3333333333',2,'2021-04-08 09:06:44'),(34,1,2,'2021-04-08 09:15:49','esseseseessesese',1,'2021-04-08 09:15:49'),(35,34,2,'2021-04-08 09:15:58','12312312',2,'2021-04-08 09:15:58'),(36,31,3,'2021-04-08 09:23:54','11111111111111111111111111111111111111',2,'2021-04-08 09:23:54'),(37,1,3,'2021-04-08 09:24:09','我是新来的',1,'2021-04-08 09:24:09'),(38,2,1,'2021-04-08 09:31:20','123123123',1,'2021-04-08 09:31:20'),(39,37,1,'2021-04-08 09:31:35','123123123123123123',2,'2021-04-08 09:31:35');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','3y6eo37stwkdnq7znwzpaebhjkm9c3sl','2021-04-07 19:35:26','2021-04-08 10:22:38'),(2,1,'111','yonghu','用户','nn3jdu2jfrgs6zhivq33d71jqlt3vmo2','2021-04-07 19:39:04','2021-04-08 10:31:09'),(3,2,'222','yonghu','用户','ufn3mmlumacazqry2uc9pe4w9us6eicr','2021-04-08 09:15:27','2021-04-08 10:15:28'),(4,3,'333','yonghu','用户','j8cj2ysiyzew4ijy6gkmivm7dkah4qe4','2021-04-08 09:23:19','2021-04-08 10:23:20');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','111','小张',2,'123123123123123123','12312312312','http://localhost:8080/xiaoyuanzixuntuijian/file/download?fileName=1617802095654.jpg',NULL),(2,'222','123456','小张2',1,'410882200010151611','17754466854','http://localhost:8080/xiaoyuanzixuntuijian/file/download?fileName=1617844482398.jpg','2021-04-08 09:14:43'),(3,'333','333','张三',1,'123123132132132','17785546748','http://localhost:8080/xiaoyuanzixuntuijian/upload/1617845004780.jpg',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

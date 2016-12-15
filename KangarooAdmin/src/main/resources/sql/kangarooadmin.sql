/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.47 : Database - kangarooadmin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kangarooadmin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kangarooadmin`;

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `menuName` varchar(50) NOT NULL COMMENT '菜单名称',
  `pid` varchar(50) NOT NULL COMMENT '父级菜单ID',
  `leaf` int(2) DEFAULT NULL COMMENT '是否为叶子,1是叶子,-1不是叶子',
  `url` varchar(255) DEFAULT NULL COMMENT '连接地址',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `deep` int(11) DEFAULT NULL COMMENT '深度',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `resource` varchar(50) DEFAULT NULL COMMENT '资源名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`menuName`,`pid`,`leaf`,`url`,`icon`,`sort`,`deep`,`code`,`resource`) values ('1','系统管理','0',-1,NULL,'fa fa-cogs',1,1,'01',NULL),('10','系统配置','1',1,'/sdsds/dasdasd/1.html',' fa-cog',6,2,'0105','config'),('2','用户管理','1',1,'/system/user/list/1.html','fa-user',2,2,'0101','user'),('3','角色权限管理','1',1,'/system/role/list/1.html','fa-users',3,2,'0102','role'),('4','菜单管理','1',1,'/system/menu/list/1.html','fa-list',4,2,'0103','menu'),('5','日志管理','1',1,'/system/log/list/1.html','fa-info',5,2,'0104','log'),('8','商品管理','0',-1,'','fa-folder',2,1,'02',NULL),('9','商品类目管理','8',1,'/system/menu/list/1.html','fa-file',2,2,'0201','cat'),('a4ea9bd96a7f44a7b4d23d9701207a51','库存报表','f01993627af34c5b99137ef7ed3dae54',1,'/gfgfg/gfdgfd/1.html',NULL,45,2,'0502',NULL),('be6439d404b84062b12c38c4cd752323','销售报表','f01993627af34c5b99137ef7ed3dae54',1,'445115454',NULL,1551,2,'0505',NULL),('f01993627af34c5b99137ef7ed3dae54','统计报表','0',-1,NULL,'fa-folder',4545,1,'05',NULL);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `roleName` varchar(50) NOT NULL COMMENT '角色名称',
  `roleDesc` varchar(300) DEFAULT NULL COMMENT '角色描述',
  `roleState` int(2) DEFAULT '1' COMMENT '状态,1-启用,-1禁用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`roleName`,`roleDesc`,`roleState`,`createTime`) values ('21ed560e15534882afcc27e5d3415c37','utyuty','utyutyutyutyuty',-1,'2016-12-14 10:22:29'),('737933bffef640329a4f864c4e2746ba','超级管理员','utyutyuytuytuytu',1,'2016-12-14 10:22:34'),('a21876314a764438b6af6bfa422ec09a','系统管理员','11111',1,'2016-12-14 17:53:25');

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `roleId` varchar(50) NOT NULL COMMENT '角色主键',
  `menuId` varchar(50) NOT NULL COMMENT '菜单主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`id`,`roleId`,`menuId`) values ('1f465c58318040c19ed9ded67016fe7a','a21876314a764438b6af6bfa422ec09a','8'),('209824e9e5694da283905868f2ac3419','21ed560e15534882afcc27e5d3415c37','9'),('2c9dbf4d1ee94d6cae7ce68e3cc798c9','a21876314a764438b6af6bfa422ec09a','2'),('32eed7f6bf1b495f9cb7a0f6dfffd6c4','21ed560e15534882afcc27e5d3415c37','4'),('35a686e694164b95b9d6af4436aedeb4','21ed560e15534882afcc27e5d3415c37','5'),('35c27b37c89c4e6ca7160ef320329961','1d0d43b9fbbe4c078beb4a732309fe64','1'),('3aceb6111772490e9887904fb54949e3','eb2e1fa3caa448658da909cf141788f8','9'),('537af500a6b9442eb71e0d77a1ea4841','1d0d43b9fbbe4c078beb4a732309fe64','9'),('54a7e328d54b49b78a4e83833f711c8e','737933bffef640329a4f864c4e2746ba','4'),('5588316b826c4b13806d17290959cdbf','21ed560e15534882afcc27e5d3415c37','1'),('712118e6fe374f92b3beaffc1019952a','f08487637b0d4bfc9accc14cbca6f1cd','3'),('750868dfc79a4a32841da56d1601a8d1','f08487637b0d4bfc9accc14cbca6f1cd','1'),('77fd54d3ab0d4eaa8605346d93095eb9','eb2e1fa3caa448658da909cf141788f8','8'),('86897878f4e44728b82abdb063524ddd','737933bffef640329a4f864c4e2746ba','a4ea9bd96a7f44a7b4d23d9701207a51'),('86e36d89fd9f46c0b7b969fa268673d4','737933bffef640329a4f864c4e2746ba','1'),('8a6381f1ddf943a2a3bc42629c339f15','1d0d43b9fbbe4c078beb4a732309fe64','8'),('8ab1ddf282e849708a5f8c35ca0e59b1','21ed560e15534882afcc27e5d3415c37','f01993627af34c5b99137ef7ed3dae54'),('91f3b38349ec452fb8185cae9846b4ed','737933bffef640329a4f864c4e2746ba','f01993627af34c5b99137ef7ed3dae54'),('a577dce09e94410895710a9f8284aa8b','21ed560e15534882afcc27e5d3415c37','8'),('a96d9d6b0f8c4f1da27eb550c415a8e0','737933bffef640329a4f864c4e2746ba','9'),('abf922789afb4774bb84d3d662b7c99c','21ed560e15534882afcc27e5d3415c37','3'),('afee6635bae9403a85097631d76ad7ad','f08487637b0d4bfc9accc14cbca6f1cd','2'),('c1f7bafff86549bd9598aa376f163c49','21ed560e15534882afcc27e5d3415c37','2'),('d91fc481d37c4000ad72fa6cd254a332','a21876314a764438b6af6bfa422ec09a','1'),('da8e243089e946a6ba4e33773dbac217','737933bffef640329a4f864c4e2746ba','3'),('df67042517134c448f276bba5314e307','a21876314a764438b6af6bfa422ec09a','9'),('dfb21abf754b4159b7715cfc13ebdd1f','737933bffef640329a4f864c4e2746ba','5'),('e3539683b28b41b488517acb9124014c','21ed560e15534882afcc27e5d3415c37','be6439d404b84062b12c38c4cd752323'),('e95e2c476fcb4ccf8960e1baaf8f165b','737933bffef640329a4f864c4e2746ba','8'),('ec8a5b394e7c44a5853f59341a002d9e','21ed560e15534882afcc27e5d3415c37','a4ea9bd96a7f44a7b4d23d9701207a51'),('ed99b8a873d1442aac58bb28b2a2f245','737933bffef640329a4f864c4e2746ba','2'),('f46f3e3d6e2641a0955212f624c96cdd','737933bffef640329a4f864c4e2746ba','10');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `userName` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `userState` int(2) NOT NULL DEFAULT '1' COMMENT '用户状态,1-启用,-1禁用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `userDesc` varchar(300) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`userName`,`password`,`userState`,`createTime`,`userDesc`) values ('09c63f873a9e472ca464accb61cd5e51','test','DC483E80A7A0BD9EF71D8CF973673924',1,'2016-12-12 15:50:39','aaaaa'),('4754f010ef344c59b728ea60809ab926','e100000','1973EBD114AAB8BD85457E037BBBFA62',1,'2016-12-12 13:43:59','aa44515112121'),('549d321508db446e9bcaa477835fe5f1','admin','E10ADC3949BA59ABBE56E057F20F883E',1,'2016-12-14 14:35:08','1111111'),('629ba7eb1d8944d2873ecfc6896288e7','zhangsan','25F9E794323B453885F5181F1B624D0B',1,'2016-12-12 11:49:21','张三负责系统的委会和开发工作。');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `Id` varchar(50) NOT NULL COMMENT '主键',
  `userId` varchar(50) NOT NULL COMMENT '用户主键',
  `roleId` varchar(50) NOT NULL COMMENT '角色主键',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`Id`,`userId`,`roleId`) values ('1025415191074c3f8e515ea7b4720ac1','6e6594f930054f1297f93ea626db9500','on'),('210e680232964f94acc73b402483192d','9df9f873d44a460fae8b2d4ffc726808','1'),('3e3841367e644fbb8bbc44deaa179516','3b3fc94b2c064cd5839d0184e6be4857','2'),('605fdd0a284947b99aeb1e91783294ba','4754f010ef344c59b728ea60809ab926','21ed560e15534882afcc27e5d3415c37'),('7abf5f635e5a455cadca6547d2f42c2f','4754f010ef344c59b728ea60809ab926','1d0d43b9fbbe4c078beb4a732309fe64'),('8b990b3b7fe74ce0b9bf81b966a67b9d','3b3fc94b2c064cd5839d0184e6be4857','1'),('9cbd08ed61624d40bb2e8ef4885e9e74','b55a9c253c83412aaf15aeb044899230','3'),('bc1c7a16e9b048ddb95f33159b1faf55','549d321508db446e9bcaa477835fe5f1','737933bffef640329a4f864c4e2746ba'),('d2cc10c108164ab582c3a201492b5092','9df9f873d44a460fae8b2d4ffc726808','2'),('f4a6696fde4f4406a6a9749d46b37e53','9df9f873d44a460fae8b2d4ffc726808','3'),('f4c549066f9c442782a166da6aa65654','6e6594f930054f1297f93ea626db9500','on');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

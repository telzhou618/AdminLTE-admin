/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : kangarooadmin

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-12-21 14:07:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `deptName` varchar(100) NOT NULL COMMENT '部门名称',
  `deptDesc` varchar(300) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '产品部', '1111');
INSERT INTO `sys_dept` VALUES ('69a8f0c4260f4bb7adeebdaeee4e6ca6', '风控部', '风险控制部');
INSERT INTO `sys_dept` VALUES ('98819860429e435898d7a0652ed9c5a2', '运营部', '运营部');
INSERT INTO `sys_dept` VALUES ('aebe7d9b427643feb9c5a66c65fb9a81', '行政部', 'dfdsfds');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `userName` varchar(50) NOT NULL COMMENT '用户',
  `title` varchar(300) DEFAULT NULL COMMENT '日志',
  `url` varchar(300) DEFAULT NULL COMMENT '地址',
  `params` text COMMENT '参数',
  `createTime` datetime DEFAULT NULL COMMENT '日志时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('0071061d82414c95a70e569fc78f3a97', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:32');
INSERT INTO `sys_log` VALUES ('00c5638385424c9481a02e719e1ee46d', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-21 11:06:45');
INSERT INTO `sys_log` VALUES ('0103e02625be42d49e49591cbddca109', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:04:42');
INSERT INTO `sys_log` VALUES ('01aa036afb0845cda41381bd17c7fa4c', 'admin', '创建部门', '/system/dept/doAdd', '{\"deptName\":[\"而我却二二位\"],\"deptDesc\":[\"房顶上\"]}', '2016-12-16 17:57:12');
INSERT INTO `sys_log` VALUES ('02641fc185c84f81b9bf284a6ac3d504', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"1\",\"2\",\"8\",\"9\"],\"roleId\":[\"fdce142ce7554e30b3274c6d8844b13e\"]}', '2016-12-19 09:53:38');
INSERT INTO `sys_log` VALUES ('03d4f5b4f6f54a8cba3a193d55a387d8', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:51');
INSERT INTO `sys_log` VALUES ('05955a92574b4b63bf7215664c2e9cfe', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http://kangaroo.com:8080/\"],\"userName\":[\"admin\"],\"captcha\":[\"gwecw\"]}', '2016-12-19 09:31:30');
INSERT INTO `sys_log` VALUES ('06c0894f67734abcac574e941a085a47', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-21 11:19:34');
INSERT INTO `sys_log` VALUES ('06d943044e0549a18490c97bec6d841b', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"\"],\"userName\":[\"admin\"],\"captcha\":[\"pmpy7\"]}', '2016-12-19 15:54:18');
INSERT INTO `sys_log` VALUES ('06eeffa9feb14081b28c02bc63fcc63f', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http://kangaroo.com:8080/\"],\"userName\":[\"admin\"],\"captcha\":[\"da6nm\"]}', '2016-12-19 15:54:10');
INSERT INTO `sys_log` VALUES ('06f0c287d4a84c73bac3390d686a40c4', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:48');
INSERT INTO `sys_log` VALUES ('07a590b8fda24ea2b8d7406b934054e4', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-19 09:31:40');
INSERT INTO `sys_log` VALUES ('08f5d960e71448d2b593730b0203469f', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"mggd4\"]}', '2016-12-21 11:19:57');
INSERT INTO `sys_log` VALUES ('0befe42b90c947cd9346d5ce3b071bb4', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"sidebar-collapse\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 09:48:21');
INSERT INTO `sys_log` VALUES ('11964c50820a4b56b039624671d1c0ea', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 14:42:40');
INSERT INTO `sys_log` VALUES ('11af60d810d5491dab63486492710f25', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KAG\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 13:20:13');
INSERT INTO `sys_log` VALUES ('12be5c2bf0cd42f1a0b3274b1c0f7b99', 'admin', '创建部门', '/system/dept/doAdd', '{\"deptName\":[\"fsdfs\"],\"deptDesc\":[\"dfdsfds\"]}', '2016-12-16 17:15:47');
INSERT INTO `sys_log` VALUES ('14b61aa9d3e340058598fb72bb005c45', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:50');
INSERT INTO `sys_log` VALUES ('1531157d0c114b1da5575097c74911be', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-21 11:08:10');
INSERT INTO `sys_log` VALUES ('153d70efa9074a16a5fc1829e341a461', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http:\\/\\/kangaroo.com:8080\\/\"],\"userName\":[\"admin\"],\"captcha\":[\"d4ecw\"]}', '2016-12-16 10:47:28');
INSERT INTO `sys_log` VALUES ('15ff7884b3ba4fc1a1cf8194c5abea44', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:52');
INSERT INTO `sys_log` VALUES ('18ea2411d0114ff182b48c5f841994b0', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:47');
INSERT INTO `sys_log` VALUES ('1a1d35f3689d462ebc703b32d63cfc3a', 'admin', '创建目录菜单', '/system/menu/doAddDir.html', '{\"icon\":[\"fa-folder\"],\"menuName\":[\"表单集合\"],\"code\":[\"07\"],\"sort\":[\"7\"]}', '2016-12-21 10:43:55');
INSERT INTO `sys_log` VALUES ('1a93cc318b5647b9a7d6088b4bfd7c9f', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"1\",\"2\",\"3\",\"22e38e885f9b40b9aae6a36deb78e89c\",\"4\",\"5\",\"10\",\"8\",\"9\",\"c9cb531d0e6a44eb9f525939c2fe32e0\",\"f01993627af34c5b99137ef7ed3dae54\",\"6d8a0a374fc744f094764fbd5b331994\",\"a4ea9bd96a7f44a7b4d23d9701207a51\",\"be6439d404b84062b12c38c4cd752323\",\"74b52d8d64f74bc9b84d3ae2e85e5c21\",\"146b6c05824f44d2bb91b5926207a695\",\"4701a8374ced4b16a02198f4a65ad8ec\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"]}', '2016-12-16 17:11:33');
INSERT INTO `sys_log` VALUES ('1c9808f090ba42ff85a1cffddaa332df', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"f01993627af34c5b99137ef7ed3dae54\",\"a4ea9bd96a7f44a7b4d23d9701207a51\",\"be6439d404b84062b12c38c4cd752323\"],\"roleId\":[\"ab7e4b34e5d141fa8566fdbb5d3e66f7\"]}', '2016-12-19 09:51:19');
INSERT INTO `sys_log` VALUES ('1ccc51e627404fcf988a98d785760e80', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"1\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 09:47:56');
INSERT INTO `sys_log` VALUES ('1e5ae283a10d4f81a1f88fffefa00693', 'admin', '创建部门', '/system/dept/doAdd', '{\"deptName\":[\"yyyy\"],\"deptDesc\":[\"yyrttttt\"]}', '2016-12-16 17:57:30');
INSERT INTO `sys_log` VALUES ('1f225e875d584b7d883d77880fe036db', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:04:38');
INSERT INTO `sys_log` VALUES ('1fd8ad0142774e8196b9890408b0ba56', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-19 09:50:57');
INSERT INTO `sys_log` VALUES ('21680fb38e78442da0cc221b066cca4a', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:25');
INSERT INTO `sys_log` VALUES ('21911f6abc204dcc8dd36e3161e7d210', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:44');
INSERT INTO `sys_log` VALUES ('229b9da4b9f64a4e9e7530333634c51f', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 14:41:28');
INSERT INTO `sys_log` VALUES ('22c548a1f56944399992327dc89cda19', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:28');
INSERT INTO `sys_log` VALUES ('23894a23e164448f9d44e3bec04098a1', 'admin', '编辑用户', 'http://kangaroo.com:8080/system/user/doEdit', '{\"userDesc\":[\"\\u5F20\\u4E09\\u8D1F\\u8D23\\u7CFB\\u7EDF\\u7684\\u59D4\\u4F1A\\u548C\\u5F00\\u53D1\\u5DE5\\u4F5C\\u3002\"],\"id\":[\"629ba7eb1d8944d2873ecfc6896288e7\"],\"userName\":[\"zhangsan\"],\"userState\":[\"1\"]}', '2016-12-16 10:12:12');
INSERT INTO `sys_log` VALUES ('241e238335dc45cbbf6f6041c0f29ff2', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http://kangaroo.com:8080/\"],\"userName\":[\"admin\"],\"captcha\":[\"wxapw\"]}', '2016-12-19 14:25:12');
INSERT INTO `sys_log` VALUES ('24d5d44cc75647ad8eb1037c4551456b', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-19 15:44:25');
INSERT INTO `sys_log` VALUES ('24fa8dfd69e047d6842491eabcd904f4', 'admin', '编辑用户', '/system/user/doEdit', '{\"deptId\":[\"1\"],\"userDesc\":[\"张三负责系统的委会和开发工作。\"],\"id\":[\"629ba7eb1d8944d2873ecfc6896288e7\"],\"userName\":[\"zhangsan\"],\"userState\":[\"1\"]}', '2016-12-16 20:58:12');
INSERT INTO `sys_log` VALUES ('25ad6380f8114830bc35160002e69774', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"11\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 13:40:53');
INSERT INTO `sys_log` VALUES ('26603176720a4d42b51dc62949e4b421', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"运营部\"],\"deptDesc\":[\"运营部\"],\"id\":[\"98819860429e435898d7a0652ed9c5a2\"]}', '2016-12-17 14:44:07');
INSERT INTO `sys_log` VALUES ('275a236ab46c43a2b3f8cf0b30405102', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:04:14');
INSERT INTO `sys_log` VALUES ('27d006ecaa9a416cbe28e8fbcab9acfb', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:04:39');
INSERT INTO `sys_log` VALUES ('2a035e552d3b46628f877ddeb75532b6', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123123\"],\"returnURL\":[\"\"],\"userName\":[\"admin\"],\"captcha\":[\"365cc\"]}', '2016-12-20 18:01:25');
INSERT INTO `sys_log` VALUES ('2a671e4ddca84694b8f2cc9b2a97853f', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:32');
INSERT INTO `sys_log` VALUES ('2aeaf5a571cf433a95743550cc88a488', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"f01993627af34c5b99137ef7ed3dae54\",\"a4ea9bd96a7f44a7b4d23d9701207a51\",\"be6439d404b84062b12c38c4cd752323\"],\"roleId\":[\"ab7e4b34e5d141fa8566fdbb5d3e66f7\"]}', '2016-12-19 09:53:48');
INSERT INTO `sys_log` VALUES ('2c70ec40ba0046eb87011e43c1955c61', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0103\"],\"resource\":[\"dept\"],\"icon\":[\"fa-file\"],\"pid\":[\"1\"],\"menuName\":[\"部门管理\"],\"id\":[\"22e38e885f9b40b9aae6a36deb78e89c\"],\"sort\":[\"3\"],\"url\":[\"/system/dept/list/1.html\"]}', '2016-12-17 14:43:35');
INSERT INTO `sys_log` VALUES ('2c85001537f843bc89943bd97898ab08', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"aa44515112121\"],\"id\":[\"4754f010ef344c59b728ea60809ab926\"],\"userName\":[\"e100000\"],\"userState\":[\"1\"]}', '2016-12-16 10:13:47');
INSERT INTO `sys_log` VALUES ('2eb7abc71f7e49238831a1e7f327aaeb', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:53');
INSERT INTO `sys_log` VALUES ('2f1489117b1d4a19a159c61ed3753bf2', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"1111\"],\"deptDesc\":[\"1111\"]}', '2016-12-16 17:20:15');
INSERT INTO `sys_log` VALUES ('3009c31f4dfc413f955b4d994c4c3d59', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"\"],\"userName\":[\"admin\"],\"captcha\":[\"yhfth\"]}', '2016-12-20 17:14:34');
INSERT INTO `sys_log` VALUES ('313c18188e9344d69611555e33aeac97', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:32');
INSERT INTO `sys_log` VALUES ('31fb3ba6617040608ab841caa83af820', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-17 11:19:01');
INSERT INTO `sys_log` VALUES ('33436aec0bfa4fa7a464242492df775d', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"\"],\"userName\":[\"admin\"],\"captcha\":[\"yhfth\"]}', '2016-12-20 17:14:38');
INSERT INTO `sys_log` VALUES ('344ee5abaf974de7ba5490134d6c4697', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:41');
INSERT INTO `sys_log` VALUES ('364a867c736341efbcc55423a2ac4216', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"1\",\"2\",\"8\",\"9\"],\"roleId\":[\"fdce142ce7554e30b3274c6d8844b13e\"]}', '2016-12-16 20:55:30');
INSERT INTO `sys_log` VALUES ('3834985ad8f4465a8c5625f0f495833f', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"aaaaa\"],\"id\":[\"09c63f873a9e472ca464accb61cd5e51\"],\"userName\":[\"test\"],\"userState\":[\"1\"]}', '2016-12-16 11:54:35');
INSERT INTO `sys_log` VALUES ('39682c6bcb0e4fcc84160715a823c27b', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:42');
INSERT INTO `sys_log` VALUES ('3ae39984b7eb42de9e0896d43d9e2809', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 17:58:22');
INSERT INTO `sys_log` VALUES ('3b4a6da15c81403ab27b538d293c1e1c', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"7acf2\"]}', '2016-12-19 09:50:47');
INSERT INTO `sys_log` VALUES ('3c1c57b1fbc94828b3c5b27d61b51232', 'admin', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http:\\/\\/localhost:8080\\/\"],\"userName\":[\"admin\"],\"captcha\":[\"44x88\"]}', '2016-12-16 10:46:27');
INSERT INTO `sys_log` VALUES ('3e3a4b24c5ea4e569619bcec3af8882c', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:27');
INSERT INTO `sys_log` VALUES ('3f0246bc63154239bdab6489acb4191d', 'admin', '编辑用户', '/system/user/doEdit', '{\"deptId\":[\"98819860429e435898d7a0652ed9c5a2\"],\"userDesc\":[\"aaaaa\"],\"id\":[\"09c63f873a9e472ca464accb61cd5e51\"],\"userName\":[\"test\"],\"userState\":[\"-1\"]}', '2016-12-20 17:28:00');
INSERT INTO `sys_log` VALUES ('40ccd1a1ea62453c95c4a794c38369e8', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"mfx7p\"]}', '2016-12-17 11:39:16');
INSERT INTO `sys_log` VALUES ('41805fd42b72457487e1d697777a3b1c', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:18');
INSERT INTO `sys_log` VALUES ('41d025bc525543a5969c0ed134eb2280', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"1\",\"2\",\"3\",\"22e38e885f9b40b9aae6a36deb78e89c\",\"4\",\"5\",\"8\",\"9\",\"c9cb531d0e6a44eb9f525939c2fe32e0\",\"f01993627af34c5b99137ef7ed3dae54\",\"6d8a0a374fc744f094764fbd5b331994\",\"a4ea9bd96a7f44a7b4d23d9701207a51\",\"be6439d404b84062b12c38c4cd752323\",\"74b52d8d64f74bc9b84d3ae2e85e5c21\",\"146b6c05824f44d2bb91b5926207a695\",\"4701a8374ced4b16a02198f4a65ad8ec\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"]}', '2016-12-17 13:20:31');
INSERT INTO `sys_log` VALUES ('41db40f19d0f40fc901895bc6a077f4c', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http://kangaroo.com:8080/system/user/add.html\"],\"userName\":[\"admin\"],\"captcha\":[\"w8n27\"]}', '2016-12-21 11:09:27');
INSERT INTO `sys_log` VALUES ('41e2b002290a42e9872d67e3154ee208', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"aaaaa\"],\"id\":[\"09c63f873a9e472ca464accb61cd5e51\"],\"userName\":[\"test\"],\"userState\":[\"1\"]}', '2016-12-16 11:52:33');
INSERT INTO `sys_log` VALUES ('43c6786bf4c94a35952a9fd4c532dc01', 'admin', '删除部门', '/system/dept/delete', '{\"id\":[\"3a44d3a577214643a29b4c288c9497be\"]}', '2016-12-16 17:57:23');
INSERT INTO `sys_log` VALUES ('442c8b96ca1e4cfe977ebaca1b4b5d8d', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:04:37');
INSERT INTO `sys_log` VALUES ('44948d2a65b74f989afc8d45374a7c8d', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:04:06');
INSERT INTO `sys_log` VALUES ('452cc222298345c0a1c589dbf2f44c95', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"\"],\"userName\":[\"admin\"],\"captcha\":[\"yhfth\"]}', '2016-12-20 17:14:30');
INSERT INTO `sys_log` VALUES ('488ccddb3e1141d19881f086718c7bc3', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"sidebar-open\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 09:59:55');
INSERT INTO `sys_log` VALUES ('4a0731ff36324b7d8027f841ef1e47cb', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"icon\":[\"fa-link\"],\"menuName\":[\"商家管理\"],\"code\":[\"06\"],\"id\":[\"74b52d8d64f74bc9b84d3ae2e85e5c21\"],\"sort\":[\"4\"]}', '2016-12-19 09:56:32');
INSERT INTO `sys_log` VALUES ('4a937bfee14a4024a06f15187436d1c6', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:31');
INSERT INTO `sys_log` VALUES ('4ab6b3cf2b0648a4a4d645c5b2c9cff3', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:30');
INSERT INTO `sys_log` VALUES ('4d03c40f51474296a1fedc80c6b555bd', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:22');
INSERT INTO `sys_log` VALUES ('4d147d5b03de46d5aa9d39aa378c3b16', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"行政部\"],\"deptDesc\":[\"dfdsfds\"],\"id\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"]}', '2016-12-16 17:22:04');
INSERT INTO `sys_log` VALUES ('4de52f530c894a0f8f62db86b41496d8', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"icon\":[\"fa fa-cogs\"],\"menuName\":[\"系统管理\"],\"code\":[\"01\"],\"id\":[\"1\"],\"sort\":[\"1\"]}', '2016-12-16 16:59:40');
INSERT INTO `sys_log` VALUES ('4f759bc009b8478cb607fa79033f8e2d', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:32');
INSERT INTO `sys_log` VALUES ('4fdfc0bba4ba48aaa0fdc9ccb667eb2d', 'admin', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http:\\/\\/localhost:8080\\/\"],\"userName\":[\"admin\"],\"captcha\":[\"pxd42\"]}', '2016-12-16 10:46:03');
INSERT INTO `sys_log` VALUES ('512121543cfa43d2b0ac708807a667fc', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:01:41');
INSERT INTO `sys_log` VALUES ('51ab429658c94d228e4f55a9be50ecf6', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"hghgh\"]}', '2016-12-20 17:14:13');
INSERT INTO `sys_log` VALUES ('522145ded09f4b4c873b643952ed252f', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:44');
INSERT INTO `sys_log` VALUES ('52254db938614fd68db288cd06f2a21b', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:53');
INSERT INTO `sys_log` VALUES ('56a783469622489ea75928327898a07b', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:46');
INSERT INTO `sys_log` VALUES ('58d57a4813764bfda34b8031a0d5e61e', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"********\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"c64nw\"]}', '2016-12-21 11:07:30');
INSERT INTO `sys_log` VALUES ('5a0c980c7ab3441488ec49e09b07ff2f', 'admin', '创建菜单', '/system/menu/doAddMenu.html', '{\"code\":[\"0701\"],\"resource\":[\"form\"],\"icon\":[\"fa-file\"],\"pid\":[\"6c28913f69ac478ab6631af4590d03c7\"],\"menuName\":[\"全部表单\"],\"sort\":[\"1\"],\"url\":[\"/form/form/list.html\"]}', '2016-12-21 10:44:53');
INSERT INTO `sys_log` VALUES ('5a71d1277b5e44639b1c736c6f1ad438', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:30');
INSERT INTO `sys_log` VALUES ('5b80395d6c394334a75af9195bb688be', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"\"],\"userName\":[\"admin\"],\"captcha\":[\"8a26c\"]}', '2016-12-21 11:07:42');
INSERT INTO `sys_log` VALUES ('5c356dc888584cff92efdda2921f2615', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"\\u5F20\\u4E09\\u8D1F\\u8D23\\u7CFB\\u7EDF\\u7684\\u59D4\\u4F1A\\u548C\\u5F00\\u53D1\\u5DE5\\u4F5C\\u3002\"],\"id\":[\"629ba7eb1d8944d2873ecfc6896288e7\"],\"userName\":[\"zhangsan\"],\"userState\":[\"1\"]}', '2016-12-16 10:13:37');
INSERT INTO `sys_log` VALUES ('5deaf42cfe104621a30077b6207e680e', 'admin', '编辑用户', '/system/user/doEdit', '{\"deptId\":[\"98819860429e435898d7a0652ed9c5a2\"],\"userDesc\":[\"aaaaa\"],\"id\":[\"09c63f873a9e472ca464accb61cd5e51\"],\"userName\":[\"test\"],\"userState\":[\"1\"]}', '2016-12-17 10:24:19');
INSERT INTO `sys_log` VALUES ('60ff554e7e154a23b2707847100f10c6', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:31');
INSERT INTO `sys_log` VALUES ('611ac4ecb653407781b78f7a16be70ba', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:43');
INSERT INTO `sys_log` VALUES ('634af47682cb453e85926af5452f259a', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-20 18:02:05');
INSERT INTO `sys_log` VALUES ('649f5ff69fc94a21b61d7c624676c42a', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:31');
INSERT INTO `sys_log` VALUES ('6588b853d1ad4a5783cbe90f5e9fb75a', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-21 11:08:11');
INSERT INTO `sys_log` VALUES ('65b3678b767e41f894704a1afeab7267', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-17 11:15:07');
INSERT INTO `sys_log` VALUES ('67a9d33f908341a98e006005b27e68f1', 'admin', '创建部门', '/system/dept/doAdd', '{\"deptName\":[\"风控部\"],\"deptDesc\":[\"风险控制部\"]}', '2016-12-19 09:58:44');
INSERT INTO `sys_log` VALUES ('687a73627c1e4ee8be1782977e5d1da8', 'admin', '创建部门', '/system/dept/doAdd', '{\"deptName\":[\"fdsfds\"],\"deptDesc\":[\" 房顶上飞\"]}', '2016-12-16 17:22:14');
INSERT INTO `sys_log` VALUES ('6ccb7ccfe2894e00a9041269fc808408', 'admin', '创建用户', '/system/user/doAdd', '{\"password\":[\"123456\"],\"userState\":[\"1\"],\"deptId\":[\"1\"],\"password2\":[\"123456\"],\"userDesc\":[\"111111\"],\"userName\":[\"admin2\"]}', '2016-12-16 17:58:20');
INSERT INTO `sys_log` VALUES ('6d36796b6c8c4c76b08d27077d891e45', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:03:48');
INSERT INTO `sys_log` VALUES ('6d769214884745a48b68c536e94031a0', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0103\"],\"resource\":[\"dept\"],\"icon\":[\"fa-heart\"],\"pid\":[\"1\"],\"menuName\":[\"部门管理\"],\"id\":[\"22e38e885f9b40b9aae6a36deb78e89c\"],\"sort\":[\"3\"],\"url\":[\"/system/dept/list/1.html\"]}', '2016-12-19 09:57:59');
INSERT INTO `sys_log` VALUES ('6ee5ed99ec5146628012f78879ee1619', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:02:28');
INSERT INTO `sys_log` VALUES ('6f1e0cc716444c2c9d0a6516e1002415', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"],\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"]}', '2016-12-16 11:54:02');
INSERT INTO `sys_log` VALUES ('6fcdfcd6bbc24e949932b278f454f668', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:03:45');
INSERT INTO `sys_log` VALUES ('70285b6bc25d4880a37bcd7bc179183d', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-19 09:31:46');
INSERT INTO `sys_log` VALUES ('7497212baa82410a919fc7d6dec29f2c', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"cyg84\"]}', '2016-12-20 18:01:16');
INSERT INTO `sys_log` VALUES ('76ad57c691d4436dbd92bf4b394a76fe', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0105\"],\"resource\":[\"setting\"],\"icon\":[\" fa-cog\"],\"pid\":[\"1\"],\"menuName\":[\"系统配置\"],\"id\":[\"10\"],\"sort\":[\"6\"],\"url\":[\"/system/setting/page.html\"]}', '2016-12-16 16:59:37');
INSERT INTO `sys_log` VALUES ('781bb79906ba42fab06c1ff97b25ef67', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"fsdfs禾嘉股份和\"],\"deptDesc\":[\"dfdsfds\"],\"id\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"]}', '2016-12-16 17:21:46');
INSERT INTO `sys_log` VALUES ('7898a8bfbdd445b8ac6b178abafa0700', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:47');
INSERT INTO `sys_log` VALUES ('7996993300b34a90a6b73b22bbed6e77', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:21');
INSERT INTO `sys_log` VALUES ('79f68daad2d64c6fae43c9e3ee98a2a1', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"],\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"]}', '2016-12-16 11:54:37');
INSERT INTO `sys_log` VALUES ('7a4b07d1ee004b35a4988e14c60e3f5e', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"\"],\"userName\":[\"admin\"],\"captcha\":[\"hgyhf\"]}', '2016-12-20 17:14:18');
INSERT INTO `sys_log` VALUES ('7ba9ab971bc049de91fb41e80c7eeae8', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"icon\":[\"fa-cart-plus\"],\"menuName\":[\"商品管理\"],\"code\":[\"02\"],\"id\":[\"8\"],\"sort\":[\"2\"]}', '2016-12-19 09:55:19');
INSERT INTO `sys_log` VALUES ('7c3cb1b5664b45b59e33f1af0220a2c2', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:45');
INSERT INTO `sys_log` VALUES ('7cc1c21d575c492ca0f162f8dab028d4', 'admin', '编辑用户', '/system/user/doEdit', '{\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"],\"deptId\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"],\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"]}', '2016-12-16 17:37:03');
INSERT INTO `sys_log` VALUES ('7cfbccbed09543e4ab1011b55b5f9fe2', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"44w5d\"]}', '2016-12-20 18:02:13');
INSERT INTO `sys_log` VALUES ('7df4eb360fb3417ab5a48d0d32cdd2df', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 14:16:01');
INSERT INTO `sys_log` VALUES ('7ff3b9efbecf4963ac96aff5c10a07cf', 'admin', '删除部门', '/system/dept/delete', '{\"id\":[\"f234ffc99da941b6b110b6b74e0bf872\"]}', '2016-12-16 17:22:16');
INSERT INTO `sys_log` VALUES ('81e47d15afd34eb6b9fde2c42a8e82db', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 18:04:48');
INSERT INTO `sys_log` VALUES ('845c13f477144407aa79ccbb8b388871', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:44');
INSERT INTO `sys_log` VALUES ('84cf0a18148d43868489cc314708bcf1', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-20 18:01:41');
INSERT INTO `sys_log` VALUES ('85e6bf3d7f2349cb9615fa141c2f350b', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:51');
INSERT INTO `sys_log` VALUES ('87d559c5f7fe46ee8c0663493be815da', 'admin', '编辑角色', '/system/role/doEdit', '{\"roleName\":[\"报表管理员\"],\"roleDesc\":[\"dasdasdas\"],\"id\":[\"ab7e4b34e5d141fa8566fdbb5d3e66f7\"],\"roleState\":[\"1\"]}', '2016-12-16 11:54:21');
INSERT INTO `sys_log` VALUES ('881783e3510045de8ac856716a7904d5', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"1\",\"2\",\"8\",\"9\"],\"roleId\":[\"fdce142ce7554e30b3274c6d8844b13e\"]}', '2016-12-17 14:19:15');
INSERT INTO `sys_log` VALUES ('88861ea976a44560b871e039ca2043b4', 'admin', '编辑用户', '/system/user/doEdit', '{\"deptId\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"],\"userDesc\":[\"aa44515112121\"],\"id\":[\"4754f010ef344c59b728ea60809ab926\"],\"userName\":[\"e100000\"],\"userState\":[\"1\"]}', '2016-12-20 17:27:44');
INSERT INTO `sys_log` VALUES ('88b4bf4e8f674580ae2b37ad1471256e', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"f01993627af34c5b99137ef7ed3dae54\",\"a4ea9bd96a7f44a7b4d23d9701207a51\",\"be6439d404b84062b12c38c4cd752323\"],\"roleId\":[\"ab7e4b34e5d141fa8566fdbb5d3e66f7\"]}', '2016-12-16 11:52:37');
INSERT INTO `sys_log` VALUES ('8944ef420cec45c2b3078c1f46f0fc85', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:29');
INSERT INTO `sys_log` VALUES ('8aa74a967dab493e976c4aae24d65a18', 'admin', '编辑角色', '/system/role/doEdit', '{\"roleName\":[\"超级管理员\"],\"roleDesc\":[\"utyutyuytuytuytuhghg\"],\"id\":[\"737933bffef640329a4f864c4e2746ba\"],\"roleState\":[\"1\"]}', '2016-12-16 11:54:24');
INSERT INTO `sys_log` VALUES ('8ac2b8c5b59244b5ac9aba202a9915d7', 'admin', '编辑角色', '/system/role/doEdit', '{\"roleName\":[\"报表管理员\"],\"roleDesc\":[\"dasdasdas\"],\"id\":[\"ab7e4b34e5d141fa8566fdbb5d3e66f7\"],\"roleState\":[\"1\"]}', '2016-12-17 14:17:18');
INSERT INTO `sys_log` VALUES ('8d98d7eb5d09406092ff15dd751de1ef', 'admin', '访问首页', '/', '{}', '2016-12-16 10:47:28');
INSERT INTO `sys_log` VALUES ('8d9e4947ae82431c8fa408d2864910fb', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:29');
INSERT INTO `sys_log` VALUES ('8dc2cfff8c3a479b8978605fa46ce75b', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KAG\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 11:28:22');
INSERT INTO `sys_log` VALUES ('8f736897365e43c7b5cf6347a8c3fb84', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"fsdfs\"],\"deptDesc\":[\"dfdsfds\"]}', '2016-12-16 17:18:14');
INSERT INTO `sys_log` VALUES ('913588bca7fa4daf846828f4f5d49c58', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 16:15:50');
INSERT INTO `sys_log` VALUES ('916d14a7d16d48918b2eae9965e10135', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-20 17:14:05');
INSERT INTO `sys_log` VALUES ('93acca8091e84e2e82c32792f7e52d4e', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 10:46:56');
INSERT INTO `sys_log` VALUES ('94442083d2b24a018ad1ed151c0bef99', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"fsdfs金龟换酒计划\"],\"deptDesc\":[\"dfdsfds\"]}', '2016-12-16 17:19:16');
INSERT INTO `sys_log` VALUES ('9616e30d53ba4238b91162cc6ed16d0a', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-21 10:48:02');
INSERT INTO `sys_log` VALUES ('97455cd48f664b8eacde2c9bff957263', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 18:03:57');
INSERT INTO `sys_log` VALUES ('9876a8d5ff734d8e9255756bde85dfa1', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0201\"],\"resource\":[\"cat\"],\"icon\":[\"fa-file\"],\"pid\":[\"8\"],\"menuName\":[\"商品类目管理\"],\"id\":[\"9\"],\"sort\":[\"2\"],\"url\":[\"/system/menu/list/1.html\"]}', '2016-12-16 14:08:59');
INSERT INTO `sys_log` VALUES ('9a0586b961c340aab7bfd1c70fae3e88', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http://kangaroo.com:8080/\"],\"userName\":[\"admin\"],\"captcha\":[\"bywe7\"]}', '2016-12-20 17:11:10');
INSERT INTO `sys_log` VALUES ('9b8b8a0b4fd341ef8be88dac04fbc26a', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 16:15:59');
INSERT INTO `sys_log` VALUES ('9fc48aef537847c1a22970277c8c99f8', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"8836f\"]}', '2016-12-21 11:06:37');
INSERT INTO `sys_log` VALUES ('a091de86283a49f8bab1d1260adf74b1', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"1\",\"2\",\"3\",\"22e38e885f9b40b9aae6a36deb78e89c\",\"4\",\"5\",\"10\",\"8\",\"9\",\"c9cb531d0e6a44eb9f525939c2fe32e0\",\"f01993627af34c5b99137ef7ed3dae54\",\"6d8a0a374fc744f094764fbd5b331994\",\"a4ea9bd96a7f44a7b4d23d9701207a51\",\"be6439d404b84062b12c38c4cd752323\",\"74b52d8d64f74bc9b84d3ae2e85e5c21\",\"146b6c05824f44d2bb91b5926207a695\",\"4701a8374ced4b16a02198f4a65ad8ec\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"]}', '2016-12-17 14:21:11');
INSERT INTO `sys_log` VALUES ('a48960a0e3bd47f58fdaa26036ed33bf', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-17 11:08:22');
INSERT INTO `sys_log` VALUES ('a4af1bad64ad40ada2b01d27f05b572d', 'admin', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http:\\/\\/localhost:8080\\/\"],\"userName\":[\"admin\"],\"captcha\":[\"5xad2\"]}', '2016-12-16 10:45:57');
INSERT INTO `sys_log` VALUES ('a7232265e6a14b7482868319156cd641', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"icon\":[\"fa-bar-chart\"],\"menuName\":[\"统计报表\"],\"code\":[\"05\"],\"id\":[\"f01993627af34c5b99137ef7ed3dae54\"],\"sort\":[\"3\"]}', '2016-12-19 09:55:48');
INSERT INTO `sys_log` VALUES ('a881019b670a4784af86c3b9d5e906df', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"f01993627af34c5b99137ef7ed3dae54\",\"a4ea9bd96a7f44a7b4d23d9701207a51\",\"be6439d404b84062b12c38c4cd752323\"],\"roleId\":[\"ab7e4b34e5d141fa8566fdbb5d3e66f7\"]}', '2016-12-19 09:51:26');
INSERT INTO `sys_log` VALUES ('aac466e446e94f2f948c84547ed86436', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:45');
INSERT INTO `sys_log` VALUES ('ae487acca1ea423c94f8baaf442c3e6f', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-19 09:31:47');
INSERT INTO `sys_log` VALUES ('af07c82fbe31464684b41d5f06180e29', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0105\"],\"resource\":[\"setting\"],\"icon\":[\" fa-cog\"],\"pid\":[\"1\"],\"menuName\":[\"系统配置\"],\"id\":[\"10\"],\"sort\":[\"6\"],\"url\":[\"/system/setting/page.html\"]}', '2016-12-17 14:36:30');
INSERT INTO `sys_log` VALUES ('b061e4e107db4e3ab3ac2fa0d69566fd', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:04:41');
INSERT INTO `sys_log` VALUES ('b37e0a517e9a441e9cfa2e3d90584501', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-17 17:05:08');
INSERT INTO `sys_log` VALUES ('b4720412e48f4e758555ead86b3b8956', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"8\",\"9\"],\"roleId\":[\"fdce142ce7554e30b3274c6d8844b13e\"]}', '2016-12-16 16:56:02');
INSERT INTO `sys_log` VALUES ('b5938f766eec423a811f394347c36245', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:46');
INSERT INTO `sys_log` VALUES ('b64506c5be6848a88d37edf3db10f187', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"sidebar-collapse\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 09:49:11');
INSERT INTO `sys_log` VALUES ('b88b8d420d16436dab3df1418be02015', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:04:42');
INSERT INTO `sys_log` VALUES ('b9b8aa123f5c410c944cd0679ea6b252', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"aa44515112121\"],\"id\":[\"4754f010ef344c59b728ea60809ab926\"],\"userName\":[\"e100000\"],\"userState\":[\"1\"]}', '2016-12-16 16:55:57');
INSERT INTO `sys_log` VALUES ('ba89398985284c3ba9d7bb77987297c7', 'admin', '编辑用户', '/system/user/doEdit', '{\"userState\":[\"1\"],\"roleId\":[\"a21876314a764438b6af6bfa422ec09a\"],\"deptId\":[\"1\"],\"userDesc\":[\"111111\"],\"id\":[\"f62307be393d4f5a9a61ed9116629b03\"],\"userName\":[\"admin2\"]}', '2016-12-16 18:05:15');
INSERT INTO `sys_log` VALUES ('bacf74fe6da448cdac4bfef9e1fe5f42', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KAG\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 11:28:23');
INSERT INTO `sys_log` VALUES ('bbe8517d3e22476da6af613779cfb6d2', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"f01993627af34c5b99137ef7ed3dae54\",\"a4ea9bd96a7f44a7b4d23d9701207a51\",\"be6439d404b84062b12c38c4cd752323\"],\"roleId\":[\"ab7e4b34e5d141fa8566fdbb5d3e66f7\"]}', '2016-12-17 14:17:15');
INSERT INTO `sys_log` VALUES ('bca2407a45994099b26b862fbb32f40c', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"10\"],\"roleId\":[\"a21876314a764438b6af6bfa422ec09a\"]}', '2016-12-19 09:51:22');
INSERT INTO `sys_log` VALUES ('bcc8e77c70fc449799fefa4bcddd5651', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:49');
INSERT INTO `sys_log` VALUES ('bd48fb579c304a65966be1ebdfff4f0e', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"sidebar-collapse\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 09:54:14');
INSERT INTO `sys_log` VALUES ('be4784e8904142509c5cb60ab80d4ded', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"1\",\"2\",\"8\",\"9\"],\"roleId\":[\"fdce142ce7554e30b3274c6d8844b13e\"]}', '2016-12-17 14:43:30');
INSERT INTO `sys_log` VALUES ('beef660b6a48496391389f01c4de9db7', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:58:32');
INSERT INTO `sys_log` VALUES ('c06afb258e9a4ffa873983f2ad3f5de5', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:49');
INSERT INTO `sys_log` VALUES ('c499652b5d30487eb0540f12f320ba6d', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"fsdfsgfd房顶上发的\"],\"deptDesc\":[\"dfdsfds\"]}', '2016-12-16 17:18:20');
INSERT INTO `sys_log` VALUES ('c8527ccee4f7419aa2c7b4bc467004b9', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 14:16:01');
INSERT INTO `sys_log` VALUES ('c85e2d5e618e4a3d92fccffa988eac81', 'admin', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"\\/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"xn6yn\"]}', '2016-12-16 10:46:56');
INSERT INTO `sys_log` VALUES ('c8e81adb61e14dc280cb539005889470', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0105\"],\"resource\":[\"setting\"],\"icon\":[\" fa-cog\"],\"pid\":[\"1\"],\"menuName\":[\"系统配置\"],\"id\":[\"10\"],\"sort\":[\"6\"],\"url\":[\"/system/setting/page.html\"]}', '2016-12-16 14:10:26');
INSERT INTO `sys_log` VALUES ('c908fe8b880c4d2eb800422afceb3484', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"panxx\"]}', '2016-12-21 11:19:10');
INSERT INTO `sys_log` VALUES ('c97a8fdb1a844e79af80e96818a79f9b', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 14:22:52');
INSERT INTO `sys_log` VALUES ('ca193c0586134d64b837e315cb9e3c66', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"sidebar-open1\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 13:40:45');
INSERT INTO `sys_log` VALUES ('ca4a698ca92f401f864c6efa56c741fe', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"d5ad5\"]}', '2016-12-19 09:51:13');
INSERT INTO `sys_log` VALUES ('cb3169594b284aa5a2a76f4f3e6bdb46', 'admin', '编辑用户', '/system/user/doEdit', '{\"deptId\":[\"1\"],\"userDesc\":[\"aaaaa\"],\"id\":[\"09c63f873a9e472ca464accb61cd5e51\"],\"userName\":[\"test\"],\"userState\":[\"1\"]}', '2016-12-16 20:58:09');
INSERT INTO `sys_log` VALUES ('cc873d129393442b89119cac99c83a9c', 'admin', '编辑用户', '/system/user/doEdit', '{\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"],\"deptId\":[\"1\"],\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"]}', '2016-12-16 17:37:07');
INSERT INTO `sys_log` VALUES ('cf066249d4a543249c8784143a4e7ef9', 'admin', '编辑用户', '/system/user/doEdit', '{\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"],\"deptId\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"],\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"]}', '2016-12-16 17:36:52');
INSERT INTO `sys_log` VALUES ('d013f00f26d1467c8c34605efe895944', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-21 11:05:46');
INSERT INTO `sys_log` VALUES ('d0754e83dd6d4cdba81134bb1d5a0c91', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:36');
INSERT INTO `sys_log` VALUES ('d218ba7ee41544ecb445686937a6bc78', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http://kangaroo.com:8080/\"],\"userName\":[\"admin\"],\"captcha\":[\"nac6x\"]}', '2016-12-20 17:14:48');
INSERT INTO `sys_log` VALUES ('d4de54ec8d204a6aa466ea5ee25b8c65', 'admin', '删除用户', '/system/user/delete', '{\"id\":[\"f62307be393d4f5a9a61ed9116629b03\"]}', '2016-12-16 18:05:18');
INSERT INTO `sys_log` VALUES ('d5b20fa3716d4662a3085454e5192be2', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:18');
INSERT INTO `sys_log` VALUES ('d615c995defb4cc0b82a5252d85fe6dd', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"sidebar-collapse\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 13:40:58');
INSERT INTO `sys_log` VALUES ('dafc6412b9eb473d82dd192cb4bc59d5', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:03:44');
INSERT INTO `sys_log` VALUES ('ddb3a03af4154b62ab159805a568cd94', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"sidebar-open\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 09:48:51');
INSERT INTO `sys_log` VALUES ('deb99de887dd41568fef54d4a1964f01', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:50');
INSERT INTO `sys_log` VALUES ('e1a8995777af45b9b2e2f05780236e5c', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-19 09:50:34');
INSERT INTO `sys_log` VALUES ('e4241daa81c241ff9309d1959b6b642c', 'admin', '创建菜单', '/system/menu/doAddMenu.html', '{\"code\":[\"0103\"],\"resource\":[\"dept\"],\"icon\":[\"fa-file\"],\"pid\":[\"1\"],\"menuName\":[\"部门管理\"],\"sort\":[\"3\"],\"url\":[\"/system/dept/list/1.html\"]}', '2016-12-16 17:10:18');
INSERT INTO `sys_log` VALUES ('e439a25f2d78411b8795fa3c2bcb145a', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-17 11:39:03');
INSERT INTO `sys_log` VALUES ('e6962b804eeb489bb474326d93e5bfae', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:32');
INSERT INTO `sys_log` VALUES ('e7a7e346ffdc434a897d856b14c45a97', 'admin', '编辑角色', '/system/role/doEdit', '{\"roleName\":[\"超级管理员\"],\"roleDesc\":[\"utyutyuytuytuytuhghg\"],\"id\":[\"737933bffef640329a4f864c4e2746ba\"],\"roleState\":[\"-1\"]}', '2016-12-17 11:29:53');
INSERT INTO `sys_log` VALUES ('e9114c30656c40bd9ef6d064a1c289f4', 'admin', '编辑用户', '/system/user/doEdit', '{\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"],\"deptId\":[\"1\"],\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"]}', '2016-12-16 17:36:59');
INSERT INTO `sys_log` VALUES ('eac24eca99404906a6ad3cc4d393fdfa', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"sidebar-open\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 09:49:28');
INSERT INTO `sys_log` VALUES ('ece5e5010c0e429080d7d6bc65613ddf', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-20 18:01:08');
INSERT INTO `sys_log` VALUES ('ee352e9569a44b71ac16882f4deb6985', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:58:34');
INSERT INTO `sys_log` VALUES ('f014db6b603d4d5988b56d699522ead0', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123123\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"md34w\"]}', '2016-12-20 18:01:46');
INSERT INTO `sys_log` VALUES ('f0678f082f7d4cbcb5475b166e735830', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:28');
INSERT INTO `sys_log` VALUES ('f17b1e76657e45d789f5d4a630e267c7', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 18:04:47');
INSERT INTO `sys_log` VALUES ('f2a307cadf8a4081a112a5aca81c1dbf', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0105\"],\"resource\":[\"setting\"],\"icon\":[\" fa-cog\"],\"pid\":[\"1\"],\"menuName\":[\"系统配置\"],\"id\":[\"10\"],\"sort\":[\"6\"],\"url\":[\"/setting/page.html\"]}', '2016-12-16 14:09:20');
INSERT INTO `sys_log` VALUES ('f352bb05461849c9a58977909c534154', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KGA\",\"Copyright © 2017 米粒电商. All rights reserved.\",\"sidebar-collapse\"],\"id\":[\"1\",\"2\",\"3\",\"4\"]}', '2016-12-19 09:48:04');
INSERT INTO `sys_log` VALUES ('f3ba4113e03740aeb0e0a038699ba3fc', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KAG\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 11:47:57');
INSERT INTO `sys_log` VALUES ('f428141ceb1547b8b62b1a2a3fd41e8b', 'admin', '编辑用户', '/system/user/doEdit', '{\"deptId\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"],\"userDesc\":[\"aa44515112121\"],\"id\":[\"4754f010ef344c59b728ea60809ab926\"],\"userName\":[\"e100000\"],\"userState\":[\"1\"]}', '2016-12-16 17:36:46');
INSERT INTO `sys_log` VALUES ('f55dadc992ee492bbdcaebefef1dafe4', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"\"],\"userName\":[\"admin\"],\"captcha\":[\"bm44p\"]}', '2016-12-20 18:02:01');
INSERT INTO `sys_log` VALUES ('f627c5884dff48e18e7c51e886811703', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"2mf33\"]}', '2016-12-21 11:05:43');
INSERT INTO `sys_log` VALUES ('f833282d5f8046ac812a269772b67920', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KAG\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 11:33:30');
INSERT INTO `sys_log` VALUES ('f86b3e609f474d4fa3b69db3b77733d4', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:43');
INSERT INTO `sys_log` VALUES ('fb55c6aac75b4ac98027b93151e93b3a', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http://kangaroo.com:8080/\"],\"userName\":[\"admin\"],\"captcha\":[\"6g2nm\"]}', '2016-12-21 10:34:54');
INSERT INTO `sys_log` VALUES ('feef808ace484d0da3f10cdff83de5b4', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-21 11:18:43');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
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

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '-1', null, 'fa fa-cogs', '1', '1', '01', null);
INSERT INTO `sys_menu` VALUES ('10', '系统配置', '1', '1', '/system/setting/page.html', ' fa-cog', '6', '2', '0105', 'setting');
INSERT INTO `sys_menu` VALUES ('146b6c05824f44d2bb91b5926207a695', '商家列表', '74b52d8d64f74bc9b84d3ae2e85e5c21', '1', '/sdsds/dasdasd/1.html', 'fa-file', '1', '2', '0601', null);
INSERT INTO `sys_menu` VALUES ('2', '用户管理', '1', '1', '/system/user/list/1.html', 'fa-user', '2', '2', '0101', 'user');
INSERT INTO `sys_menu` VALUES ('22e38e885f9b40b9aae6a36deb78e89c', '部门管理', '1', '1', '/system/dept/list/1.html', 'fa-heart', '3', '2', '0103', 'dept');
INSERT INTO `sys_menu` VALUES ('3', '角色权限管理', '1', '1', '/system/role/list/1.html', 'fa-users', '3', '2', '0102', 'role');
INSERT INTO `sys_menu` VALUES ('4', '菜单管理', '1', '1', '/system/menu/list/1.html', 'fa-list', '4', '2', '0103', 'menu');
INSERT INTO `sys_menu` VALUES ('4701a8374ced4b16a02198f4a65ad8ec', '商家认证', '74b52d8d64f74bc9b84d3ae2e85e5c21', '1', '/sdsds/dasdasd/1.html', 'fa-file', '2', '2', '0602', null);
INSERT INTO `sys_menu` VALUES ('5', '日志管理', '1', '1', '/system/log/list/1.html', 'fa-info', '5', '2', '0104', 'log');
INSERT INTO `sys_menu` VALUES ('6c28913f69ac478ab6631af4590d03c7', '表单集合', '0', '-1', null, 'fa-folder', '7', '1', '07', null);
INSERT INTO `sys_menu` VALUES ('6d8a0a374fc744f094764fbd5b331994', '账款报表', 'f01993627af34c5b99137ef7ed3dae54', '1', '/sdsds/dasdasd/1.html', 'fa-file', '3', '2', '0503', null);
INSERT INTO `sys_menu` VALUES ('74b52d8d64f74bc9b84d3ae2e85e5c21', '商家管理', '0', '-1', null, 'fa-link', '4', '1', '06', null);
INSERT INTO `sys_menu` VALUES ('8', '商品管理', '0', '-1', '', 'fa-cart-plus', '2', '1', '02', null);
INSERT INTO `sys_menu` VALUES ('8d7c59cbbc604db59582676d03dd35c9', '全部表单', '6c28913f69ac478ab6631af4590d03c7', '1', '/form/form/list.html', 'fa-file', '1', '2', '0701', 'form');
INSERT INTO `sys_menu` VALUES ('9', '商品类目管理', '8', '1', '/system/menu/list/1.html', 'fa-file', '2', '2', '0201', 'cat');
INSERT INTO `sys_menu` VALUES ('a4ea9bd96a7f44a7b4d23d9701207a51', '库存报表', 'f01993627af34c5b99137ef7ed3dae54', '1', '/gfgfg/gfdgfd/1.html', null, '45', '2', '0502', null);
INSERT INTO `sys_menu` VALUES ('be6439d404b84062b12c38c4cd752323', '销售报表', 'f01993627af34c5b99137ef7ed3dae54', '1', '445115454', null, '1551', '2', '0505', 'sale');
INSERT INTO `sys_menu` VALUES ('c9cb531d0e6a44eb9f525939c2fe32e0', 'SPU管理', '8', '1', '/sdsds/dasdasd/1.html', 'fa-file', '2', '2', '0202', null);
INSERT INTO `sys_menu` VALUES ('f01993627af34c5b99137ef7ed3dae54', '统计报表', '0', '-1', null, 'fa-bar-chart', '3', '1', '05', null);

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `roleName` varchar(50) NOT NULL COMMENT '角色名称',
  `roleDesc` varchar(300) DEFAULT NULL COMMENT '角色描述',
  `roleState` int(2) DEFAULT '1' COMMENT '状态,1-启用,-1禁用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('737933bffef640329a4f864c4e2746ba', '超级管理员', 'utyutyuytuytuytuhghg', '1', '2016-12-14 10:22:34');
INSERT INTO `sys_role` VALUES ('a21876314a764438b6af6bfa422ec09a', '系统管理员', '111118455', '1', '2016-12-14 17:53:25');
INSERT INTO `sys_role` VALUES ('ab7e4b34e5d141fa8566fdbb5d3e66f7', '报表管理员', 'dasdasdas', '1', '2016-12-15 20:00:21');
INSERT INTO `sys_role` VALUES ('fdce142ce7554e30b3274c6d8844b13e', '商品管理员', 'fdfdfdf', '1', '2016-12-15 19:59:59');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `roleId` varchar(50) NOT NULL COMMENT '角色主键',
  `menuId` varchar(50) NOT NULL COMMENT '菜单主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('005df9a78bb64db1b169269366bd2a24', 'fdce142ce7554e30b3274c6d8844b13e', '1');
INSERT INTO `sys_role_menu` VALUES ('04cff286e0f34e609e544b31e2951bbd', '737933bffef640329a4f864c4e2746ba', '6d8a0a374fc744f094764fbd5b331994');
INSERT INTO `sys_role_menu` VALUES ('08d6b887ac6c432d91ef86031c7bdc14', '737933bffef640329a4f864c4e2746ba', 'f01993627af34c5b99137ef7ed3dae54');
INSERT INTO `sys_role_menu` VALUES ('08ff4307e09648d59258adf9163356d7', '737933bffef640329a4f864c4e2746ba', '8');
INSERT INTO `sys_role_menu` VALUES ('1b0e4aa0a9ea4ed08d95a14c049cbf54', 'a21876314a764438b6af6bfa422ec09a', '2');
INSERT INTO `sys_role_menu` VALUES ('1b3d946a5e624fc6871abdf2cd609803', 'a21876314a764438b6af6bfa422ec09a', '10');
INSERT INTO `sys_role_menu` VALUES ('24d94a485f3b43a2846cbff912b814b0', 'ab7e4b34e5d141fa8566fdbb5d3e66f7', 'a4ea9bd96a7f44a7b4d23d9701207a51');
INSERT INTO `sys_role_menu` VALUES ('35c27b37c89c4e6ca7160ef320329961', '1d0d43b9fbbe4c078beb4a732309fe64', '1');
INSERT INTO `sys_role_menu` VALUES ('3aceb6111772490e9887904fb54949e3', 'eb2e1fa3caa448658da909cf141788f8', '9');
INSERT INTO `sys_role_menu` VALUES ('4006a32ee45c4d8686a43ae68335944c', '737933bffef640329a4f864c4e2746ba', 'c9cb531d0e6a44eb9f525939c2fe32e0');
INSERT INTO `sys_role_menu` VALUES ('40c62fad9cfc42f6b45e9b5daa11c16b', 'a21876314a764438b6af6bfa422ec09a', '1');
INSERT INTO `sys_role_menu` VALUES ('496cc09ea5124115896bf314ecf6e4ee', 'ab7e4b34e5d141fa8566fdbb5d3e66f7', 'f01993627af34c5b99137ef7ed3dae54');
INSERT INTO `sys_role_menu` VALUES ('537af500a6b9442eb71e0d77a1ea4841', '1d0d43b9fbbe4c078beb4a732309fe64', '9');
INSERT INTO `sys_role_menu` VALUES ('5a903cf343014d288ddac8ae30dd3f45', 'fdce142ce7554e30b3274c6d8844b13e', '9');
INSERT INTO `sys_role_menu` VALUES ('5fdf9cb9cc2541beae4096c729a8d327', '737933bffef640329a4f864c4e2746ba', '1');
INSERT INTO `sys_role_menu` VALUES ('663472162f7d435ba0f561aa33226f93', '737933bffef640329a4f864c4e2746ba', '10');
INSERT INTO `sys_role_menu` VALUES ('712118e6fe374f92b3beaffc1019952a', 'f08487637b0d4bfc9accc14cbca6f1cd', '3');
INSERT INTO `sys_role_menu` VALUES ('750868dfc79a4a32841da56d1601a8d1', 'f08487637b0d4bfc9accc14cbca6f1cd', '1');
INSERT INTO `sys_role_menu` VALUES ('77fd54d3ab0d4eaa8605346d93095eb9', 'eb2e1fa3caa448658da909cf141788f8', '8');
INSERT INTO `sys_role_menu` VALUES ('792906af75f442bcbf7f39c0c323bb67', '737933bffef640329a4f864c4e2746ba', 'a4ea9bd96a7f44a7b4d23d9701207a51');
INSERT INTO `sys_role_menu` VALUES ('7aea2776d16043948c03e1648fe5de21', '737933bffef640329a4f864c4e2746ba', 'be6439d404b84062b12c38c4cd752323');
INSERT INTO `sys_role_menu` VALUES ('8a6381f1ddf943a2a3bc42629c339f15', '1d0d43b9fbbe4c078beb4a732309fe64', '8');
INSERT INTO `sys_role_menu` VALUES ('8f6a7b982a9e4d6e8ce8ecac4983d2b3', 'fdce142ce7554e30b3274c6d8844b13e', '2');
INSERT INTO `sys_role_menu` VALUES ('912aa8bc779c451f9446293164056a04', '737933bffef640329a4f864c4e2746ba', '3');
INSERT INTO `sys_role_menu` VALUES ('9587b24a5e214ad8851ae9eb4a3ce9f8', '737933bffef640329a4f864c4e2746ba', '4701a8374ced4b16a02198f4a65ad8ec');
INSERT INTO `sys_role_menu` VALUES ('9b47395f0e7045daaef118d112d711e3', 'a21876314a764438b6af6bfa422ec09a', '5');
INSERT INTO `sys_role_menu` VALUES ('afee6635bae9403a85097631d76ad7ad', 'f08487637b0d4bfc9accc14cbca6f1cd', '2');
INSERT INTO `sys_role_menu` VALUES ('b1ddfd44bf914264b95d311224fde3ad', 'a21876314a764438b6af6bfa422ec09a', '4');
INSERT INTO `sys_role_menu` VALUES ('b57af045609f4f06b062911943f1a3e8', '737933bffef640329a4f864c4e2746ba', '9');
INSERT INTO `sys_role_menu` VALUES ('b941164fe3a44237ba983e345243ff93', 'a21876314a764438b6af6bfa422ec09a', '3');
INSERT INTO `sys_role_menu` VALUES ('bfcfd7ecfc3047948f1edb6944944bb3', 'fdce142ce7554e30b3274c6d8844b13e', '8');
INSERT INTO `sys_role_menu` VALUES ('c6af32a401be47e4b2ef72630f5f8257', '737933bffef640329a4f864c4e2746ba', '146b6c05824f44d2bb91b5926207a695');
INSERT INTO `sys_role_menu` VALUES ('ca76680a0e28428dbed11dad63472856', '737933bffef640329a4f864c4e2746ba', '5');
INSERT INTO `sys_role_menu` VALUES ('d583dcd4f1bb44028b15baa3d9a163b9', '737933bffef640329a4f864c4e2746ba', '74b52d8d64f74bc9b84d3ae2e85e5c21');
INSERT INTO `sys_role_menu` VALUES ('ec43523bfdf04ea08006284e9f1931d9', '737933bffef640329a4f864c4e2746ba', '22e38e885f9b40b9aae6a36deb78e89c');
INSERT INTO `sys_role_menu` VALUES ('ecb3929b10184349a56753311ea6cfec', '737933bffef640329a4f864c4e2746ba', '4');
INSERT INTO `sys_role_menu` VALUES ('f336ff5e8e2943378ad02d8f21006ce6', 'ab7e4b34e5d141fa8566fdbb5d3e66f7', 'be6439d404b84062b12c38c4cd752323');
INSERT INTO `sys_role_menu` VALUES ('f7fcd32d373e4022b7e07992e8366c8f', '737933bffef640329a4f864c4e2746ba', '2');

-- ----------------------------
-- Table structure for `sys_setting`
-- ----------------------------
DROP TABLE IF EXISTS `sys_setting`;
CREATE TABLE `sys_setting` (
  `Id` varchar(50) NOT NULL COMMENT '主键',
  `sysKey` varchar(50) NOT NULL COMMENT 'KEY',
  `sysName` varchar(50) NOT NULL COMMENT '名称',
  `sysValue` varchar(300) DEFAULT NULL COMMENT '值',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `sysDesc` varchar(300) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_setting
-- ----------------------------
INSERT INTO `sys_setting` VALUES ('1', 'systemName', '系统名称', 'KangarooorgAdmin', '0', null);
INSERT INTO `sys_setting` VALUES ('2', 'systemSubName', '系统简称', 'KGA', '1', null);
INSERT INTO `sys_setting` VALUES ('3', 'bottomCopyright', '许可说明', 'Copyright © 2017 米粒电商. All rights reserved.', '2', null);

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `userName` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `userState` int(2) NOT NULL DEFAULT '1' COMMENT '用户状态,1-启用,-1禁用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `userDesc` varchar(300) DEFAULT NULL COMMENT '描述',
  `userImg` varchar(300) DEFAULT 'http://news.mydrivers.com/Img/20110518/04481549.png' COMMENT '头像',
  `deptId` varchar(50) DEFAULT NULL COMMENT '部门主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('09c63f873a9e472ca464accb61cd5e51', 'test', 'DC483E80A7A0BD9EF71D8CF973673924', '-1', '2016-12-12 15:50:39', 'aaaaa', 'http://news.mydrivers.com/Img/20110518/04481549.png', '98819860429e435898d7a0652ed9c5a2');
INSERT INTO `sys_user` VALUES ('4754f010ef344c59b728ea60809ab926', 'e100000', '1973EBD114AAB8BD85457E037BBBFA62', '1', '2016-12-12 13:43:59', 'aa44515112121', 'http://news.mydrivers.com/Img/20110518/04481549.png', 'aebe7d9b427643feb9c5a66c65fb9a81');
INSERT INTO `sys_user` VALUES ('549d321508db446e9bcaa477835fe5f1', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2016-12-14 14:35:08', '所有权限', 'http://yosamall.bj.bcebos.com/temp/h_main_NNN4_e80a000007df111a.jpg', '1');
INSERT INTO `sys_user` VALUES ('629ba7eb1d8944d2873ecfc6896288e7', 'zhangsan', '25F9E794323B453885F5181F1B624D0B', '1', '2016-12-12 11:49:21', '张三负责系统的委会和开发工作。', 'http://news.mydrivers.com/Img/20110518/04481549.png', '1');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `Id` varchar(50) NOT NULL COMMENT '主键',
  `userId` varchar(50) NOT NULL COMMENT '用户主键',
  `roleId` varchar(50) NOT NULL COMMENT '角色主键',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1025415191074c3f8e515ea7b4720ac1', '6e6594f930054f1297f93ea626db9500', 'on');
INSERT INTO `sys_user_role` VALUES ('210e680232964f94acc73b402483192d', '9df9f873d44a460fae8b2d4ffc726808', '1');
INSERT INTO `sys_user_role` VALUES ('3afdaa0330fa471694216234da1ed94d', 'f62307be393d4f5a9a61ed9116629b03', 'a21876314a764438b6af6bfa422ec09a');
INSERT INTO `sys_user_role` VALUES ('3e3841367e644fbb8bbc44deaa179516', '3b3fc94b2c064cd5839d0184e6be4857', '2');
INSERT INTO `sys_user_role` VALUES ('8b990b3b7fe74ce0b9bf81b966a67b9d', '3b3fc94b2c064cd5839d0184e6be4857', '1');
INSERT INTO `sys_user_role` VALUES ('9cbd08ed61624d40bb2e8ef4885e9e74', 'b55a9c253c83412aaf15aeb044899230', '3');
INSERT INTO `sys_user_role` VALUES ('a576a03a979a4f52b661408c6d0e5faf', '549d321508db446e9bcaa477835fe5f1', '737933bffef640329a4f864c4e2746ba');
INSERT INTO `sys_user_role` VALUES ('d2cc10c108164ab582c3a201492b5092', '9df9f873d44a460fae8b2d4ffc726808', '2');
INSERT INTO `sys_user_role` VALUES ('f4a6696fde4f4406a6a9749d46b37e53', '9df9f873d44a460fae8b2d4ffc726808', '3');
INSERT INTO `sys_user_role` VALUES ('f4c549066f9c442782a166da6aa65654', '6e6594f930054f1297f93ea626db9500', 'on');

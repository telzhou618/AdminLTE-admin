/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : kangarooadmin

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-12-17 11:34:08
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
INSERT INTO `sys_dept` VALUES ('98819860429e435898d7a0652ed9c5a2', 'yyyy', 'yyrttttt');
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
INSERT INTO `sys_log` VALUES ('0103e02625be42d49e49591cbddca109', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:04:42');
INSERT INTO `sys_log` VALUES ('01aa036afb0845cda41381bd17c7fa4c', 'admin', '创建部门', '/system/dept/doAdd', '{\"deptName\":[\"而我却二二位\"],\"deptDesc\":[\"房顶上\"]}', '2016-12-16 17:57:12');
INSERT INTO `sys_log` VALUES ('03d4f5b4f6f54a8cba3a193d55a387d8', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:51');
INSERT INTO `sys_log` VALUES ('06f0c287d4a84c73bac3390d686a40c4', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:48');
INSERT INTO `sys_log` VALUES ('12be5c2bf0cd42f1a0b3274b1c0f7b99', 'admin', '创建部门', '/system/dept/doAdd', '{\"deptName\":[\"fsdfs\"],\"deptDesc\":[\"dfdsfds\"]}', '2016-12-16 17:15:47');
INSERT INTO `sys_log` VALUES ('14b61aa9d3e340058598fb72bb005c45', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:50');
INSERT INTO `sys_log` VALUES ('153d70efa9074a16a5fc1829e341a461', 'system', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http:\\/\\/kangaroo.com:8080\\/\"],\"userName\":[\"admin\"],\"captcha\":[\"d4ecw\"]}', '2016-12-16 10:47:28');
INSERT INTO `sys_log` VALUES ('15ff7884b3ba4fc1a1cf8194c5abea44', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:52');
INSERT INTO `sys_log` VALUES ('18ea2411d0114ff182b48c5f841994b0', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:47');
INSERT INTO `sys_log` VALUES ('1a93cc318b5647b9a7d6088b4bfd7c9f', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"1\",\"2\",\"3\",\"22e38e885f9b40b9aae6a36deb78e89c\",\"4\",\"5\",\"10\",\"8\",\"9\",\"c9cb531d0e6a44eb9f525939c2fe32e0\",\"f01993627af34c5b99137ef7ed3dae54\",\"6d8a0a374fc744f094764fbd5b331994\",\"a4ea9bd96a7f44a7b4d23d9701207a51\",\"be6439d404b84062b12c38c4cd752323\",\"74b52d8d64f74bc9b84d3ae2e85e5c21\",\"146b6c05824f44d2bb91b5926207a695\",\"4701a8374ced4b16a02198f4a65ad8ec\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"]}', '2016-12-16 17:11:33');
INSERT INTO `sys_log` VALUES ('1e5ae283a10d4f81a1f88fffefa00693', 'admin', '创建部门', '/system/dept/doAdd', '{\"deptName\":[\"yyyy\"],\"deptDesc\":[\"yyrttttt\"]}', '2016-12-16 17:57:30');
INSERT INTO `sys_log` VALUES ('1f225e875d584b7d883d77880fe036db', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:04:38');
INSERT INTO `sys_log` VALUES ('21680fb38e78442da0cc221b066cca4a', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:25');
INSERT INTO `sys_log` VALUES ('21911f6abc204dcc8dd36e3161e7d210', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:44');
INSERT INTO `sys_log` VALUES ('22c548a1f56944399992327dc89cda19', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:28');
INSERT INTO `sys_log` VALUES ('23894a23e164448f9d44e3bec04098a1', 'admin', '编辑用户', 'http://kangaroo.com:8080/system/user/doEdit', '{\"userDesc\":[\"\\u5F20\\u4E09\\u8D1F\\u8D23\\u7CFB\\u7EDF\\u7684\\u59D4\\u4F1A\\u548C\\u5F00\\u53D1\\u5DE5\\u4F5C\\u3002\"],\"id\":[\"629ba7eb1d8944d2873ecfc6896288e7\"],\"userName\":[\"zhangsan\"],\"userState\":[\"1\"]}', '2016-12-16 10:12:12');
INSERT INTO `sys_log` VALUES ('24fa8dfd69e047d6842491eabcd904f4', 'admin', '编辑用户', '/system/user/doEdit', '{\"deptId\":[\"1\"],\"userDesc\":[\"张三负责系统的委会和开发工作。\"],\"id\":[\"629ba7eb1d8944d2873ecfc6896288e7\"],\"userName\":[\"zhangsan\"],\"userState\":[\"1\"]}', '2016-12-16 20:58:12');
INSERT INTO `sys_log` VALUES ('275a236ab46c43a2b3f8cf0b30405102', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:04:14');
INSERT INTO `sys_log` VALUES ('27d006ecaa9a416cbe28e8fbcab9acfb', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:04:39');
INSERT INTO `sys_log` VALUES ('2a671e4ddca84694b8f2cc9b2a97853f', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:32');
INSERT INTO `sys_log` VALUES ('2c85001537f843bc89943bd97898ab08', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"aa44515112121\"],\"id\":[\"4754f010ef344c59b728ea60809ab926\"],\"userName\":[\"e100000\"],\"userState\":[\"1\"]}', '2016-12-16 10:13:47');
INSERT INTO `sys_log` VALUES ('2eb7abc71f7e49238831a1e7f327aaeb', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:53');
INSERT INTO `sys_log` VALUES ('2f1489117b1d4a19a159c61ed3753bf2', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"1111\"],\"deptDesc\":[\"1111\"]}', '2016-12-16 17:20:15');
INSERT INTO `sys_log` VALUES ('313c18188e9344d69611555e33aeac97', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:32');
INSERT INTO `sys_log` VALUES ('31fb3ba6617040608ab841caa83af820', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-17 11:19:01');
INSERT INTO `sys_log` VALUES ('344ee5abaf974de7ba5490134d6c4697', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:41');
INSERT INTO `sys_log` VALUES ('364a867c736341efbcc55423a2ac4216', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"1\",\"2\",\"8\",\"9\"],\"roleId\":[\"fdce142ce7554e30b3274c6d8844b13e\"]}', '2016-12-16 20:55:30');
INSERT INTO `sys_log` VALUES ('3834985ad8f4465a8c5625f0f495833f', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"aaaaa\"],\"id\":[\"09c63f873a9e472ca464accb61cd5e51\"],\"userName\":[\"test\"],\"userState\":[\"1\"]}', '2016-12-16 11:54:35');
INSERT INTO `sys_log` VALUES ('39682c6bcb0e4fcc84160715a823c27b', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:42');
INSERT INTO `sys_log` VALUES ('3ae39984b7eb42de9e0896d43d9e2809', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 17:58:22');
INSERT INTO `sys_log` VALUES ('3c1c57b1fbc94828b3c5b27d61b51232', 'admin', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http:\\/\\/localhost:8080\\/\"],\"userName\":[\"admin\"],\"captcha\":[\"44x88\"]}', '2016-12-16 10:46:27');
INSERT INTO `sys_log` VALUES ('3e3a4b24c5ea4e569619bcec3af8882c', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:27');
INSERT INTO `sys_log` VALUES ('41805fd42b72457487e1d697777a3b1c', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:18');
INSERT INTO `sys_log` VALUES ('41e2b002290a42e9872d67e3154ee208', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"aaaaa\"],\"id\":[\"09c63f873a9e472ca464accb61cd5e51\"],\"userName\":[\"test\"],\"userState\":[\"1\"]}', '2016-12-16 11:52:33');
INSERT INTO `sys_log` VALUES ('43c6786bf4c94a35952a9fd4c532dc01', 'admin', '删除部门', '/system/dept/delete', '{\"id\":[\"3a44d3a577214643a29b4c288c9497be\"]}', '2016-12-16 17:57:23');
INSERT INTO `sys_log` VALUES ('442c8b96ca1e4cfe977ebaca1b4b5d8d', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:04:37');
INSERT INTO `sys_log` VALUES ('44948d2a65b74f989afc8d45374a7c8d', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:04:06');
INSERT INTO `sys_log` VALUES ('4a937bfee14a4024a06f15187436d1c6', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:31');
INSERT INTO `sys_log` VALUES ('4ab6b3cf2b0648a4a4d645c5b2c9cff3', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:30');
INSERT INTO `sys_log` VALUES ('4d03c40f51474296a1fedc80c6b555bd', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:22');
INSERT INTO `sys_log` VALUES ('4d147d5b03de46d5aa9d39aa378c3b16', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"行政部\"],\"deptDesc\":[\"dfdsfds\"],\"id\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"]}', '2016-12-16 17:22:04');
INSERT INTO `sys_log` VALUES ('4de52f530c894a0f8f62db86b41496d8', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"icon\":[\"fa fa-cogs\"],\"menuName\":[\"系统管理\"],\"code\":[\"01\"],\"id\":[\"1\"],\"sort\":[\"1\"]}', '2016-12-16 16:59:40');
INSERT INTO `sys_log` VALUES ('4f759bc009b8478cb607fa79033f8e2d', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:32');
INSERT INTO `sys_log` VALUES ('4fdfc0bba4ba48aaa0fdc9ccb667eb2d', 'admin', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http:\\/\\/localhost:8080\\/\"],\"userName\":[\"admin\"],\"captcha\":[\"pxd42\"]}', '2016-12-16 10:46:03');
INSERT INTO `sys_log` VALUES ('512121543cfa43d2b0ac708807a667fc', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:01:41');
INSERT INTO `sys_log` VALUES ('522145ded09f4b4c873b643952ed252f', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:44');
INSERT INTO `sys_log` VALUES ('52254db938614fd68db288cd06f2a21b', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:53');
INSERT INTO `sys_log` VALUES ('56a783469622489ea75928327898a07b', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:46');
INSERT INTO `sys_log` VALUES ('5a71d1277b5e44639b1c736c6f1ad438', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:30');
INSERT INTO `sys_log` VALUES ('5c356dc888584cff92efdda2921f2615', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"\\u5F20\\u4E09\\u8D1F\\u8D23\\u7CFB\\u7EDF\\u7684\\u59D4\\u4F1A\\u548C\\u5F00\\u53D1\\u5DE5\\u4F5C\\u3002\"],\"id\":[\"629ba7eb1d8944d2873ecfc6896288e7\"],\"userName\":[\"zhangsan\"],\"userState\":[\"1\"]}', '2016-12-16 10:13:37');
INSERT INTO `sys_log` VALUES ('5deaf42cfe104621a30077b6207e680e', 'admin', '编辑用户', '/system/user/doEdit', '{\"deptId\":[\"98819860429e435898d7a0652ed9c5a2\"],\"userDesc\":[\"aaaaa\"],\"id\":[\"09c63f873a9e472ca464accb61cd5e51\"],\"userName\":[\"test\"],\"userState\":[\"1\"]}', '2016-12-17 10:24:19');
INSERT INTO `sys_log` VALUES ('60ff554e7e154a23b2707847100f10c6', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:31');
INSERT INTO `sys_log` VALUES ('611ac4ecb653407781b78f7a16be70ba', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:43');
INSERT INTO `sys_log` VALUES ('649f5ff69fc94a21b61d7c624676c42a', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:31');
INSERT INTO `sys_log` VALUES ('65b3678b767e41f894704a1afeab7267', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-17 11:15:07');
INSERT INTO `sys_log` VALUES ('687a73627c1e4ee8be1782977e5d1da8', 'admin', '创建部门', '/system/dept/doAdd', '{\"deptName\":[\"fdsfds\"],\"deptDesc\":[\" 房顶上飞\"]}', '2016-12-16 17:22:14');
INSERT INTO `sys_log` VALUES ('6ccb7ccfe2894e00a9041269fc808408', 'admin', '创建用户', '/system/user/doAdd', '{\"password\":[\"123456\"],\"userState\":[\"1\"],\"deptId\":[\"1\"],\"password2\":[\"123456\"],\"userDesc\":[\"111111\"],\"userName\":[\"admin2\"]}', '2016-12-16 17:58:20');
INSERT INTO `sys_log` VALUES ('6d36796b6c8c4c76b08d27077d891e45', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:03:48');
INSERT INTO `sys_log` VALUES ('6ee5ed99ec5146628012f78879ee1619', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:02:28');
INSERT INTO `sys_log` VALUES ('6f1e0cc716444c2c9d0a6516e1002415', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"],\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"]}', '2016-12-16 11:54:02');
INSERT INTO `sys_log` VALUES ('6fcdfcd6bbc24e949932b278f454f668', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:03:45');
INSERT INTO `sys_log` VALUES ('76ad57c691d4436dbd92bf4b394a76fe', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0105\"],\"resource\":[\"setting\"],\"icon\":[\" fa-cog\"],\"pid\":[\"1\"],\"menuName\":[\"系统配置\"],\"id\":[\"10\"],\"sort\":[\"6\"],\"url\":[\"/system/setting/page.html\"]}', '2016-12-16 16:59:37');
INSERT INTO `sys_log` VALUES ('781bb79906ba42fab06c1ff97b25ef67', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"fsdfs禾嘉股份和\"],\"deptDesc\":[\"dfdsfds\"],\"id\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"]}', '2016-12-16 17:21:46');
INSERT INTO `sys_log` VALUES ('7898a8bfbdd445b8ac6b178abafa0700', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:47');
INSERT INTO `sys_log` VALUES ('7996993300b34a90a6b73b22bbed6e77', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:21');
INSERT INTO `sys_log` VALUES ('79f68daad2d64c6fae43c9e3ee98a2a1', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"],\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"]}', '2016-12-16 11:54:37');
INSERT INTO `sys_log` VALUES ('7c3cb1b5664b45b59e33f1af0220a2c2', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:45');
INSERT INTO `sys_log` VALUES ('7cc1c21d575c492ca0f162f8dab028d4', 'admin', '编辑用户', '/system/user/doEdit', '{\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"],\"deptId\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"],\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"]}', '2016-12-16 17:37:03');
INSERT INTO `sys_log` VALUES ('7df4eb360fb3417ab5a48d0d32cdd2df', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 14:16:01');
INSERT INTO `sys_log` VALUES ('7ff3b9efbecf4963ac96aff5c10a07cf', 'admin', '删除部门', '/system/dept/delete', '{\"id\":[\"f234ffc99da941b6b110b6b74e0bf872\"]}', '2016-12-16 17:22:16');
INSERT INTO `sys_log` VALUES ('81e47d15afd34eb6b9fde2c42a8e82db', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 18:04:48');
INSERT INTO `sys_log` VALUES ('845c13f477144407aa79ccbb8b388871', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:44');
INSERT INTO `sys_log` VALUES ('85e6bf3d7f2349cb9615fa141c2f350b', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:51');
INSERT INTO `sys_log` VALUES ('87d559c5f7fe46ee8c0663493be815da', 'admin', '编辑角色', '/system/role/doEdit', '{\"roleName\":[\"报表管理员\"],\"roleDesc\":[\"dasdasdas\"],\"id\":[\"ab7e4b34e5d141fa8566fdbb5d3e66f7\"],\"roleState\":[\"1\"]}', '2016-12-16 11:54:21');
INSERT INTO `sys_log` VALUES ('88b4bf4e8f674580ae2b37ad1471256e', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"f01993627af34c5b99137ef7ed3dae54\",\"a4ea9bd96a7f44a7b4d23d9701207a51\",\"be6439d404b84062b12c38c4cd752323\"],\"roleId\":[\"ab7e4b34e5d141fa8566fdbb5d3e66f7\"]}', '2016-12-16 11:52:37');
INSERT INTO `sys_log` VALUES ('8944ef420cec45c2b3078c1f46f0fc85', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:29');
INSERT INTO `sys_log` VALUES ('8aa74a967dab493e976c4aae24d65a18', 'admin', '编辑角色', '/system/role/doEdit', '{\"roleName\":[\"超级管理员\"],\"roleDesc\":[\"utyutyuytuytuytuhghg\"],\"id\":[\"737933bffef640329a4f864c4e2746ba\"],\"roleState\":[\"1\"]}', '2016-12-16 11:54:24');
INSERT INTO `sys_log` VALUES ('8d98d7eb5d09406092ff15dd751de1ef', 'admin', '访问首页', '/', '{}', '2016-12-16 10:47:28');
INSERT INTO `sys_log` VALUES ('8d9e4947ae82431c8fa408d2864910fb', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:29');
INSERT INTO `sys_log` VALUES ('8dc2cfff8c3a479b8978605fa46ce75b', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KAG\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 11:28:22');
INSERT INTO `sys_log` VALUES ('8f736897365e43c7b5cf6347a8c3fb84', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"fsdfs\"],\"deptDesc\":[\"dfdsfds\"]}', '2016-12-16 17:18:14');
INSERT INTO `sys_log` VALUES ('913588bca7fa4daf846828f4f5d49c58', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 16:15:50');
INSERT INTO `sys_log` VALUES ('93acca8091e84e2e82c32792f7e52d4e', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 10:46:56');
INSERT INTO `sys_log` VALUES ('94442083d2b24a018ad1ed151c0bef99', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"fsdfs金龟换酒计划\"],\"deptDesc\":[\"dfdsfds\"]}', '2016-12-16 17:19:16');
INSERT INTO `sys_log` VALUES ('97455cd48f664b8eacde2c9bff957263', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 18:03:57');
INSERT INTO `sys_log` VALUES ('9876a8d5ff734d8e9255756bde85dfa1', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0201\"],\"resource\":[\"cat\"],\"icon\":[\"fa-file\"],\"pid\":[\"8\"],\"menuName\":[\"商品类目管理\"],\"id\":[\"9\"],\"sort\":[\"2\"],\"url\":[\"/system/menu/list/1.html\"]}', '2016-12-16 14:08:59');
INSERT INTO `sys_log` VALUES ('9b8b8a0b4fd341ef8be88dac04fbc26a', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 16:15:59');
INSERT INTO `sys_log` VALUES ('a48960a0e3bd47f58fdaa26036ed33bf', 'admin', '用户退出', '/login/logout.html', '{}', '2016-12-17 11:08:22');
INSERT INTO `sys_log` VALUES ('a4af1bad64ad40ada2b01d27f05b572d', 'admin', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"http:\\/\\/localhost:8080\\/\"],\"userName\":[\"admin\"],\"captcha\":[\"5xad2\"]}', '2016-12-16 10:45:57');
INSERT INTO `sys_log` VALUES ('aac466e446e94f2f948c84547ed86436', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:45');
INSERT INTO `sys_log` VALUES ('b061e4e107db4e3ab3ac2fa0d69566fd', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:04:41');
INSERT INTO `sys_log` VALUES ('b4720412e48f4e758555ead86b3b8956', 'admin', '角色分配权限', '/system/role/doAuth.html', '{\"mid\":[\"8\",\"9\"],\"roleId\":[\"fdce142ce7554e30b3274c6d8844b13e\"]}', '2016-12-16 16:56:02');
INSERT INTO `sys_log` VALUES ('b5938f766eec423a811f394347c36245', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:46');
INSERT INTO `sys_log` VALUES ('b88b8d420d16436dab3df1418be02015', 'system', '用户退出', '/login/captcha', '{}', '2016-12-16 18:04:42');
INSERT INTO `sys_log` VALUES ('b9b8aa123f5c410c944cd0679ea6b252', 'admin', '编辑用户', '/system/user/doEdit', '{\"userDesc\":[\"aa44515112121\"],\"id\":[\"4754f010ef344c59b728ea60809ab926\"],\"userName\":[\"e100000\"],\"userState\":[\"1\"]}', '2016-12-16 16:55:57');
INSERT INTO `sys_log` VALUES ('ba89398985284c3ba9d7bb77987297c7', 'admin', '编辑用户', '/system/user/doEdit', '{\"userState\":[\"1\"],\"roleId\":[\"a21876314a764438b6af6bfa422ec09a\"],\"deptId\":[\"1\"],\"userDesc\":[\"111111\"],\"id\":[\"f62307be393d4f5a9a61ed9116629b03\"],\"userName\":[\"admin2\"]}', '2016-12-16 18:05:15');
INSERT INTO `sys_log` VALUES ('bacf74fe6da448cdac4bfef9e1fe5f42', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KAG\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 11:28:23');
INSERT INTO `sys_log` VALUES ('bcc8e77c70fc449799fefa4bcddd5651', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:49');
INSERT INTO `sys_log` VALUES ('beef660b6a48496391389f01c4de9db7', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:58:32');
INSERT INTO `sys_log` VALUES ('c06afb258e9a4ffa873983f2ad3f5de5', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:49');
INSERT INTO `sys_log` VALUES ('c499652b5d30487eb0540f12f320ba6d', 'admin', '编辑部门', '/system/dept/doEdit', '{\"deptName\":[\"fsdfsgfd房顶上发的\"],\"deptDesc\":[\"dfdsfds\"]}', '2016-12-16 17:18:20');
INSERT INTO `sys_log` VALUES ('c8527ccee4f7419aa2c7b4bc467004b9', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 14:16:01');
INSERT INTO `sys_log` VALUES ('c85e2d5e618e4a3d92fccffa988eac81', 'admin', '用户登录', '/login/doLogin.html', '{\"password\":[\"123456\"],\"returnURL\":[\"\\/index.html\"],\"userName\":[\"admin\"],\"captcha\":[\"xn6yn\"]}', '2016-12-16 10:46:56');
INSERT INTO `sys_log` VALUES ('c8e81adb61e14dc280cb539005889470', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0105\"],\"resource\":[\"setting\"],\"icon\":[\" fa-cog\"],\"pid\":[\"1\"],\"menuName\":[\"系统配置\"],\"id\":[\"10\"],\"sort\":[\"6\"],\"url\":[\"/system/setting/page.html\"]}', '2016-12-16 14:10:26');
INSERT INTO `sys_log` VALUES ('cb3169594b284aa5a2a76f4f3e6bdb46', 'admin', '编辑用户', '/system/user/doEdit', '{\"deptId\":[\"1\"],\"userDesc\":[\"aaaaa\"],\"id\":[\"09c63f873a9e472ca464accb61cd5e51\"],\"userName\":[\"test\"],\"userState\":[\"1\"]}', '2016-12-16 20:58:09');
INSERT INTO `sys_log` VALUES ('cc873d129393442b89119cac99c83a9c', 'admin', '编辑用户', '/system/user/doEdit', '{\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"],\"deptId\":[\"1\"],\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"]}', '2016-12-16 17:37:07');
INSERT INTO `sys_log` VALUES ('cf066249d4a543249c8784143a4e7ef9', 'admin', '编辑用户', '/system/user/doEdit', '{\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"],\"deptId\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"],\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"]}', '2016-12-16 17:36:52');
INSERT INTO `sys_log` VALUES ('d0754e83dd6d4cdba81134bb1d5a0c91', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:36');
INSERT INTO `sys_log` VALUES ('d4de54ec8d204a6aa466ea5ee25b8c65', 'admin', '删除用户', '/system/user/delete', '{\"id\":[\"f62307be393d4f5a9a61ed9116629b03\"]}', '2016-12-16 18:05:18');
INSERT INTO `sys_log` VALUES ('d5b20fa3716d4662a3085454e5192be2', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:18');
INSERT INTO `sys_log` VALUES ('dafc6412b9eb473d82dd192cb4bc59d5', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:03:44');
INSERT INTO `sys_log` VALUES ('deb99de887dd41568fef54d4a1964f01', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:50');
INSERT INTO `sys_log` VALUES ('e4241daa81c241ff9309d1959b6b642c', 'admin', '创建菜单', '/system/menu/doAddMenu.html', '{\"code\":[\"0103\"],\"resource\":[\"dept\"],\"icon\":[\"fa-file\"],\"pid\":[\"1\"],\"menuName\":[\"部门管理\"],\"sort\":[\"3\"],\"url\":[\"/system/dept/list/1.html\"]}', '2016-12-16 17:10:18');
INSERT INTO `sys_log` VALUES ('e6962b804eeb489bb474326d93e5bfae', 'admin', '用户退出', '/login/captcha', '{}', '2016-12-16 16:15:32');
INSERT INTO `sys_log` VALUES ('e7a7e346ffdc434a897d856b14c45a97', 'admin', '编辑角色', '/system/role/doEdit', '{\"roleName\":[\"超级管理员\"],\"roleDesc\":[\"utyutyuytuytuytuhghg\"],\"id\":[\"737933bffef640329a4f864c4e2746ba\"],\"roleState\":[\"-1\"]}', '2016-12-17 11:29:53');
INSERT INTO `sys_log` VALUES ('e9114c30656c40bd9ef6d064a1c289f4', 'admin', '编辑用户', '/system/user/doEdit', '{\"userState\":[\"1\"],\"roleId\":[\"737933bffef640329a4f864c4e2746ba\"],\"deptId\":[\"1\"],\"userDesc\":[\"所有权限\"],\"id\":[\"549d321508db446e9bcaa477835fe5f1\"],\"userName\":[\"admin\"]}', '2016-12-16 17:36:59');
INSERT INTO `sys_log` VALUES ('ee352e9569a44b71ac16882f4deb6985', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:58:34');
INSERT INTO `sys_log` VALUES ('f0678f082f7d4cbcb5475b166e735830', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 18:00:28');
INSERT INTO `sys_log` VALUES ('f17b1e76657e45d789f5d4a630e267c7', 'admin', '访问首页', '/index.html', '{}', '2016-12-16 18:04:47');
INSERT INTO `sys_log` VALUES ('f2a307cadf8a4081a112a5aca81c1dbf', 'admin', '编辑菜单', '/system/menu/doEdit.html', '{\"code\":[\"0105\"],\"resource\":[\"setting\"],\"icon\":[\" fa-cog\"],\"pid\":[\"1\"],\"menuName\":[\"系统配置\"],\"id\":[\"10\"],\"sort\":[\"6\"],\"url\":[\"/setting/page.html\"]}', '2016-12-16 14:09:20');
INSERT INTO `sys_log` VALUES ('f428141ceb1547b8b62b1a2a3fd41e8b', 'admin', '编辑用户', '/system/user/doEdit', '{\"deptId\":[\"aebe7d9b427643feb9c5a66c65fb9a81\"],\"userDesc\":[\"aa44515112121\"],\"id\":[\"4754f010ef344c59b728ea60809ab926\"],\"userName\":[\"e100000\"],\"userState\":[\"1\"]}', '2016-12-16 17:36:46');
INSERT INTO `sys_log` VALUES ('f833282d5f8046ac812a269772b67920', 'admin', '更新系统设置', '/system/setting/doSetting.html', '{\"sysValue\":[\"KangarooorgAdmin\",\"KAG\",\"Copyright © 2017 米粒电商. All rights reserved.\"],\"id\":[\"1\",\"2\",\"3\"]}', '2016-12-17 11:33:30');
INSERT INTO `sys_log` VALUES ('f86b3e609f474d4fa3b69db3b77733d4', 'admin2', '访问首页', '/index.html', '{}', '2016-12-16 17:59:43');

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
INSERT INTO `sys_menu` VALUES ('22e38e885f9b40b9aae6a36deb78e89c', '部门管理', '1', '1', '/system/dept/list/1.html', 'fa-file', '3', '2', '0103', 'dept');
INSERT INTO `sys_menu` VALUES ('3', '角色权限管理', '1', '1', '/system/role/list/1.html', 'fa-users', '3', '2', '0102', 'role');
INSERT INTO `sys_menu` VALUES ('4', '菜单管理', '1', '1', '/system/menu/list/1.html', 'fa-list', '4', '2', '0103', 'menu');
INSERT INTO `sys_menu` VALUES ('4701a8374ced4b16a02198f4a65ad8ec', '商家认证', '74b52d8d64f74bc9b84d3ae2e85e5c21', '1', '/sdsds/dasdasd/1.html', 'fa-file', '2', '2', '0602', null);
INSERT INTO `sys_menu` VALUES ('5', '日志管理', '1', '1', '/system/log/list/1.html', 'fa-info', '5', '2', '0104', 'log');
INSERT INTO `sys_menu` VALUES ('6d8a0a374fc744f094764fbd5b331994', '账款报表', 'f01993627af34c5b99137ef7ed3dae54', '1', '/sdsds/dasdasd/1.html', 'fa-file', '3', '2', '0503', null);
INSERT INTO `sys_menu` VALUES ('74b52d8d64f74bc9b84d3ae2e85e5c21', '商家管理', '0', '-1', null, 'fa-folder', '4', '1', '06', null);
INSERT INTO `sys_menu` VALUES ('8', '商品管理', '0', '-1', '', 'fa-folder', '2', '1', '02', null);
INSERT INTO `sys_menu` VALUES ('9', '商品类目管理', '8', '1', '/system/menu/list/1.html', 'fa-file', '2', '2', '0201', 'cat');
INSERT INTO `sys_menu` VALUES ('a4ea9bd96a7f44a7b4d23d9701207a51', '库存报表', 'f01993627af34c5b99137ef7ed3dae54', '1', '/gfgfg/gfdgfd/1.html', null, '45', '2', '0502', null);
INSERT INTO `sys_menu` VALUES ('be6439d404b84062b12c38c4cd752323', '销售报表', 'f01993627af34c5b99137ef7ed3dae54', '1', '445115454', null, '1551', '2', '0505', 'sale');
INSERT INTO `sys_menu` VALUES ('c9cb531d0e6a44eb9f525939c2fe32e0', 'SPU管理', '8', '1', '/sdsds/dasdasd/1.html', 'fa-file', '2', '2', '0202', null);
INSERT INTO `sys_menu` VALUES ('f01993627af34c5b99137ef7ed3dae54', '统计报表', '0', '-1', null, 'fa-folder', '3', '1', '05', null);

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
INSERT INTO `sys_role_menu` VALUES ('02642ef3ec9e4534b65d813b1969f836', '737933bffef640329a4f864c4e2746ba', '146b6c05824f44d2bb91b5926207a695');
INSERT INTO `sys_role_menu` VALUES ('0451410058b8459eb8eb7b939e48ac9a', 'a21876314a764438b6af6bfa422ec09a', '4');
INSERT INTO `sys_role_menu` VALUES ('0787ca5bc598483d87f88aae7a7b0a15', 'ab7e4b34e5d141fa8566fdbb5d3e66f7', 'a4ea9bd96a7f44a7b4d23d9701207a51');
INSERT INTO `sys_role_menu` VALUES ('1158bb05d3f543ceaf89317f11880413', 'fdce142ce7554e30b3274c6d8844b13e', '1');
INSERT INTO `sys_role_menu` VALUES ('11a7223f5bc54757b184f9bc7e663e90', '737933bffef640329a4f864c4e2746ba', '22e38e885f9b40b9aae6a36deb78e89c');
INSERT INTO `sys_role_menu` VALUES ('14c25a6f716e46fbaa264203025f1382', '737933bffef640329a4f864c4e2746ba', 'f01993627af34c5b99137ef7ed3dae54');
INSERT INTO `sys_role_menu` VALUES ('15b096ac54b140cd98beea9b82f39fb8', 'ab7e4b34e5d141fa8566fdbb5d3e66f7', 'f01993627af34c5b99137ef7ed3dae54');
INSERT INTO `sys_role_menu` VALUES ('20c3ff04cda94f7e9fa8997fb5f95b29', '737933bffef640329a4f864c4e2746ba', '4701a8374ced4b16a02198f4a65ad8ec');
INSERT INTO `sys_role_menu` VALUES ('25b8f5e95d044f89b334a48229ad6816', 'a21876314a764438b6af6bfa422ec09a', '3');
INSERT INTO `sys_role_menu` VALUES ('3226460fc14943fc978e2ccfb6abf050', '737933bffef640329a4f864c4e2746ba', '4');
INSERT INTO `sys_role_menu` VALUES ('35c27b37c89c4e6ca7160ef320329961', '1d0d43b9fbbe4c078beb4a732309fe64', '1');
INSERT INTO `sys_role_menu` VALUES ('36193464cffc474a9faf4fddd8f04820', 'fdce142ce7554e30b3274c6d8844b13e', '2');
INSERT INTO `sys_role_menu` VALUES ('3aceb6111772490e9887904fb54949e3', 'eb2e1fa3caa448658da909cf141788f8', '9');
INSERT INTO `sys_role_menu` VALUES ('3b06882969084a828cefc261ecefa3ae', 'a21876314a764438b6af6bfa422ec09a', '1');
INSERT INTO `sys_role_menu` VALUES ('4268917cb370478aa6f4a3010213fcb2', '737933bffef640329a4f864c4e2746ba', 'a4ea9bd96a7f44a7b4d23d9701207a51');
INSERT INTO `sys_role_menu` VALUES ('4e1892caf5ae44d399911a86d9ec0a87', '737933bffef640329a4f864c4e2746ba', '2');
INSERT INTO `sys_role_menu` VALUES ('521cb077b0db4f08ac81af887e1d05eb', '737933bffef640329a4f864c4e2746ba', '3');
INSERT INTO `sys_role_menu` VALUES ('537af500a6b9442eb71e0d77a1ea4841', '1d0d43b9fbbe4c078beb4a732309fe64', '9');
INSERT INTO `sys_role_menu` VALUES ('5bed2b1d90974f92b13ce7aa9d541b78', '737933bffef640329a4f864c4e2746ba', '9');
INSERT INTO `sys_role_menu` VALUES ('5f6255f3ceb5445cadaa9f504f22a4cd', '737933bffef640329a4f864c4e2746ba', '10');
INSERT INTO `sys_role_menu` VALUES ('622d1fe5c5104e26bba5fa7300f71859', 'a21876314a764438b6af6bfa422ec09a', '10');
INSERT INTO `sys_role_menu` VALUES ('672d370bec0f4ede938cf0534143a7d9', '737933bffef640329a4f864c4e2746ba', '74b52d8d64f74bc9b84d3ae2e85e5c21');
INSERT INTO `sys_role_menu` VALUES ('712118e6fe374f92b3beaffc1019952a', 'f08487637b0d4bfc9accc14cbca6f1cd', '3');
INSERT INTO `sys_role_menu` VALUES ('750868dfc79a4a32841da56d1601a8d1', 'f08487637b0d4bfc9accc14cbca6f1cd', '1');
INSERT INTO `sys_role_menu` VALUES ('77fd54d3ab0d4eaa8605346d93095eb9', 'eb2e1fa3caa448658da909cf141788f8', '8');
INSERT INTO `sys_role_menu` VALUES ('8a6381f1ddf943a2a3bc42629c339f15', '1d0d43b9fbbe4c078beb4a732309fe64', '8');
INSERT INTO `sys_role_menu` VALUES ('9e365b3924eb4be6a596ca95d698a8a5', '737933bffef640329a4f864c4e2746ba', '8');
INSERT INTO `sys_role_menu` VALUES ('a22912638e9b418d8f903b7c04dadf12', '737933bffef640329a4f864c4e2746ba', '5');
INSERT INTO `sys_role_menu` VALUES ('a5e2bce2af304acebb5c88fd530a6d14', '737933bffef640329a4f864c4e2746ba', 'be6439d404b84062b12c38c4cd752323');
INSERT INTO `sys_role_menu` VALUES ('ac9869bd5f5343e58e255c9587ced693', 'fdce142ce7554e30b3274c6d8844b13e', '8');
INSERT INTO `sys_role_menu` VALUES ('afee6635bae9403a85097631d76ad7ad', 'f08487637b0d4bfc9accc14cbca6f1cd', '2');
INSERT INTO `sys_role_menu` VALUES ('b6bf6e0aa7f546cbae90f4ba0a393aa3', '737933bffef640329a4f864c4e2746ba', '1');
INSERT INTO `sys_role_menu` VALUES ('d10045cf97f646b8add2585328007134', 'a21876314a764438b6af6bfa422ec09a', '5');
INSERT INTO `sys_role_menu` VALUES ('de0e2c0526d44f3d8cf1fc73e851e15c', 'a21876314a764438b6af6bfa422ec09a', '2');
INSERT INTO `sys_role_menu` VALUES ('eae558fc405c4a2694c5c4c2d8ea335e', 'fdce142ce7554e30b3274c6d8844b13e', '9');
INSERT INTO `sys_role_menu` VALUES ('eb376849e6094c54a4c1dd342a20b20f', '737933bffef640329a4f864c4e2746ba', '6d8a0a374fc744f094764fbd5b331994');
INSERT INTO `sys_role_menu` VALUES ('eb3c806114a544e2a83bfa6cd2119a17', '737933bffef640329a4f864c4e2746ba', 'c9cb531d0e6a44eb9f525939c2fe32e0');
INSERT INTO `sys_role_menu` VALUES ('f041ff0575cb40e38dce1daf2a8abb18', 'ab7e4b34e5d141fa8566fdbb5d3e66f7', 'be6439d404b84062b12c38c4cd752323');

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
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_setting
-- ----------------------------
INSERT INTO `sys_setting` VALUES ('1', 'systemName', '系统名称', 'KangarooorgAdmin', '0');
INSERT INTO `sys_setting` VALUES ('2', 'systemSubName', '系统简称', 'KAG', '1');
INSERT INTO `sys_setting` VALUES ('3', 'bottomCopyright', '底部许可说明', 'Copyright © 2017 米粒电商. All rights reserved.', '2');

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
INSERT INTO `sys_user` VALUES ('09c63f873a9e472ca464accb61cd5e51', 'test', 'DC483E80A7A0BD9EF71D8CF973673924', '1', '2016-12-12 15:50:39', 'aaaaa', 'http://news.mydrivers.com/Img/20110518/04481549.png', '98819860429e435898d7a0652ed9c5a2');
INSERT INTO `sys_user` VALUES ('4754f010ef344c59b728ea60809ab926', 'e100000', '1973EBD114AAB8BD85457E037BBBFA62', '1', '2016-12-12 13:43:59', 'aa44515112121', 'http://news.mydrivers.com/Img/20110518/04481549.png', 'aebe7d9b427643feb9c5a66c65fb9a81');
INSERT INTO `sys_user` VALUES ('549d321508db446e9bcaa477835fe5f1', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2016-12-14 14:35:08', '所有权限', 'http://news.mydrivers.com/Img/20110518/04481549.png', '1');
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

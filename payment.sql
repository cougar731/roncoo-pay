-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.12 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 payment 的数据库结构
CREATE DATABASE IF NOT EXISTS `payment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `payment`;


-- 导出  表 payment.pms_menu 结构
CREATE TABLE IF NOT EXISTS `pms_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `creater` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `remark` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_leaf` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `parent_id` bigint(20) NOT NULL,
  `target_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `number` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='菜单表';

-- 正在导出表  payment.pms_menu 的数据：~23 rows (大约)
/*!40000 ALTER TABLE `pms_menu` DISABLE KEYS */;
INSERT IGNORE INTO `pms_menu` (`id`, `version`, `creater`, `create_time`, `editor`, `edit_time`, `status`, `remark`, `is_leaf`, `level`, `parent_id`, `target_name`, `number`, `name`, `url`) VALUES
	(1, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '001', '权限管理', '##'),
	(2, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 1, 'cdgl', '00101', '菜单管理', 'pms/menu/list'),
	(3, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 1, 'qxgl', '00102', '权限管理', 'pms/permission/list'),
	(4, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 1, 'jsgl', '00103', '角色管理', 'pms/role/list'),
	(5, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 1, 'czygl', '00104', '操作员管理', 'pms/operator/list'),
	(10, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '002', '账户管理', '##'),
	(12, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 10, 'zhxx', '00201', '账户信息', 'account/list'),
	(13, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 10, 'zhlsxx', '00202', '账户历史信息', 'account/historyList'),
	(20, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '003', '用户管理', '##'),
	(22, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 20, 'yhxx', '00301', '用户信息', 'user/info/list'),
	(30, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '004', '支付管理', '##'),
	(32, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 30, 'zfcpgl', '00401', '支付产品信息', 'pay/product/list'),
	(33, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 30, 'yhzfpz', '00402', '用户支付配置', 'pay/config/list'),
	(40, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '005', '交易管理', '##'),
	(42, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 40, 'zfddgl', '00501', '支付订单管理', 'trade/listPaymentOrder'),
	(43, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 40, 'zfjjgl', '00502', '支付记录管理', 'trade/listPaymentRecord'),
	(47, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 40, 'jjjlgl', '00107', '进件记录管理', '/trade/micro/submit/record/list'),
	(50, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '006', '结算管理', '##'),
	(52, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 50, 'jsjlgl', '00601', '结算记录管理', 'sett/list'),
	(60, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '007', '对账管理', '##'),
	(62, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 60, 'dzcclb', '00701', '对账差错列表', 'reconciliation/list/mistake'),
	(63, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 60, 'dzpclb', '00702', '对账批次列表', 'reconciliation/list/checkbatch'),
	(64, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 60, 'dzhcclb', '00703', '对账缓冲池列表', 'reconciliation/list/scratchPool');
/*!40000 ALTER TABLE `pms_menu` ENABLE KEYS */;


-- 导出  表 payment.pms_menu_role 结构
CREATE TABLE IF NOT EXISTS `pms_menu_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) DEFAULT NULL,
  `creater` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `remark` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`role_id`,`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1053 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='权限与角色关联表';

-- 正在导出表  payment.pms_menu_role 的数据：~44 rows (大约)
/*!40000 ALTER TABLE `pms_menu_role` DISABLE KEYS */;
INSERT IGNORE INTO `pms_menu_role` (`id`, `version`, `creater`, `create_time`, `editor`, `edit_time`, `status`, `remark`, `role_id`, `menu_id`) VALUES
	(1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
	(1001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2),
	(1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
	(1003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4),
	(1004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5),
	(1005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10),
	(1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 12),
	(1007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13),
	(1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 20),
	(1009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 22),
	(1010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 30),
	(1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 32),
	(1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 33),
	(1013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 40),
	(1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 42),
	(1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 43),
	(1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50),
	(1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 52),
	(1018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 60),
	(1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 62),
	(1020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 63),
	(1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 64),
	(1031, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1),
	(1032, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2),
	(1033, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3),
	(1034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4),
	(1035, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 5),
	(1036, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 10),
	(1037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 12),
	(1038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 13),
	(1039, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 20),
	(1040, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 22),
	(1041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 30),
	(1042, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 32),
	(1043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 33),
	(1044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 40),
	(1045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 42),
	(1046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 43),
	(1047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 50),
	(1048, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 52),
	(1049, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 60),
	(1050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 62),
	(1051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 63),
	(1052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 64);
/*!40000 ALTER TABLE `pms_menu_role` ENABLE KEYS */;


-- 导出  表 payment.pms_operator 结构
CREATE TABLE IF NOT EXISTS `pms_operator` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) NOT NULL,
  `creater` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `remark` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL,
  `real_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `mobile_no` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `login_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `login_pwd` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `salt` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='操作员表';

-- 正在导出表  payment.pms_operator 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `pms_operator` DISABLE KEYS */;
INSERT IGNORE INTO `pms_operator` (`id`, `version`, `creater`, `create_time`, `editor`, `edit_time`, `status`, `remark`, `real_name`, `mobile_no`, `login_name`, `login_pwd`, `type`, `salt`) VALUES
	(1, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '超级管理员', '超级管理员', '18620936193', 'admin', 'd3c59d25033dbf980d29554025c23a75', 'ADMIN', '8d78869f470951332959580424d4bf4f'),
	(2, 0, 'roncoo', '2016-06-03 11:07:43', 'guest', '2016-06-03 11:07:43', 'ACTIVE', '游客', '游客', '18926215592', 'guest', '3f0dbf580ee39ec03b632cb33935a363', 'USER', '183d9f2f0f2ce760e98427a5603d1c73');
/*!40000 ALTER TABLE `pms_operator` ENABLE KEYS */;


-- 导出  表 payment.pms_operator_log 结构
CREATE TABLE IF NOT EXISTS `pms_operator_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) NOT NULL,
  `creater` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `remark` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL,
  `operator_id` bigint(20) NOT NULL,
  `operator_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `operate_type` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '操作类型（1:增加，2:修改，3:删除，4:查询）',
  `ip` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `content` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='权限_操作员操作日志表';

-- 正在导出表  payment.pms_operator_log 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `pms_operator_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_operator_log` ENABLE KEYS */;


-- 导出  表 payment.pms_permission 结构
CREATE TABLE IF NOT EXISTS `pms_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) NOT NULL,
  `creater` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `remark` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL,
  `permission_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`permission`),
  KEY `ak_key_3` (`permission_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='权限表';

-- 正在导出表  payment.pms_permission 的数据：~66 rows (大约)
/*!40000 ALTER TABLE `pms_permission` DISABLE KEYS */;
INSERT IGNORE INTO `pms_permission` (`id`, `version`, `creater`, `create_time`, `editor`, `edit_time`, `status`, `remark`, `permission_name`, `permission`) VALUES
	(1, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-菜单-查看', '权限管理-菜单-查看', 'pms:menu:view'),
	(2, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-菜单-添加', '权限管理-菜单-添加', 'pms:menu:add'),
	(3, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-菜单-查看', '权限管理-菜单-修改', 'pms:menu:edit'),
	(4, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-菜单-删除', '权限管理-菜单-删除', 'pms:menu:delete'),
	(11, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-权限-查看', '权限管理-权限-查看', 'pms:permission:view'),
	(12, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-权限-添加', '权限管理-权限-添加', 'pms:permission:add'),
	(13, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-权限-修改', '权限管理-权限-修改', 'pms:permission:edit'),
	(14, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-权限-删除', '权限管理-权限-删除', 'pms:permission:delete'),
	(21, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-角色-查看', '权限管理-角色-查看', 'pms:role:view'),
	(22, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-角色-添加', '权限管理-角色-添加', 'pms:role:add'),
	(23, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-角色-修改', '权限管理-角色-修改', 'pms:role:edit'),
	(24, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-角色-删除', '权限管理-角色-删除', 'pms:role:delete'),
	(25, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-角色-分配权限', '权限管理-角色-分配权限', 'pms:role:assignpermission'),
	(31, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-操作员-查看', '权限管理-操作员-查看', 'pms:operator:view'),
	(32, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-操作员-添加', '权限管理-操作员-添加', 'pms:operator:add'),
	(33, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-操作员-查看', '权限管理-操作员-修改', 'pms:operator:edit'),
	(34, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-操作员-冻结与解冻', '权限管理-操作员-冻结与解冻', 'pms:operator:changestatus'),
	(35, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-操作员-重置密码', '权限管理-操作员-重置密码', 'pms:operator:resetpwd'),
	(51, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '账户管理-账户-查看', '账户管理-账户-查看', 'account:accountInfo:view'),
	(52, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '账户管理-账户-添加', '账户管理-账户-添加', 'account:accountInfo:add'),
	(53, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '账户管理-账户-查看', '账户管理-账户-修改', 'account:accountInfo:edit'),
	(54, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '账户管理-账户-删除', '账户管理-账户-删除', 'account:accountInfo:delete'),
	(61, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '账户管理-账户历史-查看', '账户管理-账户历史-查看', 'account:accountHistory:view'),
	(71, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '用户管理-用户信息-查看', '用户管理-用户信息-查看', 'user:userInfo:view'),
	(72, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '用户管理-用户信息-添加', '用户管理-用户信息-添加', 'user:userInfo:add'),
	(73, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '用户管理-用户信息-查看', '用户管理-用户信息-修改', 'user:userInfo:edit'),
	(74, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '用户管理-用户信息-删除', '用户管理-用户信息-删除', 'user:userInfo:delete'),
	(81, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付产品-查看', '支付管理-支付产品-查看', 'pay:product:view'),
	(82, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付产品-添加', '支付管理-支付产品-添加', 'pay:product:add'),
	(83, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付产品-查看', '支付管理-支付产品-修改', 'pay:product:edit'),
	(84, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付产品-删除', '支付管理-支付产品-删除', 'pay:product:delete'),
	(85, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付方式-查看', '支付管理-支付方式-查看', 'pay:way:view'),
	(86, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付方式-添加', '支付管理-支付方式-添加', 'pay:way:add'),
	(87, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付方式-查看', '支付管理-支付方式-修改', 'pay:way:edit'),
	(88, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付方式-删除', '支付管理-支付方式-删除', 'pay:way:delete'),
	(91, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付配置-查看', '支付管理-支付配置-查看', 'pay:config:view'),
	(92, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付配置-添加', '支付管理-支付配置-添加', 'pay:config:add'),
	(93, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付配置-查看', '支付管理-支付配置-修改', 'pay:config:edit'),
	(94, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付配置-删除', '支付管理-支付配置-删除', 'pay:config:delete'),
	(101, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-订单-查看', '交易管理-订单-查看', 'trade:order:view'),
	(102, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-订单-添加', '交易管理-订单-添加', 'trade:order:add'),
	(103, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-订单-查看', '交易管理-订单-修改', 'trade:order:edit'),
	(104, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-订单-删除', '交易管理-订单-删除', 'trade:order:delete'),
	(111, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-记录-查看', '交易管理-记录-查看', 'trade:record:view'),
	(112, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-记录-添加', '交易管理-记录-添加', 'trade:record:add'),
	(113, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-记录-查看', '交易管理-记录-修改', 'trade:record:edit'),
	(114, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-记录-删除', '交易管理-记录-删除', 'trade:record:delete'),
	(121, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '结算管理-记录-查看', '结算管理-记录-查看', 'sett:record:view'),
	(122, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '结算管理-记录-添加', '结算管理-记录-添加', 'sett:record:add'),
	(123, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '结算管理-记录-查看', '结算管理-记录-修改', 'sett:record:edit'),
	(124, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '结算管理-记录-删除', '结算管理-记录-删除', 'sett:record:delete'),
	(131, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-差错-查看', '对账管理-差错-查看', 'recon:mistake:view'),
	(132, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-差错-添加', '对账管理-差错-添加', 'recon:mistake:add'),
	(133, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-差错-查看', '对账管理-差错-修改', 'recon:mistake:edit'),
	(134, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-差错-删除', '对账管理-差错-删除', 'recon:mistake:delete'),
	(141, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-批次-查看', '对账管理-批次-查看', 'recon:batch:view'),
	(142, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-批次-添加', '对账管理-批次-添加', 'recon:batch:add'),
	(143, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-批次-查看', '对账管理-批次-修改', 'recon:batch:edit'),
	(144, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-批次-删除', '对账管理-批次-删除', 'recon:batch:delete'),
	(151, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-缓冲池-查看', '对账管理-缓冲池-查看', 'recon:scratchPool:view'),
	(152, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-缓冲池-添加', '对账管理-缓冲池-添加', 'recon:scratchPool:add'),
	(153, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-缓冲池-查看', '对账管理-缓冲池-修改', 'recon:scratchPool:edit'),
	(154, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-缓冲池-删除', '对账管理-缓冲池-删除', 'recon:scratchPool:delete'),
	(266, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '进件记录管理--查看', '进件记录管理--查看', 'trade:micro:submit:record:list'),
	(267, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '进件记录管理--添加', '进件记录管理--添加', 'trade:micro:submit:record:add'),
	(268, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '进件记录管理--查询', '进件记录管理--查询', 'trade:micro:submit:record:query');
/*!40000 ALTER TABLE `pms_permission` ENABLE KEYS */;


-- 导出  表 payment.pms_role 结构
CREATE TABLE IF NOT EXISTS `pms_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) DEFAULT NULL,
  `creater` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `remark` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL,
  `role_code` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '角色类型（1:超级管理员角色，0:普通操作员角色）',
  `role_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色表';

-- 正在导出表  payment.pms_role 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `pms_role` DISABLE KEYS */;
INSERT IGNORE INTO `pms_role` (`id`, `version`, `creater`, `create_time`, `editor`, `edit_time`, `status`, `remark`, `role_code`, `role_name`) VALUES
	(1, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '超级管理员角色', 'admin', '超级管理员角色'),
	(2, 0, 'roncoo', '2016-06-03 11:07:43', 'guest', '2016-06-03 11:07:43', 'ACTIVE', '游客角色', 'guest', '游客角色');
/*!40000 ALTER TABLE `pms_role` ENABLE KEYS */;


-- 导出  表 payment.pms_role_operator 结构
CREATE TABLE IF NOT EXISTS `pms_role_operator` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) NOT NULL,
  `creater` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `remark` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `operator_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`role_id`,`operator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='操作员与角色关联表';

-- 正在导出表  payment.pms_role_operator 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `pms_role_operator` DISABLE KEYS */;
INSERT IGNORE INTO `pms_role_operator` (`id`, `version`, `creater`, `create_time`, `editor`, `edit_time`, `status`, `remark`, `role_id`, `operator_id`) VALUES
	(1, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 1, 1),
	(2, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 1),
	(3, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 2);
/*!40000 ALTER TABLE `pms_role_operator` ENABLE KEYS */;


-- 导出  表 payment.pms_role_permission 结构
CREATE TABLE IF NOT EXISTS `pms_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) DEFAULT NULL,
  `creater` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `remark` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`role_id`,`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1080 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='权限与角色关联表';

-- 正在导出表  payment.pms_role_permission 的数据：~80 rows (大约)
/*!40000 ALTER TABLE `pms_role_permission` DISABLE KEYS */;
INSERT IGNORE INTO `pms_role_permission` (`id`, `version`, `creater`, `create_time`, `editor`, `edit_time`, `status`, `remark`, `role_id`, `permission_id`) VALUES
	(1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 61),
	(1001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 52),
	(1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 54),
	(1003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 53),
	(1004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 51),
	(1005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 92),
	(1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 94),
	(1007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 93),
	(1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 91),
	(1009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 82),
	(1010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 84),
	(1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 83),
	(1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 81),
	(1013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 86),
	(1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 88),
	(1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 87),
	(1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 85),
	(1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2),
	(1018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4),
	(1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
	(1020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
	(1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 32),
	(1022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 34),
	(1023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 33),
	(1024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35),
	(1025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31),
	(1026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 12),
	(1027, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14),
	(1028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13),
	(1029, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 11),
	(1030, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 22),
	(1031, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25),
	(1032, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24),
	(1033, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23),
	(1034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 21),
	(1035, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 142),
	(1036, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 144),
	(1037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 143),
	(1038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 141),
	(1039, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 132),
	(1040, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 134),
	(1041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 133),
	(1042, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 131),
	(1043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 152),
	(1044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 154),
	(1045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 153),
	(1046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 151),
	(1047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 122),
	(1048, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 124),
	(1049, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 123),
	(1050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 121),
	(1051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 102),
	(1052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 104),
	(1053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 103),
	(1054, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 101),
	(1055, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 112),
	(1056, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 114),
	(1057, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 113),
	(1058, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 111),
	(1059, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 72),
	(1060, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 74),
	(1061, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 73),
	(1062, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 71),
	(1063, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 1),
	(1064, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 11),
	(1065, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 21),
	(1066, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 31),
	(1067, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 41),
	(1068, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 51),
	(1069, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 61),
	(1070, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 71),
	(1071, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 81),
	(1072, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 85),
	(1073, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 91),
	(1074, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 101),
	(1075, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 111),
	(1076, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 121),
	(1077, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 131),
	(1078, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 141),
	(1079, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 151);
/*!40000 ALTER TABLE `pms_role_permission` ENABLE KEYS */;


-- 导出  表 payment.rp_account 结构
CREATE TABLE IF NOT EXISTS `rp_account` (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `version` bigint(20) NOT NULL COMMENT '版本号默认为0',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'ACTIVE:激活  UNACTIVE:冻结',
  `account_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '账户编号',
  `balance` decimal(20,6) NOT NULL COMMENT '账户余额',
  `unbalance` decimal(20,6) NOT NULL COMMENT '不可用余额',
  `security_money` decimal(20,6) NOT NULL COMMENT '保证金',
  `total_income` decimal(20,6) NOT NULL COMMENT '总收益',
  `total_expend` decimal(20,6) NOT NULL COMMENT '总支出',
  `today_income` decimal(20,6) NOT NULL COMMENT '总支出',
  `today_expend` decimal(20,6) NOT NULL COMMENT '今日支出',
  `account_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '账户类型   USER:用户   ENTERPRISE:企业',
  `sett_amount` decimal(20,6) NOT NULL COMMENT '可结算金额',
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='资金账户表';

-- 正在导出表  payment.rp_account 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_account` DISABLE KEYS */;
INSERT IGNORE INTO `rp_account` (`id`, `create_time`, `edit_time`, `version`, `remark`, `status`, `account_no`, `balance`, `unbalance`, `security_money`, `total_income`, `total_expend`, `today_income`, `today_expend`, `account_type`, `sett_amount`, `user_no`) VALUES
	('c62d6c85f4ae4d4b95875f5fc5741cee', '2019-06-28 21:59:22', '2019-06-28 21:59:22', 0, NULL, 'ACTIVE', '99992019062810000001', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0', 0.000000, '88882019062810001114');
/*!40000 ALTER TABLE `rp_account` ENABLE KEYS */;


-- 导出  表 payment.rp_account_check_batch 结构
CREATE TABLE IF NOT EXISTS `rp_account_check_batch` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `status` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `remark` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `batch_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '对账批次号',
  `bill_date` date NOT NULL COMMENT '账单时间(账单交易发生时间)',
  `bill_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '账单类型(默认全部是交易成功)',
  `handle_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '批次处理状态, 已处理, 未处理',
  `bank_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行类型 WEIXIN ALIPAY YINLIAN',
  `mistake_count` int(8) DEFAULT NULL COMMENT '所有差错总单数',
  `unhandle_mistake_count` int(8) DEFAULT NULL COMMENT '待处理的差错总单数',
  `trade_count` int(8) DEFAULT NULL COMMENT '平台总交易单数',
  `bank_trade_count` int(8) DEFAULT NULL COMMENT '银行总交易单数',
  `trade_amount` decimal(20,6) DEFAULT NULL COMMENT '平台交易总金额',
  `bank_trade_amount` decimal(20,6) DEFAULT NULL COMMENT '银行交易总金额',
  `refund_amount` decimal(20,6) DEFAULT NULL COMMENT '平台退款总金额',
  `bank_refund_amount` decimal(20,6) DEFAULT NULL COMMENT '银行退款总金额',
  `bank_fee` decimal(20,6) DEFAULT NULL COMMENT '银行总手续费, 单位元',
  `org_check_file_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '原始对账文件存放地址',
  `release_check_file_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '解析后文件存放地址',
  `release_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '解析状态',
  `check_fail_msg` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '解析检查失败的描述信息',
  `bank_err_msg` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行返回的错误信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='对账批次表 ';

-- 正在导出表  payment.rp_account_check_batch 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_account_check_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_account_check_batch` ENABLE KEYS */;


-- 导出  表 payment.rp_account_check_mistake 结构
CREATE TABLE IF NOT EXISTS `rp_account_check_mistake` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `status` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `remark` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `account_check_batch_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '对账批次号',
  `bill_date` date NOT NULL COMMENT '账单日期',
  `bank_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '银行类型 WEIXIN ALIPAY',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `merchant_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '商家名称',
  `merchant_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '商家编号',
  `order_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '商家订单号',
  `trade_time` datetime DEFAULT NULL COMMENT '平台交易时间',
  `trx_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '平台流水号',
  `order_amount` decimal(20,6) DEFAULT NULL COMMENT '平台交易金额',
  `refund_amount` decimal(20,6) DEFAULT NULL COMMENT '平台退款金额',
  `trade_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '平台交易状态',
  `fee` decimal(20,6) DEFAULT NULL COMMENT '平台手续费',
  `bank_trade_time` datetime DEFAULT NULL COMMENT '银行交易时间',
  `bank_order_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行订单号',
  `bank_trx_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行流水号',
  `bank_trade_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行交易状态',
  `bank_amount` decimal(20,6) DEFAULT NULL COMMENT '银行交易金额',
  `bank_refund_amount` decimal(20,6) DEFAULT NULL COMMENT '银行退款金额',
  `bank_fee` decimal(20,6) DEFAULT NULL COMMENT '银行手续费',
  `err_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '差错类型',
  `handle_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '处理状态, 已处理, 未处理',
  `handle_value` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '处理结果',
  `handle_remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '处理说明',
  `operator_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作人姓名',
  `operator_account_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作人账户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='对账差错表 ';

-- 正在导出表  payment.rp_account_check_mistake 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_account_check_mistake` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_account_check_mistake` ENABLE KEYS */;


-- 导出  表 payment.rp_account_check_mistake_scratch_pool 结构
CREATE TABLE IF NOT EXISTS `rp_account_check_mistake_scratch_pool` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `product_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '商品名称',
  `merchant_order_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '商户订单号',
  `trx_no` char(20) COLLATE utf8mb4_bin NOT NULL COMMENT '支付流水号',
  `bank_order_no` char(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行订单号',
  `bank_trx_no` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行流水号',
  `order_amount` decimal(20,6) DEFAULT '0.000000' COMMENT '订单金额',
  `plat_income` decimal(20,6) DEFAULT NULL COMMENT '平台收入',
  `fee_rate` decimal(20,6) DEFAULT NULL COMMENT '费率',
  `plat_cost` decimal(20,6) DEFAULT NULL COMMENT '平台成本',
  `plat_profit` decimal(20,6) DEFAULT NULL COMMENT '平台利润',
  `status` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '状态(参考枚举:paymentrecordstatusenum)',
  `pay_way_code` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付通道编号',
  `pay_way_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付通道名称',
  `pay_success_time` datetime DEFAULT NULL COMMENT '支付成功时间',
  `complete_time` datetime DEFAULT NULL COMMENT '完成时间',
  `is_refund` varchar(30) COLLATE utf8mb4_bin DEFAULT '101' COMMENT '是否退款(100:是,101:否,默认值为:101)',
  `refund_times` smallint(6) DEFAULT '0' COMMENT '退款次数(默认值为:0)',
  `success_refund_amount` decimal(20,6) DEFAULT NULL COMMENT '成功退款总金额',
  `remark` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `batch_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `bill_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='差错暂存池';

-- 正在导出表  payment.rp_account_check_mistake_scratch_pool 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_account_check_mistake_scratch_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_account_check_mistake_scratch_pool` ENABLE KEYS */;


-- 导出  表 payment.rp_account_history 结构
CREATE TABLE IF NOT EXISTS `rp_account_history` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `account_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '账户编号',
  `amount` decimal(20,6) NOT NULL COMMENT '金额',
  `balance` decimal(20,6) NOT NULL COMMENT '账户余额',
  `fund_direction` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '资金变动方向 ADD:加款  SUB:减款',
  `is_allow_sett` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否允许结算',
  `is_complete_sett` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否完成结算',
  `request_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '请求号',
  `bank_trx_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行流水号',
  `trx_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '业务类型',
  `risk_day` int(11) DEFAULT NULL COMMENT '风险预存期',
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='资金账户流水表';

-- 正在导出表  payment.rp_account_history 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_account_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_account_history` ENABLE KEYS */;


-- 导出  表 payment.rp_micro_submit_record 结构
CREATE TABLE IF NOT EXISTS `rp_micro_submit_record` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '编号',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `creater` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime NOT NULL COMMENT '修改时间',
  `editor` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改者',
  `status` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '状态',
  `business_code` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '业务申请编号',
  `sub_mch_id` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '小微商户号',
  `id_card_copy` varchar(256) COLLATE utf8mb4_bin NOT NULL COMMENT '身份证人像面照片',
  `id_card_national` varchar(256) COLLATE utf8mb4_bin NOT NULL COMMENT '身份证国徽面照片',
  `id_card_name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '身份证姓名',
  `id_card_number` varchar(18) COLLATE utf8mb4_bin NOT NULL COMMENT '身份证号码',
  `id_card_valid_time` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '身份证有效期限',
  `account_bank` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '开户名称',
  `bank_address_code` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '开户银行省市编码',
  `account_number` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '银行账号',
  `store_name` varchar(128) COLLATE utf8mb4_bin NOT NULL COMMENT '门店名称',
  `store_address_code` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '门店省市编码',
  `store_street` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '门店街道名称',
  `store_entrance_pic` varchar(256) COLLATE utf8mb4_bin NOT NULL COMMENT '门店门口照片',
  `indoor_pic` varchar(256) COLLATE utf8mb4_bin NOT NULL COMMENT '店内环境照片',
  `merchant_shortname` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '商户简称',
  `service_phone` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '客服电话',
  `product_desc` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '服务描述',
  `rate` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '费率',
  `contact_phone` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='小微商户进件记录';

-- 正在导出表  payment.rp_micro_submit_record 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_micro_submit_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_micro_submit_record` ENABLE KEYS */;


-- 导出  表 payment.rp_notify_record 结构
CREATE TABLE IF NOT EXISTS `rp_notify_record` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `version` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `notify_times` int(11) NOT NULL COMMENT '通知次数',
  `limit_notify_times` int(11) NOT NULL COMMENT '限制通知次数',
  `url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '通知URL',
  `merchant_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商户订单号',
  `merchant_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商户编号',
  `status` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '100:成功 101:失败',
  `notify_type` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '通知类型',
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`merchant_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='通知记录表 ';

-- 正在导出表  payment.rp_notify_record 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_notify_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_notify_record` ENABLE KEYS */;


-- 导出  表 payment.rp_notify_record_log 结构
CREATE TABLE IF NOT EXISTS `rp_notify_record_log` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `version` int(11) NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `create_time` datetime NOT NULL,
  `notify_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '通知记录ID',
  `request` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '请求信息',
  `response` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '返回信息',
  `merchant_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商户编号',
  `merchant_order_no` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '商户订单号',
  `http_status` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'http状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='通知记录日志表';

-- 正在导出表  payment.rp_notify_record_log 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_notify_record_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_notify_record_log` ENABLE KEYS */;


-- 导出  表 payment.rp_pay_product 结构
CREATE TABLE IF NOT EXISTS `rp_pay_product` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `status` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `product_code` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '支付产品编号',
  `product_name` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '支付产品名称',
  `audit_status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付产品上下架状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='支付产品表';

-- 正在导出表  payment.rp_pay_product 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_pay_product` DISABLE KEYS */;
INSERT IGNORE INTO `rp_pay_product` (`id`, `create_time`, `edit_time`, `version`, `status`, `product_code`, `product_name`, `audit_status`) VALUES
	('23fddbe6deda41a18d4038945306f42f', '2019-06-28 22:06:57', '2019-06-28 22:07:48', 0, 'ACTIVE', 'TEST_ALIPAY', '支付宝测试', 'YES'),
	('2b7a0b3330de4e5baff975923758f506', '2019-06-28 22:04:49', '2019-06-28 22:06:31', 0, 'UNACTIVE', '啊啊啊啊', '哎哎哎', 'NO');
/*!40000 ALTER TABLE `rp_pay_product` ENABLE KEYS */;


-- 导出  表 payment.rp_pay_way 结构
CREATE TABLE IF NOT EXISTS `rp_pay_way` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'id',
  `version` bigint(20) NOT NULL DEFAULT '0' COMMENT 'version',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `pay_way_code` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '支付方式名称',
  `pay_type_code` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '支付类型编号',
  `pay_type_name` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '支付类型名称',
  `pay_product_code` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付产品编号',
  `status` varchar(36) COLLATE utf8mb4_bin NOT NULL COMMENT '状态(100:正常状态,101非正常状态)',
  `sorts` int(11) DEFAULT '1000' COMMENT '排序(倒序排序,默认值1000)',
  `pay_rate` double NOT NULL COMMENT '商户支付费率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='支付方式';

-- 正在导出表  payment.rp_pay_way 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_pay_way` DISABLE KEYS */;
INSERT IGNORE INTO `rp_pay_way` (`id`, `version`, `create_time`, `edit_time`, `pay_way_code`, `pay_way_name`, `pay_type_code`, `pay_type_name`, `pay_product_code`, `status`, `sorts`, `pay_rate`) VALUES
	('2d2b8e17b6e342899e1d31fa101c4414', 0, '2019-06-28 22:07:11', NULL, 'ALIPAY', '支付宝', 'ALI_TEST', '支付宝测试', 'TEST_ALIPAY', 'ACTIVE', NULL, 0.6),
	('861969f3cd414a7cafa8d5b94b920fe6', 0, '2019-06-28 22:05:15', '2019-06-28 22:06:26', 'ALIPAY', '支付宝', 'DIRECT_PAY', '即时到账', '啊啊啊啊', 'UNACTIVE', NULL, 0.6);
/*!40000 ALTER TABLE `rp_pay_way` ENABLE KEYS */;


-- 导出  表 payment.rp_refund_record 结构
CREATE TABLE IF NOT EXISTS `rp_refund_record` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'id',
  `version` int(11) NOT NULL COMMENT '版本号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `org_merchant_order_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '原商户订单号',
  `org_trx_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '原支付流水号',
  `org_bank_order_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '原银行订单号',
  `org_bank_trx_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '原银行流水号',
  `merchant_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '商家名称',
  `merchant_no` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '商家编号',
  `org_product_name` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '原商品名称',
  `org_biz_type` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '原业务类型',
  `org_payment_type` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '原支付方式类型',
  `refund_amount` decimal(20,6) DEFAULT NULL COMMENT '订单退款金额',
  `refund_trx_no` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '退款流水号',
  `refund_order_no` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '退款订单号',
  `bank_refund_order_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行退款订单号',
  `bank_refund_trx_no` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行退款流水号',
  `result_notify_url` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '退款结果通知url',
  `refund_status` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '退款状态',
  `refund_from` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '退款来源（分发平台）',
  `refund_way` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '退款方式',
  `refund_request_time` datetime DEFAULT NULL COMMENT '退款请求时间',
  `refund_success_time` datetime DEFAULT NULL COMMENT ' 退款成功时间',
  `refund_complete_time` datetime DEFAULT NULL COMMENT '退款完成时间',
  `request_apply_user_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '退款请求,申请人登录名',
  `request_apply_user_name` varchar(90) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '退款请求,申请人姓名',
  `refund_reason` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '退款原因',
  `remark` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ak_key_2` (`refund_trx_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='退款记录表';

-- 正在导出表  payment.rp_refund_record 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_refund_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_refund_record` ENABLE KEYS */;


-- 导出  表 payment.rp_sett_daily_collect 结构
CREATE TABLE IF NOT EXISTS `rp_sett_daily_collect` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'id',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime NOT NULL COMMENT '修改时间',
  `account_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '账户编号',
  `user_name` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户姓名',
  `collect_date` date NOT NULL COMMENT '汇总日期',
  `collect_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '汇总类型(参考枚举:settdailycollecttypeenum) ALL("存入/减少汇总") TEMP("临时汇总") LEAVE("遗留汇总")',
  `total_amount` decimal(24,10) NOT NULL COMMENT '交易总金额',
  `total_count` int(11) NOT NULL COMMENT '交易总笔数',
  `sett_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '结算状态(参考枚举:settdailycollectstatusenum) SETTLLED("已结算") UNSETTLE("未结算");',
  `remark` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `risk_day` int(11) DEFAULT NULL COMMENT '风险预存期天数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='每日待结算汇总';

-- 正在导出表  payment.rp_sett_daily_collect 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_sett_daily_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_sett_daily_collect` ENABLE KEYS */;


-- 导出  表 payment.rp_sett_record 结构
CREATE TABLE IF NOT EXISTS `rp_sett_record` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'id',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime NOT NULL COMMENT '修改时间',
  `sett_mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '结算发起方式(参考settmodetypeenum) SELFHELP_SETTLE("手工结算") REGULAR_SETTLE("自动结算")',
  `account_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '账户编号',
  `user_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户姓名',
  `user_type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户类型',
  `sett_date` date DEFAULT NULL COMMENT '结算日期',
  `bank_code` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行编码',
  `bank_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行名称',
  `bank_account_name` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开户名',
  `bank_account_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开户账户',
  `bank_account_type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开户账户',
  `country` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开户行所在国家',
  `province` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开户行所在省份',
  `city` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开户行所在城市',
  `areas` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开户行所在区',
  `bank_account_address` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开户行全称',
  `mobile_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '收款人手机号',
  `sett_amount` decimal(24,10) DEFAULT NULL COMMENT '结算金额',
  `sett_fee` decimal(16,6) DEFAULT NULL COMMENT '结算手续费',
  `remit_amount` decimal(16,2) DEFAULT NULL COMMENT '结算打款金额',
  `sett_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '结算状态(参考枚举:settrecordstatusenum) WAIT_CONFIRM("等待审核") CONFIRMED("已审核") CANCEL("审核不通过") REMITTING("打款中") REMIT_SUCCESS("打款成功") REMIT_FAIL("打款失败")',
  `remit_confirm_time` datetime DEFAULT NULL COMMENT '打款确认时间',
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `remit_remark` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '打款备注',
  `operator_loginname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作员登录名',
  `operator_realname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作员姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='结算记录';

-- 正在导出表  payment.rp_sett_record 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_sett_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_sett_record` ENABLE KEYS */;


-- 导出  表 payment.rp_sett_record_annex 结构
CREATE TABLE IF NOT EXISTS `rp_sett_record_annex` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_delete` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否删除',
  `annex_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '附件名称',
  `annex_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '附件地址',
  `settlement_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '结算id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='结算附件表';

-- 正在导出表  payment.rp_sett_record_annex 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_sett_record_annex` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_sett_record_annex` ENABLE KEYS */;


-- 导出  表 payment.rp_trade_payment_order 结构
CREATE TABLE IF NOT EXISTS `rp_trade_payment_order` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'id',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `status` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '状态(参考枚举:orderstatusenum)',
  `product_name` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '商品名称',
  `merchant_order_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '商户订单号',
  `order_amount` decimal(20,6) DEFAULT '0.000000' COMMENT '订单金额',
  `order_from` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '订单来源',
  `merchant_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '商家名称',
  `merchant_no` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '商户编号',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `order_date` date DEFAULT NULL COMMENT '下单日期',
  `order_ip` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '下单ip(客户端ip,在网关页面获取)',
  `order_referer_url` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '从哪个页面链接过来的(可用于防诈骗)',
  `return_url` varchar(600) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '页面回调通知url',
  `notify_url` varchar(600) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '后台异步通知url',
  `cancel_reason` varchar(600) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '订单撤销原因',
  `order_period` smallint(6) DEFAULT NULL COMMENT '订单有效期(单位分钟)',
  `expire_time` datetime DEFAULT NULL COMMENT '到期时间',
  `pay_way_code` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付方式名称',
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付备注',
  `trx_type` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '交易业务类型  ：消费、充值等',
  `trx_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付流水号',
  `pay_type_code` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付类型编号',
  `pay_type_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付类型名称',
  `fund_into_type` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '资金流入类型',
  `is_refund` varchar(30) COLLATE utf8mb4_bin DEFAULT '101' COMMENT '是否退款(100:是,101:否,默认值为:101)',
  `refund_times` int(11) DEFAULT '0' COMMENT '退款次数(默认值为:0)',
  `success_refund_amount` decimal(20,6) DEFAULT NULL COMMENT '成功退款总金额',
  `field1` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `field2` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `field3` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `field4` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `field5` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ak_key_2` (`merchant_order_no`,`merchant_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='支付订单表';

-- 正在导出表  payment.rp_trade_payment_order 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_trade_payment_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_trade_payment_order` ENABLE KEYS */;


-- 导出  表 payment.rp_trade_payment_record 结构
CREATE TABLE IF NOT EXISTS `rp_trade_payment_record` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'id',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '状态(参考枚举:paymentrecordstatusenum)',
  `editor` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `product_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '商品名称',
  `merchant_order_no` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '商户订单号',
  `trx_no` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '支付流水号',
  `bank_order_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行订单号',
  `bank_trx_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行流水号',
  `merchant_name` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '商家名称',
  `merchant_no` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '商家编号',
  `payer_user_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '付款人编号',
  `payer_name` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '付款人名称',
  `payer_pay_amount` decimal(20,6) DEFAULT '0.000000' COMMENT '付款方支付金额',
  `payer_fee` decimal(20,6) DEFAULT '0.000000' COMMENT '付款方手续费',
  `payer_account_type` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '付款方账户类型(参考账户类型枚举:accounttypeenum)',
  `receiver_user_no` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '收款人编号',
  `receiver_name` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '收款人名称',
  `receiver_pay_amount` decimal(20,6) DEFAULT '0.000000' COMMENT '收款方支付金额',
  `receiver_fee` decimal(20,6) DEFAULT '0.000000' COMMENT '收款方手续费',
  `receiver_account_type` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '收款方账户类型(参考账户类型枚举:accounttypeenum)',
  `order_ip` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '下单ip(客户端ip,从网关中获取)',
  `order_referer_url` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '从哪个页面链接过来的(可用于防诈骗)',
  `order_amount` decimal(20,6) DEFAULT '0.000000' COMMENT '订单金额',
  `plat_income` decimal(20,6) DEFAULT NULL COMMENT '平台收入',
  `fee_rate` decimal(20,6) DEFAULT NULL COMMENT '费率',
  `plat_cost` decimal(20,6) DEFAULT NULL COMMENT '平台成本',
  `plat_profit` decimal(20,6) DEFAULT NULL COMMENT '平台利润',
  `return_url` varchar(600) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '页面回调通知url',
  `notify_url` varchar(600) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '后台异步通知url',
  `pay_way_code` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付方式名称',
  `pay_success_time` datetime DEFAULT NULL COMMENT '支付成功时间',
  `complete_time` datetime DEFAULT NULL COMMENT '完成时间',
  `is_refund` varchar(30) COLLATE utf8mb4_bin DEFAULT '101' COMMENT '是否退款(100:是,101:否,默认值为:101)',
  `refund_times` int(11) DEFAULT '0' COMMENT '退款次数(默认值为:0)',
  `success_refund_amount` decimal(20,6) DEFAULT NULL COMMENT '成功退款总金额',
  `trx_type` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '交易业务类型  ：消费、充值等',
  `order_from` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '订单来源',
  `pay_type_code` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付类型编号',
  `pay_type_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付类型名称',
  `fund_into_type` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '资金流入类型',
  `remark` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `field1` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `field2` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `field3` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `field4` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `field5` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank_return_msg` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行返回信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ak_key_2` (`trx_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='支付记录表';

-- 正在导出表  payment.rp_trade_payment_record 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_trade_payment_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_trade_payment_record` ENABLE KEYS */;


-- 导出  表 payment.rp_user_bank_account 结构
CREATE TABLE IF NOT EXISTS `rp_user_bank_account` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户编号',
  `bank_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '银行名称',
  `bank_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '银行编号',
  `bank_account_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '银行卡开户名',
  `bank_account_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '银行卡卡号',
  `bank_account_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '银行卡类型',
  `card_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '证件类型',
  `card_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '证件号码',
  `mobile_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '手机号码',
  `is_default` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '是否默认',
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行卡开户所在省',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行卡开户所在城市',
  `areas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行卡开户所在区',
  `street` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行卡开户具体地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户银行账户表';

-- 正在导出表  payment.rp_user_bank_account 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_user_bank_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_user_bank_account` ENABLE KEYS */;


-- 导出  表 payment.rp_user_info 结构
CREATE TABLE IF NOT EXISTS `rp_user_info` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `create_time` datetime NOT NULL,
  `status` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户昵称',
  `account_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '账户编号',
  `mobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '手机号',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '登录密码',
  `pay_pwd` varchar(50) COLLATE utf8mb4_bin DEFAULT '123456' COMMENT '支付密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ak_key_2` (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户的基本信息';

-- 正在导出表  payment.rp_user_info 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_user_info` DISABLE KEYS */;
INSERT IGNORE INTO `rp_user_info` (`id`, `create_time`, `status`, `user_no`, `user_name`, `account_no`, `mobile`, `password`, `pay_pwd`) VALUES
	('fac267f1ec8b4edf84f77cac0bb1dcb5', '2019-06-28 21:59:22', 'ACTIVE', '88882019062810001114', 'cougar', '99992019062810000001', '13621231391', '5af675d20b5a0e16f783ed5a2916202e', 'dc0fd9fc0cafd25c176609768e4653ab');
/*!40000 ALTER TABLE `rp_user_info` ENABLE KEYS */;


-- 导出  表 payment.rp_user_pay_config 结构
CREATE TABLE IF NOT EXISTS `rp_user_pay_config` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `audit_status` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_auto_sett` varchar(36) COLLATE utf8mb4_bin NOT NULL DEFAULT 'no',
  `product_code` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '支付产品编号',
  `product_name` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '支付产品名称',
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户名',
  `risk_day` int(11) DEFAULT NULL COMMENT '安全天',
  `pay_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付秘钥',
  `fund_into_type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pay_secret` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '安全秘钥',
  `security_rating` varchar(20) COLLATE utf8mb4_bin DEFAULT 'MD5' COMMENT '安全等级',
  `merchant_server_ip` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '商户服务器IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='支付设置表';

-- 正在导出表  payment.rp_user_pay_config 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_user_pay_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_user_pay_config` ENABLE KEYS */;


-- 导出  表 payment.rp_user_pay_info 结构
CREATE TABLE IF NOT EXISTS `rp_user_pay_info` (
  `id_` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `merchant_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '对应关系',
  `app_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '微信appid',
  `app_sectet` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '微信app_sectet',
  `app_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '微信app_type',
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户名',
  `partner_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付宝key',
  `pay_way_code` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '支付方式名称',
  `offline_app_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `rsa_private_key` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `rsa_public_key` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户开通的第三方支付信息';

-- 正在导出表  payment.rp_user_pay_info 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rp_user_pay_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_user_pay_info` ENABLE KEYS */;


-- 导出  表 payment.seq_table 结构
CREATE TABLE IF NOT EXISTS `seq_table` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `CURRENT_VALUE` bigint(20) NOT NULL DEFAULT '1000000002',
  `INCREMENT` smallint(6) NOT NULL DEFAULT '1',
  `REMARK` varchar(100) NOT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户ID表';

-- 正在导出表  payment.seq_table 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `seq_table` DISABLE KEYS */;
INSERT IGNORE INTO `seq_table` (`SEQ_NAME`, `CURRENT_VALUE`, `INCREMENT`, `REMARK`) VALUES
	('ACCOUNT_NO_SEQ', 10000001, 1, '账户--账户编号'),
	('ACTIVITY_NO_SEQ', 10000006, 1, '活动--活动编号'),
	('BANK_ORDER_NO_SEQ', 10000000, 1, '交易—-银行订单号'),
	('RECONCILIATION_BATCH_NO_SEQ', 10000000, 1, '对账—-批次号'),
	('TRX_NO_SEQ', 10000000, 1, '交易—-支付流水号'),
	('USER_NO_SEQ', 10001114, 1, '用户--用户编号');
/*!40000 ALTER TABLE `seq_table` ENABLE KEYS */;


-- 导出  函数 payment.FUN_DATE_ADD 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `FUN_DATE_ADD`(STR_DATE VARCHAR(10), STR_INTERVAL INTEGER) RETURNS date
BEGIN
     RETURN date_add(STR_DATE, INTERVAL STR_INTERVAL DAY);
END//
DELIMITER ;


-- 导出  函数 payment.FUN_NOW 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `FUN_NOW`() RETURNS datetime
BEGIN 
RETURN now();
END//
DELIMITER ;


-- 导出  函数 payment.FUN_SEQ 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `FUN_SEQ`(SEQ VARCHAR(50)) RETURNS bigint(20)
BEGIN
     UPDATE SEQ_TABLE
     SET CURRENT_VALUE = CURRENT_VALUE + INCREMENT
     WHERE  SEQ_NAME=SEQ;
     RETURN FUN_SEQ_CURRENT_VALUE(SEQ);
END//
DELIMITER ;


-- 导出  函数 payment.FUN_SEQ_CURRENT_VALUE 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `FUN_SEQ_CURRENT_VALUE`(SEQ VARCHAR(50)) RETURNS bigint(20)
BEGIN
    DECLARE VALUE INTEGER;
    SET VALUE=0;
    SELECT CURRENT_VALUE INTO VALUE
    FROM SEQ_TABLE 
    WHERE SEQ_NAME=SEQ;
    RETURN VALUE;
END//
DELIMITER ;


-- 导出  函数 payment.FUN_SEQ_SET_VALUE 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `FUN_SEQ_SET_VALUE`(SEQ VARCHAR(50), VALUE INTEGER) RETURNS bigint(20)
BEGIN
     UPDATE SEQ_TABLE 
     SET CURRENT_VALUE=VALUE
     WHERE SEQ_NAME=SEQ;
     RETURN FUN_SEQ_CURRENT_VALUE(SEQ);
END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

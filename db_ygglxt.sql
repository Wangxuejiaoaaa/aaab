/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : db_ygglxt

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-12-30 04:37:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bmb
-- ----------------------------
DROP TABLE IF EXISTS `bmb`;
CREATE TABLE `bmb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bmmc` varchar(255) DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of bmb
-- ----------------------------
INSERT INTO `bmb` VALUES ('1', '财务部');
INSERT INTO `bmb` VALUES ('2', '业务部');
INSERT INTO `bmb` VALUES ('3', '销售部');
INSERT INTO `bmb` VALUES ('4', '测试部');

-- ----------------------------
-- Table structure for jsb
-- ----------------------------
DROP TABLE IF EXISTS `jsb`;
CREATE TABLE `jsb` (
  `id` int(11) NOT NULL COMMENT '主键',
  `js` varchar(255) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of jsb
-- ----------------------------
INSERT INTO `jsb` VALUES ('1', '管理员');
INSERT INTO `jsb` VALUES ('2', '部门领导');
INSERT INTO `jsb` VALUES ('3', '员工');

-- ----------------------------
-- Table structure for qdb
-- ----------------------------
DROP TABLE IF EXISTS `qdb`;
CREATE TABLE `qdb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qdrq` varchar(255) DEFAULT NULL COMMENT '签到日期',
  `qdsj` varchar(255) DEFAULT NULL COMMENT '签到时间',
  `qdr` varchar(255) DEFAULT NULL COMMENT '签到人',
  `xbsj` varchar(255) DEFAULT NULL COMMENT '下班时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='签到表';

-- ----------------------------
-- Records of qdb
-- ----------------------------
INSERT INTO `qdb` VALUES ('1', '2019-11-15', '2019-11-15 22:54:25', '1', '2019-11-15 17:37:50');
INSERT INTO `qdb` VALUES ('2', '2019-11-17', '2019-11-17 17:25:41', '1', '2019-11-17 17:37:50');
INSERT INTO `qdb` VALUES ('3', '2019-11-17', '2019-11-17 17:39:34', '3', '2019-11-17 17:40:56');
INSERT INTO `qdb` VALUES ('4', '2019-11-17', '2019-11-17 18:06:00', '2', '2019-11-17 18:06:09');
INSERT INTO `qdb` VALUES ('5', '2019-11-17', '2019-11-17 23:59:58', '5', null);
INSERT INTO `qdb` VALUES ('6', '2019-11-18', '2019-11-18 00:00:11', '5', '2019-11-18 00:00:13');
INSERT INTO `qdb` VALUES ('7', '2019-12-30', '2019-12-30 02:44:16', '6', '2019-12-30 02:44:18');
INSERT INTO `qdb` VALUES ('8', '2019-12-30', '2019-12-30 03:00:36', '3', '2019-12-30 03:00:43');

-- ----------------------------
-- Table structure for qjb
-- ----------------------------
DROP TABLE IF EXISTS `qjb`;
CREATE TABLE `qjb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qjr` varchar(255) DEFAULT NULL COMMENT '请假人',
  `qjrq` varchar(255) DEFAULT NULL COMMENT '请假日期',
  `qjsy` text COMMENT '请假理由',
  `czsj` varchar(255) DEFAULT NULL COMMENT '请假操作时间',
  `shbz` varchar(255) DEFAULT 'O' COMMENT '审核标志T通过审核，F未通过审核，O审核中',
  `shsj` varchar(255) DEFAULT NULL COMMENT '审核时间',
  `shr` varchar(255) DEFAULT NULL COMMENT '审核人工号',
  `shyj` text COMMENT '审核意见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='请假表';

-- ----------------------------
-- Records of qjb
-- ----------------------------
INSERT INTO `qjb` VALUES ('1', '1', '2019-11-21', '11111', null, 'O', null, null, null);
INSERT INTO `qjb` VALUES ('2', '3', '2019-11-21', '123456', null, 'T', '2019-11-17 23:22:01', '1', '2312312');
INSERT INTO `qjb` VALUES ('3', '3', '2019-11-21', '11111', '2019-11-17 22:41:41', 'O', null, null, null);
INSERT INTO `qjb` VALUES ('5', '6', '2019-11-18', '请假汉字', '2019-11-18 00:22:22', 'O', null, null, null);

-- ----------------------------
-- Table structure for yhb
-- ----------------------------
DROP TABLE IF EXISTS `yhb`;
CREATE TABLE `yhb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yhm` varchar(255) DEFAULT NULL COMMENT '用户名',
  `mm` varchar(255) DEFAULT NULL COMMENT '密码',
  `xm` varchar(255) DEFAULT NULL COMMENT '姓名',
  `xb` varchar(255) DEFAULT NULL COMMENT '性别',
  `csny` varchar(255) DEFAULT NULL COMMENT '出生年月',
  `dh` varchar(255) DEFAULT NULL COMMENT '电话',
  `bmid` int(11) DEFAULT NULL COMMENT '部门id',
  `js` varchar(255) DEFAULT NULL COMMENT '角色1管理员,2部门领导,3普通员工',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of yhb
-- ----------------------------
INSERT INTO `yhb` VALUES ('1', 'admin', '1', '管理员', '男', '1980.12', '13566666666', null, '1');
INSERT INTO `yhb` VALUES ('2', 'zhangsan', '1', '张三', '男', '1985.01', '13566666666', '1', '2');
INSERT INTO `yhb` VALUES ('3', '20190101', '1', '王五', '男', '1990.01', 'null', '2', '3');
INSERT INTO `yhb` VALUES ('4', '20190102', '1', '赵六', '男', '1990.01', null, '4', '3');
INSERT INTO `yhb` VALUES ('5', '20190103', '1', '李四', '女', '1990.01', null, '1', '3');
INSERT INTO `yhb` VALUES ('6', '20190104', '1', '陈七', '男', '1990.01', null, '1', '3');

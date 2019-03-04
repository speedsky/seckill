/*
Navicat MySQL Data Transfer

Source Server         : local-Mysql
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : seckill

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-03-01 21:38:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for success_killed
-- ----------------------------
DROP TABLE IF EXISTS `success_killed`;
CREATE TABLE `success_killed` (
  `seckill_id` bigint(20) NOT NULL COMMENT '秒杀商品ID',
  `user_phone` bigint(20) NOT NULL COMMENT '用户手机号',
  `state` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '状态标识:-1:无效 0:成功 1:已付款 2:已发货',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`seckill_id`,`user_phone`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表';

-- ----------------------------
-- Records of success_killed
-- ----------------------------
INSERT INTO `success_killed` VALUES ('1000', '10086100861', '0', '2017-04-23 10:27:36');
INSERT INTO `success_killed` VALUES ('1000', '10086100862', '0', '2017-04-23 10:31:00');
INSERT INTO `success_killed` VALUES ('1000', '10086861000', '-1', '2017-05-23 17:21:07');
INSERT INTO `success_killed` VALUES ('1001', '10086100861', '0', '2017-05-06 23:30:49');
INSERT INTO `success_killed` VALUES ('1001', '10086100862', '0', '2017-04-23 10:48:32');
INSERT INTO `success_killed` VALUES ('1001', '10086100863', '0', '2017-05-07 00:15:06');
INSERT INTO `success_killed` VALUES ('1001', '10086861001', '0', '2017-05-23 17:21:20');

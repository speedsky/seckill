/*
Navicat MySQL Data Transfer

Source Server         : local-Mysql
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : seckill

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-03-01 21:38:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for seckill
-- ----------------------------
DROP TABLE IF EXISTS `seckill`;
CREATE TABLE `seckill` (
  `seckill_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品库存ID',
  `name` varchar(120) NOT NULL COMMENT '商品名称',
  `number` int(11) NOT NULL COMMENT '库存数量',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '秒杀开始时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '秒杀结束时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`seckill_id`),
  KEY `idx_start_time` (`start_time`),
  KEY `idx_end_time` (`end_time`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表';

-- ----------------------------
-- Records of seckill
-- ----------------------------
INSERT INTO `seckill` VALUES ('1000', '1000元秒杀iphone6', '98', '2017-05-07 19:55:10', '2017-05-08 00:00:00', '2017-03-21 13:48:11');
INSERT INTO `seckill` VALUES ('1001', '800元秒杀ipad', '197', '2017-05-07 00:15:06', '2017-05-08 00:00:00', '2017-03-21 13:48:11');
INSERT INTO `seckill` VALUES ('1002', '6600元秒杀mac book pro', '300', '2017-04-23 10:18:24', '2017-04-25 00:00:00', '2017-03-21 13:48:11');
INSERT INTO `seckill` VALUES ('1003', '7000元秒杀iMac', '400', '2017-04-23 10:18:26', '2017-04-25 00:00:00', '2017-03-21 13:48:11');

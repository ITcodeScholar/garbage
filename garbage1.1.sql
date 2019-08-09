/*
Navicat MySQL Data Transfer

Source Server         : garbage
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : garbage

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2019-08-08 17:11:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `category_id` int(32) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `category_img` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `category_body` text COLLATE utf8_bin,
  `category_explain` text COLLATE utf8_bin,
  `category_require` text COLLATE utf8_bin,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '可回收物', null, 0xE985B1E6B2B9E793B6E38081E78EBBE79283E793B6E38081E5B9B3E69DBFE78EBBE79283E38081E69893E68B89E7BD90E38081E9A5AEE69699E793B6E38081E6B497E58F91E6B0B4E793B6E38081E5A191E69699E78EA9E585B7E38081E4B9A6E69CACE38081E68AA5E7BAB8E38081E5B9BFE5918AE58D95E38081E7BAB8E69DBFE7AEB1E38081E8A1A3E69C8DE38081E5BA8AE4B88AE794A8E59381E7AD89, 0xE5BA9FE7BAB8E5BCA0E38081E5BA9FE5A191E69699E38081E5BA9FE78EBBE79283E588B6E59381E38081E5BA9FE98791E5B19EE38081E5BA9FE7BB87E789A9E7AD89E98082E5AE9CE59B9EE694B6E38081E58FAFE5BEAAE78EAFE588A9E794A8E79A84E7949FE6B4BBE5BA9FE5BC83E789A9, 0xE8BDBBE68A95E8BDBBE694BE0D0AE6B885E6B481E5B9B2E787A5EFBC8CE981BFE5858DE6B1A1E69F93EFBC8CE8B4B9E7BAB8E5B0BDE9878FE5B9B3E695B40D0AE7AB8BE4BD93E58C85E8A385E789A9E8AFB7E6B885E7A9BAE58685E5AEB9E789A9EFBC8CE6B885E6B481E5908EE58E8BE68981E68A95E694BE0D0AE69C89E5B096E99490E8BEB9E8A792E79A84E38081E5BA94E58C85E8A3B9E5908EE68A95E694BE);
INSERT INTO `t_category` VALUES ('2', '有害垃圾', null, 0xE5BA9FE794B5E6B1A0E38081E6B2B9E6BC86E6A1B6E38081E88DA7E58589E781AFE7AEA1E38081E5BA9FE88DAFE59381E58F8AE585B6E58C85E8A385E789A9E7AD89, 0xE5BA9FE794B5E6B1A0E38081E5BA9FE781AFE7AEA1E38081E5BA9FE88DAFE59381E38081E5BA9FE6B2B9E6BC86E58F8AE585B6E5AEB9E599A8E7AD89E5AFB9E4BABAE4BD93E581A5E5BAB7E68896E88085E887AAE784B6E78EAFE5A283E980A0E68890E79BB4E68EA5E68896E88085E6BD9CE59CA8E58DB1E5AEB3E79A84E7949FE6B4BBE5BA9FE5BC83E789A9, 0xE68A95E694BEE697B6E8AFB7E6B3A8E6848FE8BDBBE694BE0D0AE69893E7A0B4E68D9FE79A84E8AFB7E8BF9EE5B8A6E58C85E8A385E68896E58C85E8A3B9E5908EE8BDBBE694BE0D0AE5A682E69893E68CA5E58F91EFBC8CE8AFB7E5AF86E5B081E5908EE68A95E694BE);
INSERT INTO `t_category` VALUES ('3', '湿垃圾(厨余垃圾)', null, 0xE589A9E88F9CE589A9E9A5ADE38081E7939CE79AAEE69E9CE6A0B8E38081E88AB1E88AACE7BBBFE6A48DE38081E8BF87E69C9FE9A39FE59381E7AD89, 0xE697A5E5B8B8E7949FE6B4BBE59E83E59CBEE4BAA7E7949FE79A84E5AEB9E69893E88590E78382E79A84E7949FE789A9E8B4A8E5BA9FE5BC83E789A9, 0xE7BAAFE6B581E8B4A8E79A84E9A39FE789A9E59E83E59CBEE38081E5A682E7899BE5A5B6E7AD89EFBC8CE5BA94E79BB4E68EA5E58092E8BF9BE4B88BE6B0B4E58FA30D0AE69C89E58C85E8A385E789A9E79A84E6B9BFE59E83E59CBEE5BA94E5B086E58C85E8A385E789A9E58EBBE999A4E5908EE58886E7B1BBE68A95E694BEE38081E58C85E8A385E789A9E8AFB7E68A95E694BEE588B0E5AFB9E5BA94E79A84E58FAFE59B9EE694B6E789A9E68896E5B9B2E59E83E59CBEE5AEB9E599A8);
INSERT INTO `t_category` VALUES ('4', '干垃圾(其它垃圾)', null, 0xE9A490E79B92E38081E9A490E5B7BEE7BAB8E38081E6B9BFE7BAB8E5B7BEE38081E58DABE7949FE997B4E794A8E7BAB8E38081E5A191E69699E8A28BE38081E9A39FE59381E58C85E8A385E8A28BE38081E6B1A1E69F93E4B8A5E9878DE79A84E7BAB8E38081E7839FE89282E38081E7BAB8E5B0BFE8A3A4E38081E4B880E6ACA1E680A7E69DAFE5AD90E38081E5A4A7E9AAA8E5A4B4E38081E8B49DE5A3B3E38081E88AB1E79B86E38081E999B6E793B7E7AD89, 0xE58DB3E585B6E4BB96E59E83E59CBEEFBC8CE698AFE68C87E999A4E58FAFE59B9EE694B6E789A9E38081E69C89E5AEB3E59E83E59CBEE38081E6B9BFE59E83E59CBEE4BBA5E5A496E79A84E585B6E5AE83E7949FE6B4BBE5BA9FE5BC83E789A9, 0xE5B0BDE9878FE6B2A5E5B9B2E6B0B4E588860D0AE99ABEE4BBA5E8BEA8E8AF86E7B1BBE588ABE79A84E7949FE6B4BBE59E83E59CBEE68A95E585A5E5B9B2E59E83E59CBEE5AEB9E599A8E58685);

-- ----------------------------
-- Table structure for t_garbage
-- ----------------------------
DROP TABLE IF EXISTS `t_garbage`;
CREATE TABLE `t_garbage` (
  `gar_id` int(32) NOT NULL AUTO_INCREMENT,
  `gar_name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `resolve_time` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `penalty` double(32,0) DEFAULT NULL,
  `visit_num` int(32) DEFAULT NULL,
  `category_id` int(32) DEFAULT NULL,
  PRIMARY KEY (`gar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_garbage
-- ----------------------------
INSERT INTO `t_garbage` VALUES ('1', '废电池', '100万年', '50', '0', '2');
INSERT INTO `t_garbage` VALUES ('2', '塑料瓶', '500年', '1', '0', '1');
INSERT INTO `t_garbage` VALUES ('3', '剩菜剩饭', '2周', '1', '0', '3');
INSERT INTO `t_garbage` VALUES ('4', '一次性纸杯', '6周', '1', '0', '4');
INSERT INTO `t_garbage` VALUES ('5', '香蕉皮', '6周', '1', '0', '3');
INSERT INTO `t_garbage` VALUES ('6', '温度计 ', '100万年', '50', '0', '2');
INSERT INTO `t_garbage` VALUES ('7', '油漆桶', '100万年', '50', '0', '2');
INSERT INTO `t_garbage` VALUES ('8', '荧光灯管', '100万年', '50', '0', '2');
INSERT INTO `t_garbage` VALUES ('9', '废药品', '40年', '100', '0', '2');
INSERT INTO `t_garbage` VALUES ('10', '杀虫剂', '500年', '10', '0', '2');
INSERT INTO `t_garbage` VALUES ('11', '医用纱布', '30年', '1', '0', '2');
INSERT INTO `t_garbage` VALUES ('12', '医用棉签', '6个月', '1', '0', '2');
INSERT INTO `t_garbage` VALUES ('13', '打火机', '500年', '1', '0', '4');
INSERT INTO `t_garbage` VALUES ('14', '创口贴', '6个月', '1', '0', '4');
INSERT INTO `t_garbage` VALUES ('15', '酒精', '6个月', '1', '0', '4');
INSERT INTO `t_garbage` VALUES ('16', '油漆', '50年', '1', '0', '2');
INSERT INTO `t_garbage` VALUES ('17', '过期药片', '六周', '1', '0', '2');
INSERT INTO `t_garbage` VALUES ('18', '水彩笔', '1年', '1', '0', '4');
INSERT INTO `t_garbage` VALUES ('19', '农药瓶', '500年', '10', '0', '2');
INSERT INTO `t_garbage` VALUES ('20', '口服液瓶', '500年', '10', '0', '2');
INSERT INTO `t_garbage` VALUES ('21', '香水瓶', '100万年', '50', '0', '1');
INSERT INTO `t_garbage` VALUES ('22', '荧光笔', '1年', '1', '0', '4');
INSERT INTO `t_garbage` VALUES ('23', '过期化妆品', '20年', '1', '0', '4');
INSERT INTO `t_garbage` VALUES ('24', '牙刷', '50年', '1', '0', '1');
INSERT INTO `t_garbage` VALUES ('25', '易拉罐 ', '200年', '1', '0', '1');

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` int(32) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `goods_price` double(32,2) DEFAULT NULL,
  `goods_img` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '抽纸', '10.20', null);
INSERT INTO `t_goods` VALUES ('2', '伞', '9.90', null);

-- ----------------------------
-- Table structure for t_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade` (
  `grade_id` int(32) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `use_find_num` int(32) DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES ('1', '1', '500');
INSERT INTO `t_grade` VALUES ('2', '2', '1000');
INSERT INTO `t_grade` VALUES ('3', '3', '5000');
INSERT INTO `t_grade` VALUES ('4', '4', '10000');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_pwd` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_tel` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `score` int(32) DEFAULT NULL,
  `grade_id` int(32) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_tel` (`user_tel`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'zhang', '123456', '15879931291', '500', '1');
INSERT INTO `t_user` VALUES ('5', 'luo', '123456', '18879000191', '500', '1');
INSERT INTO `t_user` VALUES ('6', 'wen', '111111', '18296483558', '1000', '2');
INSERT INTO `t_user` VALUES ('7', 'bin', '666666', '15877777777', '500', '1');
INSERT INTO `t_user` VALUES ('11', 'binbin1', '158798', '15879989856', '500', '1');
INSERT INTO `t_user` VALUES ('12', 'y111111', '1111111', '17888887878', '500', '1');
INSERT INTO `t_user` VALUES ('16', 'zhangwenbin', '123456', '15877878787', '500', '1');
INSERT INTO `t_user` VALUES ('17', 'y1111112', '111111', '17888887871', '500', '1');
INSERT INTO `t_user` VALUES ('18', 'zhangzhang', 'w111111', '15879998989', '500', '1');

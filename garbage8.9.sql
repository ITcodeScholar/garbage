/*
Navicat MySQL Data Transfer

Source Server         : garbage
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : garbage

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2019-08-09 17:49:23
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
  `category_body` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `category_explain` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `category_require` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '可回收物', 'harmful', '酱油瓶、玻璃瓶、平板玻璃、易拉罐、饮料瓶、洗发水瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品等', '废纸张、废塑料、废玻璃制品、废金属、废织物等适宜回收、可循环利用的生活废弃物', '轻投轻放\r\n清洁干燥，避免污染，费纸尽量平整\r\n立体包装物请清空内容物，清洁后压扁投放\r\n有尖锐边角的、应包裹后投放');
INSERT INTO `t_category` VALUES ('2', '有害垃圾', 'recoverable', '废电池、油漆桶、荧光灯管、废药品及其包装物等', '废电池、废灯管、废药品、废油漆及其容器等对人体健康或者自然环境造成直接或者潜在危害的生活废弃物', '投放时请注意轻放\r\n易破损的请连带包装或包裹后轻放\r\n如易挥发，请密封后投放');
INSERT INTO `t_category` VALUES ('3', '湿垃圾(厨余垃圾)', 'wet', '剩菜剩饭、瓜皮果核、花芬绿植、过期食品等', '日常生活垃圾产生的容易腐烂的生物质废弃物', '纯流质的食物垃圾、如牛奶等，应直接倒进下水口\r\n有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器');
INSERT INTO `t_category` VALUES ('4', '干垃圾(其它垃圾)', 'dry', '餐盒、餐巾纸、湿纸巾、卫生间用纸、塑料袋、食品包装袋、污染严重的纸、烟蒂、纸尿裤、一次性杯子、大骨头、贝壳、花盆、陶瓷等', '即其他垃圾，是指除可回收物、有害垃圾、湿垃圾以外的其它生活废弃物', '尽量沥干水分\r\n难以辨识类别的生活垃圾投入干垃圾容器内');

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

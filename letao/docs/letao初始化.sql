/*
Navicat MySQL Data Transfer

Source Server         : maybe
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : letao

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-08-17 09:57:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `addressDetail` varchar(200) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  `recipients` varchar(100) DEFAULT NULL,
  `postCode` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '山西省太原市小店区', '解放东路传智播客科技集团14层1402室', '1', '周双大', '111112', null);
INSERT INTO `address` VALUES ('15', '10', '黑龙江省哈尔滨市松北区', '大撒大撒大撒大撒大大', '0', '章章2', '516100', null);
INSERT INTO `address` VALUES ('16', '10', '北京市东城区', '2222', '0', '收到', '222222', null);
INSERT INTO `address` VALUES ('17', '10', '天津市天津市河东区', 'sadsadsadasa', '1', 'zhangzhang', '516123', null);

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `brandLogo` varchar(200) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  `hot` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '耐克', '1', '/mobile/images/brand1.png', '1', '1');
INSERT INTO `brand` VALUES ('2', '阿迪', '1', '/mobile/images/brand2.png', '1', '1');
INSERT INTO `brand` VALUES ('3', '新百伦', '1', '/mobile/images/brand3.png', '1', '1');
INSERT INTO `brand` VALUES ('4', '哥伦比亚', '1', '/mobile/images/brand4.png', '1', '0');
INSERT INTO `brand` VALUES ('5', '匡威', '1', '/mobile/images/brand5.png', '1', '1');
INSERT INTO `brand` VALUES ('6', '阿萨德1', '2', '/mobile/images/brand5.png', '1', '1');
INSERT INTO `brand` VALUES ('7', '阿萨德2', '2', '/mobile/images/brand5.png', '1', '1');
INSERT INTO `brand` VALUES ('8', '张记', '6', '/upload/brand/7429f170-95b0-11ea-b47f-6bd27c5d66bc.jpg', '1', '1');
INSERT INTO `brand` VALUES ('9', '特步', '7', '', '1', '1');
INSERT INTO `brand` VALUES ('10', '特步', '7', '', '1', '1');
INSERT INTO `brand` VALUES ('11', '乔丹', '8', '/upload/brand/e0892a80-d24a-11ea-838b-afa37dd4626e.jpg', '1', '1');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '1', '1', '1', '50', '1');
INSERT INTO `cart` VALUES ('2', '1', '2', '2', '45', '1');
INSERT INTO `cart` VALUES ('3', '1', '3', '4', '40', '1');
INSERT INTO `cart` VALUES ('5', '7', '6', '4', '42', '0');
INSERT INTO `cart` VALUES ('6', '7', '1', '5', '42', '0');
INSERT INTO `cart` VALUES ('7', '7', '2', '8', '42', '0');
INSERT INTO `cart` VALUES ('8', '7', '5', '7', '42', '1');
INSERT INTO `cart` VALUES ('9', '9', '15', '3', '42', '1');
INSERT INTO `cart` VALUES ('10', '10', '9', '4', '42', '0');
INSERT INTO `cart` VALUES ('11', '10', '9', '4', '42', '1');
INSERT INTO `cart` VALUES ('12', '10', '3', '5', '31', '0');
INSERT INTO `cart` VALUES ('13', '10', '3', '5', '31', '1');
INSERT INTO `cart` VALUES ('14', '7', '1', '1', '40', '1');
INSERT INTO `cart` VALUES ('15', '7', '3', '1', '35', '0');
INSERT INTO `cart` VALUES ('16', '7', '3', '1', '32', '0');
INSERT INTO `cart` VALUES ('17', '7', '3', '1', '35', '0');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '运动馆', '1');
INSERT INTO `category` VALUES ('2', '女士馆', '1');
INSERT INTO `category` VALUES ('3', '男士馆', '1');
INSERT INTO `category` VALUES ('4', '帆布馆', '1');
INSERT INTO `category` VALUES ('5', '户外管', '1');
INSERT INTO `category` VALUES ('6', '丁丁馆', '1');
INSERT INTO `category` VALUES ('7', '阿牛馆', '1');
INSERT INTO `category` VALUES ('8', '马铃薯馆', '1');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile` char(11) DEFAULT NULL,
  `authority` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'root', '4QrcOUm6Wau+VuBX8g+IPg==', '13902060052', '1');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proName` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `oldPrice` float DEFAULT NULL COMMENT '商品价格',
  `price` float DEFAULT NULL COMMENT '商品折扣价',
  `proDesc` varchar(500) DEFAULT NULL COMMENT '商品描述',
  `size` varchar(20) DEFAULT NULL COMMENT '商品尺寸',
  `statu` int(4) DEFAULT NULL COMMENT '是否下架',
  `updateTime` datetime DEFAULT NULL COMMENT '上下架时间',
  `num` int(20) DEFAULT NULL COMMENT '商品库存',
  `brandId` int(11) DEFAULT NULL COMMENT '归属品牌',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '匡威三星标1970s converse复刻 142334c 144757c三星标黑色高帮', '888.1', '499.1', '描述', '40-50', '1', '2017-01-05 00:28:29', '20', '1');
INSERT INTO `product` VALUES ('2', '李宁闪击篮球鞋驭帅10镭射队尚4男韦德之道空袭中高帮队尚3.5球鞋', '888.1', '499.1', '描述', '35-45', '1', '2017-01-05 00:28:29', '20', '1');
INSERT INTO `product` VALUES ('3', 'Sport飓风 Nike Kwazi 休闲运动鞋男 844839-002-001-100-400', '888.1', '499.1', '描述', '30-50', '1', '2017-01-05 00:28:29', '20', '1');
INSERT INTO `product` VALUES ('4', '指南针运动 NIKE HYPERSHIFT篮球鞋 844392-010-607-164-017现货', '888.1', '499.1', '描述', '40-55', '1', '2017-01-05 00:28:29', '20', '1');
INSERT INTO `product` VALUES ('5', '【莹恋】MIZUNO美津浓V1GA159002乒乓球鞋男鞋女鞋室内综合训练鞋', '8868.1', '4969.1', '描述123123', '40-50', '1', '2017-01-05 00:48:05', '22', '2');
INSERT INTO `product` VALUES ('6', '【莹恋】MIZUNO美津浓V1GA159002乒乓球鞋男鞋女鞋室内综合训练鞋', '342', '112', '描述123123', '35-56', '2', '2020-07-07 19:30:47', '44', '2');
INSERT INTO `product` VALUES ('7', 'Nike 耐克官方KYRIE FLYTRAP III EP 凯里欧文男子篮球鞋 CD0191', '800', '699', '篮球鞋', '40-48', '1', '2020-05-08 21:03:50', '200', '1');
INSERT INTO `product` VALUES ('8', 'Nike耐克官方NIKE ZOOM WINFLO 6 男子跑步鞋夏季透气长跑 AQ7497', '749', '349', '跑步鞋', '39-50', '1', '2020-05-08 21:06:22', '400', '1');
INSERT INTO `product` VALUES ('9', 'Nike 耐克官方NIKE AIR VAPORMAX 360 女子运动鞋CK9670', '1599', '1599', '运动鞋', '35-42', '1', '2020-05-08 21:08:47', '99', '2');
INSERT INTO `product` VALUES ('10', 'Nike耐克官方 ZOOM 2K 女子运动鞋 休闲鞋 复古AO0354', '699', '489', '休闲鞋', '25-42', '1', '2020-05-08 21:10:50', '143', '1');
INSERT INTO `product` VALUES ('11', '阿迪达斯官网adidas UltraBOOST leather男女鞋跑步运动鞋EF0901 如图 42', '1399', '1399', '运动鞋', '36-47', '1', '2020-05-08 21:13:24', '423', '2');
INSERT INTO `product` VALUES ('12', 'CG KONTUUR I CRAIG GREEN 设计师合作款经典运动鞋', '2000', '1999', '运动鞋', '39-46', '1', '2020-05-08 21:15:14', '234', '2');
INSERT INTO `product` VALUES ('13', 'ALPHABOOST 跑步运动鞋', '1099', '549', '跑步鞋', '39-47', '1', '2020-05-08 21:17:12', '342', '2');
INSERT INTO `product` VALUES ('14', '阿迪达斯 ULTRABOOST_20 跑步运动鞋', '1499', '1199', '跑步鞋', '39-48', '1', '2020-05-08 21:19:24', '123', '2');
INSERT INTO `product` VALUES ('15', '阿迪达斯 EDGE XT SUMMER.RDY 跑步运动鞋', '929', '557', '跑步鞋', '36-47', '1', '2020-05-08 21:20:41', '2341', '2');
INSERT INTO `product` VALUES ('16', '测试数据，测试传送图片的', '123123', '123123', '测试', '20-39', '1', '2020-05-08 21:28:48', '123', '7');
INSERT INTO `product` VALUES ('17', '测试图片的数据1', '12412', '123123', '测试', '20-39', '1', '2020-05-08 21:31:24', '123', '7');
INSERT INTO `product` VALUES ('18', '测试图片的数据2', '312412', '123123', '测试', '20-38', '1', '2020-07-30 17:56:37', '12312312', '7');
INSERT INTO `product` VALUES ('19', '乔丹', '1234', '999', '123', '35-45', '1', '2020-07-30 17:57:28', '123', '11');

-- ----------------------------
-- Table structure for `product_picture`
-- ----------------------------
DROP TABLE IF EXISTS `product_picture`;
CREATE TABLE `product_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picName` varchar(40) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `picAddr` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_picture
-- ----------------------------
INSERT INTO `product_picture` VALUES ('1', 'product.jpg', '1', '/mobile/images/product.jpg');
INSERT INTO `product_picture` VALUES ('2', 'detail.jpg', '2', '/mobile/images/detail.jpg');
INSERT INTO `product_picture` VALUES ('3', 'detail.jpg', '3', '/mobile/images/detail.jpg');
INSERT INTO `product_picture` VALUES ('4', '/mobile/images/detail.jpg', '4', '/mobile/images/detail.jpg');
INSERT INTO `product_picture` VALUES ('5', '/mobile/images/detail.jpg', '5', '/mobile/images/detail.jpg');
INSERT INTO `product_picture` VALUES ('7', '/mobile/images/detail.jpg', '1', '/mobile/images/detail.jpg');
INSERT INTO `product_picture` VALUES ('8', '5b670c50-912c-11ea-be3b-f55d5181716a.jpg', '7', '/upload/product/5b670c50-912c-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('9', '5b6a1990-912c-11ea-be3b-f55d5181716a.jpg', '7', '/upload/product/5b6a1990-912c-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('10', '5b670c51-912c-11ea-be3b-f55d5181716a.jpg', '7', '/upload/product/5b670c51-912c-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('11', 'b66c4981-912c-11ea-be3b-f55d5181716a.jpg', '8', '/upload/product/b66c4981-912c-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('12', 'b6757140-912c-11ea-be3b-f55d5181716a.jpg', '8', '/upload/product/b6757140-912c-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('13', 'b66c4980-912c-11ea-be3b-f55d5181716a.jpg', '8', '/upload/product/b66c4980-912c-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('14', '0d2c8a00-912d-11ea-be3b-f55d5181716a.jpg', '9', '/upload/product/0d2c8a00-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('15', '0d2c3be0-912d-11ea-be3b-f55d5181716a.jpg', '9', '/upload/product/0d2c3be0-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('16', '0d2dc280-912d-11ea-be3b-f55d5181716a.jpg', '9', '/upload/product/0d2dc280-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('17', '56140590-912d-11ea-be3b-f55d5181716a.jpg', '10', '/upload/product/56140590-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('18', '56114670-912d-11ea-be3b-f55d5181716a.jpg', '10', '/upload/product/56114670-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('19', '560e6040-912d-11ea-be3b-f55d5181716a.jpg', '10', '/upload/product/560e6040-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('20', 'b14cd5e0-912d-11ea-be3b-f55d5181716a.jpg', '11', '/upload/product/b14cd5e0-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('21', 'b14c60b0-912d-11ea-be3b-f55d5181716a.jpg', '11', '/upload/product/b14c60b0-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('22', 'b14cfcf0-912d-11ea-be3b-f55d5181716a.jpg', '11', '/upload/product/b14cfcf0-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('23', 'f3cebeb0-912d-11ea-be3b-f55d5181716a.jpg', '12', '/upload/product/f3cebeb0-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('24', 'f3ca78f0-912d-11ea-be3b-f55d5181716a.jpg', '12', '/upload/product/f3ca78f0-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('25', 'f3cee5c0-912d-11ea-be3b-f55d5181716a.jpg', '12', '/upload/product/f3cee5c0-912d-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('26', '39e7b0f0-912e-11ea-be3b-f55d5181716a.jpg', '13', '/upload/product/39e7b0f0-912e-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('27', '39e65160-912e-11ea-be3b-f55d5181716a.jpg', '13', '/upload/product/39e65160-912e-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('28', '39e65161-912e-11ea-be3b-f55d5181716a.jpg', '13', '/upload/product/39e65161-912e-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('29', '8861dee0-912e-11ea-be3b-f55d5181716a.jpg', '14', '/upload/product/8861dee0-912e-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('30', '886190c0-912e-11ea-be3b-f55d5181716a.jpg', '14', '/upload/product/886190c0-912e-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('31', '88611b90-912e-11ea-be3b-f55d5181716a.jpg', '14', '/upload/product/88611b90-912e-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('32', 'b683de40-912e-11ea-be3b-f55d5181716a.jpg', '15', '/upload/product/b683de40-912e-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('33', 'b6839021-912e-11ea-be3b-f55d5181716a.jpg', '15', '/upload/product/b6839021-912e-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('34', 'b6839020-912e-11ea-be3b-f55d5181716a.jpg', '15', '/upload/product/b6839020-912e-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('35', 'd8b3bd90-912f-11ea-be3b-f55d5181716a.jpg', '16', '/upload/product/d8b3bd90-912f-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('36', 'd8b39681-912f-11ea-be3b-f55d5181716a.jpg', '16', '/upload/product/d8b39681-912f-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('37', 'd8b39680-912f-11ea-be3b-f55d5181716a.jpg', '16', '/upload/product/d8b39680-912f-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('38', '340b3970-9130-11ea-be3b-f55d5181716a.jpg', '17', '/upload/product/340b3970-9130-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('39', '340b3971-9130-11ea-be3b-f55d5181716a.jpg', '17', '/upload/product/340b3971-9130-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('40', '340b8790-9130-11ea-be3b-f55d5181716a.jpg', '17', '/upload/product/340b8790-9130-11ea-be3b-f55d5181716a.jpg');
INSERT INTO `product_picture` VALUES ('44', '13170f80-d24b-11ea-838b-afa37dd4626e.jpg', '19', '/upload/product/13170f80-d24b-11ea-838b-afa37dd4626e.jpg');
INSERT INTO `product_picture` VALUES ('45', '1316e870-d24b-11ea-838b-afa37dd4626e.jpg', '19', '/upload/product/1316e870-d24b-11ea-838b-afa37dd4626e.jpg');
INSERT INTO `product_picture` VALUES ('46', '1316c160-d24b-11ea-838b-afa37dd4626e.jpg', '19', '/upload/product/1316c160-d24b-11ea-838b-afa37dd4626e.jpg');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile` char(11) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5', 'xiaohong', '4QrcOUm6Wau+VuBX8g+IPg==', '17727213833', '0');
INSERT INTO `user` VALUES ('6', 'xiaoming', '4QrcOUm6Wau+VuBX8g+IPg==', '17727213834', '0');
INSERT INTO `user` VALUES ('7', 'dingding', '4QrcOUm6Wau+VuBX8g+IPg==', '17727213835', '1');
INSERT INTO `user` VALUES ('8', 'maybe', '4QrcOUm6Wau+VuBX8g+IPg==', '17727213836', '1');
INSERT INTO `user` VALUES ('9', 'maybe5', '4QrcOUm6Wau+VuBX8g+IPg==', '17727213888', '1');
INSERT INTO `user` VALUES ('10', '18218632430', '4QrcOUm6Wau+VuBX8g+IPg==', '18218632430', '0');

/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : huhu

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-05-15 17:29:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `image`
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `viewed` int(11) DEFAULT NULL,
  `liked` int(11) DEFAULT NULL,
  `description` text,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('13', '8L_G)F$1YOICC]{O{M[34.gif', 'JOcG5D7R8L_G)F$1YOICC]{O{M[34.gif', '2015-05-14 15:18:38', null, null, '奶瓶仔', null, null, '奶瓶', 'emotion');
INSERT INTO `image` VALUES ('14', 'a.gif', '2EuwsCdXa.gif', '2015-05-14 15:18:33', null, null, '踩奶瓶', null, null, '踩奶瓶', 'emotion');
INSERT INTO `image` VALUES ('15', '蹦跶.png', '1IcyG7RT蹦跶.png', '2015-05-14 15:18:29', null, null, '蹦跶', null, null, '蹦跶', 'emotion');
INSERT INTO `image` VALUES ('17', 'QQ20141021164438.gif', 'akdoiFOHQQ20141021164438.gif', '2015-05-15 00:00:00', null, null, '呵呵', null, null, '壁纸', 'wallpaper');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(36) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(64) NOT NULL,
  `last_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `last_ip` varchar(16) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('201', '1', '1@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('202', '2', '2@qq.com', 'c81e728d9d4c2f636f067f89cc14862c', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('203', '3', '3@qq.com', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('204', '4', '4@qq.com', 'a87ff679a2f3e71d9181a67b7542122c', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('205', '5', '5@qq.com', 'e4da3b7fbbce2345d7772b0674a318d5', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('206', '6', '6@qq.com', '1679091c5a880faf6fb5e6087eb1b2dc', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('207', '7', '7@qq.com', '8f14e45fceea167a5a36dedd4bea2543', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('208', '8', '8@qq.com', 'c9f0f895fb98ab9159f51fd0297e236d', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('209', '9', '9@qq.com', '45c48cce2e2d7fbdea1afc51c7c6ad26', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('210', '10', '10@qq.com', 'd3d9446802a44259755d38e6d163e820', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('211', '11', '11@qq.com', '6512bd43d9caa6e02c990b0a82652dca', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('212', '12', '12@qq.com', 'c20ad4d76fe97759aa27a0c99bff6710', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('213', '13', '13@qq.com', 'c51ce410c124a10e0db5e4b97fc2af39', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('214', '14', '14@qq.com', 'aab3238922bcc25a6f606eb525ffdc56', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('215', '15', '15@qq.com', '9bf31c7ff062936a96d3c8bd1f8f2ff3', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('216', '16', '16@qq.com', 'c74d97b01eae257e44aa9d5bade97baf', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('217', '17', '17@qq.com', '70efdf2ec9b086079795c442636b55fb', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('218', '18', '18@qq.com', '6f4922f45568161a8cdf4ad2299f6d23', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('219', '19', '19@qq.com', '1f0e3dad99908345f7439f8ffabdffc4', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('220', '20', '20@qq.com', '98f13708210194c475687be6106a3b84', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('221', '21', '21@qq.com', '3c59dc048e8850243be8079a5c74d079', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('222', '22', '22@qq.com', 'b6d767d2f8ed5d21a44b0e5886680cb9', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('223', '23', '23@qq.com', '37693cfc748049e45d87b8c7d8b9aacd', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('224', '24', '24@qq.com', '1ff1de774005f8da13f42943881c655f', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('225', '25', '25@qq.com', '8e296a067a37563370ded05f5a3bf3ec', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('226', '26', '26@qq.com', '4e732ced3463d06de0ca9a15b6153677', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('227', '27', '27@qq.com', '02e74f10e0327ad868d138f2b4fdd6f0', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('228', '28', '28@qq.com', '33e75ff09dd601bbe69f351039152189', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('229', '29', '29@qq.com', '6ea9ab1baa0efb9e19094440c317e21b', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('230', '30', '30@qq.com', '34173cb38f07f89ddbebc2ac9128303f', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('231', '31', '31@qq.com', 'c16a5320fa475530d9583c34fd356ef5', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('232', '32', '32@qq.com', '6364d3f0f495b6ab9dcf8d3b5c6e0b01', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('233', '33', '33@qq.com', '182be0c5cdcd5072bb1864cdee4d3d6e', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('234', '34', '34@qq.com', 'e369853df766fa44e1ed0ff613f563bd', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('235', '35', '35@qq.com', '1c383cd30b7c298ab50293adfecb7b18', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('236', '36', '36@qq.com', '19ca14e7ea6328a42e0eb13d585e4c22', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('237', '37', '37@qq.com', 'a5bfc9e07964f8dddeb95fc584cd965d', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('238', '38', '38@qq.com', 'a5771bce93e200c36f7cd9dfd0e5deaa', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('239', '39', '39@qq.com', 'd67d8ab4f4c10bf22aa353e27879133c', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('240', '40', '40@qq.com', 'd645920e395fedad7bbbed0eca3fe2e0', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('241', '41', '41@qq.com', '3416a75f4cea9109507cacd8e2f2aefc', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('242', '42', '42@qq.com', 'a1d0c6e83f027327d8461063f4ac58a6', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('243', '43', '43@qq.com', '17e62166fc8586dfa4d1bc0e1742c08b', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('244', '44', '44@qq.com', 'f7177163c833dff4b38fc8d2872f1ec6', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('245', '45', '45@qq.com', '6c8349cc7260ae62e3b1396831a8398f', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('246', '46', '46@qq.com', 'd9d4f495e875a2e075a1a4a6e1b9770f', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('247', '47', '47@qq.com', '67c6a1e7ce56d3d6fa748ab6d9af3fd7', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('248', '48', '48@qq.com', '642e92efb79421734881b53e1e1b18b6', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('249', '49', '49@qq.com', 'f457c545a9ded88f18ecee47145a72c0', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('250', '50', '50@qq.com', 'c0c7c76d30bd3dcaefc96f40275bdc0a', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('251', '51', '51@qq.com', '2838023a778dfaecdc212708f721b788', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('252', '52', '52@qq.com', '9a1158154dfa42caddbd0694a4e9bdc8', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('253', '53', '53@qq.com', 'd82c8d1619ad8176d665453cfb2e55f0', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('254', '54', '54@qq.com', 'a684eceee76fc522773286a895bc8436', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('255', '55', '55@qq.com', 'b53b3a3d6ab90ce0268229151c9bde11', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('256', '56', '56@qq.com', '9f61408e3afb633e50cdf1b20de6f466', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('257', '57', '57@qq.com', '72b32a1f754ba1c09b3695e0cb6cde7f', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('258', '58', '58@qq.com', '66f041e16a60928b05a7e228a89c3799', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('259', '59', '59@qq.com', '093f65e080a295f8076b1c5722a46aa2', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('260', '60', '60@qq.com', '072b030ba126b2f4b2374f342be9ed44', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('261', '61', '61@qq.com', '7f39f8317fbdb1988ef4c628eba02591', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('262', '62', '62@qq.com', '44f683a84163b3523afe57c2e008bc8c', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('263', '63', '63@qq.com', '03afdbd66e7929b125f8597834fa83a4', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('264', '64', '64@qq.com', 'ea5d2f1c4608232e07d3aa3d998e5135', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('265', '65', '65@qq.com', 'fc490ca45c00b1249bbe3554a4fdf6fb', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('266', '66', '66@qq.com', '3295c76acbf4caaed33c36b1b5fc2cb1', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('267', '67', '67@qq.com', '735b90b4568125ed6c3f678819b6e058', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('268', '68', '68@qq.com', 'a3f390d88e4c41f2747bfa2f1b5f87db', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('269', '69', '69@qq.com', '14bfa6bb14875e45bba028a21ed38046', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('270', '70', '70@qq.com', '7cbbc409ec990f19c78c75bd1e06f215', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('271', '71', '71@qq.com', 'e2c420d928d4bf8ce0ff2ec19b371514', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('272', '72', '72@qq.com', '32bb90e8976aab5298d5da10fe66f21d', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('273', '73', '73@qq.com', 'd2ddea18f00665ce8623e36bd4e3c7c5', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('274', '74', '74@qq.com', 'ad61ab143223efbc24c7d2583be69251', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('275', '75', '75@qq.com', 'd09bf41544a3365a46c9077ebb5e35c3', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('276', '76', '76@qq.com', 'fbd7939d674997cdb4692d34de8633c4', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('277', '77', '77@qq.com', '28dd2c7955ce926456240b2ff0100bde', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('278', '78', '78@qq.com', '35f4a8d465e6e1edc05f3d8ab658c551', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('279', '79', '79@qq.com', 'd1fe173d08e959397adf34b1d77e88d7', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('280', '80', '80@qq.com', 'f033ab37c30201f73f142449d037028d', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('281', '81', '81@qq.com', '43ec517d68b6edd3015b3edc9a11367b', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('282', '82', '82@qq.com', '9778d5d219c5080b9a6a17bef029331c', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('283', '83', '83@qq.com', 'fe9fc289c3ff0af142b6d3bead98a923', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('284', '84', '84@qq.com', '68d30a9594728bc39aa24be94b319d21', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('285', '85', '85@qq.com', '3ef815416f775098fe977004015c6193', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('286', '86', '86@qq.com', '93db85ed909c13838ff95ccfa94cebd9', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('287', '87', '87@qq.com', 'c7e1249ffc03eb9ded908c236bd1996d', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('288', '88', '88@qq.com', '2a38a4a9316c49e5a833517c45d31070', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('289', '89', '89@qq.com', '7647966b7343c29048673252e490f736', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('290', '90', '90@qq.com', '8613985ec49eb8f757ae6439e879bb2a', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('291', '91', '91@qq.com', '54229abfcfa5649e7003b83dd4755294', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('292', '92', '92@qq.com', '92cc227532d17e56e07902b254dfad10', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('293', '93', '93@qq.com', '98dce83da57b0395e163467c9dae521b', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('294', '94', '94@qq.com', 'f4b9ec30ad9f68f89b29639786cb62ef', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('295', '95', '95@qq.com', '812b4ba287f5ee0bc9d43bbf5bbe87fb', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('296', '96', '96@qq.com', '26657d5ff9020d2abefe558796b99584', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('297', '97', '97@qq.com', 'e2ef524fbf3d9fe611d5a8e90fefdc9c', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('298', '98', '98@qq.com', 'ed3d2c21991e3bef5e069713af9fa6ca', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('299', '99', '99@qq.com', 'ac627ab1ccbdb62ec96e702f07f6425b', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('300', '100', '100@qq.com', 'f899139df5e1059396431415e770c6dd', '2015-04-16 00:00:00', '10.116.28.57', '1');
INSERT INTO `users` VALUES ('301', 'zhang', 'aaa@111.com', '111111', '2015-04-16 00:00:00', '10.12.22.1', '0');
INSERT INTO `users` VALUES ('302', 'zhang', 'aaa@111.com', '96e79218965eb72c92a549dd5a330112', '2015-04-16 00:00:00', '10.12.22.1', '0');
INSERT INTO `users` VALUES ('303', 'zhang', 'aaa@111.com', '96e79218965eb72c92a549dd5a330112', '2015-04-16 00:00:00', '10.12.22.1', '1');

/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : property_management_system_course

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 11/12/2019 14:55:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `amount` float unsigned DEFAULT NULL,
  `billstate` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `unit` int(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_house_user` (`uid`),
  CONSTRAINT `fk_house_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=19802 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
BEGIN;
INSERT INTO `house` VALUES (1, '88', 'checked', 184, 'paid', 92, 9, '671');
INSERT INTO `house` VALUES (2, '112', 'unchecked', 159, 'unpaid', NULL, 7, '206');
INSERT INTO `house` VALUES (3, '100', 'checked', 194, 'paid', 51, 3, '502');
INSERT INTO `house` VALUES (4, '91', 'checked', 187, 'paid', 13, 3, '671');
INSERT INTO `house` VALUES (5, '118', 'checked', 184, 'paid', 29, 5, '869');
INSERT INTO `house` VALUES (6, '92', 'unchecked', 191, 'unpaid', NULL, 9, '445');
INSERT INTO `house` VALUES (7, '115', 'checked', 174, 'paid', 31, 4, '433');
INSERT INTO `house` VALUES (8, '128', 'unchecked', 182, 'unpaid', NULL, 5, '114');
INSERT INTO `house` VALUES (9, '92', 'checked', 200, 'paid', 38, 2, '608');
INSERT INTO `house` VALUES (10, '81', 'checked', 188, 'paid', 65, 2, '976');
INSERT INTO `house` VALUES (11, '70', 'checked', 192, 'paid', 95, 2, '313');
INSERT INTO `house` VALUES (12, '83', 'checked', 171, 'paid', 23, 6, '922');
INSERT INTO `house` VALUES (13, '97', 'checked', 187, 'paid', 51, 2, '530');
INSERT INTO `house` VALUES (14, '76', 'checked', 183, 'paid', 16, 6, '946');
INSERT INTO `house` VALUES (15, '100', 'checked', 162, 'paid', 41, 6, '789');
INSERT INTO `house` VALUES (16, '96', 'checked', 183, 'paid', 40, 5, '601');
INSERT INTO `house` VALUES (17, '76', 'unchecked', 166, 'unpaid', NULL, 8, '282');
INSERT INTO `house` VALUES (18, '127', 'checked', 196, 'paid', 79, 10, '159');
INSERT INTO `house` VALUES (19, '79', 'checked', 165, 'paid', 94, 9, '972');
INSERT INTO `house` VALUES (20, '119', 'checked', 162, 'paid', 74, 1, '345');
INSERT INTO `house` VALUES (21, '88', 'checked', 177, 'paid', 60, 6, '714');
INSERT INTO `house` VALUES (22, '82', 'checked', 196, 'paid', 3, 6, '820');
INSERT INTO `house` VALUES (23, '99', 'checked', 157, 'paid', 61, 5, '909');
INSERT INTO `house` VALUES (24, '105', 'checked', 195, 'paid', 47, 5, '520');
INSERT INTO `house` VALUES (25, '116', 'unchecked', 155, 'unpaid', NULL, 4, '576');
INSERT INTO `house` VALUES (26, '92', 'checked', 187, 'paid', 30, 3, '439');
INSERT INTO `house` VALUES (27, '85', 'checked', 165, 'paid', 51, 7, '832');
INSERT INTO `house` VALUES (28, '85', 'checked', 158, 'paid', 60, 6, '682');
INSERT INTO `house` VALUES (29, '96', 'checked', 196, 'paid', 46, 6, '752');
INSERT INTO `house` VALUES (30, '114', 'checked', 173, 'paid', 38, 1, '133');
INSERT INTO `house` VALUES (31, '100', 'checked', 175, 'paid', 75, 10, '644');
INSERT INTO `house` VALUES (32, '71', 'checked', 163, 'unpaid', 64, 4, '424');
INSERT INTO `house` VALUES (33, '74', 'checked', 159, 'paid', 6, 4, '228');
INSERT INTO `house` VALUES (34, '81', 'checked', 177, 'paid', 71, 7, '147');
INSERT INTO `house` VALUES (35, '110', 'checked', 188, 'paid', 80, 9, '985');
INSERT INTO `house` VALUES (36, '105', 'checked', 192, 'paid', 47, 3, '987');
INSERT INTO `house` VALUES (37, '119', 'checked', 196, 'unpaid', 90, 8, '482');
INSERT INTO `house` VALUES (38, '101', 'checked', 173, 'paid', 63, 2, '418');
INSERT INTO `house` VALUES (39, '116', 'checked', 153, 'paid', 89, 9, '991');
INSERT INTO `house` VALUES (40, '109', 'checked', 185, 'unpaid', 72, 8, '979');
INSERT INTO `house` VALUES (41, '95', 'checked', 156, 'paid', 95, 8, '395');
INSERT INTO `house` VALUES (42, '108', 'checked', 170, 'paid', 62, 4, '304');
INSERT INTO `house` VALUES (43, '92', 'checked', 171, 'paid', 68, 3, '902');
INSERT INTO `house` VALUES (44, '100', 'checked', 195, 'paid', 69, 7, '815');
INSERT INTO `house` VALUES (45, '76', 'checked', 193, 'paid', 74, 5, '251');
INSERT INTO `house` VALUES (46, '107', 'checked', 179, 'paid', 21, 7, '692');
INSERT INTO `house` VALUES (47, '111', 'checked', 191, 'paid', 12, 1, '416');
INSERT INTO `house` VALUES (48, '97', 'checked', 186, 'paid', 56, 2, '423');
INSERT INTO `house` VALUES (49, '78', 'checked', 188, 'paid', 95, 8, '740');
INSERT INTO `house` VALUES (50, '91', 'checked', 197, 'paid', 2, 3, '388');
INSERT INTO `house` VALUES (51, '127', 'checked', 188, 'paid', 52, 4, '657');
INSERT INTO `house` VALUES (52, '100', 'checked', 192, 'paid', 3, 2, '454');
INSERT INTO `house` VALUES (53, '99', 'checked', 173, 'paid', 52, 10, '208');
INSERT INTO `house` VALUES (54, '103', 'checked', 199, 'paid', 27, 4, '566');
INSERT INTO `house` VALUES (55, '76', 'checked', 176, 'paid', 95, 5, '864');
INSERT INTO `house` VALUES (56, '130', 'checked', 177, 'unpaid', 32, 4, '674');
INSERT INTO `house` VALUES (57, '103', 'checked', 182, 'paid', 34, 2, '894');
INSERT INTO `house` VALUES (58, '105', 'checked', 192, 'paid', 24, 3, '696');
INSERT INTO `house` VALUES (59, '102', 'checked', 177, 'paid', 65, 4, '356');
INSERT INTO `house` VALUES (60, '83', 'checked', 192, 'paid', 19, 7, '647');
INSERT INTO `house` VALUES (61, '94', 'checked', 154, 'paid', 13, 3, '719');
INSERT INTO `house` VALUES (62, '82', 'checked', 179, 'paid', 32, 6, '890');
INSERT INTO `house` VALUES (63, '130', 'checked', 173, 'unpaid', 46, 5, '960');
INSERT INTO `house` VALUES (64, '104', 'checked', 200, 'paid', 86, 10, '837');
INSERT INTO `house` VALUES (65, '103', 'checked', 193, 'paid', 90, 5, '926');
INSERT INTO `house` VALUES (66, '107', 'checked', 163, 'paid', 69, 2, '945');
INSERT INTO `house` VALUES (67, '125', 'checked', 168, 'paid', 1, 4, '824');
INSERT INTO `house` VALUES (68, '70', 'checked', 166, 'paid', 14, 5, '408');
INSERT INTO `house` VALUES (69, '93', 'checked', 193, 'paid', 69, 9, '364');
INSERT INTO `house` VALUES (70, '97', 'checked', 152, 'paid', 27, 5, '815');
INSERT INTO `house` VALUES (71, '112', 'checked', 182, 'paid', 79, 1, '388');
INSERT INTO `house` VALUES (72, '102', 'checked', 186, 'paid', 79, 5, '648');
INSERT INTO `house` VALUES (73, '126', 'checked', 192, 'paid', 48, 8, '120');
INSERT INTO `house` VALUES (74, '99', 'checked', 192, 'paid', 89, 10, '290');
INSERT INTO `house` VALUES (75, '125', 'checked', 189, 'paid', 12, 6, '464');
INSERT INTO `house` VALUES (76, '74', 'checked', 165, 'paid', 42, 2, '261');
INSERT INTO `house` VALUES (77, '118', 'checked', 169, 'paid', 82, 5, '872');
INSERT INTO `house` VALUES (78, '83', 'checked', 167, 'unpaid', 12, 3, '769');
INSERT INTO `house` VALUES (79, '88', 'checked', 187, 'paid', 19, 4, '573');
INSERT INTO `house` VALUES (80, '74', 'checked', 153, 'paid', 42, 8, '612');
INSERT INTO `house` VALUES (81, '86', 'checked', 184, 'paid', 1, 6, '158');
INSERT INTO `house` VALUES (82, '89', 'checked', 153, 'paid', 11, 8, '230');
INSERT INTO `house` VALUES (83, '74', 'checked', 155, 'unpaid', 25, 7, '955');
INSERT INTO `house` VALUES (84, '114', 'checked', 182, 'paid', 63, 9, '256');
INSERT INTO `house` VALUES (85, '77', 'checked', 160, 'paid', 31, 4, '686');
INSERT INTO `house` VALUES (86, '103', 'checked', 183, 'paid', 76, 8, '820');
INSERT INTO `house` VALUES (87, '93', 'checked', 165, 'paid', 93, 5, '819');
INSERT INTO `house` VALUES (88, '85', 'checked', 185, 'paid', 86, 8, '580');
INSERT INTO `house` VALUES (89, '118', 'checked', 179, 'unpaid', 9, 8, '517');
INSERT INTO `house` VALUES (90, '81', 'checked', 166, 'paid', 43, 4, '176');
INSERT INTO `house` VALUES (91, '123', 'checked', 161, 'paid', 75, 7, '227');
INSERT INTO `house` VALUES (92, '125', 'checked', 156, 'paid', 50, 8, '236');
INSERT INTO `house` VALUES (93, '84', 'checked', 152, 'unpaid', 89, 8, '955');
INSERT INTO `house` VALUES (94, '76', 'checked', 176, 'paid', 69, 7, '188');
INSERT INTO `house` VALUES (95, '103', 'checked', 175, 'paid', 5, 10, '962');
INSERT INTO `house` VALUES (96, '104', 'checked', 172, 'paid', 57, 5, '882');
INSERT INTO `house` VALUES (97, '95', 'unchecked', 164, 'unpaid', NULL, 9, '134');
INSERT INTO `house` VALUES (98, '84', 'checked', 155, 'paid', 47, 4, '786');
INSERT INTO `house` VALUES (99, '104', 'checked', 157, 'paid', 98, 8, '290');
INSERT INTO `house` VALUES (100, '112', 'checked', 193, 'paid', 91, 6, '387');
INSERT INTO `house` VALUES (101, '114', 'unchecked', 185, 'unpaid', NULL, 6, '67');
INSERT INTO `house` VALUES (102, '77', 'unchecked', 163, 'unpaid', NULL, 6, '33');
INSERT INTO `house` VALUES (103, '105', 'unchecked', 177, 'unpaid', NULL, 10, '62');
INSERT INTO `house` VALUES (104, '117', 'unchecked', 151, 'unpaid', NULL, 4, '90');
INSERT INTO `house` VALUES (105, '81', 'unchecked', 153, 'unpaid', NULL, 8, '46');
INSERT INTO `house` VALUES (106, '72', 'unchecked', 161, 'unpaid', NULL, 7, '25');
INSERT INTO `house` VALUES (107, '102', 'unchecked', 151, 'unpaid', NULL, 9, '92');
INSERT INTO `house` VALUES (108, '71', 'unchecked', 180, 'unpaid', NULL, 10, '27');
INSERT INTO `house` VALUES (109, '129', 'unchecked', 198, 'unpaid', NULL, 10, '93');
INSERT INTO `house` VALUES (110, '83', 'unchecked', 183, 'unpaid', NULL, 4, '16');
INSERT INTO `house` VALUES (111, '78', 'unchecked', 181, 'unpaid', NULL, 9, '97');
INSERT INTO `house` VALUES (112, '107', 'unchecked', 163, 'unpaid', NULL, 7, '77');
INSERT INTO `house` VALUES (113, '73', 'unchecked', 161, 'unpaid', NULL, 5, '73');
INSERT INTO `house` VALUES (114, '75', 'unchecked', 155, 'unpaid', NULL, 3, '97');
INSERT INTO `house` VALUES (115, '87', 'unchecked', 163, 'unpaid', NULL, 8, '39');
INSERT INTO `house` VALUES (116, '83', 'unchecked', 171, 'unpaid', NULL, 7, '59');
INSERT INTO `house` VALUES (117, '105', 'unchecked', 166, 'unpaid', NULL, 5, '32');
INSERT INTO `house` VALUES (118, '88', 'unchecked', 197, 'unpaid', NULL, 9, '94');
INSERT INTO `house` VALUES (119, '78', 'unchecked', 151, 'unpaid', NULL, 2, '22');
INSERT INTO `house` VALUES (120, '106', 'unchecked', 158, 'unpaid', NULL, 5, '82');
INSERT INTO `house` VALUES (121, '116', 'unchecked', 154, 'unpaid', NULL, 4, '91');
INSERT INTO `house` VALUES (122, '86', 'unchecked', 184, 'unpaid', NULL, 5, '18');
INSERT INTO `house` VALUES (123, '79', 'unchecked', 199, 'unpaid', NULL, 8, '41');
INSERT INTO `house` VALUES (124, '72', 'unchecked', 175, 'unpaid', NULL, 3, '73');
INSERT INTO `house` VALUES (125, '125', 'unchecked', 182, 'unpaid', NULL, 4, '62');
INSERT INTO `house` VALUES (126, '99', 'unchecked', 165, 'unpaid', NULL, 6, '24');
INSERT INTO `house` VALUES (127, '72', 'unchecked', 179, 'unpaid', NULL, 3, '22');
INSERT INTO `house` VALUES (128, '99', 'unchecked', 152, 'unpaid', NULL, 3, '56');
INSERT INTO `house` VALUES (129, '80', 'unchecked', 165, 'unpaid', NULL, 7, '29');
INSERT INTO `house` VALUES (130, '105', 'unchecked', 165, 'unpaid', NULL, 2, '56');
INSERT INTO `house` VALUES (131, '85', 'unchecked', 196, 'unpaid', NULL, 6, '99');
INSERT INTO `house` VALUES (132, '75', 'unchecked', 180, 'unpaid', NULL, 9, '42');
INSERT INTO `house` VALUES (133, '101', 'unchecked', 197, 'unpaid', NULL, 5, '10');
INSERT INTO `house` VALUES (134, '78', 'unchecked', 162, 'unpaid', NULL, 5, '97');
INSERT INTO `house` VALUES (135, '116', 'unchecked', 154, 'unpaid', NULL, 1, '98');
INSERT INTO `house` VALUES (136, '82', 'unchecked', 198, 'unpaid', NULL, 9, '50');
INSERT INTO `house` VALUES (137, '122', 'unchecked', 174, 'unpaid', NULL, 6, '87');
INSERT INTO `house` VALUES (138, '120', 'unchecked', 195, 'unpaid', NULL, 6, '53');
INSERT INTO `house` VALUES (139, '122', 'unchecked', 194, 'unpaid', NULL, 1, '55');
INSERT INTO `house` VALUES (140, '76', 'unchecked', 180, 'unpaid', NULL, 7, '94');
INSERT INTO `house` VALUES (141, '80', 'unchecked', 155, 'unpaid', NULL, 6, '51');
INSERT INTO `house` VALUES (142, '126', 'unchecked', 168, 'unpaid', NULL, 8, '91');
INSERT INTO `house` VALUES (143, '130', 'unchecked', 188, 'unpaid', NULL, 3, '60');
INSERT INTO `house` VALUES (144, '86', 'unchecked', 199, 'unpaid', NULL, 3, '98');
INSERT INTO `house` VALUES (145, '88', 'unchecked', 157, 'unpaid', NULL, 3, '39');
INSERT INTO `house` VALUES (146, '95', 'unchecked', 172, 'unpaid', NULL, 4, '14');
INSERT INTO `house` VALUES (147, '126', 'unchecked', 198, 'unpaid', NULL, 10, '28');
INSERT INTO `house` VALUES (148, '83', 'unchecked', 184, 'unpaid', NULL, 5, '47');
INSERT INTO `house` VALUES (149, '97', 'unchecked', 163, 'unpaid', NULL, 4, '41');
INSERT INTO `house` VALUES (150, '76', 'unchecked', 184, 'unpaid', NULL, 7, '99');
INSERT INTO `house` VALUES (151, '119', 'unchecked', 198, 'unpaid', NULL, 7, '100');
INSERT INTO `house` VALUES (152, '124', 'unchecked', 166, 'unpaid', NULL, 8, '75');
INSERT INTO `house` VALUES (153, '114', 'unchecked', 168, 'unpaid', NULL, 7, '33');
INSERT INTO `house` VALUES (154, '127', 'unchecked', 179, 'unpaid', NULL, 7, '22');
INSERT INTO `house` VALUES (155, '104', 'unchecked', 183, 'unpaid', NULL, 9, '54');
INSERT INTO `house` VALUES (156, '71', 'unchecked', 159, 'unpaid', NULL, 9, '62');
INSERT INTO `house` VALUES (157, '77', 'unchecked', 179, 'unpaid', NULL, 10, '81');
INSERT INTO `house` VALUES (158, '115', 'unchecked', 195, 'unpaid', NULL, 5, '67');
INSERT INTO `house` VALUES (159, '72', 'unchecked', 199, 'unpaid', NULL, 4, '53');
INSERT INTO `house` VALUES (160, '86', 'unchecked', 179, 'unpaid', NULL, 7, '89');
INSERT INTO `house` VALUES (161, '125', 'unchecked', 197, 'unpaid', NULL, 6, '100');
INSERT INTO `house` VALUES (162, '70', 'unchecked', 163, 'unpaid', NULL, 5, '86');
INSERT INTO `house` VALUES (163, '75', 'unchecked', 154, 'unpaid', NULL, 10, '71');
INSERT INTO `house` VALUES (164, '72', 'unchecked', 188, 'unpaid', NULL, 3, '90');
INSERT INTO `house` VALUES (165, '75', 'unchecked', 178, 'unpaid', NULL, 10, '59');
INSERT INTO `house` VALUES (166, '125', 'unchecked', 196, 'unpaid', NULL, 8, '42');
INSERT INTO `house` VALUES (167, '108', 'unchecked', 175, 'unpaid', NULL, 6, '28');
INSERT INTO `house` VALUES (168, '115', 'unchecked', 189, 'unpaid', NULL, 4, '72');
INSERT INTO `house` VALUES (169, '113', 'unchecked', 158, 'unpaid', NULL, 2, '86');
INSERT INTO `house` VALUES (170, '112', 'unchecked', 150, 'unpaid', NULL, 5, '48');
INSERT INTO `house` VALUES (171, '83', 'unchecked', 194, 'unpaid', NULL, 1, '10');
INSERT INTO `house` VALUES (172, '83', 'unchecked', 181, 'unpaid', NULL, 1, '31');
INSERT INTO `house` VALUES (173, '107', 'unchecked', 163, 'unpaid', NULL, 5, '42');
INSERT INTO `house` VALUES (174, '86', 'unchecked', 150, 'unpaid', NULL, 6, '22');
INSERT INTO `house` VALUES (175, '122', 'unchecked', 198, 'unpaid', NULL, 7, '18');
INSERT INTO `house` VALUES (176, '84', 'unchecked', 160, 'unpaid', NULL, 10, '39');
INSERT INTO `house` VALUES (177, '129', 'unchecked', 155, 'unpaid', NULL, 1, '40');
INSERT INTO `house` VALUES (178, '88', 'unchecked', 160, 'unpaid', NULL, 3, '91');
INSERT INTO `house` VALUES (179, '96', 'unchecked', 158, 'unpaid', NULL, 9, '86');
INSERT INTO `house` VALUES (180, '115', 'unchecked', 151, 'unpaid', NULL, 4, '60');
INSERT INTO `house` VALUES (181, '116', 'unchecked', 150, 'unpaid', NULL, 10, '28');
INSERT INTO `house` VALUES (182, '88', 'unchecked', 166, 'unpaid', NULL, 3, '33');
INSERT INTO `house` VALUES (183, '130', 'unchecked', 180, 'unpaid', NULL, 5, '55');
INSERT INTO `house` VALUES (184, '102', 'unchecked', 192, 'unpaid', NULL, 6, '71');
INSERT INTO `house` VALUES (185, '105', 'unchecked', 164, 'unpaid', NULL, 1, '14');
INSERT INTO `house` VALUES (186, '80', 'unchecked', 157, 'unpaid', NULL, 10, '43');
INSERT INTO `house` VALUES (187, '107', 'unchecked', 191, 'unpaid', NULL, 7, '94');
INSERT INTO `house` VALUES (188, '130', 'unchecked', 152, 'unpaid', NULL, 9, '95');
INSERT INTO `house` VALUES (189, '108', 'unchecked', 173, 'unpaid', NULL, 6, '24');
INSERT INTO `house` VALUES (190, '76', 'unchecked', 180, 'unpaid', NULL, 4, '43');
INSERT INTO `house` VALUES (191, '80', 'unchecked', 159, 'unpaid', NULL, 1, '56');
INSERT INTO `house` VALUES (192, '115', 'unchecked', 191, 'unpaid', NULL, 2, '49');
INSERT INTO `house` VALUES (193, '108', 'unchecked', 170, 'unpaid', NULL, 2, '15');
INSERT INTO `house` VALUES (194, '105', 'unchecked', 192, 'unpaid', NULL, 8, '79');
INSERT INTO `house` VALUES (195, '71', 'unchecked', 181, 'unpaid', NULL, 7, '16');
INSERT INTO `house` VALUES (196, '104', 'unchecked', 196, 'unpaid', NULL, 7, '11');
INSERT INTO `house` VALUES (197, '72', 'unchecked', 188, 'unpaid', NULL, 3, '16');
INSERT INTO `house` VALUES (198, '106', 'unchecked', 197, 'unpaid', NULL, 2, '38');
INSERT INTO `house` VALUES (199, '117', 'unchecked', 191, 'unpaid', NULL, 5, '27');
INSERT INTO `house` VALUES (200, '83', 'unchecked', 172, 'unpaid', NULL, 9, '88');
COMMIT;

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deadline` date DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pet_user` (`uid`),
  CONSTRAINT `fk_pet_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for postinfo
-- ----------------------------
DROP TABLE IF EXISTS `postinfo`;
CREATE TABLE `postinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `message` varchar(1200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_info_user` (`uid`),
  CONSTRAINT `fk_info_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postinfo
-- ----------------------------
BEGIN;
INSERT INTO `postinfo` VALUES (1, 'help', 'eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida.', '2019-06-20 18:04:58', 40, 'vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at,');
INSERT INTO `postinfo` VALUES (2, 'help', 'ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius', '2019-04-09 07:07:40', 12, 'molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse');
INSERT INTO `postinfo` VALUES (3, 'ask', 'lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', '2019-01-21 16:22:11', 43, 'porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat');
INSERT INTO `postinfo` VALUES (4, 'help', 'consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis', '2019-05-31 00:38:09', 97, 'egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus');
INSERT INTO `postinfo` VALUES (5, 'help', 'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec,', '2019-04-17 12:31:09', 98, 'dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu,');
INSERT INTO `postinfo` VALUES (6, 'help', 'non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', '2019-03-16 22:55:00', 4, 'Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare.');
INSERT INTO `postinfo` VALUES (7, 'help', 'ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer', '2019-10-20 14:33:54', 4, 'Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus');
INSERT INTO `postinfo` VALUES (8, 'ask', 'ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum.', '2019-02-20 03:30:25', 25, 'diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis.');
INSERT INTO `postinfo` VALUES (9, 'help', 'iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2018-12-23 06:46:14', 50, 'Pellentesque');
INSERT INTO `postinfo` VALUES (10, 'help', 'Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper', '2019-01-19 00:16:45', 18, 'in faucibus orci luctus et ultrices');
INSERT INTO `postinfo` VALUES (11, 'ask', 'egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras', '2018-12-22 21:01:38', 70, 'ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam');
INSERT INTO `postinfo` VALUES (12, 'ask', 'Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,', '2019-05-13 04:50:25', 9, 'tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh.');
INSERT INTO `postinfo` VALUES (13, 'ask', 'quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim', '2019-01-15 21:53:30', 82, 'Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante');
INSERT INTO `postinfo` VALUES (14, 'ask', 'congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac', '2019-10-26 09:37:31', 16, 'est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu');
INSERT INTO `postinfo` VALUES (15, 'ask', 'cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis', '2019-10-23 18:21:49', 17, 'ultrices. Vivamus rhoncus. Donec');
INSERT INTO `postinfo` VALUES (16, 'ask', 'a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis', '2019-10-11 06:55:56', 11, 'Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo');
INSERT INTO `postinfo` VALUES (17, 'ask', 'Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras', '2019-02-27 15:11:18', 41, 'interdum enim non nisi.');
INSERT INTO `postinfo` VALUES (18, 'ask', 'in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper', '2018-12-19 04:17:36', 74, 'Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum.');
INSERT INTO `postinfo` VALUES (19, 'ask', 'justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,', '2019-08-28 20:54:52', 83, 'semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras');
INSERT INTO `postinfo` VALUES (20, 'ask', 'Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis', '2019-06-23 01:43:46', 64, 'amet');
INSERT INTO `postinfo` VALUES (21, 'trade', 'at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit', '2019-05-06 22:09:37', 22, 'non enim commodo hendrerit. Donec');
INSERT INTO `postinfo` VALUES (22, 'trade', 'et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet', '2019-02-20 22:00:34', 2, 'massa. Integer vitae nibh. Donec');
INSERT INTO `postinfo` VALUES (23, 'ask', 'pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu', '2019-05-20 08:04:11', 65, 'nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus');
INSERT INTO `postinfo` VALUES (24, 'trade', 'sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in', '2019-10-04 06:34:58', 40, 'pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget');
INSERT INTO `postinfo` VALUES (25, 'trade', 'nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis', '2019-10-26 06:18:46', 67, 'vitae odio');
INSERT INTO `postinfo` VALUES (26, 'ask', 'Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae', '2019-07-08 21:42:43', 88, 'massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet,');
INSERT INTO `postinfo` VALUES (27, 'ask', 'risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu.', '2019-02-13 12:36:50', 12, 'Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod');
INSERT INTO `postinfo` VALUES (28, 'trade', 'lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum', '2019-10-28 00:05:12', 67, 'ipsum non arcu.');
INSERT INTO `postinfo` VALUES (29, 'trade', 'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,', '2019-03-14 22:41:48', 3, 'in consequat enim diam');
INSERT INTO `postinfo` VALUES (30, 'trade', 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit', '2019-11-05 03:11:24', 95, 'arcu ac');
INSERT INTO `postinfo` VALUES (31, 'advice', 'nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque.', '2019-11-04 07:01:19', 91, 'a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque');
INSERT INTO `postinfo` VALUES (32, 'advice', 'tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus', '2019-07-30 13:09:46', 92, 'magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo');
INSERT INTO `postinfo` VALUES (33, 'advice', 'vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing', '2019-10-25 12:20:38', 13, 'lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non,');
INSERT INTO `postinfo` VALUES (34, 'advice', 'rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra.', '2019-05-04 15:33:32', 75, 'commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris');
INSERT INTO `postinfo` VALUES (35, 'advice', 'lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum', '2019-04-10 04:28:09', 95, 'aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus');
INSERT INTO `postinfo` VALUES (36, 'advice', 'egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit.', '2019-07-20 09:30:50', 81, 'diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit');
INSERT INTO `postinfo` VALUES (37, 'advice', 'Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin', '2019-11-07 15:26:21', 47, 'id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu');
INSERT INTO `postinfo` VALUES (38, 'advice', 'tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor', '2019-11-09 06:42:07', 19, 'vel');
INSERT INTO `postinfo` VALUES (39, 'ask', 'aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque', '2019-11-08 08:36:37', 7, 'nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam');
INSERT INTO `postinfo` VALUES (40, 'advice', 'faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet,', '2019-04-04 17:24:43', 91, 'Nunc sed');
INSERT INTO `postinfo` VALUES (41, 'announcement', 'blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis', '2019-08-16 10:03:39', 77, 'a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque');
INSERT INTO `postinfo` VALUES (42, 'announcement', 'Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed', '2019-07-26 16:26:44', 86, 'nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et');
INSERT INTO `postinfo` VALUES (43, 'announcement', 'leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc,', '2019-04-03 13:07:35', 74, 'et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam');
INSERT INTO `postinfo` VALUES (44, 'announcement', 'at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut', '2019-06-30 22:42:02', 79, 'Nulla dignissim. Maecenas ornare');
INSERT INTO `postinfo` VALUES (45, 'announcement', 'luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus.', '2019-01-25 03:51:18', 90, 'Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum');
INSERT INTO `postinfo` VALUES (46, 'announcement', 'non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse', '2019-09-18 11:05:11', 73, 'per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi');
INSERT INTO `postinfo` VALUES (47, 'announcement', 'ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus', '2019-10-27 02:00:39', 26, 'ipsum');
INSERT INTO `postinfo` VALUES (48, 'announcement', 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id', '2019-06-18 11:15:03', 66, 'ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida');
INSERT INTO `postinfo` VALUES (49, 'announcement', 'lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada', '2019-10-13 09:46:55', 76, 'sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit');
INSERT INTO `postinfo` VALUES (50, 'announcement', 'a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim', '2019-03-03 18:25:24', 75, 'torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus.');
INSERT INTO `postinfo` VALUES (51, 'help', 'justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in', '2019-02-19 01:22:17', 98, 'habitant morbi');
INSERT INTO `postinfo` VALUES (52, 'help', 'convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim', '2019-10-04 09:52:23', 60, 'gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante.');
INSERT INTO `postinfo` VALUES (53, 'help', 'ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio', '2019-11-08 07:31:56', 26, 'interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed');
INSERT INTO `postinfo` VALUES (54, 'help', 'malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant', '2019-06-28 09:27:13', 2, 'in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non');
INSERT INTO `postinfo` VALUES (55, 'help', 'Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.', '2019-07-24 02:19:48', 82, 'tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies');
INSERT INTO `postinfo` VALUES (56, 'help', 'dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero', '2019-10-23 00:38:35', 75, 'tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod');
INSERT INTO `postinfo` VALUES (57, 'help', 'risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate,', '2019-03-07 03:17:32', 10, 'placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,');
INSERT INTO `postinfo` VALUES (58, 'help', 'quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non', '2019-01-07 16:47:15', 35, 'a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui,');
INSERT INTO `postinfo` VALUES (59, 'help', 'Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque', '2018-12-25 04:09:24', 23, 'quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam');
INSERT INTO `postinfo` VALUES (60, 'help', 'venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis', '2019-06-03 15:18:57', 7, 'suscipit, est ac facilisis');
INSERT INTO `postinfo` VALUES (61, 'ask', 'purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi', '2019-10-20 08:50:09', 12, 'Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec');
INSERT INTO `postinfo` VALUES (62, 'ask', 'ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis', '2019-08-14 17:44:33', 25, 'a neque.');
INSERT INTO `postinfo` VALUES (63, 'ask', 'nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed', '2019-08-31 21:19:27', 1, 'eget laoreet');
INSERT INTO `postinfo` VALUES (64, 'ask', 'feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem', '2019-09-08 16:34:09', 34, 'Donec est mauris, rhoncus id, mollis nec, cursus a,');
INSERT INTO `postinfo` VALUES (65, 'ask', 'Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque', '2019-04-09 13:13:05', 1, 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,');
INSERT INTO `postinfo` VALUES (66, 'ask', 'non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,', '2019-08-02 12:36:31', 75, 'egestas a, dui. Cras pellentesque. Sed dictum. Proin eget');
INSERT INTO `postinfo` VALUES (67, 'ask', 'Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque.', '2019-03-08 18:24:19', 12, 'urna. Nullam lobortis quam');
INSERT INTO `postinfo` VALUES (68, 'ask', 'erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras', '2019-01-05 22:34:39', 65, 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl.');
INSERT INTO `postinfo` VALUES (69, 'ask', 'in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec', '2019-08-17 05:56:11', 12, 'sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel,');
INSERT INTO `postinfo` VALUES (70, 'ask', 'Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus.', '2019-03-04 22:29:39', 40, 'pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus');
INSERT INTO `postinfo` VALUES (71, 'trade', 'fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat.', '2019-10-01 21:19:21', 88, 'blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla');
INSERT INTO `postinfo` VALUES (72, 'trade', 'sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.', '2019-07-30 12:13:45', 4, 'libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet');
INSERT INTO `postinfo` VALUES (73, 'trade', 'tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit', '2018-12-24 19:35:01', 17, 'pede et risus. Quisque libero lacus, varius et, euismod et, commodo');
INSERT INTO `postinfo` VALUES (74, 'trade', 'risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus', '2019-05-25 03:32:10', 34, 'diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae');
INSERT INTO `postinfo` VALUES (75, 'trade', 'sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec,', '2019-01-31 08:58:51', 25, 'sed dictum eleifend, nunc risus varius orci, in');
INSERT INTO `postinfo` VALUES (76, 'trade', 'magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet', '2019-07-17 21:48:19', 20, 'aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales.');
INSERT INTO `postinfo` VALUES (77, 'trade', 'Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo.', '2018-12-24 11:31:14', 64, 'neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor');
INSERT INTO `postinfo` VALUES (78, 'trade', 'malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam,', '2019-11-07 16:30:00', 23, 'In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci');
INSERT INTO `postinfo` VALUES (79, 'trade', 'porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus', '2019-08-12 13:59:06', 71, 'lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper');
INSERT INTO `postinfo` VALUES (80, 'trade', 'rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare', '2019-02-26 18:39:29', 6, 'rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit');
INSERT INTO `postinfo` VALUES (81, 'advice', 'enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus', '2019-03-03 10:32:20', 34, 'egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras');
INSERT INTO `postinfo` VALUES (82, 'advice', 'vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida', '2019-10-08 17:58:59', 93, 'enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas');
INSERT INTO `postinfo` VALUES (83, 'advice', 'commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac', '2019-10-19 00:10:16', 12, 'aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu.');
INSERT INTO `postinfo` VALUES (84, 'advice', 'urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam', '2019-03-09 09:06:56', 26, 'Vivamus rhoncus. Donec est.');
INSERT INTO `postinfo` VALUES (85, 'advice', 'Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes,', '2019-04-21 20:51:01', 88, 'In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis');
INSERT INTO `postinfo` VALUES (86, 'advice', 'non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis,', '2019-08-19 16:53:06', 85, 'iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus');
INSERT INTO `postinfo` VALUES (87, 'advice', 'vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus', '2019-10-22 02:37:01', 83, 'nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem');
INSERT INTO `postinfo` VALUES (88, 'advice', 'tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue', '2019-08-15 20:21:22', 15, 'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit');
INSERT INTO `postinfo` VALUES (89, 'advice', 'eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim.', '2019-11-11 05:03:59', 7, 'orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet,');
INSERT INTO `postinfo` VALUES (90, 'advice', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque', '2019-01-20 14:06:40', 88, 'ac orci. Ut semper pretium neque. Morbi quis urna. Nunc');
INSERT INTO `postinfo` VALUES (91, 'announcement', 'eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam.', '2019-09-19 03:10:53', 56, 'placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel');
INSERT INTO `postinfo` VALUES (92, 'announcement', 'orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc', '2019-08-03 21:02:19', 23, 'arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac');
INSERT INTO `postinfo` VALUES (93, 'announcement', 'Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc', '2018-12-30 21:50:24', 26, 'posuere cubilia Curae; Donec tincidunt. Donec');
INSERT INTO `postinfo` VALUES (94, 'announcement', 'neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere', '2019-09-23 07:28:56', 98, 'Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis');
INSERT INTO `postinfo` VALUES (95, 'announcement', 'scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis', '2019-03-25 16:11:13', 30, 'nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl.');
INSERT INTO `postinfo` VALUES (96, 'announcement', 'mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit', '2019-05-13 16:44:51', 88, 'convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus');
INSERT INTO `postinfo` VALUES (97, 'announcement', 'accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna,', '2019-09-22 20:21:33', 8, 'Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat');
INSERT INTO `postinfo` VALUES (98, 'announcement', 'Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat', '2019-06-27 17:03:39', 60, 'bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed');
INSERT INTO `postinfo` VALUES (99, 'announcement', 'felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae', '2019-08-04 04:58:48', 34, 'nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla.');
INSERT INTO `postinfo` VALUES (100, 'announcement', 'consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum.', '2019-04-09 15:53:08', 70, 'rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue');
COMMIT;

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resource_user` (`uid`),
  CONSTRAINT `fk_resource_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `infoid` int(11) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_review_user` (`uid`),
  KEY `fk_review_info` (`infoid`),
  CONSTRAINT `fk_review_info` FOREIGN KEY (`infoid`) REFERENCES `postinfo` (`id`),
  CONSTRAINT `fk_review_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
BEGIN;
INSERT INTO `review` VALUES (1, 'nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et,', 1, 28, '2019-07-21 08:12:50');
INSERT INTO `review` VALUES (2, 'semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus', 21, 52, '2019-03-23 06:25:46');
INSERT INTO `review` VALUES (3, 'Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu', 5, 70, '2019-01-06 07:26:13');
INSERT INTO `review` VALUES (4, 'libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus', 22, 54, '2019-11-04 12:33:21');
INSERT INTO `review` VALUES (5, 'Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam', 63, 94, '2019-02-26 15:27:26');
INSERT INTO `review` VALUES (6, 'pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer', 38, 65, '2018-12-12 22:16:43');
INSERT INTO `review` VALUES (7, 'quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in', 10, 59, '2019-07-23 10:44:09');
INSERT INTO `review` VALUES (8, 'metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor', 4, 19, '2019-09-14 22:55:13');
INSERT INTO `review` VALUES (9, 'magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus', 44, 50, '2019-09-21 22:15:38');
INSERT INTO `review` VALUES (10, 'fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a', 29, 64, '2019-03-08 12:18:10');
INSERT INTO `review` VALUES (11, 'fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis', 20, 52, '2019-08-04 08:05:46');
INSERT INTO `review` VALUES (12, 'mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus.', 90, 73, '2018-12-15 16:51:56');
INSERT INTO `review` VALUES (13, 'pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod', 83, 27, '2019-03-26 03:30:06');
INSERT INTO `review` VALUES (14, 'Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim', 66, 18, '2019-04-24 12:32:03');
INSERT INTO `review` VALUES (15, 'posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse', 18, 85, '2019-04-17 02:49:18');
INSERT INTO `review` VALUES (16, 'sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque', 82, 53, '2019-01-21 02:03:11');
INSERT INTO `review` VALUES (17, 'enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida.', 37, 91, '2019-08-16 19:28:20');
INSERT INTO `review` VALUES (18, 'a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget', 61, 80, '2019-03-06 14:16:00');
INSERT INTO `review` VALUES (19, 'a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac', 33, 68, '2018-12-25 18:49:56');
INSERT INTO `review` VALUES (20, 'at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum', 89, 39, '2019-03-29 06:01:21');
INSERT INTO `review` VALUES (21, 'aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis', 80, 88, '2019-07-15 03:19:11');
INSERT INTO `review` VALUES (22, 'in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum.', 44, 51, '2018-12-10 10:57:07');
INSERT INTO `review` VALUES (23, 'cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat', 29, 26, '2019-05-22 14:34:57');
INSERT INTO `review` VALUES (24, 'a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis', 94, 98, '2019-02-07 03:11:09');
INSERT INTO `review` VALUES (25, 'elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci', 22, 2, '2019-07-09 06:34:10');
INSERT INTO `review` VALUES (26, 'enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel', 60, 34, '2019-10-22 19:34:06');
INSERT INTO `review` VALUES (27, 'ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec', 21, 11, '2019-01-27 07:04:00');
INSERT INTO `review` VALUES (28, 'metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna.', 4, 13, '2018-12-11 22:01:51');
INSERT INTO `review` VALUES (29, 'mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam', 94, 73, '2019-04-23 14:43:26');
INSERT INTO `review` VALUES (30, 'tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus', 76, 35, '2019-10-12 05:18:54');
INSERT INTO `review` VALUES (31, 'hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin', 5, 63, '2019-06-10 20:58:10');
INSERT INTO `review` VALUES (32, 'et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim.', 33, 19, '2019-06-01 14:32:49');
INSERT INTO `review` VALUES (33, 'Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris', 22, 78, '2019-04-14 02:36:37');
INSERT INTO `review` VALUES (34, 'tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,', 29, 55, '2019-02-12 19:42:02');
INSERT INTO `review` VALUES (35, 'risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,', 5, 15, '2019-04-17 23:19:44');
INSERT INTO `review` VALUES (36, 'ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis', 67, 9, '2018-12-15 15:51:30');
INSERT INTO `review` VALUES (37, 'dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique', 11, 18, '2019-04-03 07:33:47');
INSERT INTO `review` VALUES (38, 'metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae,', 76, 73, '2019-10-15 14:12:29');
INSERT INTO `review` VALUES (39, 'quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis', 65, 64, '2018-12-23 07:21:56');
INSERT INTO `review` VALUES (40, 'tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor.', 26, 79, '2019-04-23 21:22:49');
INSERT INTO `review` VALUES (41, 'purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque', 60, 36, '2019-05-18 14:29:15');
INSERT INTO `review` VALUES (42, 'scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam', 23, 39, '2019-02-04 18:32:53');
INSERT INTO `review` VALUES (43, 'Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit', 55, 25, '2019-11-11 22:53:32');
INSERT INTO `review` VALUES (44, 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam', 5, 14, '2018-12-13 01:26:18');
INSERT INTO `review` VALUES (45, 'vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate,', 81, 61, '2019-03-05 16:12:28');
INSERT INTO `review` VALUES (46, 'Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices,', 83, 86, '2019-08-12 05:24:46');
INSERT INTO `review` VALUES (47, 'sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae,', 20, 23, '2019-10-08 21:00:48');
INSERT INTO `review` VALUES (48, 'varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum.', 51, 91, '2019-06-01 17:00:49');
INSERT INTO `review` VALUES (49, 'lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis,', 83, 3, '2019-10-16 13:38:44');
INSERT INTO `review` VALUES (50, 'enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis.', 84, 23, '2019-03-28 20:11:11');
INSERT INTO `review` VALUES (51, 'pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum', 97, 27, '2019-07-02 08:36:58');
INSERT INTO `review` VALUES (52, 'Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam', 97, 67, '2019-10-06 00:57:43');
INSERT INTO `review` VALUES (53, 'Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut', 47, 14, '2019-03-15 23:25:38');
INSERT INTO `review` VALUES (54, 'dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non', 44, 1, '2018-12-12 00:35:42');
INSERT INTO `review` VALUES (55, 'auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna.', 21, 14, '2019-10-07 12:37:09');
INSERT INTO `review` VALUES (56, 'mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat,', 19, 37, '2019-02-28 16:55:28');
INSERT INTO `review` VALUES (57, 'pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla', 53, 60, '2019-03-14 23:01:13');
INSERT INTO `review` VALUES (58, 'habitant morbi tristique senectus et netus et malesuada fames ac', 91, 25, '2019-05-23 02:33:02');
INSERT INTO `review` VALUES (59, 'ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada', 50, 95, '2019-01-28 04:48:50');
INSERT INTO `review` VALUES (60, 'tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel,', 71, 5, '2019-06-08 16:52:34');
INSERT INTO `review` VALUES (61, 'dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan', 53, 55, '2019-09-19 16:20:10');
INSERT INTO `review` VALUES (62, 'Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam', 69, 15, '2019-10-29 15:54:11');
INSERT INTO `review` VALUES (63, 'molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis.', 83, 64, '2019-11-13 16:40:32');
INSERT INTO `review` VALUES (64, 'leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede.', 41, 62, '2019-09-05 01:44:35');
INSERT INTO `review` VALUES (65, 'adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut,', 1, 42, '2019-08-07 23:47:07');
INSERT INTO `review` VALUES (66, 'Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel', 80, 75, '2019-07-26 07:55:17');
INSERT INTO `review` VALUES (67, 'posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie', 8, 57, '2019-08-29 06:06:41');
INSERT INTO `review` VALUES (68, 'enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.', 34, 76, '2018-12-12 08:26:57');
INSERT INTO `review` VALUES (69, 'neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,', 57, 63, '2019-09-09 03:37:59');
INSERT INTO `review` VALUES (70, 'imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus', 2, 54, '2019-05-02 15:24:52');
INSERT INTO `review` VALUES (71, 'accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices', 36, 88, '2019-03-31 15:21:50');
INSERT INTO `review` VALUES (72, 'at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis,', 36, 68, '2019-01-17 08:26:03');
INSERT INTO `review` VALUES (73, 'fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed', 18, 40, '2019-11-12 06:13:49');
INSERT INTO `review` VALUES (74, 'dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue', 8, 49, '2019-01-11 15:23:52');
INSERT INTO `review` VALUES (75, 'varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus', 36, 23, '2019-07-29 13:20:46');
INSERT INTO `review` VALUES (76, 'vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim', 6, 68, '2019-05-05 15:34:41');
INSERT INTO `review` VALUES (77, 'vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae', 52, 88, '2019-08-24 04:43:59');
INSERT INTO `review` VALUES (78, 'vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed', 33, 39, '2019-03-07 17:50:23');
INSERT INTO `review` VALUES (79, 'accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum', 41, 25, '2019-03-19 20:45:43');
INSERT INTO `review` VALUES (80, 'lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare', 4, 94, '2018-12-16 11:34:52');
INSERT INTO `review` VALUES (81, 'Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer', 56, 25, '2019-08-16 03:42:50');
INSERT INTO `review` VALUES (82, 'Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu,', 69, 86, '2019-06-26 21:51:25');
INSERT INTO `review` VALUES (83, 'mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis', 66, 76, '2019-10-19 07:00:11');
INSERT INTO `review` VALUES (84, 'metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis', 70, 94, '2019-03-22 11:23:56');
INSERT INTO `review` VALUES (85, 'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,', 70, 80, '2019-08-03 04:31:55');
INSERT INTO `review` VALUES (86, 'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare', 39, 61, '2019-08-16 16:39:03');
INSERT INTO `review` VALUES (87, 'ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit', 28, 32, '2019-04-19 10:23:58');
INSERT INTO `review` VALUES (88, 'placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque', 68, 17, '2019-09-06 12:02:58');
INSERT INTO `review` VALUES (89, 'Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis', 27, 42, '2018-12-22 02:11:55');
INSERT INTO `review` VALUES (90, 'luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.', 61, 4, '2019-01-05 19:01:46');
INSERT INTO `review` VALUES (91, 'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu', 22, 98, '2019-09-15 08:47:46');
INSERT INTO `review` VALUES (92, 'Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem', 57, 53, '2019-06-01 17:03:26');
INSERT INTO `review` VALUES (93, 'parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu', 55, 8, '2019-08-01 12:20:22');
INSERT INTO `review` VALUES (94, 'eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero.', 83, 1, '2019-04-18 11:26:16');
INSERT INTO `review` VALUES (95, 'congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae', 20, 6, '2019-06-18 02:02:22');
INSERT INTO `review` VALUES (96, 'montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies', 71, 85, '2019-09-16 18:28:37');
INSERT INTO `review` VALUES (97, 'tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem', 82, 96, '2019-10-06 05:52:59');
INSERT INTO `review` VALUES (98, 'quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi.', 36, 10, '2019-07-11 23:40:41');
INSERT INTO `review` VALUES (99, 'sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam.', 94, 88, '2018-12-23 05:40:51');
INSERT INTO `review` VALUES (100, 'malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis', 6, 21, '2019-09-16 19:15:37');
INSERT INTO `review` VALUES (101, 'test', 1000, 31, '2019-12-11 14:54:17');
COMMIT;

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for support
-- ----------------------------
DROP TABLE IF EXISTS `support`;
CREATE TABLE `support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_service_user` (`uid`),
  KEY `fk_service_staff` (`staffid`),
  CONSTRAINT `fk_service_staff` FOREIGN KEY (`staffid`) REFERENCES `staff` (`id`),
  CONSTRAINT `fk_service_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'Elmo', 'male', 44, '1-283-881-1828', NULL, NULL);
INSERT INTO `user` VALUES (2, 'Sybill', 'male', 40, '1-233-302-1308', NULL, NULL);
INSERT INTO `user` VALUES (3, 'Alexa', 'female', 25, '1-822-778-4731', NULL, NULL);
INSERT INTO `user` VALUES (4, 'Simon', 'male', 20, '1-238-964-7460', NULL, NULL);
INSERT INTO `user` VALUES (5, 'Jorden', 'male', 41, '1-137-397-6513', NULL, NULL);
INSERT INTO `user` VALUES (6, 'Giselle', 'female', 30, '1-975-656-9480', NULL, NULL);
INSERT INTO `user` VALUES (7, 'Kenyon', 'male', 26, '1-504-998-7151', NULL, NULL);
INSERT INTO `user` VALUES (8, 'Ulric', 'female', 18, '1-132-839-8907', NULL, NULL);
INSERT INTO `user` VALUES (9, 'Chantale', 'male', 46, '1-940-456-5089', NULL, NULL);
INSERT INTO `user` VALUES (10, 'Amir', 'male', 26, '1-856-207-1161', NULL, NULL);
INSERT INTO `user` VALUES (11, 'Hillary', 'female', 44, '1-780-887-4095', NULL, NULL);
INSERT INTO `user` VALUES (12, 'Thane', 'female', 20, '1-268-290-7820', NULL, NULL);
INSERT INTO `user` VALUES (13, 'Casey', 'male', 20, '1-972-158-8915', NULL, NULL);
INSERT INTO `user` VALUES (14, 'Matthew', 'female', 20, '1-846-238-4904', NULL, NULL);
INSERT INTO `user` VALUES (15, 'Connor', 'female', 38, '1-773-689-0677', NULL, NULL);
INSERT INTO `user` VALUES (16, 'Hiroko', 'male', 42, '1-111-810-7010', NULL, NULL);
INSERT INTO `user` VALUES (17, 'Marshall', 'female', 36, '1-405-629-5361', NULL, NULL);
INSERT INTO `user` VALUES (18, 'Candice', 'male', 48, '1-802-160-0102', NULL, NULL);
INSERT INTO `user` VALUES (19, 'Sopoline', 'female', 24, '1-624-380-4251', NULL, NULL);
INSERT INTO `user` VALUES (20, 'Patrick', 'female', 39, '1-938-947-1483', NULL, NULL);
INSERT INTO `user` VALUES (21, 'Audra', 'male', 38, '1-575-546-2635', NULL, NULL);
INSERT INTO `user` VALUES (22, 'Ignacia', 'male', 42, '1-259-348-2133', NULL, NULL);
INSERT INTO `user` VALUES (23, 'Kennedy', 'male', 21, '1-404-255-2347', NULL, NULL);
INSERT INTO `user` VALUES (24, 'Slade', 'male', 21, '1-785-576-6506', NULL, NULL);
INSERT INTO `user` VALUES (25, 'Guinevere', 'female', 29, '1-257-515-4680', NULL, NULL);
INSERT INTO `user` VALUES (26, 'Julie', 'male', 35, '1-219-520-1963', NULL, NULL);
INSERT INTO `user` VALUES (27, 'Odessa', 'female', 48, '1-314-118-2091', NULL, NULL);
INSERT INTO `user` VALUES (28, 'Cyrus', 'male', 45, '1-593-606-2275', NULL, NULL);
INSERT INTO `user` VALUES (29, 'Ruby', 'female', 37, '1-669-679-7180', NULL, NULL);
INSERT INTO `user` VALUES (30, 'Maggie', 'male', 50, '1-616-423-9111', NULL, NULL);
INSERT INTO `user` VALUES (31, 'David', 'female', 42, '1-752-660-1441', NULL, NULL);
INSERT INTO `user` VALUES (32, 'Katell', 'female', 30, '1-697-347-3892', NULL, NULL);
INSERT INTO `user` VALUES (33, 'Samuel', 'male', 24, '1-904-874-2740', NULL, NULL);
INSERT INTO `user` VALUES (34, 'Winter', 'male', 21, '1-355-156-5102', NULL, NULL);
INSERT INTO `user` VALUES (35, 'Wylie', 'male', 46, '1-318-436-4954', NULL, NULL);
INSERT INTO `user` VALUES (36, 'Kerry', 'female', 40, '1-754-255-2272', NULL, NULL);
INSERT INTO `user` VALUES (37, 'Murphy', 'female', 22, '1-724-677-9357', NULL, NULL);
INSERT INTO `user` VALUES (38, 'Clementine', 'male', 44, '1-527-810-8579', NULL, NULL);
INSERT INTO `user` VALUES (39, 'James', 'female', 28, '1-601-709-2764', NULL, NULL);
INSERT INTO `user` VALUES (40, 'Azalia', 'female', 37, '1-304-645-5172', NULL, NULL);
INSERT INTO `user` VALUES (41, 'Violet', 'male', 39, '1-469-344-9737', NULL, NULL);
INSERT INTO `user` VALUES (42, 'Steel', 'male', 43, '1-428-851-7889', NULL, NULL);
INSERT INTO `user` VALUES (43, 'Malachi', 'male', 49, '1-166-363-4506', NULL, NULL);
INSERT INTO `user` VALUES (44, 'Amethyst', 'female', 20, '1-358-787-2399', NULL, NULL);
INSERT INTO `user` VALUES (45, 'Keith', 'female', 27, '1-152-260-5725', NULL, NULL);
INSERT INTO `user` VALUES (46, 'Audra', 'male', 36, '1-957-232-6851', NULL, NULL);
INSERT INTO `user` VALUES (47, 'Simone', 'male', 18, '1-182-874-9390', NULL, NULL);
INSERT INTO `user` VALUES (48, 'Sebastian', 'male', 29, '1-220-797-6589', NULL, NULL);
INSERT INTO `user` VALUES (49, 'Brian', 'female', 37, '1-675-710-1989', NULL, NULL);
INSERT INTO `user` VALUES (50, 'Carissa', 'male', 38, '1-315-832-0740', NULL, NULL);
INSERT INTO `user` VALUES (51, 'Joel', 'female', 35, '1-389-519-9883', NULL, NULL);
INSERT INTO `user` VALUES (52, 'Quamar', 'female', 49, '1-361-874-7194', NULL, NULL);
INSERT INTO `user` VALUES (53, 'Zachary', 'male', 26, '1-712-609-8562', NULL, NULL);
INSERT INTO `user` VALUES (54, 'Kristen', 'female', 32, '1-676-891-1281', NULL, NULL);
INSERT INTO `user` VALUES (55, 'Darrel', 'female', 34, '1-561-641-9304', NULL, NULL);
INSERT INTO `user` VALUES (56, 'Shafira', 'male', 22, '1-298-456-8464', NULL, NULL);
INSERT INTO `user` VALUES (57, 'Oscar', 'male', 48, '1-135-567-9906', NULL, NULL);
INSERT INTO `user` VALUES (58, 'Brock', 'female', 31, '1-354-330-1642', NULL, NULL);
INSERT INTO `user` VALUES (59, 'Roth', 'female', 45, '1-261-674-3883', NULL, NULL);
INSERT INTO `user` VALUES (60, 'Eugenia', 'female', 20, '1-919-411-4285', NULL, NULL);
INSERT INTO `user` VALUES (61, 'Jamalia', 'male', 30, '1-307-857-9251', NULL, NULL);
INSERT INTO `user` VALUES (62, 'Colby', 'male', 20, '1-507-653-0306', NULL, NULL);
INSERT INTO `user` VALUES (63, 'Kimberley', 'female', 29, '1-337-238-0869', NULL, NULL);
INSERT INTO `user` VALUES (64, 'Nehru', 'male', 37, '1-173-860-0795', NULL, NULL);
INSERT INTO `user` VALUES (65, 'Mariko', 'male', 33, '1-837-417-3478', NULL, NULL);
INSERT INTO `user` VALUES (66, 'Imelda', 'male', 29, '1-796-768-5349', NULL, NULL);
INSERT INTO `user` VALUES (67, 'Kessie', 'female', 34, '1-695-354-9792', NULL, NULL);
INSERT INTO `user` VALUES (68, 'Cullen', 'male', 37, '1-179-953-4509', NULL, NULL);
INSERT INTO `user` VALUES (69, 'Hiram', 'female', 23, '1-570-987-0997', NULL, NULL);
INSERT INTO `user` VALUES (70, 'Serena', 'female', 28, '1-256-157-9244', NULL, NULL);
INSERT INTO `user` VALUES (71, 'Iola', 'female', 34, '1-958-883-8719', NULL, NULL);
INSERT INTO `user` VALUES (72, 'Steven', 'female', 19, '1-868-589-5541', NULL, NULL);
INSERT INTO `user` VALUES (73, 'Lillith', 'male', 46, '1-551-545-1056', NULL, NULL);
INSERT INTO `user` VALUES (74, 'Kathleen', 'female', 45, '1-668-499-3678', NULL, NULL);
INSERT INTO `user` VALUES (75, 'Baker', 'male', 20, '1-537-440-2345', NULL, NULL);
INSERT INTO `user` VALUES (76, 'Garrison', 'female', 31, '1-110-780-0408', NULL, NULL);
INSERT INTO `user` VALUES (77, 'Ruth', 'female', 36, '1-383-571-7712', NULL, NULL);
INSERT INTO `user` VALUES (78, 'Lars', 'female', 36, '1-905-323-7654', NULL, NULL);
INSERT INTO `user` VALUES (79, 'Celeste', 'female', 39, '1-844-905-9055', NULL, NULL);
INSERT INTO `user` VALUES (80, 'Amethyst', 'female', 46, '1-192-870-4755', NULL, NULL);
INSERT INTO `user` VALUES (81, 'Austin', 'male', 21, '1-267-350-0864', NULL, NULL);
INSERT INTO `user` VALUES (82, 'Lars', 'male', 24, '1-435-450-6940', NULL, NULL);
INSERT INTO `user` VALUES (83, 'Cooper', 'male', 19, '1-744-924-4433', NULL, NULL);
INSERT INTO `user` VALUES (84, 'Yvette', 'male', 27, '1-784-322-1620', NULL, NULL);
INSERT INTO `user` VALUES (85, 'Libby', 'female', 19, '1-913-980-2882', NULL, NULL);
INSERT INTO `user` VALUES (86, 'Jared', 'male', 29, '1-579-275-9141', NULL, NULL);
INSERT INTO `user` VALUES (87, 'Blaine', 'female', 20, '1-955-920-9392', NULL, NULL);
INSERT INTO `user` VALUES (88, 'Cadman', 'male', 31, '1-930-462-6628', NULL, NULL);
INSERT INTO `user` VALUES (89, 'Randall', 'female', 46, '1-513-774-9565', NULL, NULL);
INSERT INTO `user` VALUES (90, 'Hayden', 'male', 18, '1-281-391-5788', NULL, NULL);
INSERT INTO `user` VALUES (91, 'Heather', 'female', 39, '1-113-711-6020', NULL, NULL);
INSERT INTO `user` VALUES (92, 'Jonas', 'female', 41, '1-958-370-8496', NULL, NULL);
INSERT INTO `user` VALUES (93, 'Brody', 'female', 48, '1-740-903-7564', NULL, NULL);
INSERT INTO `user` VALUES (94, 'Keaton', 'female', 26, '1-733-208-9466', NULL, NULL);
INSERT INTO `user` VALUES (95, 'Dorothy', 'male', 30, '1-653-743-3309', NULL, NULL);
INSERT INTO `user` VALUES (96, 'Sopoline', 'female', 18, '1-742-805-5600', NULL, NULL);
INSERT INTO `user` VALUES (97, 'Martena', 'male', 31, '1-254-472-6677', NULL, NULL);
INSERT INTO `user` VALUES (98, 'Lars', 'female', 30, '1-458-185-0093', NULL, NULL);
INSERT INTO `user` VALUES (99, 'Urielle', 'female', 50, '1-780-490-3224', NULL, NULL);
INSERT INTO `user` VALUES (100, 'Oleg', 'female', 43, '1-956-897-9887', NULL, NULL);
INSERT INTO `user` VALUES (1000, 'Admin', 'male', NULL, NULL, 'admin', '123456');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

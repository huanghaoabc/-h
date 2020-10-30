/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : leava

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2020-07-30 13:25:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `leave`
-- ----------------------------
DROP TABLE IF EXISTS `leave`;
CREATE TABLE `leave` (
  `leave_num` int(65) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(65,0) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `teacher1_id` decimal(65,0) DEFAULT NULL,
  `teacher2_id` decimal(65,0) DEFAULT NULL,
  `s_type` varchar(2) DEFAULT NULL,
  `ensure` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`leave_num`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave
-- ----------------------------
INSERT INTO `leave` VALUES ('1', '173110008', '2020-06-17 00:00:00', '2020-06-17 00:00:00', '事假', '2', '111111', '333333', '1', '');
INSERT INTO `leave` VALUES ('2', '173110008', '2020-06-17 00:00:00', '2020-06-17 00:00:00', '病假', '0', '111111', '333333', '2', 'cloud://test-ede5j.7465-test-ede5j-1302445943/wxcfc45e2e8428ffec.o6zAJs7U82RbfOkLaMqeHNTV-WHo.OaK5cPakRsTsf6e7ca8ee47029720787db4a1f34c79a.jpg');
INSERT INTO `leave` VALUES ('3', '173110008', '2020-06-17 00:00:00', '2020-06-18 00:00:00', '生病了，想请假2天', '2', '111111', '333333', '2', 'cloud://test-ede5j.7465-test-ede5j-1302445943/wxcfc45e2e8428ffec.o6zAJs7U82RbfOkLaMqeHNTV-WHo.mj5ve1UVAWqNf6e7ca8ee47029720787db4a1f34c79a.jpg');
INSERT INTO `leave` VALUES ('4', '173110008', '2020-06-22 00:00:00', '2020-06-22 00:00:00', '有事请假', '1', '222222', '333333', '1', 'cloud://test-ede5j.7465-test-ede5j-1302445943/wxcfc45e2e8428ffec.o6zAJs7U82RbfOkLaMqeHNTV-WHo.uGFc8yOJ8cprf6e7ca8ee47029720787db4a1f34c79a.jpg');
INSERT INTO `leave` VALUES ('5', '173110008', '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'youshi', '2', '222222', '333333', '1', 'cloud://test-ede5j.7465-test-ede5j-1302445943/wxcfc45e2e8428ffec.o6zAJs7U82RbfOkLaMqeHNTV-WHo.E3GOaYag2sbkf6e7ca8ee47029720787db4a1f34c79a.jpg');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` decimal(65,0) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `s_class` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('173110008', '黄豪', '1708', 'pbkdf2:sha256:150000$xea2el2V$7eec86f247c4bdee2cda6eb1fe971699237841a3fa408283bb89923ab4a8939a', '东5/6栋 102');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` decimal(65,0) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('111111', 'yy', 'pbkdf2:sha256:150000$pG3ciSoD$44dedaffa8ecfe76eee929d097df2fa6a12e00e90afdf2e0b22936045ee4f5d9', '0', '计算机学院');
INSERT INTO `teacher` VALUES ('222222', 'xx', 'pbkdf2:sha256:150000$pG3ciSoD$44dedaffa8ecfe76eee929d097df2fa6a12e00e90afdf2e0b22936045ee4f5d9', '0', '计算机学院');
INSERT INTO `teacher` VALUES ('333333', 'zz', 'pbkdf2:sha256:150000$pG3ciSoD$44dedaffa8ecfe76eee929d097df2fa6a12e00e90afdf2e0b22936045ee4f5d9', '1', '计算机学院');

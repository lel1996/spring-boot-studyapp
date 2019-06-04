/*
Navicat MySQL Data Transfer

Source Server         : lierlin
Source Server Version : 50725
Source Host           : 47.102.205.163:3306
Source Database       : app

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-04 12:28:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer_post
-- ----------------------------
DROP TABLE IF EXISTS `answer_post`;
CREATE TABLE `answer_post` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `question_id` int(100) NOT NULL COMMENT '习题id',
  `user_id` int(100) NOT NULL COMMENT '答题人id',
  `answer_content` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '答案',
  `score` int(10) DEFAULT '0' COMMENT '得分',
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of answer_post
-- ----------------------------
INSERT INTO `answer_post` VALUES ('1', '3', '1', '这就是答案', '0', '2018-06-12 15:41:18');
INSERT INTO `answer_post` VALUES ('2', '3', '1', '这又是一条答案', '0', '2018-06-12 15:42:36');
INSERT INTO `answer_post` VALUES ('3', '3', '1', '这也是一条答案', '0', '2018-06-12 15:43:16');

-- ----------------------------
-- Table structure for case
-- ----------------------------
DROP TABLE IF EXISTS `case`;
CREATE TABLE `case` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) DEFAULT NULL,
  `coursename` varchar(100) DEFAULT NULL COMMENT '课程名称',
  `schoolname` varchar(100) DEFAULT NULL COMMENT '学校',
  `college` varchar(100) DEFAULT NULL COMMENT '学院名称',
  `video` varchar(255) DEFAULT NULL COMMENT '视频路径',
  `page` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of case
-- ----------------------------
INSERT INTO `case` VALUES ('1', 'http://www.lierlin.work:8080/images/image/VideoRes/1 (4).jpg', '实验一', '周口师范', '计算机科学与技术学院', 'http://www.lierlin.work:8080/images/image/VideoRes/2.mp4', '1');
INSERT INTO `case` VALUES ('2', 'http://www.lierlin.work:8080/images/image/VideoRes/1 (4).jpg', '实验二', '周口师范', '计算机科学与技术学院', 'http://www.lierlin.work:8080/images/image/VideoRes/2.mp4', '1');
INSERT INTO `case` VALUES ('3', 'http://www.lierlin.work:8080/images/image/VideoRes/1 (4).jpg', '实验三', '周口师范', '计算机科学与技术学院', 'http://www.lierlin.work:8080/images/image/VideoRes/2.mp4', '1');
INSERT INTO `case` VALUES ('4', 'http://www.lierlin.work:8080/images/image/VideoRes/1 (4).jpg', '实验四', '周口师范', '计算机科学与技术学院', 'http://www.lierlin.work:8080/images/image/VideoRes/2.mp4', '1');
INSERT INTO `case` VALUES ('5', 'http://www.lierlin.work:8080/images/image/VideoRes/1 (4).jpg', '实验五', '周口师范', '计算机科学与技术学院', 'http://www.lierlin.work:8080/images/image/VideoRes/2.mp4', '1');
INSERT INTO `case` VALUES ('6', 'http://www.lierlin.work:8080/images/image/VideoRes/1 (4).jpg', '实验六', '周口师范', '计算机科学与技术学院', 'http://www.lierlin.work:8080/images/image/VideoRes/2.mp4', '1');
INSERT INTO `case` VALUES ('7', 'http://www.lierlin.work:8080/images/image/VideoRes/1 (4).jpg', '实验七', '周口师范', '计算机科学与技术学院', 'http://www.lierlin.work:8080/images/image/VideoRes/2.mp4', '1');
INSERT INTO `case` VALUES ('8', 'http://www.lierlin.work:8080/images/image/VideoRes/1 (4).jpg', '实验八', '周口师范', '计算机科学与技术学院', 'http://www.lierlin.work:8080/images/image/VideoRes/2.mp4', '2');

-- ----------------------------
-- Table structure for couse
-- ----------------------------
DROP TABLE IF EXISTS `couse`;
CREATE TABLE `couse` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(10) CHARACTER SET utf8 NOT NULL,
  `t_id` int(10) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of couse
-- ----------------------------
INSERT INTO `couse` VALUES ('1', '高等数学', '1');
INSERT INTO `couse` VALUES ('2', '大学英语', '2');
INSERT INTO `couse` VALUES ('3', '软件工程', '3');
INSERT INTO `couse` VALUES ('4', 'JAVA', '4');

-- ----------------------------
-- Table structure for couse_questions
-- ----------------------------
DROP TABLE IF EXISTS `couse_questions`;
CREATE TABLE `couse_questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '习题集id',
  `c_id` int(10) NOT NULL COMMENT '对应课程id',
  `q_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '习题集名称',
  `questions` varchar(128) CHARACTER SET utf8 DEFAULT '' COMMENT '习题集对应题目集合',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of couse_questions
-- ----------------------------
INSERT INTO `couse_questions` VALUES ('1', '3', '软件工程阶段一习题', '0,1,2,3,4,5');
INSERT INTO `couse_questions` VALUES ('2', '3', '软件工程阶段二习题', '1,2,3,4,5');
INSERT INTO `couse_questions` VALUES ('3', '3', '软件工程阶段三习题', '0,1,2,3,4,5');
INSERT INTO `couse_questions` VALUES ('4', '3', '软件工程期中测验', '0,1,2,3,4,5');
INSERT INTO `couse_questions` VALUES ('5', '3', '软件工程阶段四习题', '0,1,2,3,4,5');
INSERT INTO `couse_questions` VALUES ('6', '3', '软件工程阶段五习题', '0,1,2,3,4,5');
INSERT INTO `couse_questions` VALUES ('7', '3', '软件工程阶段六习题', '0,1,2,3,4,5');
INSERT INTO `couse_questions` VALUES ('8', '3', '软件工程阶段七习题', '0,1,2,3,4,5');
INSERT INTO `couse_questions` VALUES ('9', '3', '软件工程阶段八习题', '0,1,2,3,4,5');
INSERT INTO `couse_questions` VALUES ('10', '2', '软件工程阶段九习题', '0,1,2,3,4,5');

-- ----------------------------
-- Table structure for couse_questions_detail
-- ----------------------------
DROP TABLE IF EXISTS `couse_questions_detail`;
CREATE TABLE `couse_questions_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '题目id',
  `cq_id` int(10) NOT NULL COMMENT '对应习题集id',
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` int(1) NOT NULL,
  `itemA` varchar(30) CHARACTER SET utf8 NOT NULL,
  `itemB` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT 'title',
  `itemC` varchar(30) CHARACTER SET utf8 DEFAULT '',
  `itemD` varchar(30) CHARACTER SET utf8 DEFAULT '',
  `answer` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `score` int(3) NOT NULL,
  `num` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`itemA`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of couse_questions_detail
-- ----------------------------
INSERT INTO `couse_questions_detail` VALUES ('1', '0', '软件开发瀑布模型中的软件定义时期各个阶段依次是：', '1', '可行性研究，问题定义，需求分析', '问题定义，可行性研究，需求分析。', '可行性研究，需求分析，问题定义。', '    以上顺序都不对。', 'A', '10', '4');
INSERT INTO `couse_questions_detail` VALUES ('2', '1', '可行性研究主要从以下几个方面进行研究：', '1', '技术可行性，经济可行性，操作可行性。', '技术可行性，经济可行性，系统可行性。', '经济可行性，系统可行性，操作可行性。', '经济可行性，系统可行性，时间可行性。', 'C', '10', '4');
INSERT INTO `couse_questions_detail` VALUES ('3', '2', '软件危机具有下列表现:', '1', '对软件开发成本估计不准确', '软件产品的质量往往不可靠', '软件常常不可维护', '软件成本逐年上升', 'B', '10', '4');
INSERT INTO `couse_questions_detail` VALUES ('4', '3', '软件工程三要素是：', '0', '高技术人员、方法和工具', '方法、工具和过程', '方法、对象和类', '过程、模型、方法', 'B,C', '10', '4');
INSERT INTO `couse_questions_detail` VALUES ('5', '4', '软件工程学的目的和意义是：', '0', '应用科学的方法和工程化的规范管理来指导软件开发', '克服软件危机', '做好软件开发的培训工作', '以较低的成本开发出高质量的软件', 'A,B', '10', '4');
INSERT INTO `couse_questions_detail` VALUES ('6', '5', '快速原型模型的主要特点之一是：', '0', '开发完毕才见到产品', '及早提供全部完整的软件产品', '开发完毕后才见到工作软件', '及早提供工作软件', 'A', '10', '4');

-- ----------------------------
-- Table structure for main_res
-- ----------------------------
DROP TABLE IF EXISTS `main_res`;
CREATE TABLE `main_res` (
  `id` int(11) NOT NULL,
  `slider_res` varchar(512) DEFAULT '' COMMENT '主页滚动图片资源，1.jpg;2.jpg;3.jpg',
  `source_res` varchar(512) DEFAULT '' COMMENT '主页推荐课程资源  英语:1.jpg;软件工程:2.jpg',
  `vedio_res` varchar(512) DEFAULT '' COMMENT '主页推荐视频资源',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main_res
-- ----------------------------

-- ----------------------------
-- Table structure for main_slider_res
-- ----------------------------
DROP TABLE IF EXISTS `main_slider_res`;
CREATE TABLE `main_slider_res` (
  `id` int(11) NOT NULL,
  `img` varchar(64) DEFAULT '' COMMENT '图片url'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main_slider_res
-- ----------------------------
INSERT INTO `main_slider_res` VALUES ('1', 'http://www.lierlin.work:8080/images/image/SliderRes/1.jpg');
INSERT INTO `main_slider_res` VALUES ('2', 'http://www.lierlin.work:8080/images/image/SliderRes/2.jpg');
INSERT INTO `main_slider_res` VALUES ('3', 'http://www.lierlin.work:8080/images/image/SliderRes/1 (1).jpg ');
INSERT INTO `main_slider_res` VALUES ('4', 'http://www.lierlin.work:8080/images/image/SliderRes/1 (2).jpg ');

-- ----------------------------
-- Table structure for main_source_res
-- ----------------------------
DROP TABLE IF EXISTS `main_source_res`;
CREATE TABLE `main_source_res` (
  `id` int(11) NOT NULL,
  `img` varchar(64) DEFAULT '' COMMENT '图片url',
  `title` varchar(64) DEFAULT '' COMMENT '课程名字'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main_source_res
-- ----------------------------
INSERT INTO `main_source_res` VALUES ('1', 'http://www.lierlin.work:8080/images/image/SourceRes/2 (1).png', '高等数学');
INSERT INTO `main_source_res` VALUES ('2', 'http://www.lierlin.work:8080/images/image/SourceRes/2 (2).png', '大学英语');
INSERT INTO `main_source_res` VALUES ('3', 'http://www.lierlin.work:8080/images/image/SourceRes/2 (3).png', '软件工程');
INSERT INTO `main_source_res` VALUES ('4', 'http://www.lierlin.work:8080/images/image/SourceRes/2 (4).png', 'Java');

-- ----------------------------
-- Table structure for main_video_res
-- ----------------------------
DROP TABLE IF EXISTS `main_video_res`;
CREATE TABLE `main_video_res` (
  `id` int(11) NOT NULL,
  `img` varchar(64) DEFAULT '' COMMENT '图片url',
  `title` varchar(64) DEFAULT '' COMMENT '课程名字',
  `url` varchar(256) DEFAULT '' COMMENT '视频url资源路径'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main_video_res
-- ----------------------------
INSERT INTO `main_video_res` VALUES ('1', 'http://www.lierlin.work:8080/images/image/VideoRes/1 (3).jpg', 'Java', 'http://www.lierlin.work:8080/images/image/VideoRes/1.mp4');
INSERT INTO `main_video_res` VALUES ('2', 'http://www.lierlin.work:8080/images/image/VideoRes/1 (4).jpg', 'Python', 'http://www.lierlin.work:8080/images/image/VideoRes/2.mp4');

-- ----------------------------
-- Table structure for quanzi
-- ----------------------------
DROP TABLE IF EXISTS `quanzi`;
CREATE TABLE `quanzi` (
  `id` int(11) NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quanzi
-- ----------------------------
INSERT INTO `quanzi` VALUES ('1', 'JAVA');
INSERT INTO `quanzi` VALUES ('2', 'HTML5');
INSERT INTO `quanzi` VALUES ('3', '高等数学');
INSERT INTO `quanzi` VALUES ('4', '软件工程');
INSERT INTO `quanzi` VALUES ('5', '面向对象');
INSERT INTO `quanzi` VALUES ('6', 'C语言');

-- ----------------------------
-- Table structure for quanzidetailed
-- ----------------------------
DROP TABLE IF EXISTS `quanzidetailed`;
CREATE TABLE `quanzidetailed` (
  `id` int(11) NOT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `content` longtext,
  `praise` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quanzidetailed
-- ----------------------------
INSERT INTO `quanzidetailed` VALUES ('1', '软件工程', '风清扬', '2019-04-10 19:49:07', '软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。\r\n在现代社会中，软件应用于多个方面。典型的软件有电子邮件、嵌入式系统、人机界面、办公套件、操作系统、编译器、数据库、游戏等。同时，各个行业几乎都有计算机软件的应用，如工业、农业、银行、航空、政府部门等。这些应用促进了经济和社会的发展，也提高了工作效率和生活效率 ', '180', '15');

-- ----------------------------
-- Table structure for question_post
-- ----------------------------
DROP TABLE IF EXISTS `question_post`;
CREATE TABLE `question_post` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `theme_id` int(100) NOT NULL,
  `post_img` char(100) DEFAULT NULL,
  `post_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `post_content` varchar(300) CHARACTER SET utf8 NOT NULL,
  `post_readnum` int(100) DEFAULT NULL,
  `post_time` datetime NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `theme_id` (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of question_post
-- ----------------------------
INSERT INTO `question_post` VALUES ('1', '2', 'java.jpg', '123', 'java是一门怎样的语言，要怎样才能学好？', '0', '2018-06-13 15:07:18', '1');
INSERT INTO `question_post` VALUES ('2', '3', 'java.jpg', 'ghj', 'C#-----', '0', '2018-06-13 15:08:46', '1');
INSERT INTO `question_post` VALUES ('3', '2', 'java.jpg', '这是java的问题', 'java还能流行多久？', '0', '2018-06-19 15:12:30', '1');

-- ----------------------------
-- Table structure for reference_case
-- ----------------------------
DROP TABLE IF EXISTS `reference_case`;
CREATE TABLE `reference_case` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reference_case
-- ----------------------------
INSERT INTO `reference_case` VALUES ('1', 'http://www.lierlin.work:8080/images/image/TeachingRes/2-1.jpg', '计算机组成原理');
INSERT INTO `reference_case` VALUES ('2', 'http://www.lierlin.work:8080/images/image/TeachingRes/2-2.jpg', '计算机科学概论');
INSERT INTO `reference_case` VALUES ('3', 'http://www.lierlin.work:8080/images/image/TeachingRes/2-3.jpg', '计算机应用基础');
INSERT INTO `reference_case` VALUES ('4', 'http://www.lierlin.work:8080/images/image/TeachingRes/2-4.jpg', '计算机应用基础');

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `bank_id` int(4) NOT NULL,
  `questions_id` int(4) NOT NULL,
  `title` char(30) CHARACTER SET gbk NOT NULL,
  `type` int(1) NOT NULL,
  `itemA` varchar(30) DEFAULT NULL,
  `itemB` varchar(30) DEFAULT NULL,
  `itemC` varchar(30) DEFAULT NULL,
  `itemD` varchar(30) DEFAULT NULL,
  `answer` varchar(8) NOT NULL,
  `score` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subjects
-- ----------------------------
INSERT INTO `subjects` VALUES ('1', '1001', '0', '软件工程基础设计', '1', 'A', 'B', 'C', 'D', 'A', '10');
INSERT INTO `subjects` VALUES ('2', '1001', '1', '软件工程进阶设计', '1', 'AA', 'BB', 'CC', 'DD', 'C', '10');
INSERT INTO `subjects` VALUES ('3', '1001', '2', '软件工程告诫设计', '1', 'AAA', 'BBB', 'CCC', 'DDD', 'B', '10');
INSERT INTO `subjects` VALUES ('4', '1001', '3', '计算机基础', '0', 'E', 'F', 'G', 'X', 'B,C', '10');
INSERT INTO `subjects` VALUES ('5', '1001', '4', '计算机网络', '0', 'abc', 'adf', 'dfsaf', 'fdasdf', 'A,B,C', '10');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('40', 'wxj', '456');
INSERT INTO `user` VALUES ('43', 'qwe', '123');
INSERT INTO `user` VALUES ('42', 'lel', '123');
INSERT INTO `user` VALUES ('44', 'ert', '123');
INSERT INTO `user` VALUES ('45', 'wyc', 'wet');
INSERT INTO `user` VALUES ('67', '1', '1');
INSERT INTO `user` VALUES ('68', '2', '7');

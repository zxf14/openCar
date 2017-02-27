/*
Navicat MySQL Data Transfer

Source Server         : 101.201.75.130
Source Server Version : 50540
Source Host           : 101.201.75.130:3306
Source Database       : opencar

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-12-13 14:22:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(255) DEFAULT NULL,
  `admin_pass` varchar(255) DEFAULT NULL,
  `admin_passbak` varchar(255) DEFAULT NULL,
  `admin_role` int(11) DEFAULT NULL,
  `admin_name` varchar(30) DEFAULT NULL,
  `admin_sex` varchar(5) DEFAULT NULL,
  `admin_qq` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `admin_role` (`admin_role`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk COMMENT='InnoDB free: 4096 kB; (`admin_role`) REFER `xiaoerxinxigang/';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '7178fa743ab9f0c234aa2e2d4998a9e2', 'zft3285497', '1', '张三丰', '男', '328613764');
INSERT INTO `admin` VALUES ('3', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '123456', '14', '张依稀', '男', '4564536');
INSERT INTO `admin` VALUES ('5', 'niniqq', 'e10adc3949ba59abbe56e057f20f883e', '123456', '17', '妮妮', '女', '546456');
INSERT INTO `admin` VALUES ('6', 'kankan', 'e10adc3949ba59abbe56e057f20f883e', '123456', '21', '数据堆成', '男', '453553');

-- ----------------------------
-- Table structure for `adminmod`
-- ----------------------------
DROP TABLE IF EXISTS `adminmod`;
CREATE TABLE `adminmod` (
  `adminmod_id` int(11) NOT NULL AUTO_INCREMENT,
  `adminmod_code` varchar(500) DEFAULT NULL,
  `adminmod_is_cms` tinyint(4) DEFAULT '0',
  `adminmod_css` varchar(255) DEFAULT NULL,
  `adminmod_parent` int(11) DEFAULT NULL,
  `adminmod_style` tinyint(4) DEFAULT NULL,
  `adminmod_order` int(11) DEFAULT '1',
  PRIMARY KEY (`adminmod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of adminmod
-- ----------------------------
INSERT INTO `adminmod` VALUES ('1', '{\"id\":1,\"text\":\"管理员模块\",\"url\":\"javascript:void(0)\"}', '0', '1', '0', '1', '10');
INSERT INTO `adminmod` VALUES ('2', '{\"id\":2,\"text\":\"管理员\",\"url\":\"admin/goAdmin\"}', '0', '1', '1', '1', '3');
INSERT INTO `adminmod` VALUES ('3', '{\"id\":3,\"text\":\"角色管理\",\"url\":\"admin/goRole\"}', '0', '1', '1', '1', '2');
INSERT INTO `adminmod` VALUES ('4', '{\"id\":4,\"text\":\"权限分配\",\"url\":\"admin/goPrivalite\"}', '0', '1', '1', '1', '1');
INSERT INTO `adminmod` VALUES ('56', '{\"id\":1,\"text\":\"会员列表\",\"url\":\"admin/goUser\"}', '0', null, '55', null, '4');
INSERT INTO `adminmod` VALUES ('57', '{\"id\":1,\"text\":\"会员角色\",\"url\":\"admin/goUserType\"}', '0', null, '55', null, '3');
INSERT INTO `adminmod` VALUES ('12', '{\"id\":1,\"text\":\"菜单模块\",\"url\":\"javascript:void(0)\"}', '0', '1', '0', '1', '8');
INSERT INTO `adminmod` VALUES ('13', '{\"id\":11,\"text\":\"系统模块\",\"url\":\"admin/goModular\"}', '0', '1', '12', '1', '1');
INSERT INTO `adminmod` VALUES ('14', '{\"id\":11,\"text\":\"前台导航\",\"url\":\"admin/goRecept\"}', '0', '1', '12', '1', '1');
INSERT INTO `adminmod` VALUES ('15', '{\"id\":1,\"text\":\"基本设置\",\"url\":\"javascript:void(0)\"}', '0', '1', '0', '1', '11');
INSERT INTO `adminmod` VALUES ('16', '{\"id\":1,\"text\":\"网站基本信息\",\"url\":\"admin/goNetBase\"}', '0', '1', '15', '1', '4');
INSERT INTO `adminmod` VALUES ('17', '{\"id\":1,\"text\":\"邮件设置\",\"url\":\"admin/goSmtp\"}', '0', '1', '15', '1', '2');
INSERT INTO `adminmod` VALUES ('18', '{\"id\":1,\"text\":\"信息模板\",\"url\":\"admin/goInfoTpl\"}', '0', '1', '15', '1', '1');
INSERT INTO `adminmod` VALUES ('19', '{\"id\":1,\"text\":\"网站模板\",\"url\":\"admin/goNetTpl\"}', '0', '1', '15', '1', '3');
INSERT INTO `adminmod` VALUES ('55', '{\"id\":1,\"text\":\"会员管理\",\"url\":\"javascript:void(0)\"}', '0', null, '0', '1', '5');
INSERT INTO `adminmod` VALUES ('50', '{\"id\":1,\"text\":\"公司新闻\",\"url\":\"javascript:void(0)\"}', '1', null, '0', '1', '2');
INSERT INTO `adminmod` VALUES ('46', '{\"id\":1,\"text\":\"公司资料\",\"url\":\"javascript:void(0)\"}', '1', null, '0', '2', '1');
INSERT INTO `adminmod` VALUES ('47', '{\"id\":1,\"text\":\"公司简介\",\"url\":\"admin/modularCms?id=47\"}', '1', null, '46', '2', '6');
INSERT INTO `adminmod` VALUES ('48', '{\"id\":1,\"text\":\"联系我们\",\"url\":\"admin/modularCms?id=48\"}', '1', null, '46', '2', '6');
INSERT INTO `adminmod` VALUES ('49', '{\"id\":1,\"text\":\"我们的团队\",\"url\":\"admin/modularCms?id=49\"}', '1', null, '46', '2', '6');
INSERT INTO `adminmod` VALUES ('51', '{\"id\":1,\"text\":\"签单\",\"url\":\"admin/modularCms?id=51\"}', '1', null, '50', '1', '6');
INSERT INTO `adminmod` VALUES ('52', '{\"id\":1,\"text\":\"业内新闻\",\"url\":\"admin/modularCms?id=52\"}', '1', null, '50', '1', '5');
INSERT INTO `adminmod` VALUES ('53', '{\"id\":1,\"text\":\"媒体报道\",\"url\":\"admin/modularCms?id=53\"}', '1', null, '50', '1', '4');
INSERT INTO `adminmod` VALUES ('54', '{\"id\":1,\"text\":\"系统幻灯片\",\"url\":\"admin/slideList\"}', '0', null, '15', null, '1');
INSERT INTO `adminmod` VALUES ('58', '{\"id\":1,\"text\":\"外聘员工\",\"url\":\"admin/goAdminAuntList\"}', '0', null, '15', null, '1');
INSERT INTO `adminmod` VALUES ('59', '{\"id\":1,\"text\":\"商城系统\",\"url\":\"javascript:void(0)\"}', '0', null, '0', '1', '10');
INSERT INTO `adminmod` VALUES ('60', '{\"id\":1,\"text\":\"类型管理\",\"url\":\"admin/goGoodsType\"}', '0', null, '59', '1', '6');
INSERT INTO `adminmod` VALUES ('61', '{\"id\":1,\"text\":\"分类管理\",\"url\":\"admin/goGoodsCategory\"}', '0', null, '59', '1', '5');
INSERT INTO `adminmod` VALUES ('62', '{\"id\":1,\"text\":\"车库管理\",\"url\":\"admin/goGoodsList\"}', '0', null, '59', '1', '8');
INSERT INTO `adminmod` VALUES ('63', '{\"id\":1,\"text\":\"品牌管理\",\"url\":\"admin/goGoodsBrand\"}', '0', null, '59', '1', '3');
INSERT INTO `adminmod` VALUES ('69', '{\"id\":1,\"text\":\"订单管理\",\"url\":\"javascript:void(0)\"}', '0', null, '0', '1', '8');
INSERT INTO `adminmod` VALUES ('70', '{\"id\":1,\"text\":\"预约单\",\"url\":\"admin/myAdmin?tag=goGoodsOrderList&type=1\"}', '0', null, '69', '1', '6');
INSERT INTO `adminmod` VALUES ('71', '{\"id\":1,\"text\":\"订单\",\"url\":\"admin/myAdmin?tag=goGoodsOrderList&type=2\"}', '0', null, '69', '1', '4');
INSERT INTO `adminmod` VALUES ('72', '{\"id\":1,\"text\":\"信息化模块\",\"url\":\"javascript:void(0)\"}', '1', null, '0', '1', '5');
INSERT INTO `adminmod` VALUES ('73', '{\"id\":1,\"text\":\"精彩活动\",\"url\":\"admin/modularCms\"}', '1', null, '72', '1', '5');
INSERT INTO `adminmod` VALUES ('74', '{\"id\":1,\"text\":\"新闻中心\",\"url\":\"admin/modularCms\"}', '1', null, '72', '1', '2');
INSERT INTO `adminmod` VALUES ('75', '{\"id\":1,\"text\":\"师机风采\",\"url\":\"admin/modularCms\"}', '1', null, '72', '1', '1');
INSERT INTO `adminmod` VALUES ('79', '{\"id\":1,\"text\":\"合作商\",\"url\":\"admin/goCooperation?flag=1\"}', '0', null, '15', null, '2');
INSERT INTO `adminmod` VALUES ('80', '{\"id\":1,\"text\":\"友情链接\",\"url\":\"admin/goCooperation?flag=2\"}', '0', null, '15', null, '2');
INSERT INTO `adminmod` VALUES ('89', '{\"id\":1,\"text\":\"帮助中心\",\"url\":\"javascript:void(0)\"}', '1', null, '0', '1', '3');
INSERT INTO `adminmod` VALUES ('90', '{\"id\":1,\"text\":\"租车预订\",\"url\":\"admin/modularCms\"}', '1', null, '89', '1', '9');
INSERT INTO `adminmod` VALUES ('91', '{\"id\":1,\"text\":\"会员服务\",\"url\":\"admin/modularCms\"}', '1', null, '89', '1', '8');
INSERT INTO `adminmod` VALUES ('92', '{\"id\":1,\"text\":\"常见问题\",\"url\":\"admin/modularCms\"}', '1', null, '89', '1', '7');
INSERT INTO `adminmod` VALUES ('93', '{\"id\":1,\"text\":\"我们的服务\",\"url\":\"admin/modularCms\"}', '1', null, '89', '1', '6');
INSERT INTO `adminmod` VALUES ('94', '{\"id\":1,\"text\":\"服务时间\",\"url\":\"admin/modularCms\"}', '1', null, '90', '2', '9');
INSERT INTO `adminmod` VALUES ('95', '{\"id\":1,\"text\":\"服务预订\",\"url\":\"admin/modularCms\"}', '1', null, '90', '2', '8');
INSERT INTO `adminmod` VALUES ('96', '{\"id\":1,\"text\":\"短租产品\",\"url\":\"admin/modularCms\"}', '1', null, '90', '2', '7');

-- ----------------------------
-- Table structure for `adminrole`
-- ----------------------------
DROP TABLE IF EXISTS `adminrole`;
CREATE TABLE `adminrole` (
  `adminrole_id` int(11) NOT NULL AUTO_INCREMENT,
  `adminrole_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminrole_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of adminrole
-- ----------------------------
INSERT INTO `adminrole` VALUES ('1', '超级管理员');
INSERT INTO `adminrole` VALUES ('2', '授权管理');
INSERT INTO `adminrole` VALUES ('14', '合作商管理');
INSERT INTO `adminrole` VALUES ('15', '增值服务');
INSERT INTO `adminrole` VALUES ('16', '产品试用');
INSERT INTO `adminrole` VALUES ('17', '客服');
INSERT INTO `adminrole` VALUES ('21', '外部销售');
INSERT INTO `adminrole` VALUES ('22', '内容管理');

-- ----------------------------
-- Table structure for `apply`
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `apply_id` int(11) NOT NULL,
  `apply_user` int(11) DEFAULT NULL,
  `apply_customer` int(11) DEFAULT NULL,
  `apply_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`apply_id`),
  KEY `fk_apply_user` (`apply_user`) USING BTREE,
  KEY `fk_apply_customer` (`apply_customer`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of apply
-- ----------------------------

-- ----------------------------
-- Table structure for `apply_admin`
-- ----------------------------
DROP TABLE IF EXISTS `apply_admin`;
CREATE TABLE `apply_admin` (
  `apply_admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `apply_admin_user` int(11) DEFAULT NULL,
  `apply_admin_customer` int(11) DEFAULT NULL,
  `apply_admin_flag` int(11) DEFAULT '0',
  `apply_admin_reason` varchar(200) DEFAULT NULL,
  `apply_admin_day` int(11) DEFAULT NULL,
  `apply_admin_time` datetime DEFAULT NULL,
  PRIMARY KEY (`apply_admin_id`),
  KEY `fk_apply_admin_user` (`apply_admin_user`) USING BTREE,
  KEY `fk_apply_admin_customer` (`apply_admin_customer`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of apply_admin
-- ----------------------------
INSERT INTO `apply_admin` VALUES ('4', '1', '7', '1', '让他让他一人同意', null, '2015-06-27 12:17:01');
INSERT INTO `apply_admin` VALUES ('5', '1', '10', '0', null, null, '2016-07-28 13:43:18');

-- ----------------------------
-- Table structure for `aunt`
-- ----------------------------
DROP TABLE IF EXISTS `aunt`;
CREATE TABLE `aunt` (
  `aunt_id` int(11) NOT NULL AUTO_INCREMENT,
  `aunt_name` varchar(255) DEFAULT NULL,
  `aunt_head` varchar(255) DEFAULT NULL,
  `aunt_type` int(11) DEFAULT NULL,
  `aunt_birthday` varchar(255) DEFAULT NULL,
  `aunt_decretion` tinyint(4) DEFAULT NULL,
  `aunt_decretion_id` int(11) DEFAULT NULL,
  `aunt_decretion_name` varchar(255) DEFAULT NULL,
  `aunt_no` varchar(255) DEFAULT NULL,
  `aunt_tel` varchar(255) DEFAULT NULL,
  `aunt_flag` tinyint(4) DEFAULT NULL,
  `aunt_endDate` varchar(255) DEFAULT NULL,
  `aunt_con_startdate` varchar(255) DEFAULT NULL,
  `aunt_con_enddate` varchar(255) DEFAULT NULL,
  `aunt_con_desc` text,
  PRIMARY KEY (`aunt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aunt
-- ----------------------------
INSERT INTO `aunt` VALUES ('235', '奥巴马', 'upload/6/5/46ccc434-c9f5-4b60-845f-f2824843d6d0_201612131257275727.jpg', '0', '2011-12-13', '2', '1', '张三丰', '513021198208256074', '15228932523', '1', null, '', '', '让我们征服全世界都吧~');
INSERT INTO `aunt` VALUES ('241', '姜文', 'upload/12/3/9cff6b84-8be0-4dde-b3e6-03480f043c03_20161213130146146.jpg', '0', '2016-11-29', '2', '1', '张三丰', '512023198309022434', '15228932523', '1', null, '', '', '坚持‘质的增长高于量的增长’的发展哲学');
INSERT INTO `aunt` VALUES ('237', '葛优', 'upload/3/3/37cc47e1-1613-4ad3-89ee-0f48f0a89467_20161213125907597.jpg', '0', '2016-12-13', '2', '1', '张三丰', '513021198208256076', '18980901670', '1', null, '', '', '倡导活力、环保与健康的生活态度，是广汽丰田与广州马拉松共有的理念');
INSERT INTO `aunt` VALUES ('238', '郭德纲', 'upload/13/5/cd04ad00-875d-4251-9968-288490d23ff3_201612131259355935.jpeg', '0', '2016-12-13', '2', '1', '张三丰', '513021198208256077', '18980901670', '1', null, '', '', '倡导活力、环保与健康的生活态度，是广汽丰田与广州马拉松共有的理念');
INSERT INTO `aunt` VALUES ('239', '皮特先生', 'upload/6/2/31372c27-5248-4093-b280-e40ee773e2fe_201612131259595959.jpg', '0', '2016-12-13', '2', '1', '张三丰', '513021198208256078', '18980901670', '1', null, '', '', '倡导活力、环保与健康的生活态度，是广汽丰田与广州马拉松共有的理念');
INSERT INTO `aunt` VALUES ('240', 'Mr 李', 'upload/2/3/5b9ca259-c6b8-41db-ab2a-d1ed7e111238_20161213130024024.png', '0', '2016-12-13', '2', '1', '张三丰', '513021198208256079', '18980901670', '1', null, '', '', '倡导活力、环保与健康的生活态度，是广汽丰田与广州马拉松共有的理念');

-- ----------------------------
-- Table structure for `aunt_img`
-- ----------------------------
DROP TABLE IF EXISTS `aunt_img`;
CREATE TABLE `aunt_img` (
  `aunt_img_id` int(11) NOT NULL AUTO_INCREMENT,
  `aunt_img_aunt` int(11) DEFAULT NULL,
  `aunt_img_path` varchar(255) DEFAULT NULL,
  `aunt_img_small_path` varchar(255) DEFAULT NULL,
  `aunt_img_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aunt_img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aunt_img
-- ----------------------------
INSERT INTO `aunt_img` VALUES ('13', '1', 'upload/20160717095001501.jpg', 'upload/20160717095001501_min.jpg', 'cm');
INSERT INTO `aunt_img` VALUES ('14', '1', 'upload/20160717095008508.jpg', 'upload/20160717095008508_min.jpg', 'cm');
INSERT INTO `aunt_img` VALUES ('15', '1', 'upload/201607170950125012.jpg', 'upload/201607170950125012_min.jpg', 'cm');
INSERT INTO `aunt_img` VALUES ('16', '2', 'upload/201607301640424042.jpg', 'upload/201607301640424042_min.jpg', 'ta');
INSERT INTO `aunt_img` VALUES ('17', '2', 'upload/201607301640484048.jpg', 'upload/201607301640484048_min.jpg', 'ta');
INSERT INTO `aunt_img` VALUES ('19', '4', 'upload/201607302249444944.jpg', 'upload/201607302249444944_min.jpg', 'ta');
INSERT INTO `aunt_img` VALUES ('20', '4', 'upload/201607302249494949.jpg', 'upload/201607302249494949_min.jpg', 'ta');

-- ----------------------------
-- Table structure for `authorization`
-- ----------------------------
DROP TABLE IF EXISTS `authorization`;
CREATE TABLE `authorization` (
  `authorization_id` int(11) NOT NULL AUTO_INCREMENT,
  `authorization_www` varchar(255) DEFAULT NULL,
  `authorization_name` varchar(255) DEFAULT NULL,
  `authorization_user` varchar(255) DEFAULT NULL,
  `authorization_tel` varchar(255) DEFAULT NULL,
  `authorization_qq` varchar(255) DEFAULT NULL,
  `authorization_admin` varchar(255) DEFAULT NULL,
  `authorization_price` decimal(10,0) DEFAULT NULL,
  `authorization_time` varchar(50) DEFAULT NULL,
  `authorization_endtime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`authorization_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of authorization
-- ----------------------------
INSERT INTO `authorization` VALUES ('2', 'www.kankan.com', '迅雷', '雷军', '15589632565', '56982356', 'zfting', '5500', '2015-01-14', '2015-01-29');

-- ----------------------------
-- Table structure for `cms`
-- ----------------------------
DROP TABLE IF EXISTS `cms`;
CREATE TABLE `cms` (
  `cms_id` int(11) NOT NULL AUTO_INCREMENT,
  `cms_name` varchar(255) DEFAULT NULL,
  `cms_style` varchar(255) DEFAULT NULL,
  `cms_suroce` varchar(255) DEFAULT NULL,
  `cms_peron` varchar(255) DEFAULT NULL,
  `cms_content` mediumtext,
  `cms_time` datetime DEFAULT NULL,
  `cms_admin_mod` int(11) DEFAULT NULL,
  `cms_flag` tinyint(255) DEFAULT '0',
  `cms_order` int(11) DEFAULT NULL,
  `cms_img` varchar(255) DEFAULT NULL,
  `cms_description` varchar(500) DEFAULT NULL,
  `cms_keyword` varchar(500) DEFAULT NULL,
  `cms_spare1` varchar(255) DEFAULT NULL,
  `cms_spare2` varchar(255) DEFAULT NULL,
  `cms_spare3` varchar(255) DEFAULT NULL,
  `cms_spare4` varchar(255) DEFAULT NULL,
  `cms_spare5` varchar(255) DEFAULT NULL,
  `cms_spare6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cms_id`),
  KEY `fk_cms_admin_mod` (`cms_admin_mod`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of cms
-- ----------------------------
INSERT INTO `cms` VALUES ('40', '公司简介', '公司简介', '网易', '张丰毅', '<p>&nbsp;大家好安静会就爱就爱就爱就爱</p>', '2015-06-30 22:08:42', '47', '0', '1', 'upload/2/9/e481984f-a911-41ca-971f-c4f9abf1b370_ren.jpg', '梵蒂冈', '公司简介', null, null, null, null, null, null);
INSERT INTO `cms` VALUES ('41', '联系我们', '联系我们', '联系我们', '张三丰', '<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(102, 102, 102); font-family: Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, Arial, sans-serif;\"><span style=\"box-sizing: border-box; font-family: 微软雅黑; font-size: 15px;\">&nbsp; &nbsp; &nbsp; &nbsp; 成都维熵科技有限责任公司是一家专业的电子商务信息化技术服务供应商，致力于电商、渠道、资金安全等方面的技术服务，公司融分析策划、定制开发、售后维护、培训指导为一体的信息化服务。通过整合优势资源、数据为客户提供专业的系统建设方案，以技术提升用户体验，多通道、多渠道推进运营和发展。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(102, 102, 102); font-family: Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, Arial, sans-serif;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(102, 102, 102); font-family: Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, Arial, sans-serif;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 15px;\">客服电话：028-85980903</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(102, 102, 102); font-family: Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, Arial, sans-serif;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 15px;\">合作电话：18980901670</span></span></p>\r\n<p>&nbsp;</p>', '2015-06-30 23:39:13', '48', '1', '1', 'upload/15/10/c0b6fe38-b3ae-4f23-9b55-eb2a9d188b0a_20161213130310310.jpg', '联系我们', '联系我们', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('42', '我们的团队', '我们的团队', '我们的团队', '张三丰', '<p>我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队我们的团队</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2015-06-30 23:41:55', '49', '2', '1', 'upload/2/9/e481984f-a911-41ca-971f-c4f9abf1b370_ren.jpg', '我们的团队', '我们的团队', null, null, null, null, null, null);
INSERT INTO `cms` VALUES ('45', '业内新闻', '业内新闻', '业内新闻', '张三丰', '<p>业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻业内新闻</p>\r\n<p>&nbsp;</p>', '2015-07-01 09:27:14', '52', '0', '1', '', '业内新闻', '业内新闻', null, null, null, null, null, null);
INSERT INTO `cms` VALUES ('44', '签单测试1', '签单测试1', '签单测试1', '张三丰', '<p>签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1签单测试1</p>\r\n<p>&nbsp;</p>', '2015-07-01 09:07:22', '51', '1', '2', '', '签单测试1签单测试1', '签单测试1', null, null, null, null, null, null);
INSERT INTO `cms` VALUES ('48', '服务时间', '服务时间', '服务时间', '张三丰', '<p>服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间服务时间</p>\r\n<p>&nbsp;</p>', '2016-07-16 16:19:05', '94', '0', '1', '', '服务时间', '服务时间', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('49', '服务预订', '服务预订', '服务预订', '张三丰', '<p><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft YaHei\'; font-size: 14px; line-height: 42px;\">服务预订</span></p>\r\n<p>&nbsp;</p>', '2016-07-16 16:42:10', '95', '0', '1', '', '服务预订', '服务预订', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('50', '春节租车开放预订 先下手为强！', '春节租车开放预订 先下手为强！', '', '张三丰', '<p><img src=\"/userfiles/image/c1_r2_c1.jpg\" width=\"790\" height=\"230\" alt=\"\" /></p>\r\n<p><img src=\"/userfiles/image/c1_r4_c1.jpg\" width=\"790\" height=\"230\" alt=\"\" /></p>\r\n<p><img src=\"/userfiles/image/c1_r6_c1.jpg\" width=\"790\" height=\"230\" alt=\"\" /></p>\r\n<p><img src=\"/userfiles/image/c1_r8_c1.jpg\" width=\"790\" height=\"230\" alt=\"\" /></p>\r\n<p><img src=\"/userfiles/image/c1_r10_c2.jpg\" width=\"790\" height=\"231\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2016-12-13 12:42:14', '73', '1', '99', 'upload/15/2/2bfbaffa-07c0-4c2e-821a-bea290d24247_20161213124009409.jpg', '春节租车开放预订，过年租车预订规则早知道，春节租车出游早规划，包括租期、营业时间、预付规则、续租、异地还车、提前还车', '春节租车开放预订 先下手为强！', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('51', '新用户专享，150元见面礼', '新用户专享，150元见面礼', '', '张三丰', '<p><span style=\"color: rgb(147, 154, 159); font-family: Helvetica, &quot;Microsoft yahei&quot;, Arial, Verdana, SimHei, sans-serif; font-size: 16px; text-align: justify;\">新用户注册赢豪礼！150元新用户专享租车代金券等你来拿，从4月1日起，新用户注册即送100元电子代金券，首次租车结算后再送50元</span></p>\r\n<p><img src=\"/userfiles/image/20160620new150_pc.jpg\" width=\"680\" height=\"320\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', '2016-12-13 12:43:46', '73', '1', '98', 'upload/1/2/7f28ae28-ff14-4663-b609-a1eda1b0e606_201612131243284328.jpg', '新用户注册赢豪礼！150元新用户专享租车代金券等你来拿，从4月1日起，新用户注册即送100元电子代金券，首次租车结算后再送50元', '新用户专享，150元见面礼', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('52', '不惧严寒 多地租车提供雪地胎', '不惧严寒 多地租车提供雪地胎', '', '张三丰', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, monospace; white-space: pre-wrap;\">多款惊爆车型租车提供雪地胎/防滑链，哈尔滨、长春、延吉、长白山、乌鲁木齐均有不同车型参与活动，数量有限，先到先得！</span></p>\r\n<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, monospace; white-space: pre-wrap;\"><img src=\"/userfiles/image/20161111weixin_pc.jpg\" width=\"680\" height=\"320\" alt=\"\" /></span></p>\r\n<p>&nbsp;</p>', '2016-12-13 12:45:00', '73', '1', '97', 'upload/7/11/53e044d7-cf68-4dcb-9601-a3fd47d936e6_201612131244344434.jpg', '多款惊爆车型租车提供雪地胎/防滑链，哈尔滨、长春、延吉、长白山、乌鲁木齐均有不同车型参与活动，数量有限，先到先得！', '不惧严寒 多地租车提供雪地胎', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('53', '西宁租3送1 速来免费用车！', '西宁租3送1 速来免费用车！', '', '张三丰', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, monospace; white-space: pre-wrap;\">10月18日至12月31日，在西宁任一门店租用六款热门车型，租期&ge;4天免1天车辆租赁费及门店服务费！</span></p>\r\n<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, monospace; white-space: pre-wrap;\"><img src=\"/userfiles/image/20161017xining_pc.jpg\" width=\"680\" height=\"320\" alt=\"\" /></span></p>\r\n<p>&nbsp;</p>', '2016-12-13 12:46:00', '73', '1', '95', 'upload/11/12/54d36b6e-acc6-44ff-8714-46a909e628e1_201612131245484548.jpg', '10月18日至12月31日，在西宁任一门店租用六款热门车型，租期≥4天免1天车辆租赁费及门店服务费！', '西宁租3送1 速来免费用车！', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('54', '“泉”心“泉”意享暖冬', '“泉”心“泉”意享暖冬', '', '张三丰', '<p><img src=\"/userfiles/image/20161212171038.jpg\" width=\"799\" height=\"525\" alt=\"\" /></p>\r\n<p><img src=\"/userfiles/image/20161212171052.jpg\" width=\"812\" height=\"683\" alt=\"\" /></p>\r\n<p><img src=\"/userfiles/image/20161212171103.jpg\" width=\"818\" height=\"735\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', '2016-12-13 12:47:47', '73', '2', '95', 'upload/6/3/f09e3df5-06a7-4860-8dc9-d3154fca0f86_201612131247134713.jpg', '“泉”心“泉”意享暖冬', '“泉”心“泉”意享暖冬', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('55', '全新会员体系 闪亮登场！', '全新会员体系 闪亮登场！', '', '张三丰', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, monospace; white-space: pre-wrap;\">积分直抵租车费、通兑商城豪礼，只要租车通返积分，租车花费越高会员级别越高，超多惊喜完美亮相！</span></p>\r\n<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, monospace; white-space: pre-wrap;\"><img src=\"/userfiles/image/20160524MemberPoints_pc.jpg\" alt=\"\" /></span></p>\r\n<p>&nbsp;</p>', '2016-12-13 12:48:42', '73', '1', '92', 'upload/1/11/623e2334-67ef-4c97-9d72-5f93bcac2d23_201612131248254825.jpg', '积分直抵租车费、通兑商城豪礼，只要租车通返积分，租车花费越高会员级别越高，超多惊喜完美亮相！', '全新会员体系 闪亮登场！', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('58', '同门兄弟的旷世之争 乞丐版新捷达VS新桑塔纳', '同门兄弟的旷世之争 乞丐版新捷达VS新桑塔纳', '', '张三丰', '<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">乞丐版车型往往是A级轿车的兵家必争之地，因为其极高的性价比和实用性引得了一大批消费者对它的青睐。而捷达和桑塔纳这两个互不相让的兄弟则是最典型的代表，上汽大众于1987引进大众的产品桑塔纳轿车,而在1991年底，第一辆捷达轿车也在一汽-大众组装下线。二十多年间，捷达和桑塔纳都创造了辉煌的成绩，卖出了两百多万辆。一度成为国人奔小康的标志性车型。时至今日，捷达和桑塔纳多年走来，相互陪伴，如今又步入了一个高度重合又相互竞争的局面。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213085308416.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">但是在今年八九月份，捷达月销量达到36577辆，毫无征兆地超越<a href=\"http://db.auto.sohu.com/shanghaivw/2251/\" target=\"_blank\" style=\"color: rgb(102, 102, 102); text-decoration: none;\">朗逸</a>成为了中国轿车月<a href=\"http://db.auto.sohu.com/carsales/\" target=\"_blank\" style=\"color: rgb(102, 102, 102); text-decoration: none;\">销量</a>冠军，而桑塔纳的月销量却跌出了前十，仅仅16107辆。归根结底，捷达在市场定位和性价比方面都略胜一筹，这也成就了捷达轿车在国内的出色表现。12月6日，新捷达正式上市，这也让新捷达和新桑塔纳展开了新一轮的竞争，而这些车型最热门的乞丐版将是怎么样的表现呢?</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><strong>外观都继承家族风格</strong></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">前脸和尾部都是车型标志性的设计，新桑塔纳的外观相比较上一代车型，变化并不是非常明显，横条的格栅和简洁的大灯都被继承下来。尾部造型大气优雅，梯形尾灯与后尾截面形成正三角，从视觉上给人以稳定牢固的感受。乞丐版的车型保险杠下面取消了雾灯设计，变成了整块的黑色格栅，而且尾部也取消了反光片以及镀铬饰条的设计，看起来过于简单。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213085433688.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">而乞丐版新捷达的外形变化则没有那么大，大灯轮廓、进气格栅和前包围看起来更加豪华也更加犀利，大灯下沿采用了一个折线阶梯形状，中网采用了横条和竖条镀铬装饰相结合的方式。乞丐版除了减少了雾灯区的配置和设计以外，并没有特别明显的改变。尾部造型向宝来的风格靠拢，但是辨识度和一体性更出色。这些也都是大众家族改款的一贯作风。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213085339233.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213090051873.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">值得一提的是，新捷达在车身长度上达到了4501mm，比新桑塔纳的4475mm多处了26mm，但是轴距并没有太大变化，二者基本保持一致。而行李箱容积桑塔纳却多处了24L的空间。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><strong>内饰简洁大风，安全配置足够</strong></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">在内饰上，桑塔纳和捷达都秉承了大众风格，但是又不尽相同。新桑塔纳的高配车型中控台上采用了大面积桃木饰板，而乞丐车型自然也就取消了这个设计，同时一些钢琴烤漆也去掉了，中控大屏被一个黑白液晶屏替代。虽说失去了档次感，但是实用主义的车型不就是这样吗？</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213090113210.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">而新捷达也同样如此，圆形的出风口是新捷达富有特色的设计，空调出风口变成了圆形，这一点上与新桑塔纳形成了鲜明的对比。虽然都失去了豪华感，但是捷达的新设计却给人增加了一些温馨的感觉。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213090134384.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">配置方面，新捷达多出了很多实用的配置，比如后视镜加热、遥控钥匙和CD播放器等，这些配置无疑成了新捷达的加分项。而新桑塔纳则给出了高度可自由支配的选项，很多配置也是新捷达所没有的，可需要价钱的选装包就又给新桑塔纳的性价比划上了一个问号。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">但毋庸置疑的是，新捷达和新桑塔纳在安全配置方面都做足了工作，都保留了属于他们这个定位的安全设备。</p>\r\n<p>&nbsp;</p>', '2016-12-13 12:55:09', '74', '1', '98', 'upload/14/3/55d081cb-802a-4fd6-bbe7-5fb3b3ff0cbd_201612131254545454.jpg', '乞丐版车型往往是A级轿车的兵家必争之地，因为其极高的性价比和实用性引得了一大批消费者对它的青睐。而捷达和桑塔纳这两个互不相让的兄弟则是最典型的代表，上汽大众于1987引进大众的产品桑塔纳轿车,而在1991年底，第一辆捷达轿车也在一汽-大众组装下线。', '同门兄弟的旷世之争 乞丐版新捷达VS新桑塔纳', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('59', '国家电网将于2020年前建成20万个充电桩', '国家电网将于2020年前建成20万个充电桩', '', '张三丰', '<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><span style=\"font-size: 16px;\">日前，国家电网公司董事长舒印彪在&ldquo;2016中国电动汽车充换电服务创新高峰论坛&rdquo;表示，将加速高速公路充电网络建设，覆盖全国202个城市和3.6万公里高速公路,同时构建中国充换电标准体系。国家电网计划到2020年，拟建成1万座充电站和12万台充电桩，在北京、上海、杭州等城市形成半径不超过1公里的公共快充网络。</span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><span style=\"font-size: 16px;\"><img id=\"\" src=\"http://si1.go2yd.com/get-image/09IX7NWV2UC\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" alt=\"\" /></span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><span style=\"font-size: 16px;\">此前国家电网成立了国网电动汽车公司，实施电动汽车充换电业务的专业化管理。该公司目前建成了一个集充换电设施监控、查找、费用结算等功能为一体的&ldquo;车联网&rdquo;平台，便于电动车找桩以及充电。目前该平台已介入8万多个充电桩，其中约一半为国网自建，另一半来自其他公司。国家电网与南方电网也达成合作，致力于在全国共同推动充电基础设施的发展。</span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><span style=\"font-size: 16px;\">为了满足电动车迅猛发展的需求，十二五&rdquo;期间已建成京津冀鲁和长三角地区主要城市间的高速公路快充网络，覆盖高速公路1.1万公里。国家能源局的统计数据显示，截止到今年十月末，我国电动汽车充电桩已达到10.7万个，同比大幅增长118%；此外私人充电桩总数已超过17万个，这标志着我国充电基础设施发展进入了新阶段。</span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><span style=\"font-size: 16px;\">编辑点评：随着2016年1月1日《电动汽车传导充电用连接装置》新国家标准的实施，全国上下都在积极开展充换电网络的建设，我国的充电桩的生产建设将日臻完善。当然，我们应看到不仅仅是解决充电桩建设的问题，车企各自为阵的充电兼容问题、电网接入、电气设备升级、电力供应、充电时间分配等并不比充电桩本身的建设和改造的难度小。这些都需要相关行业在新国标的规范下设计生产，才能使资源利用更高效，未来出行更便捷。</span></p>\r\n<p>&nbsp;</p>', '2016-12-13 12:55:57', '74', '1', '94', 'upload/9/3/82b70acd-bd6d-42cd-adc0-ab946a91d2f9_201612131255445544.jpg', '国家电网公司董事长舒印彪在“2016中国电动汽车充换电服务创新高峰论坛”表示，将加速高速公路充电网络建设，覆盖全国202个城市和3 6万公里高速公路,同时构建中国充换电标准体系。', '国家电网将于2020年前建成20万个充电桩', '', null, null, null, null, null);
INSERT INTO `cms` VALUES ('57', '昌河家用MPV-M70长沙车展发布 预售6-8万元', '昌河家用MPV-M70长沙车展发布 预售6-8万元', '', '张三丰', '<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">12月13日，昌河汽车品牌旗下新款中型MPV&mdash;&mdash;昌河M70在长沙车展正式亮相。新车将推出&ldquo;商务舱&rdquo;、&ldquo;公务舱&rdquo;、&ldquo;头等舱&rdquo;和&ldquo;豪华舱&rdquo;四种车型，预售价格区间为6万-8万。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213110040735.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213110137645.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">昌河M70是继昌河M50后，昌河汽车MPV阵营中新晋的&ldquo;大当家&rdquo;，新车搭载一款1.5L自然吸气发动机，配备5MT变速器，采用&ldquo;2+3+2&rdquo;的座椅布局，是一款宜商宜家的全能型大七座MPV。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213115556147.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">此次推出的M70就是昌河布局家用入门级MPV市场的重要棋子，昌河M70将和同为北汽集团的威旺M50F共同出战，瞄准的对手是宝骏730、东风风行S500、金杯750等车型。昌河M70一车兼具拥有&ldquo;超大空间&rdquo;、&ldquo;人性配置&rdquo;、&ldquo;畅享舒适&rdquo;、&ldquo;强劲动力&rdquo;、&ldquo;周到安全&rdquo;、&ldquo;时尚造型&rdquo;、&ldquo;智联科技&rdquo;等七大优势。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><strong>外观：设计时尚身材不臃肿</strong></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">新车外观上比较时尚，符合当下中国人对MPV车型的审美。前进气格栅为三幅式设计，宽大的镀铬装饰条是中国人喜欢的设计元素。进气格栅与造型动感的大灯采用了一体式设计，大灯配有透镜，雾灯形状显得很年轻。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><strong><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213111359268.png\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></strong></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213111412157.png\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">车顶部还装配了银色的行李架。车尾部的造型比较方正，尾灯采用不规则的样式，并搭配了后扰流板及黑色的下包围。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213101734641.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">内部空间是昌河M70的重要卖点。长达2810mm的轴距以及车长4720mm、车宽1770mm、车高1800mm的车身尺寸，奠定了昌河M70在同级别车型中的优势地位。大尺寸同时保证了车内座椅的灵活布局，座椅采用2+2+3的7座布局形式，极大满足消费者个性化的使用需求，同时营造了车内宽适的驾乘空间。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><strong>内饰：配置齐全，大7座布局宜商宜家</strong></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">内饰方面，新车采用了悬浮式的液晶屏，其设计与北汽威旺M50F比有较大的差别。中控台整体设计层次感分明，中部六边形区域包含空调出风口和多媒体控制系统，三幅方向盘配有银色装饰，左边位置带有多功能按键。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><strong><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213110452553.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></strong></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213111738886.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213111752316.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">配置方面，昌河M70提供了真皮方向盘与皮质舒适座椅（前排座椅加热）、电动天窗、车内豪华氛围灯、花粉过滤系统、无钥匙进入及一键启动功能、液晶显示屏、手机互联系统、前风挡自动雨刮、天窗、车顶行李架、前泊车雷达、音量随速调节等配置。根据不同车型，部分配置为选装。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><strong>动力：达到同级别主流水平</strong></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">动力方面，昌河M70将搭载一台1.5L自然吸气发动机，其最大功率83kW（116Ps），最大扭矩150Nm，传动系统匹配5速手动变速箱，符合最新的国五排放标准，官方公布的百公里油耗为7L。新车采用前置后驱动力布局，以及前麦弗逊，后钢板弹簧非独立悬挂。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><strong><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213101824947.jpg\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></strong></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\"><img alt=\"\" src=\"http://www.chinaautonews.com.cn/uploadfile/2016/1213/20161213111727853.png\" style=\"border: none; display: block; width: 800px; margin: 0px auto;\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 2em; font-stretch: normal; font-size: 18px; color: rgb(64, 64, 64); line-height: 36px; text-align: justify;\">而这款&ldquo;7质不凡&rdquo;的全新7座MPV昌河M70是北汽集团携手昌河汽车的又一力作，承载着丰富昌河汽车MPV车系的使命，助力昌河汽车再次冲击宜商宜家大七座MPV主导的细分市场。相信这一款身兼军工基因、合资技术和北汽背景，三重优势于一身的昌河M70，会成为继昌河M50之后，昌河汽车推出的又一款MPV市场的强力&ldquo;搅局者&rdquo;。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2016-12-13 12:52:47', '74', '1', '98', 'upload/2/13/d0250427-4471-465c-a72b-29e01116d3fc_201612131253485348.jpg', '昌河汽车品牌旗下新款中型MPV——昌河M70在长沙车展正式亮相。新车将推出“商务舱”、“公务舱”、“头等舱”和“豪华舱”四种车型，预售价格区间为6万-8万。', '昌河家用MPV-M70长沙车展发布 预售6-8万元', '', null, null, null, null, null);

-- ----------------------------
-- Table structure for `cms_type`
-- ----------------------------
DROP TABLE IF EXISTS `cms_type`;
CREATE TABLE `cms_type` (
  `cms_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `cms_type_name` varchar(255) DEFAULT NULL,
  `cms_type_title` varchar(255) DEFAULT NULL,
  `cms_type_keyword` varchar(255) DEFAULT NULL,
  `cms_type_descript` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cms_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of cms_type
-- ----------------------------
INSERT INTO `cms_type` VALUES ('1', '国际新闻', '标题', '关键之', '描述');
INSERT INTO `cms_type` VALUES ('2', '国内新闻', '标题:国内新闻', '关键之:国内新闻', '描述::国内新闻');
INSERT INTO `cms_type` VALUES ('3', '公司新闻', '分类名称:标题:', '分类名称:关键之', '分类名称:描述:');
INSERT INTO `cms_type` VALUES ('4', '系统公告', '标题:', '关键之:', '描述:');
INSERT INTO `cms_type` VALUES ('5', '媒体报道', '媒体报道', '媒体报道', '媒体报道');
INSERT INTO `cms_type` VALUES ('7', '评论定义', '评论定义', '评论定义', '评论定义');
INSERT INTO `cms_type` VALUES ('8', '杂文', '杂文', '杂文', '杂文');

-- ----------------------------
-- Table structure for `column_order`
-- ----------------------------
DROP TABLE IF EXISTS `column_order`;
CREATE TABLE `column_order` (
  `column_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `column_order_name` varchar(255) DEFAULT NULL,
  `column_order_title` varchar(255) DEFAULT NULL,
  `column_order_keywords` varchar(255) DEFAULT NULL,
  `column_order_descript` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`column_order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of column_order
-- ----------------------------
INSERT INTO `column_order` VALUES ('1', '定制开发', '定制开发', '定制开发', '定制开发');
INSERT INTO `column_order` VALUES ('2', '合作案例', '合作案例', '合作案例', '合作案例');
INSERT INTO `column_order` VALUES ('3', '公司动态', '公司动态', '公司动态', '公司动态');
INSERT INTO `column_order` VALUES ('4', '关于我们', '关于我们', '关于我们', '关于我们');

-- ----------------------------
-- Table structure for `combine_market`
-- ----------------------------
DROP TABLE IF EXISTS `combine_market`;
CREATE TABLE `combine_market` (
  `combine_market_id` int(11) NOT NULL AUTO_INCREMENT,
  `combine_market_title` varchar(255) DEFAULT NULL,
  `combine_market_keywords` varchar(255) DEFAULT NULL,
  `combine_market_desc` varchar(255) DEFAULT NULL,
  `combine_market_price` varchar(30) DEFAULT NULL,
  `combine_market_starttime` varchar(255) DEFAULT NULL,
  `combine_market_enddate` varchar(255) DEFAULT NULL,
  `combine_market_flag` tinyint(4) DEFAULT '1',
  `combine_market_img` varchar(255) DEFAULT NULL,
  `combine_market_long_desc` text,
  PRIMARY KEY (`combine_market_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of combine_market
-- ----------------------------
INSERT INTO `combine_market` VALUES ('1', '大家好', '大家好哈哈哈哈', '撒旦撒范德萨范德萨给对手犯规', '3000', '2016-06-11', '2016-07-30', '2', 'upload/10/6/19e0826d-a72b-4d9c-830e-e32104c03b82_20160717094909499.gif', '<p><img src=\"/car/userfiles/image/slide-01.jpg\" width=\"657\" height=\"531\" alt=\"\" />&nbsp;</p>');

-- ----------------------------
-- Table structure for `combine_market_goods`
-- ----------------------------
DROP TABLE IF EXISTS `combine_market_goods`;
CREATE TABLE `combine_market_goods` (
  `combine_market_goods_id` int(11) DEFAULT NULL,
  `combine_market_active_id` int(11) DEFAULT NULL,
  `combine_market_price` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of combine_market_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_tile` varchar(255) DEFAULT NULL,
  `comment_date` datetime DEFAULT NULL,
  `comment_content` mediumtext,
  `comment_user` varchar(255) DEFAULT NULL,
  `comment_cms` int(11) DEFAULT NULL,
  `comment_mode` int(11) DEFAULT NULL,
  `comment_grade` int(11) DEFAULT NULL,
  `comment_grade_img` varchar(255) DEFAULT NULL,
  `comment_flag` tinyint(4) DEFAULT '2',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4367 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `cooperation`
-- ----------------------------
DROP TABLE IF EXISTS `cooperation`;
CREATE TABLE `cooperation` (
  `case_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_name` varchar(255) DEFAULT NULL,
  `case_img` varchar(255) DEFAULT NULL,
  `case_url` varchar(500) DEFAULT NULL,
  `case_order` int(11) unsigned zerofill DEFAULT '00000000000',
  `case_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`case_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of cooperation
-- ----------------------------
INSERT INTO `cooperation` VALUES ('15', '成都维熵科技', 'upload/13/13/0bafe841-9085-4f74-96c3-fad7dec87be9_201607181130513051.jpg', 'http://www.webapi.cn', '00000000100', '2');
INSERT INTO `cooperation` VALUES ('18', '成都维熵科技', 'upload/15/10/c0b6fe38-b3ae-4f23-9b55-eb2a9d188b0a_20161213130310310.jpg', 'http://www.webapi.cn', '00000000099', '1');

-- ----------------------------
-- Table structure for `coupon`
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_no` varchar(255) DEFAULT NULL,
  `coupon_title` varchar(255) DEFAULT NULL,
  `coupon_price` varchar(255) DEFAULT NULL,
  `coupon_enddate` varchar(255) DEFAULT NULL,
  `coupon_service` tinyint(4) DEFAULT NULL,
  `coupon_end` tinyint(4) DEFAULT NULL,
  `coupon_date` varchar(255) DEFAULT NULL,
  `coupon_saveFlag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('11', 'YOUHUI20160716093409349', '优惠券的测试', '1000', '2016-07-29', '4', '2', '2016-07-16', '1');

-- ----------------------------
-- Table structure for `coupon_user`
-- ----------------------------
DROP TABLE IF EXISTS `coupon_user`;
CREATE TABLE `coupon_user` (
  `coupon_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_user_coupon` int(11) DEFAULT NULL,
  `coupon_user_user` varchar(255) DEFAULT NULL,
  `coupon_user_price` varchar(255) DEFAULT NULL,
  `coupon_user_enddate` varchar(255) DEFAULT NULL,
  `coupon_user_receive` varchar(255) DEFAULT NULL,
  `coupon_user_flag` tinyint(4) DEFAULT '1',
  `coupon_user_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`coupon_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon_user
-- ----------------------------
INSERT INTO `coupon_user` VALUES ('5', '11', '15228932523', '1000', '2016-07-29', '2016-07-16', '1', '优惠券的测试');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_type` varchar(30) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_person` varchar(100) DEFAULT NULL,
  `customer_tel` varchar(50) DEFAULT NULL,
  `customer_qq` varchar(50) DEFAULT NULL,
  `customer_product` varchar(50) DEFAULT NULL,
  `customer_flag` tinyint(4) DEFAULT '2',
  `customer_flag2` tinyint(4) DEFAULT '2',
  `customer_time` varchar(40) DEFAULT NULL,
  `customer_time1` varchar(40) DEFAULT NULL,
  `customer_time2` varchar(40) DEFAULT NULL,
  `customer_time1_end` datetime DEFAULT NULL,
  `customer_user` varchar(20) DEFAULT NULL,
  `customer_user1` varchar(20) DEFAULT NULL,
  `customer_state` tinyint(4) DEFAULT '1',
  `customer_add_admin` varchar(20) DEFAULT NULL,
  `customer_time3` varchar(50) DEFAULT NULL,
  `customer_user3` varchar(20) DEFAULT NULL,
  `customer_suorce` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '2', '中企动力', '郑凤仪', '15228932523', '1518912563', '金融O2O', '2', '2', '2015-06-27 10:56:59', null, '2015-01-15 12:09:49', null, null, null, '1', 'zfting', '2015-01-19 18:20:40', 'zfting', null);
INSERT INTO `customer` VALUES ('2', '2', '奥斯卡级啊汗', '风刀霜剑反馈', '1559856325', '5696523', '金融O2O', '2', '2', '2015-01-19 12:45:50', null, '2015-01-16 10:30:31', null, null, null, '1', 'zfting', null, null, null);
INSERT INTO `customer` VALUES ('3', '2', '奥斯啊啊', '风刀霜啊', '1559856325', '5696523', '金融O2O', '2', '2', '2015-06-26 19:35:14', null, '2015-01-16 10:30:43', null, 'zfting', null, '1', 'zfting', '2015-01-19 10:30:43', 'zfting', null);
INSERT INTO `customer` VALUES ('4', '1', null, '张筱雨', '18030577233', '328613764', '金融O2O', '2', '2', '2015-06-26 18:56:06', null, '2015-01-20 13:34:41', null, 'zfting', null, '5', '自己录入', null, null, null);
INSERT INTO `customer` VALUES ('5', '1', 'ythyujujyuyju', '啊啊', '18030577213', '1518912564', '金融O2O', '2', '2', '2015-06-27 10:56:54', null, '2015-03-11 17:37:32', null, null, null, '4', '自己录入', '2015-06-27 14:49:45', 'zfting', '网络');
INSERT INTO `customer` VALUES ('6', '个人', 'kjlljlj', '梵蒂冈', '1532569859', '356565656', '众筹系统', '2', '2', '2015-06-27 10:56:44', null, '2015-06-26 21:18:01', null, null, null, '1', 'zfting', null, null, '管理员录入');
INSERT INTO `customer` VALUES ('7', '企业', null, '地方官', '45561456456', '5645647545', 'p2p小额贷款', '2', '2', '2015-06-27 10:56:56', null, '2015-06-26 21:19:21', null, null, null, '1', 'zfting', null, null, '管理员录入');
INSERT INTO `customer` VALUES ('8', '个人', null, 'utu', '15896325645', '32864598', '', '2', '2', '2015-06-27 11:52:16', null, '2015-06-26 21:20:28', null, null, null, '1', 'zfting', null, null, '管理员录入');
INSERT INTO `customer` VALUES ('9', '个人', 'asas', '图图', '1589632563', '35698598', '', '2', '2', null, null, '2015-06-26 21:21:12', null, null, null, '1', 'zfting', null, null, '管理员录入');
INSERT INTO `customer` VALUES ('10', '企业', 'iyiyi', '一sad', '45456465456', '5456465456', 'p2p小额贷款', '1', '1', '2016-07-28 13:43:05', '2016-07-28 13:43:11', '2015-06-26 21:21:43', '2016-08-27 13:43:11', 'zfting', 'zfting', '2', 'zfting', null, null, '管理员录入');

-- ----------------------------
-- Table structure for `customer_connect`
-- ----------------------------
DROP TABLE IF EXISTS `customer_connect`;
CREATE TABLE `customer_connect` (
  `customer_connect_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_connect_user` int(20) DEFAULT NULL,
  `customer_connect_customer` int(255) DEFAULT NULL,
  `customer_connect_type` varchar(30) DEFAULT NULL,
  `customer_connect_conclusion` varchar(1000) DEFAULT NULL,
  `customer_connect_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_connect_id`),
  KEY `fk_customer_connect_id` (`customer_connect_customer`) USING BTREE,
  KEY `fk_customer_connect_user` (`customer_connect_user`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of customer_connect
-- ----------------------------
INSERT INTO `customer_connect` VALUES ('4', '1', '10', '电话', '大法师的发送方式', '2015-06-27 10:14:15');
INSERT INTO `customer_connect` VALUES ('5', '1', '4', '电话', '测试废弃', '2015-06-27 20:19:45');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `goods_sn` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_name_style` varchar(255) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  `goods_weight` varchar(255) DEFAULT NULL,
  `market_price` varchar(255) DEFAULT NULL,
  `shop_price` varchar(255) DEFAULT NULL,
  `vip_price` varchar(255) DEFAULT NULL,
  `cons_price` varchar(255) DEFAULT NULL,
  `user_price` varchar(255) DEFAULT NULL,
  `promote_price` varchar(255) DEFAULT NULL,
  `promote_start_date` varchar(255) DEFAULT NULL,
  `promote_end_date` varchar(255) DEFAULT NULL,
  `goods_number` int(11) DEFAULT NULL,
  `warn_number` int(11) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `goods_brief` varchar(255) DEFAULT NULL,
  `goods_desc` text,
  `goods_thumb` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `original_img` varchar(255) DEFAULT NULL,
  `is_real` tinyint(4) DEFAULT NULL,
  `extension_code` varchar(255) DEFAULT NULL,
  `is_on_sale` tinyint(4) DEFAULT NULL,
  `is_alone_sale` tinyint(4) DEFAULT NULL,
  `Is_shipping` tinyint(4) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `sort_order` smallint(6) DEFAULT NULL,
  `is_best` int(11) DEFAULT NULL,
  `is_new` tinyint(4) DEFAULT NULL,
  `is_hot` tinyint(4) DEFAULT NULL,
  `is_shelves` tinyint(4) DEFAULT NULL,
  `is_promote` tinyint(4) DEFAULT NULL,
  `bonus_type_id` tinyint(4) DEFAULT NULL,
  `last_update` varchar(255) DEFAULT NULL,
  `goods_type` int(11) DEFAULT NULL,
  `seller_note` varchar(255) DEFAULT NULL,
  `give_integral` int(11) DEFAULT NULL,
  `is_freight` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('26', '17', 'HA111110', '雪佛兰科鲁兹/三厢/1.6自动', null, '32', '0', '2500', '100', '90', '80', '88', '90', '', '', '', '20', '2', '雪佛兰科鲁兹/三厢/1.6自动', '雪佛兰科鲁兹/三厢/1.6自动', '<p><img src=\"/userfiles/image/klz.jpg\" width=\"480\" height=\"280\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', 'upload/4/8/d7bb5950-3722-4864-b72f-745b4e3ddd76_201612131150485048.jpg', 'upload/4/8/d7bb5950-3722-4864-b72f-745b4e3ddd76_201612131150485048.jpg', 'upload/4/8/d7bb5950-3722-4864-b72f-745b4e3ddd76_201612131150485048.jpg', '0', null, '0', '1', '0', '1', null, '0', '0', '1', '1', '1', '1', '0', '0', '2016-12-13 11:50:50', '7', '雪佛兰科鲁兹/三厢/1.6自动', '1', '1');
INSERT INTO `goods` VALUES ('27', '17', 'HA111111', '大众朗逸/三厢/1.6自动', null, '20', '0', '2500', '119', '95', '85', '90', '95', '', '', '', '10', '2', '大众朗逸/三厢/1.6自动', '大众朗逸/三厢/1.6自动', '<p><img src=\"/userfiles/image/ly.jpg\" width=\"480\" height=\"280\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', 'upload/12/0/d06629ae-27c6-4f3b-b337-8f2fb71f7464_201612131155365536.jpg', 'upload/12/0/d06629ae-27c6-4f3b-b337-8f2fb71f7464_201612131155365536.jpg', 'upload/12/0/d06629ae-27c6-4f3b-b337-8f2fb71f7464_201612131155365536.jpg', '0', null, '0', '1', '0', '1', null, '0', '0', '1', '1', '1', '1', '0', '0', '2016-12-13 11:55:39', '7', '大众朗逸/三厢/1.6自动', '1', '1');
INSERT INTO `goods` VALUES ('28', '17', 'HA111112', '丰田致炫/两厢/1.3自动', null, '21', '0', '2500', '120', '100', '90', '95', '100', '', '', '', '10', '1', '丰田致炫/两厢/1.3自动', '丰田致炫/两厢/1.3自动', '<p><img src=\"/userfiles/image/FTZX.jpg\" width=\"480\" height=\"280\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', 'upload/11/10/57dc81ea-5b91-4c2f-8834-c271ff8aebc6_20161213115902592.jpg', 'upload/11/10/57dc81ea-5b91-4c2f-8834-c271ff8aebc6_20161213115902592.jpg', 'upload/11/10/57dc81ea-5b91-4c2f-8834-c271ff8aebc6_20161213115902592.jpg', '0', null, '0', '1', '0', '1', null, '0', '0', '1', '0', '1', '1', '0', '0', '2016-12-13 11:59:08', '6', '丰田致炫/两厢/1.3自动', '1', '1');
INSERT INTO `goods` VALUES ('29', '17', 'HA111113', '雪铁龙爱丽舍/三厢/1.6自动', null, '33', '0', '2500', '120', '100', '85', '95', '100', '', '', '', '10', '1', '雪铁龙爱丽舍/三厢/1.6自动', '雪铁龙爱丽舍/三厢/1.6自动', '<p><img src=\"/userfiles/image/2014ALS.jpg\" width=\"480\" height=\"280\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', 'upload/5/6/82d0b9c9-352f-4fda-a863-7ec21d8e38c1_20161213120243243.jpg', 'upload/5/6/82d0b9c9-352f-4fda-a863-7ec21d8e38c1_20161213120243243.jpg', 'upload/5/6/82d0b9c9-352f-4fda-a863-7ec21d8e38c1_20161213120243243.jpg', '0', null, '0', '1', '0', '1', null, '0', '0', '0', '1', '1', '1', '0', '0', '2016-12-13 12:02:48', '6', '雪铁龙爱丽舍/三厢/1.6自动', '1', '1');
INSERT INTO `goods` VALUES ('30', '17', 'HA111114', '大众斯柯达明锐/三厢/1.6自动', null, '20', '0', '2500', '130', '110', '100', '105', '110', '', '', '', '33', '10', '大众斯柯达明锐/三厢/1.6自动', '大众斯柯达明锐/三厢/1.6自动', '<p><img src=\"/userfiles/image/MR3.jpg\" width=\"480\" height=\"280\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', 'upload/8/9/1649817d-3a18-41f9-9cdf-f49b395a4ab4_201612131213121312.jpg', 'upload/8/9/1649817d-3a18-41f9-9cdf-f49b395a4ab4_201612131213121312.jpg', 'upload/8/9/1649817d-3a18-41f9-9cdf-f49b395a4ab4_201612131213121312.jpg', '0', null, '0', '1', '0', '1', null, '0', '0', '1', '1', '1', '1', '0', '0', '2016-12-13 12:13:15', '7', '大众斯柯达明锐/三厢/1.6自动', '1', '1');
INSERT INTO `goods` VALUES ('31', '17', 'HA111115', '别克凯越/三厢/1.6自动', null, '17', '0', '2500', '140', '120', '110', '115', '120', '', '', '', '10', '1', '别克凯越/三厢/1.6自动', '别克凯越/三厢/1.6自动', '<p><img src=\"/userfiles/image/ky.jpg\" width=\"480\" height=\"280\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', 'upload/3/1/0c4278dd-aa51-4eec-9263-26121c04221e_201612131216181618.jpg', 'upload/3/1/0c4278dd-aa51-4eec-9263-26121c04221e_201612131216181618.jpg', 'upload/3/1/0c4278dd-aa51-4eec-9263-26121c04221e_201612131216181618.jpg', '0', null, '0', '1', '0', '1', null, '0', '0', '1', '0', '1', '1', '0', '0', '2016-12-13 12:16:21', '7', '别克凯越/三厢/1.6自动', '1', '1');
INSERT INTO `goods` VALUES ('32', '17', 'HA111116', '现代悦动/三厢/1.6自动', null, '31', '0', '2500', '119', '100', '90', '95', '100', '', '', '', '10', '2', '现代悦动/三厢/1.6自动', '现代悦动/三厢/1.6自动', '<p><img src=\"/userfiles/image/yd.jpg\" width=\"480\" height=\"280\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', 'upload/5/2/8d1dde9f-3db1-49fb-9521-07049a3c7c1c_201612131221342134.jpg', 'upload/5/2/8d1dde9f-3db1-49fb-9521-07049a3c7c1c_201612131221342134.jpg', 'upload/5/2/8d1dde9f-3db1-49fb-9521-07049a3c7c1c_201612131221342134.jpg', '0', null, '0', '1', '0', '1', null, '0', '0', '1', '0', '1', '1', '0', '0', '2016-12-13 12:21:37', '6', '现代悦动/三厢/1.6自动', '1', '1');
INSERT INTO `goods` VALUES ('33', '17', 'HA111117', '奥迪A6/三厢/2.0T自动', null, '12', '0', '2500', '350', '300', '250', '280', '300', '', '', '', '10', '2', '奥迪A6/三厢/2.0T自动', '奥迪A6/三厢/2.0T自动', '<p><img src=\"/userfiles/image/audi.jpg\" width=\"480\" height=\"280\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', 'upload/2/13/b12d6553-7238-42f9-bcec-865a76372813_201612131225512551.jpg', 'upload/2/13/b12d6553-7238-42f9-bcec-865a76372813_201612131225512551.jpg', 'upload/2/13/b12d6553-7238-42f9-bcec-865a76372813_201612131225512551.jpg', '0', null, '0', '1', '0', '1', null, '0', '0', '1', '1', '1', '1', '0', '0', '2016-12-13 12:25:53', '7', '奥迪A6/三厢/2.0T自动', '1', '1');
INSERT INTO `goods` VALUES ('34', '17', 'HA111118', '宝马5系/三厢/2.0自动', null, '13', '0', '2500', '300', '250', '200', '220', '250', '', '', '', '10', '2', '宝马5系/三厢/2.0自动', '宝马5系/三厢/2.0自动', '<p><img src=\"/userfiles/image/BMW5.jpg\" width=\"480\" height=\"280\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', 'upload/0/12/8e866491-db93-408e-bd65-6e915305f9b7_201612131228542854.jpg', 'upload/0/12/8e866491-db93-408e-bd65-6e915305f9b7_201612131228542854.jpg', 'upload/0/12/8e866491-db93-408e-bd65-6e915305f9b7_201612131228542854.jpg', '0', null, '0', '1', '0', '1', null, '0', '0', '1', '1', '1', '1', '0', '0', '2016-12-13 12:28:58', '7', '宝马5系/三厢/2.0自动', '1', '1');

-- ----------------------------
-- Table structure for `goods_and_order`
-- ----------------------------
DROP TABLE IF EXISTS `goods_and_order`;
CREATE TABLE `goods_and_order` (
  `goods_and_order_my_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_and_order_id` int(11) NOT NULL,
  `goods_and_goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_and_order_my_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_and_order
-- ----------------------------
INSERT INTO `goods_and_order` VALUES ('1', '682', '20');
INSERT INTO `goods_and_order` VALUES ('2', '683', '20');
INSERT INTO `goods_and_order` VALUES ('3', '684', '20');
INSERT INTO `goods_and_order` VALUES ('4', '688', '20');
INSERT INTO `goods_and_order` VALUES ('5', '689', '20');
INSERT INTO `goods_and_order` VALUES ('6', '690', '20');
INSERT INTO `goods_and_order` VALUES ('7', '694', '20');
INSERT INTO `goods_and_order` VALUES ('8', '697', '20');
INSERT INTO `goods_and_order` VALUES ('9', '698', '20');
INSERT INTO `goods_and_order` VALUES ('10', '699', '20');
INSERT INTO `goods_and_order` VALUES ('11', '700', '20');
INSERT INTO `goods_and_order` VALUES ('12', '701', '20');
INSERT INTO `goods_and_order` VALUES ('13', '702', '20');
INSERT INTO `goods_and_order` VALUES ('14', '703', '20');
INSERT INTO `goods_and_order` VALUES ('15', '704', '20');
INSERT INTO `goods_and_order` VALUES ('16', '705', '20');
INSERT INTO `goods_and_order` VALUES ('17', '706', '20');
INSERT INTO `goods_and_order` VALUES ('18', '707', '20');
INSERT INTO `goods_and_order` VALUES ('19', '708', '20');
INSERT INTO `goods_and_order` VALUES ('20', '709', '20');
INSERT INTO `goods_and_order` VALUES ('21', '710', '20');
INSERT INTO `goods_and_order` VALUES ('22', '711', '20');
INSERT INTO `goods_and_order` VALUES ('23', '712', '20');
INSERT INTO `goods_and_order` VALUES ('24', '712', '20');
INSERT INTO `goods_and_order` VALUES ('25', '713', '20');
INSERT INTO `goods_and_order` VALUES ('26', '713', '20');
INSERT INTO `goods_and_order` VALUES ('27', '714', '20');
INSERT INTO `goods_and_order` VALUES ('28', '715', '20');
INSERT INTO `goods_and_order` VALUES ('29', '716', '26');

-- ----------------------------
-- Table structure for `goods_article`
-- ----------------------------
DROP TABLE IF EXISTS `goods_article`;
CREATE TABLE `goods_article` (
  `goods_article_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'goods_article',
  `goods_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_article
-- ----------------------------
INSERT INTO `goods_article` VALUES ('3', '16', '16', '1');

-- ----------------------------
-- Table structure for `goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr`;
CREATE TABLE `goods_attr` (
  `goods_attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `goods_attr_value` varchar(255) DEFAULT NULL,
  `goods_attr_price` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goods_attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_attr
-- ----------------------------
INSERT INTO `goods_attr` VALUES ('1', '8', '5', 'mx_sks300', '0.0');
INSERT INTO `goods_attr` VALUES ('2', '8', '6', 'DDR3L', '0.0');
INSERT INTO `goods_attr` VALUES ('3', '11', '5', '未全额全额', '10.0');
INSERT INTO `goods_attr` VALUES ('4', '11', '6', '但是士大夫似的', '10.0');
INSERT INTO `goods_attr` VALUES ('5', '16', '3', '123', '0.0');
INSERT INTO `goods_attr` VALUES ('6', '16', '2', '我的', '0.0');
INSERT INTO `goods_attr` VALUES ('7', '16', '4', '123123', '0.0');
INSERT INTO `goods_attr` VALUES ('23', '18', '14', '12', '0.0');
INSERT INTO `goods_attr` VALUES ('22', '18', '13', '12', '0.0');
INSERT INTO `goods_attr` VALUES ('21', '18', '12', '12', '0.0');
INSERT INTO `goods_attr` VALUES ('20', '18', '11', '12', '0.0');
INSERT INTO `goods_attr` VALUES ('19', '18', '10', '12', '0.0');
INSERT INTO `goods_attr` VALUES ('18', '18', '9', '1', '0.0');
INSERT INTO `goods_attr` VALUES ('17', '18', '8', '12', '0.0');
INSERT INTO `goods_attr` VALUES ('16', '18', '7', '12', '0.0');
INSERT INTO `goods_attr` VALUES ('139', '26', '52', '皮革座椅', '0.0');
INSERT INTO `goods_attr` VALUES ('138', '26', '51', '6', '0.0');
INSERT INTO `goods_attr` VALUES ('137', '26', '50', '60', '0.0');
INSERT INTO `goods_attr` VALUES ('136', '26', '49', '单天窗', '0.0');
INSERT INTO `goods_attr` VALUES ('135', '26', '48', '自然吸气', '0.0');
INSERT INTO `goods_attr` VALUES ('134', '26', '47', '前驱', '0.0');
INSERT INTO `goods_attr` VALUES ('133', '26', '46', ' 92-93汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('132', '26', '45', '1598', '0.0');
INSERT INTO `goods_attr` VALUES ('131', '26', '44', 'AT', '0.0');
INSERT INTO `goods_attr` VALUES ('130', '26', '43', '汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('129', '26', '42', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('128', '26', '41', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('127', '26', '40', '天地版', '0.0');
INSERT INTO `goods_attr` VALUES ('126', '26', '39', '2010', '0.0');
INSERT INTO `goods_attr` VALUES ('125', '26', '38', '科鲁兹', '0.0');
INSERT INTO `goods_attr` VALUES ('140', '26', '53', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('141', '26', '54', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('142', '26', '55', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('143', '27', '38', '朗逸', '0.0');
INSERT INTO `goods_attr` VALUES ('144', '27', '39', '2011', '0.0');
INSERT INTO `goods_attr` VALUES ('145', '27', '40', '品悠版', '0.0');
INSERT INTO `goods_attr` VALUES ('146', '27', '41', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('147', '27', '42', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('148', '27', '43', '汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('149', '27', '44', 'AT', '0.0');
INSERT INTO `goods_attr` VALUES ('150', '27', '45', '1598', '0.0');
INSERT INTO `goods_attr` VALUES ('151', '27', '46', ' 92-93汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('152', '27', '47', '前驱', '0.0');
INSERT INTO `goods_attr` VALUES ('153', '27', '48', '自然吸气', '0.0');
INSERT INTO `goods_attr` VALUES ('154', '27', '49', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('155', '27', '50', '55', '0.0');
INSERT INTO `goods_attr` VALUES ('156', '27', '51', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('157', '27', '52', '皮革座椅', '0.0');
INSERT INTO `goods_attr` VALUES ('158', '27', '53', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('159', '27', '54', '2', '0.0');
INSERT INTO `goods_attr` VALUES ('160', '27', '55', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('161', '28', '20', '致炫', '0.0');
INSERT INTO `goods_attr` VALUES ('162', '28', '21', '2014', '0.0');
INSERT INTO `goods_attr` VALUES ('163', '28', '22', '魅动版', '0.0');
INSERT INTO `goods_attr` VALUES ('164', '28', '23', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('165', '28', '24', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('166', '28', '25', '汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('167', '28', '26', 'AT', '0.0');
INSERT INTO `goods_attr` VALUES ('168', '28', '27', '1329', '0.0');
INSERT INTO `goods_attr` VALUES ('169', '28', '28', ' 92-93汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('170', '28', '29', '前驱', '0.0');
INSERT INTO `goods_attr` VALUES ('171', '28', '30', '自然吸气', '0.0');
INSERT INTO `goods_attr` VALUES ('172', '28', '31', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('173', '28', '32', '42', '0.0');
INSERT INTO `goods_attr` VALUES ('174', '28', '33', '2', '0.0');
INSERT INTO `goods_attr` VALUES ('175', '28', '34', '皮革座椅', '0.0');
INSERT INTO `goods_attr` VALUES ('176', '28', '35', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('177', '28', '36', '2', '0.0');
INSERT INTO `goods_attr` VALUES ('178', '28', '37', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('179', '29', '20', '新爱丽舍', '0.0');
INSERT INTO `goods_attr` VALUES ('180', '29', '21', '2014', '0.0');
INSERT INTO `goods_attr` VALUES ('181', '29', '22', '时尚型', '0.0');
INSERT INTO `goods_attr` VALUES ('182', '29', '23', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('183', '29', '24', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('184', '29', '25', '汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('185', '29', '26', 'AT', '0.0');
INSERT INTO `goods_attr` VALUES ('186', '29', '27', '1598', '0.0');
INSERT INTO `goods_attr` VALUES ('187', '29', '28', ' 92-93汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('188', '29', '29', '前驱', '0.0');
INSERT INTO `goods_attr` VALUES ('189', '29', '30', '自然吸气', '0.0');
INSERT INTO `goods_attr` VALUES ('190', '29', '31', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('191', '29', '32', '53', '0.0');
INSERT INTO `goods_attr` VALUES ('192', '29', '33', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('193', '29', '34', '织物座椅', '0.0');
INSERT INTO `goods_attr` VALUES ('194', '29', '35', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('195', '29', '36', '2', '0.0');
INSERT INTO `goods_attr` VALUES ('196', '29', '37', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('197', '30', '38', '明锐', '0.0');
INSERT INTO `goods_attr` VALUES ('198', '30', '39', '2015', '0.0');
INSERT INTO `goods_attr` VALUES ('199', '30', '40', '逸致版', '0.0');
INSERT INTO `goods_attr` VALUES ('200', '30', '41', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('201', '30', '42', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('202', '30', '43', '汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('203', '30', '44', 'AT', '0.0');
INSERT INTO `goods_attr` VALUES ('204', '30', '45', '1598', '0.0');
INSERT INTO `goods_attr` VALUES ('205', '30', '46', ' 92-93汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('206', '30', '47', '前驱', '0.0');
INSERT INTO `goods_attr` VALUES ('207', '30', '48', '自然吸气', '0.0');
INSERT INTO `goods_attr` VALUES ('208', '30', '49', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('209', '30', '50', '355', '0.0');
INSERT INTO `goods_attr` VALUES ('210', '30', '51', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('211', '30', '52', '织物座椅', '0.0');
INSERT INTO `goods_attr` VALUES ('212', '30', '53', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('213', '30', '54', '2', '0.0');
INSERT INTO `goods_attr` VALUES ('214', '30', '55', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('215', '31', '38', '凯越', '0.0');
INSERT INTO `goods_attr` VALUES ('216', '31', '39', '2008', '0.0');
INSERT INTO `goods_attr` VALUES ('217', '31', '40', '基本型', '0.0');
INSERT INTO `goods_attr` VALUES ('218', '31', '41', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('219', '31', '42', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('220', '31', '43', '汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('221', '31', '44', 'AT', '0.0');
INSERT INTO `goods_attr` VALUES ('222', '31', '45', '1598', '0.0');
INSERT INTO `goods_attr` VALUES ('223', '31', '46', ' 92-93汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('224', '31', '47', '前驱', '0.0');
INSERT INTO `goods_attr` VALUES ('225', '31', '48', '自然吸气', '0.0');
INSERT INTO `goods_attr` VALUES ('226', '31', '49', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('227', '31', '50', '60', '0.0');
INSERT INTO `goods_attr` VALUES ('228', '31', '51', '6', '0.0');
INSERT INTO `goods_attr` VALUES ('229', '31', '52', '织物座椅', '0.0');
INSERT INTO `goods_attr` VALUES ('230', '31', '53', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('231', '31', '54', '2', '0.0');
INSERT INTO `goods_attr` VALUES ('232', '31', '55', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('233', '32', '20', '悦动', '0.0');
INSERT INTO `goods_attr` VALUES ('234', '32', '21', '2010', '0.0');
INSERT INTO `goods_attr` VALUES ('235', '32', '22', '舒适型', '0.0');
INSERT INTO `goods_attr` VALUES ('236', '32', '23', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('237', '32', '24', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('238', '32', '25', '汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('239', '32', '26', 'AT', '0.0');
INSERT INTO `goods_attr` VALUES ('240', '32', '27', '1590', '0.0');
INSERT INTO `goods_attr` VALUES ('241', '32', '28', ' 92-93汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('242', '32', '29', '前驱', '0.0');
INSERT INTO `goods_attr` VALUES ('243', '32', '30', '自然吸气', '0.0');
INSERT INTO `goods_attr` VALUES ('244', '32', '31', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('245', '32', '32', '52', '0.0');
INSERT INTO `goods_attr` VALUES ('246', '32', '33', '6', '0.0');
INSERT INTO `goods_attr` VALUES ('247', '32', '34', '织物座椅', '0.0');
INSERT INTO `goods_attr` VALUES ('248', '32', '35', '有', '0.0');
INSERT INTO `goods_attr` VALUES ('249', '32', '36', '2', '0.0');
INSERT INTO `goods_attr` VALUES ('250', '32', '37', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('251', '33', '38', ' A6L', '0.0');
INSERT INTO `goods_attr` VALUES ('252', '33', '39', '2008', '0.0');
INSERT INTO `goods_attr` VALUES ('253', '33', '40', '技术领先型', '0.0');
INSERT INTO `goods_attr` VALUES ('254', '33', '41', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('255', '33', '42', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('256', '33', '43', '汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('257', '33', '44', 'CVT', '0.0');
INSERT INTO `goods_attr` VALUES ('258', '33', '45', '2393', '0.0');
INSERT INTO `goods_attr` VALUES ('259', '33', '46', ' 95-97汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('260', '33', '47', '前驱', '0.0');
INSERT INTO `goods_attr` VALUES ('261', '33', '48', '自然吸气', '0.0');
INSERT INTO `goods_attr` VALUES ('262', '33', '49', '单天窗', '0.0');
INSERT INTO `goods_attr` VALUES ('263', '33', '50', '80', '0.0');
INSERT INTO `goods_attr` VALUES ('264', '33', '51', '8', '0.0');
INSERT INTO `goods_attr` VALUES ('265', '33', '52', '织物座椅', '0.0');
INSERT INTO `goods_attr` VALUES ('266', '33', '53', '有', '0.0');
INSERT INTO `goods_attr` VALUES ('267', '33', '54', '6', '0.0');
INSERT INTO `goods_attr` VALUES ('268', '33', '55', '无', '0.0');
INSERT INTO `goods_attr` VALUES ('269', '34', '38', ' 5系', '0.0');
INSERT INTO `goods_attr` VALUES ('270', '34', '39', '2012', '0.0');
INSERT INTO `goods_attr` VALUES ('271', '34', '40', '典雅型', '0.0');
INSERT INTO `goods_attr` VALUES ('272', '34', '41', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('273', '34', '42', '4', '0.0');
INSERT INTO `goods_attr` VALUES ('274', '34', '43', '汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('275', '34', '44', 'AT', '0.0');
INSERT INTO `goods_attr` VALUES ('276', '34', '45', '1997', '0.0');
INSERT INTO `goods_attr` VALUES ('277', '34', '46', ' 95-97汽油', '0.0');
INSERT INTO `goods_attr` VALUES ('278', '34', '47', '前驱', '0.0');
INSERT INTO `goods_attr` VALUES ('279', '34', '48', '涡轮增压', '0.0');
INSERT INTO `goods_attr` VALUES ('280', '34', '49', '单天窗', '0.0');
INSERT INTO `goods_attr` VALUES ('281', '34', '50', '70', '0.0');
INSERT INTO `goods_attr` VALUES ('282', '34', '51', '8', '0.0');
INSERT INTO `goods_attr` VALUES ('283', '34', '52', '皮革座椅', '0.0');
INSERT INTO `goods_attr` VALUES ('284', '34', '53', '有', '0.0');
INSERT INTO `goods_attr` VALUES ('285', '34', '54', '5', '0.0');
INSERT INTO `goods_attr` VALUES ('286', '34', '55', '有', '0.0');

-- ----------------------------
-- Table structure for `goods_brand`
-- ----------------------------
DROP TABLE IF EXISTS `goods_brand`;
CREATE TABLE `goods_brand` (
  `goods_brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_brand_name` varchar(255) DEFAULT NULL,
  `goods_brand_logo` varchar(255) DEFAULT NULL,
  `goods_brand_desc` text COMMENT '品牌描述',
  `goods_brand_url` varchar(255) DEFAULT NULL,
  `goods_brand_order` tinyint(4) DEFAULT NULL,
  `goods_brand_is_show` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`goods_brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_brand
-- ----------------------------
INSERT INTO `goods_brand` VALUES ('27', '马自达', '', '', '', '84', '1');
INSERT INTO `goods_brand` VALUES ('28', '奇瑞', '', '', '', '83', '1');
INSERT INTO `goods_brand` VALUES ('29', '起亚', '', '', '', '82', '1');
INSERT INTO `goods_brand` VALUES ('23', '金杯', '', '', '', '88', '1');
INSERT INTO `goods_brand` VALUES ('24', '凯迪拉克', '', '', '', '87', '1');
INSERT INTO `goods_brand` VALUES ('25', '铃木', '', '', '', '86', '1');
INSERT INTO `goods_brand` VALUES ('26', '日产', '', '', '', '85', '1');
INSERT INTO `goods_brand` VALUES ('19', '长城', '', '', '', '93', '1');
INSERT INTO `goods_brand` VALUES ('20', '大众', '', '', '', '91', '1');
INSERT INTO `goods_brand` VALUES ('21', '丰田', '', '', '', '90', '1');
INSERT INTO `goods_brand` VALUES ('22', '图特', '', '', '', '89', '1');
INSERT INTO `goods_brand` VALUES ('15', '本田', '', '', '', '96', '1');
INSERT INTO `goods_brand` VALUES ('16', '标志', '', '', '', '95', '1');
INSERT INTO `goods_brand` VALUES ('17', '别克', '', '', '', '94', '1');
INSERT INTO `goods_brand` VALUES ('18', '比亚迪', '', '', '', '94', '1');
INSERT INTO `goods_brand` VALUES ('14', '奔驰', '', '', '', '97', '1');
INSERT INTO `goods_brand` VALUES ('13', '宝马', '', '', '', '98', '1');
INSERT INTO `goods_brand` VALUES ('12', '奥迪', '', '', '', '99', '1');
INSERT INTO `goods_brand` VALUES ('30', '斯柯达', '', '', '', '81', '1');
INSERT INTO `goods_brand` VALUES ('31', '现代', '', '', '', '80', '1');
INSERT INTO `goods_brand` VALUES ('32', '雪佛兰', '', '', '', '79', '1');
INSERT INTO `goods_brand` VALUES ('33', '雪铁龙', '', '', '', '78', '1');
INSERT INTO `goods_brand` VALUES ('34', '雪铁龙', '', '', '', '78', '1');
INSERT INTO `goods_brand` VALUES ('35', '猎豹', '', '', '', '77', '1');
INSERT INTO `goods_brand` VALUES ('36', '沃尔沃', '', '', '', '76', '1');
INSERT INTO `goods_brand` VALUES ('37', '依维柯', '', '', '', '75', '1');
INSERT INTO `goods_brand` VALUES ('38', '华泰', '', '', '', '74', '1');
INSERT INTO `goods_brand` VALUES ('39', '野马', '', '', '', '73', '1');
INSERT INTO `goods_brand` VALUES ('40', '三菱', '', '', '', '72', '1');
INSERT INTO `goods_brand` VALUES ('41', 'MINI', '', '', '', '71', '1');
INSERT INTO `goods_brand` VALUES ('42', '北京汽车', '', '', '', '70', '1');
INSERT INTO `goods_brand` VALUES ('43', '菲亚特', '', '', '', '69', '1');
INSERT INTO `goods_brand` VALUES ('44', '江淮', '', '', '', '68', '1');
INSERT INTO `goods_brand` VALUES ('45', '江铃', '', '', '', '67', '1');
INSERT INTO `goods_brand` VALUES ('46', '上汽通用', '', '', '', '66', '1');
INSERT INTO `goods_brand` VALUES ('47', '广汽', '', '', '', '65', '1');
INSERT INTO `goods_brand` VALUES ('48', '风行', '', '', '', '64', '1');

-- ----------------------------
-- Table structure for `goods_cat`
-- ----------------------------
DROP TABLE IF EXISTS `goods_cat`;
CREATE TABLE `goods_cat` (
  `goods_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_cat
-- ----------------------------
INSERT INTO `goods_cat` VALUES ('70', '26', '16');
INSERT INTO `goods_cat` VALUES ('71', '26', '15');
INSERT INTO `goods_cat` VALUES ('72', '26', '1');
INSERT INTO `goods_cat` VALUES ('73', '27', '16');
INSERT INTO `goods_cat` VALUES ('74', '27', '15');
INSERT INTO `goods_cat` VALUES ('75', '28', '16');
INSERT INTO `goods_cat` VALUES ('76', '28', '15');
INSERT INTO `goods_cat` VALUES ('77', '28', '1');
INSERT INTO `goods_cat` VALUES ('78', '29', '16');
INSERT INTO `goods_cat` VALUES ('79', '29', '1');
INSERT INTO `goods_cat` VALUES ('80', '30', '15');
INSERT INTO `goods_cat` VALUES ('81', '30', '1');
INSERT INTO `goods_cat` VALUES ('82', '31', '16');
INSERT INTO `goods_cat` VALUES ('83', '31', '15');
INSERT INTO `goods_cat` VALUES ('84', '32', '16');
INSERT INTO `goods_cat` VALUES ('89', '33', '16');
INSERT INTO `goods_cat` VALUES ('87', '34', '15');
INSERT INTO `goods_cat` VALUES ('88', '34', '1');
INSERT INTO `goods_cat` VALUES ('90', '33', '1');

-- ----------------------------
-- Table structure for `goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `goods_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_category_name` varchar(255) DEFAULT NULL,
  `goods_category_title` varchar(255) DEFAULT NULL,
  `goods_category_keywords` varchar(255) DEFAULT NULL,
  `goods_category_desc` varchar(255) DEFAULT NULL,
  `goods_category_parent` int(11) DEFAULT NULL,
  `goods_category_order` tinyint(255) DEFAULT NULL,
  `goods_category_template_file` varchar(255) DEFAULT NULL,
  `goods_category_measure_unit` varchar(255) DEFAULT NULL,
  `goods_category_style` varchar(255) DEFAULT NULL,
  `goods_category_grade` varchar(255) DEFAULT NULL,
  `goods_category_filter_attr` varchar(255) DEFAULT NULL,
  `goods_category_show_in_nav` tinyint(4) DEFAULT NULL,
  `goods_category_is_show` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`goods_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES ('1', '商务用车', '商务用车', '商务用车', '商务用车', '0', '1', '4', '天', '', null, '8', null, '1');
INSERT INTO `goods_category` VALUES ('17', '接机送机', '接机送机', '接机送机', '接机送机接机送机接机送机', '0', '4', '0', '元/天', '', null, '0', null, '1');
INSERT INTO `goods_category` VALUES ('15', '婚庆用车', '婚庆用车', '婚庆用车', '婚庆用车', '0', '2', '0', '元/天', '', null, '0', null, '1');
INSERT INTO `goods_category` VALUES ('16', '旅游用车', '旅游用车', '旅游用车', '旅游用车旅游用车旅游用车', '0', '3', '0', '元/天', '', null, '0', null, '1');

-- ----------------------------
-- Table structure for `goods_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `goods_gallery`;
CREATE TABLE `goods_gallery` (
  `goods_gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `img_desc` varchar(255) DEFAULT NULL,
  `thumb_url` varchar(255) DEFAULT NULL,
  `img_original` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_gallery_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_gallery
-- ----------------------------
INSERT INTO `goods_gallery` VALUES ('1', '11', 'dsfsff发的地方', 'upload/201604161238333833_min.jpg', 'upload/201604161238333833.jpg');
INSERT INTO `goods_gallery` VALUES ('2', '11', 'dsfsff发的地方', 'upload/201604161238433843_min.jpg', 'upload/201604161238433843.jpg');
INSERT INTO `goods_gallery` VALUES ('3', '11', 'dsfsff发的地方', 'upload/201604161238493849_min.jpg', 'upload/201604161238493849.jpg');
INSERT INTO `goods_gallery` VALUES ('4', '12', 'werwer', 'upload/20160416134500450_min.jpg', 'upload/20160416134500450.jpg');
INSERT INTO `goods_gallery` VALUES ('5', '12', 'ewrwerwe', 'upload/201604161345114511_min.jpg', 'upload/201604161345114511.jpg');
INSERT INTO `goods_gallery` VALUES ('6', '12', 'werewrwe', 'upload/201604161345194519_min.jpg', 'upload/201604161345194519.jpg');
INSERT INTO `goods_gallery` VALUES ('7', '15', '撒旦', 'upload/20160416160311311_min.jpg', 'upload/20160416160311311.jpg');
INSERT INTO `goods_gallery` VALUES ('14', '16', '', 'upload/20160531150327327_min.png', 'upload/20160531150327327.png');
INSERT INTO `goods_gallery` VALUES ('15', '16', '', 'upload/20160531150341341_min.jpg', 'upload/20160531150341341.jpg');
INSERT INTO `goods_gallery` VALUES ('12', '16', '3eee', 'upload/201605311445364536_min.jpg', 'upload/201605311445364536.jpg');
INSERT INTO `goods_gallery` VALUES ('16', '16', '', 'upload/20160531150346346_min.png', 'upload/20160531150346346.png');
INSERT INTO `goods_gallery` VALUES ('17', '16', '', 'upload/20160531150729729_min.jpg', 'upload/20160531150729729.jpg');
INSERT INTO `goods_gallery` VALUES ('18', '16', '', 'upload/201605311512281228_min.jpg', 'upload/201605311512281228.jpg');
INSERT INTO `goods_gallery` VALUES ('19', '16', '', 'upload/201605311512461246_min.jpg', 'upload/201605311512461246.jpg');
INSERT INTO `goods_gallery` VALUES ('27', '18', '', 'upload/201606151049264926_min.jpg', 'upload/201606151049264926.jpg');
INSERT INTO `goods_gallery` VALUES ('28', '18', '', 'upload/201606151049304930_min.jpg', 'upload/201606151049304930.jpg');
INSERT INTO `goods_gallery` VALUES ('29', '20', '', 'upload/20160630141400140_min.jpg', 'upload/20160630141400140.jpg');
INSERT INTO `goods_gallery` VALUES ('30', '22', '', 'upload/201607111645594559_min.jpg', 'upload/201607111645594559.jpg');
INSERT INTO `goods_gallery` VALUES ('31', '22', '', 'upload/20160711164604464_min.jpg', 'upload/20160711164604464.jpg');
INSERT INTO `goods_gallery` VALUES ('32', '22', '', 'upload/20160711164607467_min.jpg', 'upload/20160711164607467.jpg');
INSERT INTO `goods_gallery` VALUES ('33', '22', '', 'upload/201607111646114611_min.jpg', 'upload/201607111646114611.jpg');
INSERT INTO `goods_gallery` VALUES ('34', '22', '', 'upload/201607111646154615_min.jpg', 'upload/201607111646154615.jpg');
INSERT INTO `goods_gallery` VALUES ('35', '22', '', 'upload/201607111646194619_min.jpg', 'upload/201607111646194619.jpg');
INSERT INTO `goods_gallery` VALUES ('36', '22', '', 'upload/201607111646234623_min.jpg', 'upload/201607111646234623.jpg');
INSERT INTO `goods_gallery` VALUES ('37', '22', '', 'upload/201607111646264626_min.jpg', 'upload/201607111646264626.jpg');
INSERT INTO `goods_gallery` VALUES ('38', '22', '', 'upload/201607111646324632_min.jpg', 'upload/201607111646324632.jpg');
INSERT INTO `goods_gallery` VALUES ('39', '23', '', 'upload/201607111653115311_min.jpg', 'upload/201607111653115311.jpg');
INSERT INTO `goods_gallery` VALUES ('41', '23', '', 'upload/201607111653475347_min.jpg', 'upload/201607111653475347.jpg');
INSERT INTO `goods_gallery` VALUES ('42', '23', '', 'upload/201607111653515351_min.jpg', 'upload/201607111653515351.jpg');
INSERT INTO `goods_gallery` VALUES ('43', '26', '', 'upload/201612131153305330_min.jpg', 'upload/201612131153305330.jpg');
INSERT INTO `goods_gallery` VALUES ('44', '26', '', 'upload/201612131153515351_min.jpg', 'upload/201612131153515351.jpg');
INSERT INTO `goods_gallery` VALUES ('45', '26', '', 'upload/201612131153545354_min.jpg', 'upload/201612131153545354.jpg');
INSERT INTO `goods_gallery` VALUES ('46', '26', '', 'upload/201612131153575357_min.jpg', 'upload/201612131153575357.jpg');
INSERT INTO `goods_gallery` VALUES ('47', '27', '', 'upload/201612131157275727_min.jpg', 'upload/201612131157275727.jpg');
INSERT INTO `goods_gallery` VALUES ('48', '28', '', 'upload/2016121312010313_min.jpg', 'upload/2016121312010313.jpg');
INSERT INTO `goods_gallery` VALUES ('49', '29', '', 'upload/201612131212111211_min.jpg', 'upload/201612131212111211.jpg');
INSERT INTO `goods_gallery` VALUES ('50', '30', '', 'upload/201612131214541454_min.jpg', 'upload/201612131214541454.jpg');
INSERT INTO `goods_gallery` VALUES ('51', '31', '', 'upload/201612131220332033_min.jpg', 'upload/201612131220332033.jpg');
INSERT INTO `goods_gallery` VALUES ('52', '32', '', 'upload/20161213122309239_min.jpg', 'upload/20161213122309239.jpg');
INSERT INTO `goods_gallery` VALUES ('53', '33', '', 'upload/201612131227372737_min.jpg', 'upload/201612131227372737.jpg');
INSERT INTO `goods_gallery` VALUES ('54', '34', '', 'upload/20161213123106316_min.jpg', 'upload/20161213123106316.jpg');

-- ----------------------------
-- Table structure for `goods_order`
-- ----------------------------
DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE `goods_order` (
  `goods_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_order_no` varchar(255) DEFAULT NULL,
  `goods_order_type` tinyint(4) DEFAULT NULL,
  `goods_order_flag` tinyint(4) DEFAULT NULL,
  `goods_order_num` tinyint(4) DEFAULT NULL,
  `goods_order_orNum` tinyint(4) DEFAULT NULL,
  `goods_order_serviceDate` varchar(255) DEFAULT NULL,
  `goods_order_dayLongs` varchar(255) DEFAULT NULL,
  `goods_order_content` varchar(255) DEFAULT NULL,
  `goods_order_user_id` int(11) DEFAULT NULL,
  `goods_order_admin_id` int(11) DEFAULT NULL,
  `goods_order_store_id` int(11) DEFAULT NULL,
  `goods_order_employee_id` int(11) DEFAULT NULL,
  `goods_order_price` varchar(255) DEFAULT NULL,
  `goods_order_actual_price` varchar(255) DEFAULT '0',
  `goods_order_playFlag` tinyint(4) DEFAULT NULL,
  `goods_order_contractFlag` tinyint(4) DEFAULT NULL,
  `goods_order_address` int(11) DEFAULT NULL,
  `goods_order_date` varchar(255) DEFAULT NULL,
  `goods_order_save` tinyint(4) DEFAULT '2',
  `goods_order_direction` tinyint(4) DEFAULT NULL,
  `goods_order_direction_id` int(11) DEFAULT NULL,
  `goods_order_direction_person` varchar(255) DEFAULT NULL,
  `goods_order_goods_id` int(11) DEFAULT NULL,
  `goods_order_pay_way` tinyint(4) DEFAULT NULL,
  `goods_order_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=717 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_order
-- ----------------------------
INSERT INTO `goods_order` VALUES ('682', 'ORDER201607020805275', '1', '1', '1', '1', null, null, '配师机+送车接车+需要发票', '286', null, null, null, '0.01', '0', '1', '1', '695', '2016-07-02 08:05', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('683', 'ORDER201607020813231', '1', '1', '1', '1', null, null, '送车接车+配师机+需要发票', '286', null, null, null, '0.01', '0', '1', '1', '698', '2016-07-02 08:13', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('684', 'ORDER201607020823562', '1', '1', '1', '1', null, null, '配师机+送车接车+需要发票', '286', null, null, null, '0.01', '0', '1', '1', '698', '2016-07-02 08:23', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('685', 'ORDER201607020842104', '1', '1', '1', '1', null, null, '需要发票+送车接车', '286', null, null, null, '0.01', '0', '2', '1', '694', '2016-07-02 08:42', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('686', 'ORDER201607031000260', '1', '1', '1', '1', null, null, '需要发票+送车接车+配师机', '286', null, null, null, '0.01', '0', '2', '1', '696', '2016-07-03 10:00', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('687', 'ORDER201607031521042', '1', '1', '1', '1', null, null, '配师机+送车接车', '286', null, null, null, '0.01', '0', '2', '1', '697', '2016-07-03 15:21', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('688', 'ORDER201607031533083', '1', '1', '1', '1', null, null, '送车接车+需要发票', '286', null, null, null, '0.01', '0', '1', '1', '698', '2016-07-03 15:33', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('689', 'ORDER201607031539353', '1', '5', '1', '1', null, null, '配师机+送车接车', '286', null, '42', '69', '0.01', '0', '1', '1', '694', '2016-07-03 15:39', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('690', 'ORDER201607031544054', '2', '1', '1', '1', null, null, '配师机', '286', null, null, null, '0.01', '0', '1', '1', '694', '2016-07-03 15:44', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('691', 'ORDER201607041435353', '2', '1', '1', '1', null, null, '配师机+送车接车', '286', null, null, null, '0.01', '0', '2', '1', '699', '2016-07-04 14:35', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('692', 'ORDER201607041437303', '2', '1', '1', '1', null, null, '配师机+需要发票', '286', null, null, null, '0.01', '0', '2', '1', '696', '2016-07-04 14:37', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('693', 'ORDER201607041439253', '2', '1', '1', '1', null, null, '需要发票', '286', null, null, null, '0.01', '0', '2', '1', '697', '2016-07-04 14:39', '2', '3', null, '286', '20', '1', '');
INSERT INTO `goods_order` VALUES ('694', 'ORDER201607091218541', '2', '3', '1', '1', null, null, '', '286', null, '42', '69', '0.01', '0', '1', '1', '694', '2016-07-09 12:18', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('695', 'ORDER201607112110261', '2', '5', '1', '1', '2016-07-11', null, '配师机+送车接车', '286', null, '42', null, '0.01', '0', '2', '1', '694', '2016-07-11 21:10', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('696', 'ORDER201607112124162', '2', '3', '1', '1', '2016-07-11', null, '配师机+送车接车', '286', null, '42', '69', '0.01', '0', '2', '1', '697', '2016-07-11 21:24', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('697', 'ORDER201607231318021', '2', '1', '1', '1', null, null, '送车接车+需要发票', '286', null, null, null, '16', '0', '2', '1', '694', '2016-07-23 13:18', '2', '3', null, '15228932523', '20', '1', '三环外接送机');
INSERT INTO `goods_order` VALUES ('698', 'ORDER201607240956375', '2', '4', '1', '1', null, null, '配师机+送车接车', '286', null, null, null, '0.01', '0', '1', '1', '699', '2016-07-24 09:56', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('699', 'ORDER201607241011331', '2', '4', '1', '1', null, null, '配师机', '286', null, null, null, '0.01', '0', '1', '1', '694', '2016-07-24 10:11', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('700', 'ORDER201607251124452', '2', '1', '1', '1', null, null, '送车接车+需要发票', '286', null, null, null, '0.01', '0', '2', '1', '697', '2016-07-25 11:24', '2', '3', null, '15228932523', '20', '1', '三环内接送机');
INSERT INTO `goods_order` VALUES ('701', 'ORDER201612061800570', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '2', '1', '699', '2016-12-06 18:00', '2', '3', null, '15228932523', '20', '1', '三环内接送机');
INSERT INTO `goods_order` VALUES ('702', 'ORDER201612061803153', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '1', '1', '696', '2016-12-06 18:03', '2', '3', null, '15228932523', '20', '1', '三环内接送机');
INSERT INTO `goods_order` VALUES ('703', 'ORDER201612061807247', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '1', '1', '696', '2016-12-06 18:07', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('704', 'ORDER201612061815191', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '2', '1', '696', '2016-12-06 18:15', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('705', 'ORDER201612061817441', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '2', '1', '696', '2016-12-06 18:17', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('706', 'ORDER201612061822042', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '2', '1', '696', '2016-12-06 18:22', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('707', 'ORDER201612061826242', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '2', '1', '700', '2016-12-06 18:26', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('708', 'ORDER201612061831213', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '2', '1', '700', '2016-12-06 18:31', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('709', 'ORDER201612061835553', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '2', '1', '700', '2016-12-06 18:35', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('710', 'ORDER201612061840204', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '2', '1', '700', '2016-12-06 18:40', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('711', 'ORDER201612061846154', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '2', '1', '700', '2016-12-06 18:46', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('712', 'ORDER201612061850145', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '1', '1', '700', '2016-12-06 18:50', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('713', 'ORDER201612071059375', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '1', '1', '700', '2016-12-07 10:59', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('714', 'ORDER201612071147204', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '1', '1', '700', '2016-12-07 11:47', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('715', 'ORDER201612071652275', '2', '1', '1', '1', null, null, '', '286', null, null, null, '0.01', '0', '1', '1', '700', '2016-12-07 16:52', '2', '3', null, '15228932523', '20', '1', '');
INSERT INTO `goods_order` VALUES ('716', 'ORDER201612131158395', '2', '1', '1', '1', null, null, '', '286', null, null, null, '90', '0', '2', '1', '700', '2016-12-13 11:58', '2', '3', null, '15228932523', '26', '1', '三环内接送机');

-- ----------------------------
-- Table structure for `goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `goods_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_type_name` varchar(255) DEFAULT NULL,
  `goods_type_enabled` tinyint(4) DEFAULT NULL,
  `goods_type_attr_group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES ('6', '手动紧凑型', '1', '基本配置');
INSERT INTO `goods_type` VALUES ('7', '经济型', '1', '基本配置');
INSERT INTO `goods_type` VALUES ('8', '商务型', '1', '基本配置');
INSERT INTO `goods_type` VALUES ('9', '豪华型', '1', '基本配置');
INSERT INTO `goods_type` VALUES ('10', 'SUV', '1', '基本配置');
INSERT INTO `goods_type` VALUES ('11', '7座MPV', '1', '基本配置');
INSERT INTO `goods_type` VALUES ('12', '电动车', '1', '基本配置');

-- ----------------------------
-- Table structure for `goods_type_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `goods_type_attribute`;
CREATE TABLE `goods_type_attribute` (
  `goods_type_attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_type_attribute_cat` int(11) DEFAULT NULL,
  `goods_type_attribute_name` varchar(255) DEFAULT NULL,
  `goods_type_attribute_input_type` tinyint(4) DEFAULT NULL,
  `goods_type_attribute_type` tinyint(255) DEFAULT NULL,
  `goods_type_attribute_values` text,
  `goods_type_attribute_index` tinyint(4) DEFAULT NULL,
  `goods_type_attribute_order` int(11) DEFAULT NULL,
  `goods_type_attribute_linked` tinyint(4) DEFAULT NULL,
  `goods_type_attribute_group` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`goods_type_attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_type_attribute
-- ----------------------------
INSERT INTO `goods_type_attribute` VALUES ('3', '2', '是打发撒旦', '0', '0', '', '0', '4', '0', '0');
INSERT INTO `goods_type_attribute` VALUES ('2', '2', '事假那么大1', '1', '1', '我的,你的', '1', '2', '1', '2');
INSERT INTO `goods_type_attribute` VALUES ('4', '2', '松岛枫发的', '0', '0', '', '0', '2', '0', '0');
INSERT INTO `goods_type_attribute` VALUES ('5', '3', '主板', '0', '0', '', '0', '5', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('6', '3', '内存', '0', '0', '', '0', '2', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('7', '4', '座位', '0', '0', '', '0', '8', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('8', '4', '变速箱', '0', '0', '', '0', '7', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('9', '4', '排量', '0', '0', '', '0', '6', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('10', '4', '油箱容量', '0', '0', '', '0', '5', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('11', '4', '押金', '0', '0', '', '0', '4', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('12', '4', '违章押金', '0', '0', '', '0', '3', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('13', '4', '超公里', '0', '0', '', '0', '2', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('14', '4', '超小时', '0', '0', '', '0', '1', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('15', '4', 'dsfadf', '0', '0', '', '0', '11', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('16', '4', '11', '0', '0', '', '0', '11', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('17', '4', '121', '0', '0', '', '0', '1', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('18', '4', '11', '0', '0', '', '0', '11', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('19', '4', '11', '0', '0', '', '0', '11', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('20', '6', '车系', '0', '0', '', '0', '99', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('21', '6', '年代款', '0', '0', '', '0', '98', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('22', '6', '配置款', '0', '0', '', '0', '97', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('23', '6', '座位数', '0', '0', '', '0', '96', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('24', '6', '车门数', '0', '0', '', '0', '95', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('25', '6', '燃料类型', '0', '0', '', '0', '94', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('26', '6', '变速箱类型', '0', '0', '', '0', '93', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('27', '6', '排量', '0', '0', '', '0', '92', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('28', '6', '燃油标号', '0', '0', '', '0', '91', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('29', '6', '驱动方式', '0', '0', '', '0', '90', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('30', '6', '发动机进气形式', '0', '0', '', '0', '89', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('31', '6', '天窗', '0', '0', '', '0', '88', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('32', '6', '油箱容量', '0', '0', '', '0', '87', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('33', '6', '音响', '0', '0', '', '0', '86', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('34', '6', '座椅', '0', '0', '', '0', '85', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('35', '6', '倒车雷达', '0', '0', '', '0', '84', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('36', '6', '气囊', '0', '0', '', '0', '82', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('37', '6', 'GPS导航', '0', '0', '', '0', '80', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('38', '7', '车系', '0', '0', '', '0', '99', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('39', '7', '年代款', '0', '0', '', '0', '98', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('40', '7', '配置款', '0', '0', '', '0', '97', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('41', '7', '座位数', '0', '0', '', '0', '96', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('42', '7', '车门数', '0', '0', '', '0', '95', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('43', '7', '燃料类型', '0', '0', '', '0', '94', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('44', '7', '变速箱类型', '0', '0', '', '0', '93', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('45', '7', '排量', '0', '0', '', '0', '92', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('46', '7', '燃油标号', '0', '0', '', '0', '91', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('47', '7', '驱动方式', '0', '0', '', '0', '90', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('48', '7', '发动机进气形式', '0', '0', '', '0', '89', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('49', '7', '天窗', '0', '0', '', '0', '88', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('50', '7', '油箱容量', '0', '0', '', '0', '87', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('51', '7', '音响', '0', '0', '', '0', '86', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('52', '7', '座椅', '0', '0', '', '0', '85', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('53', '7', '倒车雷达', '0', '0', '', '0', '84', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('54', '7', '气囊', '0', '0', '', '0', '83', '0', '1');
INSERT INTO `goods_type_attribute` VALUES ('55', '7', 'GPS导航', '0', '0', '', '0', '82', '0', '1');

-- ----------------------------
-- Table structure for `grab`
-- ----------------------------
DROP TABLE IF EXISTS `grab`;
CREATE TABLE `grab` (
  `grab_id` int(11) NOT NULL AUTO_INCREMENT,
  `grab_user` int(11) NOT NULL,
  `grab_customer` int(11) DEFAULT NULL,
  `grab_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`grab_id`),
  KEY `fk_grab_user` (`grab_user`) USING BTREE,
  KEY `fk_grab_customer` (`grab_customer`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of grab
-- ----------------------------
INSERT INTO `grab` VALUES ('14', '1', '4', '2015-06-26 18:56:06');
INSERT INTO `grab` VALUES ('15', '1', '3', '2015-06-26 19:35:14');
INSERT INTO `grab` VALUES ('16', '1', '10', '2015-06-27 10:34:59');
INSERT INTO `grab` VALUES ('17', '1', '6', '2015-06-27 10:56:44');
INSERT INTO `grab` VALUES ('18', '1', '5', '2015-06-27 10:56:54');
INSERT INTO `grab` VALUES ('19', '1', '7', '2015-06-27 10:56:56');
INSERT INTO `grab` VALUES ('20', '1', '1', '2015-06-27 10:56:59');
INSERT INTO `grab` VALUES ('21', '1', '8', '2015-06-27 11:52:16');
INSERT INTO `grab` VALUES ('22', '1', '10', '2016-07-28 13:43:05');

-- ----------------------------
-- Table structure for `group_goods`
-- ----------------------------
DROP TABLE IF EXISTS `group_goods`;
CREATE TABLE `group_goods` (
  `parent_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_goods
-- ----------------------------
INSERT INTO `group_goods` VALUES ('16', '9', '12', '1');
INSERT INTO `group_goods` VALUES ('16', '3', '12', '1');

-- ----------------------------
-- Table structure for `info_tpl`
-- ----------------------------
DROP TABLE IF EXISTS `info_tpl`;
CREATE TABLE `info_tpl` (
  `info_tpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `info_tpl_name` varchar(255) DEFAULT NULL,
  `info_tpl_title` varchar(255) DEFAULT NULL,
  `info_tpl_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`info_tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_tpl
-- ----------------------------
INSERT INTO `info_tpl` VALUES ('1', '邮件/手机验证（用于注册和申请）', '验证信息', '您的验证码：#(content)【成都维熵科技】');
INSERT INTO `info_tpl` VALUES ('2', '下单提示店长', '提示信息', '电话为：#(content)的客户已经下单，请尽快联系【成都维熵科技】');
INSERT INTO `info_tpl` VALUES ('3', '下单提示客户', '提示信息', '尊敬的客户您好，您的订单信息已收到，我们正在为您安排车辆，工作人员将尽快与您联系，请保持手机畅通【成都维熵科技】');

-- ----------------------------
-- Table structure for `keywords`
-- ----------------------------
DROP TABLE IF EXISTS `keywords`;
CREATE TABLE `keywords` (
  `keywords_date` varchar(255) DEFAULT NULL,
  `searchengine` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `link_goods`
-- ----------------------------
DROP TABLE IF EXISTS `link_goods`;
CREATE TABLE `link_goods` (
  `goods_id` int(11) DEFAULT NULL,
  `link_goods_id` int(11) DEFAULT NULL,
  `is_double` tinyint(4) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link_goods
-- ----------------------------
INSERT INTO `link_goods` VALUES ('14', '10', '0', '1');
INSERT INTO `link_goods` VALUES ('15', '10', '0', '1');
INSERT INTO `link_goods` VALUES ('15', '9', '0', '1');
INSERT INTO `link_goods` VALUES ('16', '16', '0', '1');

-- ----------------------------
-- Table structure for `net`
-- ----------------------------
DROP TABLE IF EXISTS `net`;
CREATE TABLE `net` (
  `net_id` int(11) NOT NULL AUTO_INCREMENT,
  `net_title` varchar(160) DEFAULT NULL,
  `net_descript` varchar(510) DEFAULT NULL,
  `net_keywords` varchar(510) DEFAULT NULL,
  `net_company` varchar(510) DEFAULT NULL,
  `net_copyright` varchar(10000) DEFAULT NULL,
  `net_info` varchar(10000) DEFAULT NULL,
  `net_logo` varchar(200) DEFAULT NULL,
  `net_tel` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`net_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of net
-- ----------------------------
INSERT INTO `net` VALUES ('1', '在线租车系统_成都维熵', '在线租车系统_成都维熵', '在线租车系统_成都维熵', '成都维熵科技有限责任公司', '成都维熵科技有限责任公司', '在线租车服务系统', 'upload/4/6/614d6017-c01b-482d-8840-b2667665437a_20161213110129129.png', '028-85980903');

-- ----------------------------
-- Table structure for `order_aunt`
-- ----------------------------
DROP TABLE IF EXISTS `order_aunt`;
CREATE TABLE `order_aunt` (
  `order_aunt_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_aunt_order` int(11) DEFAULT NULL,
  `order_aunt_aunt` int(11) DEFAULT NULL,
  `order_aunt_endate` datetime DEFAULT NULL,
  `order_aunt_flag` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`order_aunt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_aunt
-- ----------------------------
INSERT INTO `order_aunt` VALUES ('357', '689', '231', null, '0');
INSERT INTO `order_aunt` VALUES ('356', '689', '230', null, '0');
INSERT INTO `order_aunt` VALUES ('360', '695', '233', null, '0');

-- ----------------------------
-- Table structure for `protection`
-- ----------------------------
DROP TABLE IF EXISTS `protection`;
CREATE TABLE `protection` (
  `protection_id` int(11) NOT NULL AUTO_INCREMENT,
  `protection_user` int(11) DEFAULT NULL,
  `protection_customer` int(11) DEFAULT NULL,
  `protection_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`protection_id`),
  KEY `fk_protection_user` (`protection_user`) USING BTREE,
  KEY `fk_protection_customer` (`protection_customer`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of protection
-- ----------------------------
INSERT INTO `protection` VALUES ('1', '3', '1', '2015-01-16 13:50:36');
INSERT INTO `protection` VALUES ('2', '1', '1', '2015-01-19 18:04:45');
INSERT INTO `protection` VALUES ('3', '4', '1', '2015-01-20 15:47:06');
INSERT INTO `protection` VALUES ('4', '10', '1', '2015-06-27 10:58:44');
INSERT INTO `protection` VALUES ('5', '7', '1', '2015-06-27 11:52:19');
INSERT INTO `protection` VALUES ('6', '5', '1', '2015-06-27 11:52:21');
INSERT INTO `protection` VALUES ('7', '1', '1', '2015-06-27 11:52:23');
INSERT INTO `protection` VALUES ('8', '10', '1', '2016-07-28 13:43:11');

-- ----------------------------
-- Table structure for `recept`
-- ----------------------------
DROP TABLE IF EXISTS `recept`;
CREATE TABLE `recept` (
  `recept_id` int(11) NOT NULL AUTO_INCREMENT,
  `recept_name` varchar(255) DEFAULT NULL,
  `recept_title` varchar(255) DEFAULT NULL,
  `recept_keywords` varchar(255) DEFAULT NULL,
  `recept_descript` varchar(500) DEFAULT NULL,
  `recept_data_mod` varchar(255) DEFAULT NULL,
  `recept_data_modcode` varchar(500) DEFAULT NULL,
  `recept_parent` int(11) DEFAULT '0',
  `recept_addr` tinyint(255) DEFAULT NULL,
  `recept_url` varchar(255) DEFAULT NULL,
  `recept_mod` varchar(255) DEFAULT NULL,
  `recept_order` int(11) DEFAULT NULL,
  `recept_is_display` tinyint(4) DEFAULT NULL,
  `recept_is_self` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`recept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recept
-- ----------------------------
INSERT INTO `recept` VALUES ('1', '首页', '维熵租车系统', '维熵租车系统', '维熵租车系统', '', '', '0', '1', 'index', 'index', '50', '1', '1');
INSERT INTO `recept` VALUES ('6', '联系我们', '成都维熵科技', '成都维熵科技联系我们', '成都维熵科技联系我们描述', '48', '联系我们', '0', '1', null, 'page', '1', '1', '2');
INSERT INTO `recept` VALUES ('7', '自驾租车', '自驾租车', '自驾租车', '自驾租车自驾租车', '', '', '0', '1', 'goods', 'goods_list', '5', '1', '1');
INSERT INTO `recept` VALUES ('8', '企业服务', '企业服务', '企业服务', '企业服务', '', '', '0', '1', 'service', 'enterprise_service', '5', '1', '1');
INSERT INTO `recept` VALUES ('9', '登陆', '登陆', '登陆', '登陆', '', '', '0', '2', 'goPetition', 'user_login_signel', '1', '1', '1');
INSERT INTO `recept` VALUES ('10', '注册', '注册', '登陆注册', '注册', '', '', '0', '2', 'goPetition', 'user_registe', '1', '1', '1');
INSERT INTO `recept` VALUES ('14', '帮助中心', '帮助中心', '帮助中心', '帮助中心', '', '', '0', '2', 'pc/help', 'help', '1', '1', '1');
INSERT INTO `recept` VALUES ('15', '租车预订', '租车预订', '租车预订', '租车预订', '', '', '14', '2', 'pc/help', 'help', '9', '1', '1');
INSERT INTO `recept` VALUES ('16', '会员服务', '会员服务', '会员服务', '会员服务', '', '', '14', '2', 'pc/help', 'help', '8', '1', '1');
INSERT INTO `recept` VALUES ('17', '常见问题', '常见问题', '常见问题', '常见问题', '', '', '14', '2', 'pc/help', 'hlp', '7', '1', '1');
INSERT INTO `recept` VALUES ('18', '我们的服务', '我们的服务', '我们的服务', '我们的服务', '', '', '14', '2', 'pc/help', 'help', '5', '1', '1');
INSERT INTO `recept` VALUES ('19', '服务时间', '服务时间', '服务时间', '服务时间', '94', '服务时间', '15', '2', null, 'help', '9', '1', '2');
INSERT INTO `recept` VALUES ('20', '服务预订', '服务预订', '服务预订', '服务预订', '95', '服务预订', '15', '2', null, 'help', '8', '1', '2');
INSERT INTO `recept` VALUES ('21', '新闻中心', '新闻中心', '新闻中心', '新闻中心', '74', '新闻中心', '0', '1', null, 'news_list', '3', '1', '2');
INSERT INTO `recept` VALUES ('23', '精彩活动', '精彩活动', '精彩活动', '精彩活动', '73', '精彩活动', '0', '1', null, 'news_list', '4', '1', '2');

-- ----------------------------
-- Table structure for `rolemod`
-- ----------------------------
DROP TABLE IF EXISTS `rolemod`;
CREATE TABLE `rolemod` (
  `rolemod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_fk_id` int(11) DEFAULT NULL,
  `role_fk_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rolemod_id`),
  KEY `mod_fk_id` (`mod_fk_id`) USING BTREE,
  KEY `role_fk_id` (`role_fk_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=707 DEFAULT CHARSET=gbk COMMENT='InnoDB free: 4096 kB; (`mod_fk_id`) REFER `xiaoerxinxigang/a';

-- ----------------------------
-- Records of rolemod
-- ----------------------------
INSERT INTO `rolemod` VALUES ('705', '48', '1');
INSERT INTO `rolemod` VALUES ('704', '47', '1');
INSERT INTO `rolemod` VALUES ('703', '46', '1');
INSERT INTO `rolemod` VALUES ('702', '53', '1');
INSERT INTO `rolemod` VALUES ('701', '52', '1');
INSERT INTO `rolemod` VALUES ('700', '51', '1');
INSERT INTO `rolemod` VALUES ('699', '50', '1');
INSERT INTO `rolemod` VALUES ('698', '93', '1');
INSERT INTO `rolemod` VALUES ('697', '92', '1');
INSERT INTO `rolemod` VALUES ('696', '91', '1');
INSERT INTO `rolemod` VALUES ('695', '96', '1');
INSERT INTO `rolemod` VALUES ('694', '95', '1');
INSERT INTO `rolemod` VALUES ('693', '94', '1');
INSERT INTO `rolemod` VALUES ('692', '90', '1');
INSERT INTO `rolemod` VALUES ('691', '89', '1');
INSERT INTO `rolemod` VALUES ('52', '11', '17');
INSERT INTO `rolemod` VALUES ('51', '9', '17');
INSERT INTO `rolemod` VALUES ('50', '8', '17');
INSERT INTO `rolemod` VALUES ('49', '7', '17');
INSERT INTO `rolemod` VALUES ('48', '6', '17');
INSERT INTO `rolemod` VALUES ('47', '5', '17');
INSERT INTO `rolemod` VALUES ('53', '10', '17');
INSERT INTO `rolemod` VALUES ('690', '78', '1');
INSERT INTO `rolemod` VALUES ('689', '97', '1');
INSERT INTO `rolemod` VALUES ('688', '77', '1');
INSERT INTO `rolemod` VALUES ('687', '76', '1');
INSERT INTO `rolemod` VALUES ('686', '75', '1');
INSERT INTO `rolemod` VALUES ('685', '74', '1');
INSERT INTO `rolemod` VALUES ('684', '73', '1');
INSERT INTO `rolemod` VALUES ('683', '72', '1');
INSERT INTO `rolemod` VALUES ('682', '57', '1');
INSERT INTO `rolemod` VALUES ('681', '56', '1');
INSERT INTO `rolemod` VALUES ('680', '55', '1');
INSERT INTO `rolemod` VALUES ('679', '71', '1');
INSERT INTO `rolemod` VALUES ('678', '70', '1');
INSERT INTO `rolemod` VALUES ('677', '69', '1');
INSERT INTO `rolemod` VALUES ('676', '14', '1');
INSERT INTO `rolemod` VALUES ('675', '13', '1');
INSERT INTO `rolemod` VALUES ('674', '12', '1');
INSERT INTO `rolemod` VALUES ('673', '88', '1');
INSERT INTO `rolemod` VALUES ('672', '87', '1');
INSERT INTO `rolemod` VALUES ('671', '86', '1');
INSERT INTO `rolemod` VALUES ('670', '85', '1');
INSERT INTO `rolemod` VALUES ('669', '84', '1');
INSERT INTO `rolemod` VALUES ('668', '83', '1');
INSERT INTO `rolemod` VALUES ('667', '82', '1');
INSERT INTO `rolemod` VALUES ('666', '81', '1');
INSERT INTO `rolemod` VALUES ('665', '68', '1');
INSERT INTO `rolemod` VALUES ('664', '66', '1');
INSERT INTO `rolemod` VALUES ('663', '67', '1');
INSERT INTO `rolemod` VALUES ('662', '65', '1');
INSERT INTO `rolemod` VALUES ('661', '64', '1');
INSERT INTO `rolemod` VALUES ('660', '63', '1');
INSERT INTO `rolemod` VALUES ('659', '61', '1');
INSERT INTO `rolemod` VALUES ('658', '60', '1');
INSERT INTO `rolemod` VALUES ('657', '62', '1');
INSERT INTO `rolemod` VALUES ('656', '59', '1');
INSERT INTO `rolemod` VALUES ('655', '4', '1');
INSERT INTO `rolemod` VALUES ('654', '3', '1');
INSERT INTO `rolemod` VALUES ('653', '2', '1');
INSERT INTO `rolemod` VALUES ('652', '1', '1');
INSERT INTO `rolemod` VALUES ('651', '58', '1');
INSERT INTO `rolemod` VALUES ('650', '54', '1');
INSERT INTO `rolemod` VALUES ('649', '18', '1');
INSERT INTO `rolemod` VALUES ('648', '80', '1');
INSERT INTO `rolemod` VALUES ('647', '79', '1');
INSERT INTO `rolemod` VALUES ('646', '17', '1');
INSERT INTO `rolemod` VALUES ('645', '19', '1');
INSERT INTO `rolemod` VALUES ('644', '16', '1');
INSERT INTO `rolemod` VALUES ('643', '15', '1');
INSERT INTO `rolemod` VALUES ('706', '49', '1');

-- ----------------------------
-- Table structure for `sign`
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign` (
  `sign_id` int(11) NOT NULL AUTO_INCREMENT,
  `sign_client` int(11) DEFAULT NULL,
  `sign_user` int(11) DEFAULT NULL,
  `sign_content` varchar(2000) DEFAULT NULL,
  `sign_price` decimal(10,0) DEFAULT NULL,
  `sign_time` datetime DEFAULT NULL,
  `sign_user1` int(11) DEFAULT NULL,
  `sign_time1` datetime DEFAULT NULL,
  PRIMARY KEY (`sign_id`),
  KEY `fk_sign_client` (`sign_client`) USING BTREE,
  KEY `fk_sign_user` (`sign_user`) USING BTREE,
  KEY `fk_sign_user1` (`sign_user1`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES ('3', '5', '1', '适当方式打法', '1545452', '2015-06-27 14:49:45', '1', '2015-06-27 15:57:51');

-- ----------------------------
-- Table structure for `slide`
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide` (
  `slide_id` int(255) NOT NULL AUTO_INCREMENT,
  `slide_title` varchar(255) DEFAULT NULL,
  `slide_img` varchar(255) DEFAULT NULL,
  `slide_url` varchar(500) DEFAULT NULL,
  `slide_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES ('19', '幻灯片一', 'upload/10/3/0d09d1f7-a71a-4223-8807-3a14e8207bce_20161213110355355.jpg', 'http://www.webapi.cn', '1');
INSERT INTO `slide` VALUES ('20', '幻灯片二', 'upload/12/8/247b2f8d-9767-4fda-8a20-824bb889ae1f_20161213110438438.jpg', 'http://www.webapi.cn', '1');

-- ----------------------------
-- Table structure for `smtp`
-- ----------------------------
DROP TABLE IF EXISTS `smtp`;
CREATE TABLE `smtp` (
  `smtp_id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_address` varchar(255) DEFAULT NULL,
  `smtp_from` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`smtp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smtp
-- ----------------------------
INSERT INTO `smtp` VALUES ('1', 'smtp.qq.com', '328613764@qq.com', '32861376411', 'zft3285497');

-- ----------------------------
-- Table structure for `store`
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) DEFAULT NULL,
  `store_address` varchar(255) DEFAULT NULL,
  `store_flag` tinyint(4) DEFAULT '1',
  `store_tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('42', '天府新谷', '府城大道399号2号楼5楼', '1', '18030577233');

-- ----------------------------
-- Table structure for `store_data`
-- ----------------------------
DROP TABLE IF EXISTS `store_data`;
CREATE TABLE `store_data` (
  `store_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_data_employee` int(11) NOT NULL,
  `store_data_store` int(11) DEFAULT NULL,
  PRIMARY KEY (`store_data_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store_data
-- ----------------------------

-- ----------------------------
-- Table structure for `store_employee`
-- ----------------------------
DROP TABLE IF EXISTS `store_employee`;
CREATE TABLE `store_employee` (
  `store_employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_employee_name` varchar(255) DEFAULT NULL,
  `store_employee_store_id` int(11) NOT NULL DEFAULT '0',
  `store_employee_pass` varchar(255) DEFAULT NULL,
  `store_employee_md5` varchar(255) DEFAULT NULL,
  `store_employee_sate` tinyint(4) DEFAULT NULL,
  `store_employee_flag` tinyint(4) DEFAULT NULL,
  `store_employee_tel` varchar(255) DEFAULT NULL,
  `store_employee_email` varchar(255) DEFAULT NULL,
  `store_employee_no` varchar(255) DEFAULT NULL,
  `store_employee_shenfen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`store_employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store_employee
-- ----------------------------
INSERT INTO `store_employee` VALUES ('69', '张筱雨', '42', 'zft3285497', '7178fa743ab9f0c234aa2e2d4998a9e2', '1', '1', '15229876789', 'zfting@163.com', 'NE201607071626152615', '513021198208256074');

-- ----------------------------
-- Table structure for `temp`
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `temp_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`temp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of temp
-- ----------------------------
INSERT INTO `temp` VALUES ('1', 'cfbb76a0541d4ba9877b8bcf491e7b89.jpg');

-- ----------------------------
-- Table structure for `thematic_activity`
-- ----------------------------
DROP TABLE IF EXISTS `thematic_activity`;
CREATE TABLE `thematic_activity` (
  `thematic_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `thematic_activity_name` varchar(255) DEFAULT NULL,
  `thematic_activity_flag` int(11) DEFAULT '1',
  `thematic_activity_title` varchar(255) DEFAULT NULL,
  `thematic_activity_keywords` varchar(255) DEFAULT NULL,
  `thematic_activity_desc` varchar(255) DEFAULT NULL,
  `thematic_activity_startdate` varchar(255) DEFAULT NULL,
  `thematic_activity_enddate` varchar(255) DEFAULT NULL,
  `thematic_activity_img` varchar(255) DEFAULT NULL,
  `thematic_activity_longdesc` text,
  `thematic_activity_style` varchar(255) DEFAULT NULL,
  `thematic_activity_template` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`thematic_activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thematic_activity
-- ----------------------------
INSERT INTO `thematic_activity` VALUES ('3', '测试x', '1', '测试x', '测试x', '测试x', '2016-07-30', '2016-08-06', 'upload/15/0/f284f9ab-747f-46ac-8fdf-d768149578de_20160730190039039.jpg', null, 'one', 'one');
INSERT INTO `thematic_activity` VALUES ('4', '吃棉花活动', '2', '活动测试', '活动测试', '活动测试', '2016-07-30', '2016-08-06', 'upload/6/12/841c8a3d-0a28-4aa1-857b-e9918720898a_201607302249204920.jpg', '<p>吃啊尺寸 传出差传传传</p>\r\n<p>&nbsp;</p>', 'one', 'one');

-- ----------------------------
-- Table structure for `thematic_activity_cms`
-- ----------------------------
DROP TABLE IF EXISTS `thematic_activity_cms`;
CREATE TABLE `thematic_activity_cms` (
  `thematic_activity_cms_cmsid` int(11) DEFAULT NULL,
  `thematic_activity_cms_thematicid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thematic_activity_cms
-- ----------------------------
INSERT INTO `thematic_activity_cms` VALUES ('44', '2');
INSERT INTO `thematic_activity_cms` VALUES ('44', '3');
INSERT INTO `thematic_activity_cms` VALUES ('44', '4');

-- ----------------------------
-- Table structure for `thematic_activity_goods`
-- ----------------------------
DROP TABLE IF EXISTS `thematic_activity_goods`;
CREATE TABLE `thematic_activity_goods` (
  `thematic_activity_goods_goodsid` int(11) DEFAULT NULL,
  `thematic_activity_goods_activityid` int(11) DEFAULT NULL,
  `thematic_activity_goods_price` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thematic_activity_goods
-- ----------------------------
INSERT INTO `thematic_activity_goods` VALUES ('24', '2', '34000');
INSERT INTO `thematic_activity_goods` VALUES ('22', '2', '3000.00');
INSERT INTO `thematic_activity_goods` VALUES ('23', '4', '3000');
INSERT INTO `thematic_activity_goods` VALUES ('21', '4', '30000');
INSERT INTO `thematic_activity_goods` VALUES ('20', '4', '0.01');

-- ----------------------------
-- Table structure for `tpl`
-- ----------------------------
DROP TABLE IF EXISTS `tpl`;
CREATE TABLE `tpl` (
  `tpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpl_name` varchar(255) DEFAULT NULL,
  `tpl_folder` varchar(255) DEFAULT NULL,
  `tpl_flag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpl
-- ----------------------------
INSERT INTO `tpl` VALUES ('1', '默认模板', 'default', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(255) DEFAULT NULL,
  `user_pass_md5` varchar(255) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_flag` tinyint(4) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `user_money` varchar(255) DEFAULT '0',
  `user_integel` int(255) DEFAULT '0',
  `user_card` varchar(255) DEFAULT NULL,
  `user_store` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=290 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('286', '15228932523', '7178fa743ab9f0c234aa2e2d4998a9e2', 'zft3285497', '张颖', '15228932523', 'zfting@163.com', '2', '1', '88.96000000000001', '207', null, null);
INSERT INTO `user` VALUES ('288', 'zfting', 'e10adc3949ba59abbe56e057f20f883e', '123456', '长分析一', '15378964567', '15378964567@qq.com', '1', '1', '', '0', '', '0');
INSERT INTO `user` VALUES ('289', 'zfting123', 'e10adc3949ba59abbe56e057f20f883e', '123456', '赵小雨', '15228932515', 'hawk111lly@163.com', '1', '1', '0.0', '0', '12213231424', '42');

-- ----------------------------
-- Table structure for `userbase`
-- ----------------------------
DROP TABLE IF EXISTS `userbase`;
CREATE TABLE `userbase` (
  `userbase_id` int(11) NOT NULL AUTO_INCREMENT,
  `userbase_headimg` varchar(255) DEFAULT NULL,
  `userbase_integral` int(11) DEFAULT NULL,
  `userbase_username` varchar(255) DEFAULT NULL,
  `userbase_nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userbase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=971 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userbase
-- ----------------------------

-- ----------------------------
-- Table structure for `user_address`
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `user_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_address_name` varchar(255) DEFAULT NULL,
  `user_address_tel` varchar(255) DEFAULT NULL,
  `user_address_content` varchar(255) DEFAULT NULL,
  `user_address_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=701 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('694', '张宏宇', '15228932523', '513021198208256074', '286');
INSERT INTO `user_address` VALUES ('696', '张宏宇', '15228932523', '513021198208256074', '286');
INSERT INTO `user_address` VALUES ('697', '张宏宇', '15228932523', '513021198208256074', '286');
INSERT INTO `user_address` VALUES ('698', '张宏宇-', '15228932523', '513021198208256074', '286');
INSERT INTO `user_address` VALUES ('699', '张宏宇', '15228932523', '513021198208256074', '286');
INSERT INTO `user_address` VALUES ('700', 'shsush', '18980901670', '513021198208256074', '286');

-- ----------------------------
-- Table structure for `user_card_user`
-- ----------------------------
DROP TABLE IF EXISTS `user_card_user`;
CREATE TABLE `user_card_user` (
  `user_recharge_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_recharge_record_user` int(11) DEFAULT NULL,
  `user_recharge_record_direction` tinyint(4) DEFAULT NULL,
  `user_recharge_record_source` tinyint(4) DEFAULT NULL,
  `user_recharge_record_account` varchar(255) DEFAULT NULL,
  `user_recharge_record_money` varchar(255) DEFAULT NULL,
  `user_recharge_record_year` int(11) DEFAULT NULL,
  `user_recharge_record_month` int(11) DEFAULT NULL,
  `user_recharge_record_day` int(11) DEFAULT NULL,
  `user_recharge_record_deriction` tinyint(4) DEFAULT NULL,
  `user_recharge_record_store` int(11) DEFAULT NULL,
  `user_recharge_record_admin` varchar(11) DEFAULT NULL,
  `user_recharge_record_order` int(11) DEFAULT NULL,
  `user_recharge_record_tradeno` varchar(255) DEFAULT NULL,
  `user_recharge_record_falg` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`user_recharge_record_id`)
) ENGINE=MyISAM AUTO_INCREMENT=924 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_card_user
-- ----------------------------
INSERT INTO `user_card_user` VALUES ('510', '286', '2', '2', '15228932523', '0.0', '2016', '7', '2', '3', null, null, '683', null, '1');
INSERT INTO `user_card_user` VALUES ('511', '286', '2', '2', '15228932523', '0.01', '2016', '7', '2', '3', null, null, '684', null, '1');
INSERT INTO `user_card_user` VALUES ('512', '286', '2', '3', '15228932523', '0.01', '2016', '7', '3', '3', null, null, '688', null, '1');
INSERT INTO `user_card_user` VALUES ('513', '286', '2', '3', '15228932523', '0.01', '2016', '7', '3', '3', null, null, '689', null, '1');
INSERT INTO `user_card_user` VALUES ('509', '286', '2', '2', '15228932523', '0.0', '2016', '7', '2', '3', null, null, '682', null, '1');
INSERT INTO `user_card_user` VALUES ('514', '286', '2', '3', '15228932523', '0.01', '2016', '7', '3', '3', null, null, '690', null, '1');
INSERT INTO `user_card_user` VALUES ('515', '286', '2', '2', '15228932523', '0.01', '2016', '7', '9', '3', null, null, '694', null, '1');
INSERT INTO `user_card_user` VALUES ('516', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('517', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('518', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('519', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('520', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('521', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('522', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('523', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('524', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('525', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('526', '286', '2', '2', null, '13', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('527', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('528', '286', '2', '1', null, '12', '2016', '7', '9', '2', '42', '张筱雨', '694', null, '1');
INSERT INTO `user_card_user` VALUES ('529', '286', '2', '2', '15228932523', '0.01', '2016', '7', '24', '3', null, null, '698', null, '2');
INSERT INTO `user_card_user` VALUES ('530', '286', '2', '2', '15228932523', '0.01', '2016', '7', '24', '3', null, null, '699', null, '2');
INSERT INTO `user_card_user` VALUES ('531', '286', '1', '1', null, '0.01', '2016', '7', '24', '2', null, null, '0', null, '1');
INSERT INTO `user_card_user` VALUES ('532', '286', '2', '5', null, '12', '2016', '7', '24', '1', '0', '张三丰', '699', null, '2');
INSERT INTO `user_card_user` VALUES ('533', '286', '3', '1', null, '12.01', '2016', '7', '24', '2', null, null, '0', null, '1');
INSERT INTO `user_card_user` VALUES ('534', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('535', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('536', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('537', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('538', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('539', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('540', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('541', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('542', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('543', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('544', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('545', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('546', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('547', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('548', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('549', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('550', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('551', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('552', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('553', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('554', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('555', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('556', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('557', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('558', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('559', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('560', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('561', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('562', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('563', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('564', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('565', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('566', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('567', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('568', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('569', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('570', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('571', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('572', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('573', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('574', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('575', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('576', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('577', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('578', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('579', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('580', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('581', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('582', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('583', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('584', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('585', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('586', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '702', null, '1');
INSERT INTO `user_card_user` VALUES ('587', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('588', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('589', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('590', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('591', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('592', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('593', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('594', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('595', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('596', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('597', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('598', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('599', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('600', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('601', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('602', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('603', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('604', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('605', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('606', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('607', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('608', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('609', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('610', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('611', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('612', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('613', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('614', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('615', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('616', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('617', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('618', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('619', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('620', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('621', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('622', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('623', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('624', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('625', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('626', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('627', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('628', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('629', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('630', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('631', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('632', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('633', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('634', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('635', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('636', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('637', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('638', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('639', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('640', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('641', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('642', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('643', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('644', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('645', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('646', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('647', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('648', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('649', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('650', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('651', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('652', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('653', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('654', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('655', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('656', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('657', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('658', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('659', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('660', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('661', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('662', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('663', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('664', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('665', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('666', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('667', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('668', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('669', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('670', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('671', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('672', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('673', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('674', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('675', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('676', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('677', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('678', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('679', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('680', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('681', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('682', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('683', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('684', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('685', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('686', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('687', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('688', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('689', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('690', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('691', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('692', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('693', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('694', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('695', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('696', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('697', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('698', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('699', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('700', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('701', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('702', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('703', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('704', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('705', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('706', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('707', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('708', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('709', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('710', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('711', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('712', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('713', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('714', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('715', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('716', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('717', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('718', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('719', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('720', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('721', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('722', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('723', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('724', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('725', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('726', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('727', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('728', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('729', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('730', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('731', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('732', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('733', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('734', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('735', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('736', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('737', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('738', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('739', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('740', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('741', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('742', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('743', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('744', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('745', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('746', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('747', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('748', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('749', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('750', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('751', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('752', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('753', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('754', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('755', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('756', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('757', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('758', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('759', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('760', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('761', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('762', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('763', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('764', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('765', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('766', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('767', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('768', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('769', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('770', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('771', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('772', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('773', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('774', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('775', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('776', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('777', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('778', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('779', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('780', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('781', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('782', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('783', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('784', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('785', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('786', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('787', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('788', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('789', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('790', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('791', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('792', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('793', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('794', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('795', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('796', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('797', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('798', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('799', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('800', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('801', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('802', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('803', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('804', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('805', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('806', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('807', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('808', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('809', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('810', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('811', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('812', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('813', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('814', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('815', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('816', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('817', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('818', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('819', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('820', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('821', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('822', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('823', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('824', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('825', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('826', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('827', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('828', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('829', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('830', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('831', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('832', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('833', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('834', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('835', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('836', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('837', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('838', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('839', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('840', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('841', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('842', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('843', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('844', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('845', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('846', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('847', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('848', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('849', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('850', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('851', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('852', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('853', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('854', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('855', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('856', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('857', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('858', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('859', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('860', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('861', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('862', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('863', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('864', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('865', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('866', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('867', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('868', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('869', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('870', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('871', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('872', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('873', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('874', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('875', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('876', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('877', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('878', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('879', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('880', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('881', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('882', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('883', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('884', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('885', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('886', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('887', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('888', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('889', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('890', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('891', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('892', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('893', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('894', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('895', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('896', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('897', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('898', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('899', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('900', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('901', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('902', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('903', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('904', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('905', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('906', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('907', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('908', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('909', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('910', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('911', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('912', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('913', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('914', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('915', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('916', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('917', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('918', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('919', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '703', null, '1');
INSERT INTO `user_card_user` VALUES ('920', '286', '2', '2', '15228932523', '0.01', '2016', '12', '6', '3', null, null, '712', null, '1');
INSERT INTO `user_card_user` VALUES ('921', '286', '2', '2', '15228932523', '0.01', '2016', '12', '7', '3', null, null, '713', null, '1');
INSERT INTO `user_card_user` VALUES ('922', '286', '2', '3', '15228932523', '0.01', '2016', '12', '7', '3', null, null, '714', null, '1');
INSERT INTO `user_card_user` VALUES ('923', '286', '2', '2', '15228932523', '0.01', '2016', '12', '7', '3', null, null, '715', null, '1');

-- ----------------------------
-- Table structure for `user_intgel`
-- ----------------------------
DROP TABLE IF EXISTS `user_intgel`;
CREATE TABLE `user_intgel` (
  `user_intgel_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_intgel_count` int(11) DEFAULT NULL,
  `user_intgel_user` int(11) DEFAULT NULL,
  `user_intgel_date` varchar(255) DEFAULT NULL,
  `user_intgel_desc` varchar(255) DEFAULT NULL,
  `user_intgel_dericte` tinyint(4) DEFAULT NULL,
  `user_intgel_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_intgel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_intgel
-- ----------------------------
INSERT INTO `user_intgel` VALUES ('4', '0', '286', '2016-06-14', '消费了0.0元，积分0分', '1', '656');
INSERT INTO `user_intgel` VALUES ('5', '0', '286', '2016-06-14', '消费了0.0元，积分0分', '1', '656');
INSERT INTO `user_intgel` VALUES ('6', '12', '286', '2016-06-15', '消费了12.0元，积分12分', '1', '656');
INSERT INTO `user_intgel` VALUES ('7', '0', '287', '2016-06-25', '添加用户', '1', '0');
INSERT INTO `user_intgel` VALUES ('8', '0', '288', '2016-06-25', '添加用户', '1', '0');
INSERT INTO `user_intgel` VALUES ('9', '157', '286', '2016-07-09', '消费了157.01元，积分157分', '1', '694');
INSERT INTO `user_intgel` VALUES ('10', '0', '286', '2016-07-25', '消费了0.0元，积分0分', '1', '696');

-- ----------------------------
-- Table structure for `user_type`
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(255) DEFAULT NULL,
  `user_type_plu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES ('1', '普通用户', '1');

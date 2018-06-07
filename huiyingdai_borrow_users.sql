/*
Navicat MySQL Data Transfer

Source Server         : 47.94.171.28新测试一
Source Server Version : 50638
Source Host           : 47.94.171.28:13301
Source Database       : hyjf_java

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-05-10 17:28:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for huiyingdai_borrow_users
-- ----------------------------
DROP TABLE IF EXISTS `huiyingdai_borrow_users`;
CREATE TABLE `huiyingdai_borrow_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `borrow_nid` varchar(50) NOT NULL,
  `borrow_pre_nid` varchar(12) NOT NULL DEFAULT '0' COMMENT '标的预编号',
  `username` varchar(50) NOT NULL COMMENT '用户id',
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `currency_name` varchar(255) NOT NULL DEFAULT '' COMMENT '注册资本货币单位  元-美元',
  `reg_captial` varchar(20) DEFAULT NULL COMMENT '注册资本',
  `industry` varchar(100) DEFAULT '' COMMENT '行业',
  `litigation` varchar(100) DEFAULT '' COMMENT '涉诉',
  `cre_report` varchar(100) DEFAULT '' COMMENT '征信',
  `credit` int(13) DEFAULT NULL,
  `staff` int(4) DEFAULT NULL COMMENT '员工人数',
  `other_info` text COMMENT '其他资料',
  `com_reg_time` varchar(30) DEFAULT NULL COMMENT '企业注册时间',
  `legal_person` varchar(20) DEFAULT NULL COMMENT '法人',
  `social_credit_code` varchar(30) DEFAULT NULL COMMENT '统一社会信用代码',
  `regist_code` varchar(30) DEFAULT NULL COMMENT '注册号',
  `main_business` varchar(30) DEFAULT NULL COMMENT '主营业务',
  `overdue_times` varchar(10) DEFAULT NULL COMMENT '在平台逾期次数',
  `overdue_amount` varchar(15) DEFAULT NULL COMMENT '在平台逾期金额',
  `is_certificate` tinyint(1) DEFAULT NULL COMMENT '企贷审核信息 企业证件 0未审核 1已审核',
  `is_operation` tinyint(1) DEFAULT NULL COMMENT '企贷审核信息 经营状况 0未审核 1已审核',
  `is_finance` tinyint(1) DEFAULT NULL COMMENT '企贷审核信息 财务状况 0未审核 1已审核',
  `is_enterprise_creidt` tinyint(1) DEFAULT NULL COMMENT '企贷审核信息 企业信用 0未审核 1已审核',
  `is_legal_person` tinyint(1) DEFAULT NULL COMMENT '企贷审核信息 法人信息 0未审核 1已审核',
  `is_asset` tinyint(1) DEFAULT NULL COMMENT '企贷审核信息 资产状况 0未审核 1已审核',
  `is_purchase_contract` tinyint(1) DEFAULT NULL COMMENT '企贷审核信息 购销合同 0未审核 1已审核',
  `is_supply_contract` varchar(255) DEFAULT NULL COMMENT '企贷审核信息 供销合同 0未审核 1已审核',
  `overdue_report` varchar(30) DEFAULT NULL COMMENT '征信报告逾期情况:暂未提供；无；已处理',
  `debt_situation` varchar(30) DEFAULT NULL COMMENT '重大负债状况:无',
  `other_borrowed` varchar(30) DEFAULT NULL COMMENT '其他平台借款情况:无',
  `is_funds` varchar(30) DEFAULT NULL COMMENT '借款资金运用情况：不正常,正常',
  `is_managed` varchar(30) DEFAULT NULL COMMENT '借款人经营状况及财务状况：不正常,正常',
  `is_ability` varchar(30) DEFAULT NULL COMMENT '借款人还款能力变化情况：不正常,正常',
  `is_overdue` varchar(30) DEFAULT NULL COMMENT '借款人逾期情况：暂无,有',
  `is_complaint` varchar(30) DEFAULT NULL COMMENT '借款人涉诉情况：暂无,有',
  `is_punished` varchar(30) DEFAULT NULL COMMENT '借款人受行政处罚情况：暂无,有',
  PRIMARY KEY (`id`),
  KEY `idx_borrow_nid` (`borrow_nid`)
) ENGINE=InnoDB AUTO_INCREMENT=1281 DEFAULT CHARSET=utf8 COMMENT='标的企业信息表';

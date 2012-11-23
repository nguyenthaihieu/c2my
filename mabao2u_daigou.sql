-- phpMyAdmin SQL Dump
-- version 3.5.0
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 04 月 15 日 10:22
-- 服务器版本: 5.0.91-community
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `mabao2u_daigou`
--

-- --------------------------------------------------------

--
-- 表的结构 `dg_about`
--

CREATE TABLE IF NOT EXISTS `dg_about` (
  `aid` smallint(5) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `seokeywords` varchar(255) NOT NULL default '',
  `seodescription` varchar(255) NOT NULL default '',
  `listorder` int(11) NOT NULL default '0',
  `body` text NOT NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dg_about`
--

INSERT INTO `dg_about` (`aid`, `title`, `seokeywords`, `seodescription`, `listorder`, `body`) VALUES
(1, '关于我们', '关于我们', '关于我们', 50, '欢迎您来到全国最大的海外华人在线购物平台--Panli网，体验最新最时尚的购物方式，一站解决您对国内商品的需求。<p>　　<strong>Panli网的团队</strong></p> <p>　　“<span id="ctl00_ContentPlaceHolder1_ucNewsDetail1_lblTitle">上海番丽电子商务有限公司</span>”旗下的“Panli网”创建于2005年3月。Panli网前身为Panli购物论坛，是在原有的服务海外留学生代购国内商品业务的基础上成立发展而来的。</p> <p>　　公司拥有多位著名的电子商务专家，拥有开拓进取的精英管理团队，拥有商品代购领域的资深经营经验以及先进的全球物流网络。公司构建了一个自由广阔、安全可靠的网络平台，为广大的海外消费者畅通无阻地进行国内网络购物提供了全方位的解决方案。</p> <p>　　<strong>Panli的目标</strong></p> <p>　　“Panli网”正在帮助更多的海外消费者实现他们多年的梦想 ——“足不出户，买遍中国”!</p> <p>　　“Panli网”致力于建设一个为海外用户提供代购国内商品的服务，让身在海外的您不用回国，便能自由挑选和购买到正宗优质的国内商品;同时，“Panli网”与众多国内著名网络商家达成合作协议，您可以通过“Panli”这样一个海外购物网络门户进入中国， 第一时间了解国内时尚信息，拥有自己梦寐以求的商品，真正实现无国界生活。</p> <p>　　<strong>Panli的服务</strong></p> <p>　　“Panli网”依托自身广泛的信息平台，和世界范围内的物流网络，向海外消费者提供以互联网为基础、以便利消费者为宗旨的全国代购服务。通过“Panli”代购，您可以享受到：</p> <p>　　1、无限选择购买网上商品;</p> <p>　　2、无需拥有国内银行卡，无需兑换外汇，用外币即可购买国内商品;</p> <p>　　3、最低价的商品价格 ，便捷多元的付费方式，让您省时省事，坐享其成;</p> <p>　　5、快捷安全地收到您委托代购的商品;</p> <p>　　6、整个订购过程方便简捷，享受令人满意的客户服务。</p> <p>　　“Panli网”作为目前国内最大的国内商品在线代购网，始终致力于向用户提供完善的服务，给用户完美的时尚购物体验。您有对国内商品的需求吗?让Panli为您一站解决</p>');

-- --------------------------------------------------------

--
-- 表的结构 `dg_address`
--

CREATE TABLE IF NOT EXISTS `dg_address` (
  `aid` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `consignee` varchar(30) NOT NULL,
  `country` varchar(30) default NULL,
  `city` varchar(30) default NULL,
  `zip` varchar(30) default NULL,
  `tel` varchar(30) default NULL,
  `address` varchar(255) default NULL,
  `def` smallint(5) default '0',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_admin`
--

CREATE TABLE IF NOT EXISTS `dg_admin` (
  `adminid` int(11) NOT NULL auto_increment,
  `adminname` varchar(30) default NULL,
  `adminpwd` varchar(32) default NULL,
  `adminpurview` text,
  `adminmid` varchar(255) default NULL,
  `lastlogin` int(11) default NULL,
  `logincount` int(11) default '0',
  `state` smallint(5) default '1',
  PRIMARY KEY  (`adminid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `dg_admin`
--

INSERT INTO `dg_admin` (`adminid`, `adminname`, `adminpwd`, `adminpurview`, `adminmid`, `lastlogin`, `logincount`, `state`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ordermange,ordermange_,order_state_1,order_state_2,sendordermange,sendordermange_,sendorder_state_1,sendorder_state_2,order_state_3,order_state_4,order_state_5,order_state_6,order_state_,sendorder_state_3,sendorder_state_4,sendorder_state_,usermange,usermange_,user_list,user_recharge,logrecord,logrecord_,record_type_,record_type_1,record_type_2,rechargerecord_type_,user_favorite,pmmange,pmmange_,pm_list,pm_in,pm_send,articlemange,articlemange_,article_list,article_add,shopmange,guestbookmange_,guestbook_list,sysmange,bankaccountmange,bankaccount_list,bankaccount_add,dictionarymaintenance,area_list,payid_list,delivery_list,adminmange,admin_list,mangemange,articletypemange,atype_list_,sysconfigmange,sys_info,shopsite_list,scorerecord_list,smtp_list,goodsmange,goods_list,goods_add,gtype_list,otype_list,specialmange,special_list,special_add,newsmange,news_list,news_add,goodsimgmange,goodsimg_list,goodsimg_get,discountmange,discount_list,discount_add,shopmange_,shop_goods_list,shop_goods_add,shop_gtype_list,refund_mange,refundrecord_list,ipfilter,FS,fs_list', '1,2,3,4,10,11,12,13,14,70,71,72,5,6,7,8,15,16,17,18,19,20,21,28,82,80,81,22,23,24,25,26,27,57,84,85,29,30,31,32,33,39,40,34,35,36,37,52,53,59,60,61,62,64,65,66,67,68,69,73,74,75,38,76,77,78,79,41,42,43,44,45,46,47,48,63,49,50,51,54,55,56,58', 1330183042, 814, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dg_adminmange`
--

CREATE TABLE IF NOT EXISTS `dg_adminmange` (
  `mid` int(11) NOT NULL auto_increment,
  `mname` varchar(30) NOT NULL,
  `murl` varchar(50) NOT NULL,
  `mcode` varchar(30) NOT NULL,
  `type` char(10) default 'zone' COMMENT 'zone/group/item',
  `target` varchar(10) default '',
  `listorder` int(10) default '50',
  `node` int(10) default '0',
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- 转存表中的数据 `dg_adminmange`
--

INSERT INTO `dg_adminmange` (`mid`, `mname`, `murl`, `mcode`, `type`, `target`, `listorder`, `node`) VALUES
(1, '订单管理', '', 'ordermange', 'zone', '', 50, 0),
(2, '订单处理', '', 'ordermange_', 'group', '', 50, 1),
(3, '未处理订单', 'order_list.php?state=1', 'order_state_1', 'item', '', 50, 2),
(4, '已确认订单', 'order_list.php?state=2', 'order_state_2', 'item', '', 50, 2),
(5, '运单管理', '', 'sendordermange', 'zone', '', 50, 0),
(6, '管理运单', '', 'sendordermange_', 'group', '', 50, 5),
(7, '已支付运单', 'sendorder_list.php?state=1', 'sendorder_state_1', 'item', '', 50, 6),
(8, '已邮寄运单', 'sendorder_list.php?state=2', 'sendorder_state_2', 'item', '', 50, 6),
(10, '在途订单', 'order_list.php?state=3', 'order_state_3', 'item', '', 50, 2),
(11, '已到仓库', 'order_list.php?state=4', 'order_state_4', 'item', '', 50, 2),
(12, '已提交货运订单', 'order_list.php?state=5', 'order_state_5', 'item', '', 50, 2),
(13, '无效订单', 'order_list.php?state=6', 'order_state_6', 'item', '', 50, 2),
(14, '订单搜索', 'order_list.php', 'order_state_', 'item', '', 50, 2),
(15, '已成功运单', 'sendorder_list.php?state=3', 'sendorder_state_3', 'item', '', 50, 6),
(16, '无效运单', 'sendorder_list.php?state=4', 'sendorder_state_4', 'item', '', 50, 6),
(17, '运单搜索', 'sendorder_list.php', 'sendorder_state_', 'item', '', 50, 6),
(18, '用户管理', '', 'usermange', 'zone', '', 50, 0),
(19, '管理用户', '', 'usermange_', 'group', '', 50, 18),
(20, '用户列表', 'user_list.php', 'user_list', 'item', '', 50, 19),
(21, '转账充值', 'userrecharge.php', 'user_recharge', 'item', '', 50, 19),
(22, '日志记录', '', 'logrecord', 'zone', '', 50, 0),
(23, '记录日志', '', 'logrecord_', 'group', '', 50, 22),
(24, '消费记录', 'record_list.php', 'record_type_', 'item', '', 50, 23),
(25, '支出记录', 'record_list.php?type=1', 'record_type_1', 'item', '', 50, 23),
(26, '收入记录', 'record_list.php?type=2', 'record_type_2', 'item', '', 50, 23),
(27, '充值记录', 'rechargerecord_list.php', 'rechargerecord_type_', 'item', '', 50, 23),
(28, '用户收藏', 'favorite_list.php', 'user_favorite', 'item', '', 50, 19),
(29, '互动管理', '', 'pmmange', 'zone', '', 50, 0),
(30, '短信管理', '', 'pmmange_', 'group', '', 50, 29),
(31, '短信列表', 'pm_list.php', 'pm_list', 'item', '', 50, 30),
(32, '我的收件箱', 'pm_in.php', 'pm_in', 'item', '', 50, 30),
(33, '发送短信', 'pm_send.php', 'pm_send', 'item', '', 50, 30),
(34, '宣传管理', '', 'articlemange', 'zone', '', 50, 0),
(35, '管理文章', '', 'articlemange_', 'group', '', 50, 34),
(36, '文章列表', 'article_list.php', 'article_list', 'item', '', 50, 35),
(37, '添加文章', 'article_add.php', 'article_add', 'item', '', 50, 35),
(38, '商城管理', '', 'shopmange', 'zone', '', 50, 0),
(39, '留言咨询', '', 'guestbookmange_', 'group', '', 50, 29),
(40, '留言列表', 'guestbook_list.php', 'guestbook_list', 'item', '', 50, 39),
(41, '系统设置', '', 'sysmange', 'zone', '', 50, 0),
(42, '银行帐号', '', 'bankaccountmange', 'group', '', 50, 41),
(43, '银行账户列表', 'bankaccount_list.php', 'bankaccount_list', 'item', '', 50, 42),
(44, '增加银行帐号', 'bankaccount_add.php', 'bankaccount_add', 'item', '', 50, 42),
(45, '字典维护', '', 'dictionarymaintenance', 'group', '', 50, 41),
(46, '国家维护', 'area_list.php', 'area_list', 'item', '', 50, 45),
(47, '拍货帐号', 'payid_list.php', 'payid_list', 'item', '', 50, 45),
(48, '配送维护', 'delivery_list.php', 'delivery_list', 'item', '', 50, 45),
(49, '后台管理', '', 'adminmange', 'group', '', 50, 41),
(50, '后台管理员', 'admin_list.php', 'admin_list', 'item', '', 50, 49),
(51, '后台管理项', 'mange.php', 'mangemange', 'item', '', 50, 49),
(52, '管理分类', '', 'articletypemange', 'group', '', 50, 34),
(53, '文章分类', 'atype_list.php', 'atype_list_', 'item', '', 50, 52),
(54, '参数设置', '', 'sysconfigmange', 'group', '', 50, 41),
(55, '基本设置', 'sys_info.php', 'sys_info', 'item', '', 50, 54),
(56, '抓取设置', 'shopsite_list.php', 'shopsite_list', 'item', '', 50, 54),
(57, '积分日志', 'scorerecord_list.php', 'scorerecord_list', 'item', '', 50, 23),
(58, '发信邮箱', 'smtp_list.php', 'smtp_list', 'item', '', 50, 54),
(59, '管理商品', '', 'goodsmange', 'group', '', 50, 34),
(60, '商品列表', 'goods_list.php', 'goods_list', 'item', '', 50, 59),
(61, '添加商品', 'goods_add.php', 'goods_add', 'item', '', 50, 59),
(62, '商品分类', 'gtype_list.php', 'gtype_list', 'item', '', 50, 59),
(63, '订单分类', 'otype_list.php', 'otype_list', 'item', '', 50, 45),
(64, '专题活动', '', 'specialmange', 'group', '', 50, 34),
(65, '专题列表', 'special_list.php', 'special_list', 'item', '', 50, 64),
(66, '添加专题', 'special_add.php', 'special_add', 'item', '', 50, 64),
(67, '网站公告', '', 'newsmange', 'group', '', 50, 34),
(68, '公告列表', 'news_list.php', 'news_list', 'item', '', 50, 67),
(69, '添加公告', 'news_add.php', 'news_add', 'item', '', 50, 67),
(70, '图片处理', '', 'goodsimgmange', 'group', '', 50, 1),
(71, '图片状态', 'goodsimg_list.php', 'goodsimg_list', 'item', '', 50, 70),
(72, '抓取图片', 'goodsimg_get.php', 'goodsimg_get', 'item', '', 50, 70),
(73, '折扣管理', '', 'discountmange', 'group', '', 50, 34),
(74, '折扣列表', 'discount_list.php', 'discount_list', 'item', '', 50, 73),
(75, '折扣添加', 'discount_add.php', 'discount_add', 'item', '', 50, 73),
(76, '管理商城', '', 'shopmange_', 'group', '', 50, 38),
(77, '商品列表', 'shop_goods_list.php', 'shop_goods_list', 'item', '', 50, 76),
(78, '添加商品', 'shop_goods_add.php', 'shop_goods_add', 'item', '', 50, 76),
(79, '商品分类', 'shop_gtype_list.php', 'shop_gtype_list', 'item', '', 50, 76),
(80, '退款管理', '', 'refund_mange', 'group', '', 50, 18),
(81, '管理退款', 'refundrecord_list.php', 'refundrecord_list', 'item', '', 50, 80),
(82, '恶意用户IP限制', 'ipfilter.php', 'ipfilter', 'item', '', 50, 19),
(84, '财务统计管理', '', 'FS', 'group', '', 50, 22),
(85, '财务统计', 'fs_list.php', 'fs_list', 'item', '', 50, 84),
(87, 'jjj', '../attachment/editor/201107/20110721222842_503.jpg', 'php', 'item', '', 50, 41),
(88, 'jjj', '../attachment/editor/201107/20110721222842_503.jpg', '', 'item', '', 50, 0),
(89, 'jjj', '../attachment/editor/201107/20110721222842_503.jpg', '123', 'item', '', 50, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dg_area`
--

CREATE TABLE IF NOT EXISTS `dg_area` (
  `aid` int(11) NOT NULL auto_increment,
  `name_cn` varchar(50) default NULL,
  `name_en` varchar(50) default NULL,
  `serverfeepct` float(10,2) default NULL,
  `serverfee` float(10,2) default NULL,
  `def` smallint(5) default '0',
  `listorder` int(10) default '50',
  `state` smallint(5) default '1',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_article`
--

CREATE TABLE IF NOT EXISTS `dg_article` (
  `aid` int(11) NOT NULL auto_increment,
  `typeid` smallint(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `listorder` smallint(5) default NULL,
  `seokeywords` varchar(255) default NULL,
  `seodescription` varchar(255) default NULL,
  `body` mediumtext,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- 转存表中的数据 `dg_article`
--

INSERT INTO `dg_article` (`aid`, `typeid`, `title`, `listorder`, `seokeywords`, `seodescription`, `body`) VALUES
(10, 1, '什么是代购？', 50, '什么是代购？', '什么是代购？', '<p>什么是代购　　<br /> 代购，通俗一点来说就是找人帮忙购买你需要的商品，可能是因为你在当地买不到这件商品，又或者是当地这件商品的价格比其他地区的贵。帮人从中国购买商品，然后通过快递发货至国外，就是常见的代购形式。</p> <p>　　通过<a href="http://daigou.dayusheji.com/">http://daigou.dayusheji.com/</a>网，您可以在中国任意一家购物网站搜索商品，并且无需人民币，直接用外汇付款就能实现购物，全国商品皆在您的指间，绝对快捷便利！</p> <p>　　使用<a href="http://daigou.dayusheji.com/">http://daigou.dayusheji.com/</a>代购的好处</p> <p>　　A.您可以无限选择、购买国内网上商品；</p> <p>　　B.您可以使用美元、欧元以及各种流通货币购物；</p> <p>　　C.您最快可以在10个工作日内收到您代购的海外商品；</p> <p>　　D.您可以获得完善的退换货体系保障；</p> <p>　　E.您可以得到<a href="http://daigou.dayusheji.com/">http://daigou.dayusheji.com/</a>网客服团队的专业服务，为您解答国内购物过程中遇到的任何问题。</p> <p>　　什么情况下，他们选择代购？</p> <p>　　A.习惯使用国内的产品、服务，或偏爱某个特定品牌的商品，在国外无法购买的情况下委托我们购买。</p> <p>　　B.专业资料、书籍(特别是中文版的)或器材。比如，大学或者科研机构需要买一些非常专业的书籍或软件，在国外没有渠道购买，但可以在国内网站搜索到商品销售信息的。</p> <p>　　C.时尚新锐：国内的流行随时把握，瑞丽服饰、流行音乐、明星海报等。</p> <p>　　D.发现价格优势：因为国内劳动力低廉，生产成本要低，所以大部分商品售价就低很多；同时，<a href="http://daigou.dayusheji.com/">http://daigou.dayusheji.com/</a>网为客户设计了独特的省钱购物模式。</p> <p>　　E.服装尺码优势：国外服装尺码普遍较大，也不符合东方人的体型，但在国内网站能够买到喜欢的款式或者合适自己尺寸的服装。</p> <p>　　F.委托在国内拍卖网站上购买拍卖品，比如淘宝、易趣商品的代拍代购。</p> <p>　　G.委托购买礼物送给国内亲友：只需要将收货人和地址写上亲友的姓名和地址，<a href="http://daigou.dayusheji.com/">http://daigou.dayusheji.com/</a>网将直接将货物送到国内亲友的手中。这个服务也适用于送往海外的亲友处，但在运送价格方面需要个别确认。<br /> </p>'),
(12, 1, '代购费用怎么算', 50, '代购费用怎么算', '代购费用怎么算', '<div class="bt"> <h1><span style="font-size:14px;">购费用怎么算</span></h1> </div> <div class="content"> <p><strong>　　代购费购总费用=商品费用+国内运费+国际运费+服务费</strong>，其中：</p> <p>　　<strong>商品费用：</strong>商品的售价</p> <p>　　<strong>国内运费：</strong>商品从卖家所在地运送到Panli（上海）的运费；但是，以下3种情况，是免国内运费的：</p> <p>　　1、如果您在Panli推荐的“免邮商家”网站购物，您就无需再支付国内运费。</p> <p>　　2、在Panli的“拼单购”栏目拼单，跟单者免国内运费。</p> <p>　　3、如果淘宝卖家运费栏内注明“卖家承担运费”，您就无需再支付国内运费。</p> <p>　　<strong>国际运费：</strong>根据您的商品重量、选择的运送方式、运送地区所计算出来的运费，以及报关费。</p> <p>　　<strong>服务费：</strong>服务费=商品费用x10%</p> </div> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p>'),
(13, 1, '代购流程', 0, '代购流程', '代购流程', '<p>代购流程　　第一步、挑选商品</p> <p>　　到国内任意购物网站挑选心仪的商品。</p> <p>　　第二步、提交代购单</p> <p>　　进入“我要代购”页面，只要粘贴商品详细页网址，使用“一键填单”可以自动填写代购单。您只需手动填写商品备注，详细说明您代购的细节要求，然后提交代购，商品将自动进入您的购物车。</p> <p>　　第三步、支付货款</p> <p>　　进入“我的购物车”页面，选择此次要代购的商品，提交代购后，<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>系统将自动扣除商品费用和国内运费。待您成功支付了货款，<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>将开始为您代购。</p> <p>　　第四步、<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>代购商品</p> <p>　　<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>代购商品的过程是：<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>采购员接单 &gt; 采购员向卖家购买商品 &gt; 商品到<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a> &gt; 采购员验货</p> <p>　　提示：<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>采购员代购商品过程中，您可以在“我的送货车”查询商品状态，当商品状态显示“已到<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>”，您就可以“提交运送”了。</p> <p>　　第五步、货到支付运费</p> <p>　　进入“我的送货车”页面，选择“已到<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>”的商品提交运送，选择合适的送货方式，然后正确填写您收货的详细信息，最后提交结算，就等<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>给您的商品包装发货了。</p> <p>　　第六步、提交运送后准备发货</p> <p>　　在等待<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>处理运单的过程中，您可以在“我的运单”查看运单状态，当运单状态显示为“已发货”，您还可以在“包裹跟踪查询”自行查询。</p> <p>　　第七步、确认收货</p> <p>　　收到包裹后，尽快到“我的运单”页面“确认收货”并评价代购体验，这是<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>将给您送出相应的积分，结束了此次完美的代购。<br /> </p>'),
(14, 1, '去哪里挑选代购商品', 0, '去哪里挑选代购商品', '去哪里挑选代购商品', '<p>去哪里挑选代购商品　　选择“http://daigou.dayusheji.com推荐”的商品</p> <p>　　“http://daigou.dayusheji.com推荐”的商品均由资深编辑从国内著名购物网站挑选而来，品质能够得到保证，此外还有详细的中文介绍，免去您购物的搜索过程。</p> <p>　　优点：品质有保证，退货体系完善。</p> <p>　　不足：不能及时得到来源网站是否有现货的信息。</p> <p>　　选择<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>推荐的“免邮商家”商品</p> <p>　　您可以通过<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>网提供的"免邮商家"的网址链接，直接进入免邮商家网站寻找自己喜欢的商品。</p> <p>　　优点：在免邮商家网站上购买任意商品，即可享受免国内运费的优惠，购物更省钱！</p> <p>　　不足：需要自己搜索商品。</p> <p>　　选择其他网站商品</p> <p>　　有些用户在专业领域的国内网站找到自己想要的商品，比如中文软件或者特殊器材。如果您也有类似的情况，通过Google或者百度等搜索引擎寻找到了自己需要的商品，也可以委托<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>网代购。不过因为这部分网站不是<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>网的推荐商家，因此<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>网无法保证其商品的品质。</p> <p>　　优点：选择范围非常大，可及时得到商品是否有现货的信息，并可以进行比较。</p> <p>　　不足：网络购物诚信度低，商品品质需要自行把握。</p> <p>　　竞拍淘宝、易趣商品</p> <p>　　如果您在淘宝、易趣上看中了国内商家的拍卖品，也可以委托<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>网代拍。用“一键填单” 把您要竞拍的商品信息抓取后，您可以手动修改商品价格，填写您愿意出的最高竞价，然后提交代购并确认付款后，<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>帮您出价竞拍。您不用为了繁琐的拍卖程序发愁，<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>网会把交易进行的情况用邮件或者电话的形式及时与您沟通。</p> <p>　　优点：淘宝、易趣上的商品拥有价格优势，<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>网的代拍服务也节省了您不少精力，如果代拍失败，<a href="http://daigou.dayusheji.com">http://daigou.dayusheji.com</a>网会全额退款，没有后顾之忧。</p> <p>　　不足：商品品质和商家的可靠性需要自行把握，发货速度取决于商家；退换货无法保障。<br /> </p>'),
(15, 1, '如何生成订单', 0, '如何生成订单', '如何生成订单', '<p>如何生成订单　　一、选择商品</p> <p>　　如果您选购“Panli推荐”商品</p> <p>　　点击“Panli推荐”的商品查看详情，如果符合您的需求，点击“我要代购”，使用“一键填单”提取商品信息，可修改“购买数量”，并填写“商品备注”。</p> <p>　　如果您选购站外商品</p> <p>　　如果您在国内购物网站上看到了需要的商品，请进入“我的Panli”，点击“我要代购”，使用“一键填单”提取商品信息，可修改“购买数量”，并填写“商品备注”。</p> <p>　　在此特别提醒：</p> <p>　　1、对于有颜色和尺码区分的商品，请一定在备注信息中注明，这样便于对您订单进行直接处理。</p> <p>　　2、对于商户的换购产品，请您订购时确认是否达到商户换购要求，确认无误后再下订单。</p> <p>　　3、对部分超重商品与卖家商品信息中邮资不全的需要补邮的情况，我们会与您联系，请您再次确认订购。所以建议您可以在下订单后留意一下您订购商品的状况。</p> <p>　　4、对于虚拟物品，我们现在暂时无法帮您订购，请您谅解。</p> <p>　　二、进入我的购物车</p> <p>　　进入“我的购物车”，您就可以看见刚才提交的商品，点击“提交代购”，付款成功后，我们将马上为您购买。如果您的RMB账户余额不足，系统将提示您先充值。</p> <p>　　三、进入我的送货车</p> <p>　　我的送货车--Panli网独家设计，您可以根据商品重量自行安排调配，一切随心所欲。此外，我们为您提供多种运输方式，您可以根据需要自行选择。</p> <p>　　需要特别提醒的是，Panli运费对比表内的EMS和AIR的运费是根据邮局国际民用包裹的标准来计算的，如果您的运单中商品长度超过150cm，不能按民用包裹寄送，那您的运单将无法选择EMS以及AIR方式运送。</p> <p>　　同时，由于DHL运送方式与包裹体积有一定关系，因此，当您选择DHL运送方式时，如果您的商品尺寸较大，可能因此产生额外运费，Panli工作人员将会与您进行确认。</p> <p>　　四、选择运输方式</p> <p>　　DHL所需运送时间一般为2-3个工作日，EMS方式一般为5-7个工作日，Air方式一般为8-15个工作日。</p> <p>　　五、确认运单</p> <p>　　以上事项确认无误后，点击“下一步”填写运单信息，请注意填写信息的正确性，以便我们能及时联络您。<br /> </p>'),
(16, 1, '订/运单状态说明', 0, '订/运单状态说明', '订/运单状态说明', '<div class="bt"> <h1>订/运单状态说明</h1> </div> <div class="content"> <p style="padding-left:30px;"><span style="color:#0000ff;"><strong>订单状态</strong></span></p> <p style="padding-left:30px;"><strong>未处理：</strong>订单提交后的初始状态</p> <p style="padding-left:30px;"><strong>处理中：</strong>订单已分配到相应采购员处</p> <p style="padding-left:30px;"><strong>订购中：</strong>采购员正在向商家订购商品</p> <p style="padding-left:30px;"><strong>已订购：</strong>商品已订购，正在等待商品到达Panli</p> <p style="padding-left:30px;"><strong>无货<span style="color:#0000ff;">*</span>：</strong>商品断货</p> <p style="padding-left:30px;"><strong>无效订单<span style="color:#0000ff;">*</span>：</strong>会员已取消订单；会员提交了网页错误的商品网址；实际商品名称、价格与您提交的不一致；实际商品无图片或描述；虚拟商品、违禁商品等，均视为无效订单。</p> <p style="padding-left:30px;"><strong>问题订单：</strong>指缺少必须的尺码、颜色说明等，需等待客户进一步确认才能购买的订单</p> <p style="padding-left:30px;"><strong>退换货处理中：</strong>与卖家协商后做退换货处理</p> <p style="padding-left:30px;"><strong>Panli联系卖家中：</strong>指与卖家联系，但未得到回复。如您不愿等待，可联系panli进行退款</p> <p style="padding-left:30px;"><strong>已到Panli：</strong>订购商品已经到达Panli</p> <p style="padding-left:30px;">&nbsp;</p> <p style="padding-left:30px;"><span style="color:#0000ff;"><strong>运单状态</strong></span></p> <p style="padding-left:30px;"><strong>未处理：</strong>运单提交后的初始状态</p> <p style="padding-left:30px;"><strong>处理中：</strong>仓库正在处理运单，出库和打包</p> <p style="padding-left:30px;"><strong>发货中：</strong>已完成出库包装工作，仓库正在发货</p> <p style="padding-left:30px;"><strong>已发货：</strong>包裹已发送给运输方</p> <p style="padding-left:30px;"><strong>信息有误<span style="color:#0000ff;">*</span>：</strong>收件人姓名、地址等信息错误或者不详细</p> <p style="padding-left:30px;"><strong>运输方式有误<span style="color:#0000ff;">*</span>：</strong>商品中含有所选择的运输方式禁运的物品</p> <p style="padding-left:30px;"><strong>确认收包：</strong>会员已收到包裹</p> <p>&nbsp;</p> <p style="padding-left:30px;"><span style="color:#808080;">（Panli温馨提示：凡带<strong><span style="color:#0000ff;">*</span></strong>号的订/运单，您只需自行删除，费用将自动退回您的PANLI账户中。</span>）</p> </div>'),
(17, 1, '如何跟踪运单', 0, '如何跟踪运单', '如何跟踪运单', '<div class="bt"> <h1>如何跟踪运单</h1> </div> <div class="content"> <p>　　在您提交运单后， Panli将在2个工作日内把您的运单寄出。如遇周日或国家法定节假日，需相应顺延。如包裹处理过程有特殊状况，我们也会与您及时联系。</p> <p>　　包裹发出后，您可以在“<a href="http://www.panli.com/Track/Default.aspx" target="_blank">包裹跟踪查询</a>”自行查询，提醒大家：EMS和AIR网站的数据更新一般有2-3个工作日的滞后，如果包裹刚发出，请您过几天查询。您还可以在线留言咨询包裹状态或者拨打Panli客服电话0086-21-52717882，请客服人员帮您查询。</p> </div>'),
(18, 1, '哪些商家免国内运费', 0, '哪些商家免国内运费', '哪些商家免国内运费', '<div class="bt"> <h1>哪些商家免国内运费</h1> </div> <div class="content"> <p>　　通常购物网站的商品不会将国内邮费标注在上面，只有在结算的时候显示运费。Panli网统一国内运送只选择快递方式。<br /> <br /> 　　您在同一卖家处代购多个商品，如果一起“提交代购”，并“结算确认”生成的一个订单，Panli只收取您一次国内运费。<br /> <br /> 　　在Panli"拼单购"栏目拼单，跟单者免国内运费。</p> <p>　　此外，在Panli网推荐的"免邮商家"购物，您无需承担国内运费，购物更省钱!具体免邮商家名单如下：</p> <p>　　<span style="color:#000000;"><strong>图书/音像</strong></span></p> <p>　　卓越 当当 chinapub</p> <p>　　<strong>数码/电器</strong></p> <p>　　京东 国美 北斗手机</p> <p>　　<strong>服饰</strong></p> <p>　　麦网 佐丹奴 时尚起义</p> <p>　<strong>　其他</strong></p> <p>　　联华ok 上海药房 红孩子 No.5时尚广场 七星购物 桔色</p> </div>'),
(19, 1, '如何退款', 0, '如何退款', '如何退款', '<div class="bt"> <h1>如何退款</h1> </div> <div class="content"> <p>　　如果您已经和我们有了多次合作，就会发现，Panli网提供的是一种如同朋友般亲切与值得信赖的服务。很多客户为了节省订购过程中的麻烦或是希望缩短流程耽误的时间，会采取预先将一笔费用存在Panli的RMB账户中，您也可以根据自己的需要尝试使用这种方法。当您觉得短期内不需要再从国内订购商品，或是您付款后由于某些原因商品采购没能实现的时候，您可以随时申请将余款退回。</p> <p>　　请您登录Panli网，进入“我的Panli”&gt;“帐户管理”&gt;“我的RMB账户”进行退款；查看退款状态请进入“我的Panli”&gt;“帐户管理”&gt;“退款记录”查看。</p> <p>　　<span style="color:#ff0000;">注意：</span>对于通过国外信用卡，Paypal，国内银行卡在线充值的金额如果要申请退款，若充值未超过2个月，可在线申请退款；若已超过两个月，请联系客服（发送邮件至<a href="mailto:service@panli.com">service@panli.com</a>）申请退款。</p> </div>'),
(20, 2, '新用户注册', 0, '新用户注册', '新用户注册', '<div class="bt"> <h1>新用户注册</h1> </div> <div class="content"> <p>　　注册分为“提交信息”和“激活用户名”两个步骤，整个过程只需2分钟。</p> <p>　　1.点击位于Panli首页上方的“免费注册”链接或者图片中的“立即免费注册”按钮。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/43/633931211821663811.jpg" width="550" height="374" /></p> <p>　　2.进入注册页面，首先输入一个您常用的电子邮件地址，用于激活账户。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/43/633931211870803897.jpg" width="550" height="280" /></p> <p>　　3.设置昵称和密码。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/43/633931211930240001.jpg" width="550" height="280" /></p> <p>　　4.将验证码填入验证码框中。如果看不清楚验证码，请点击“看不清？换张图”。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/43/633931211974232079.jpg" width="550" height="280" /></p> <p>　　5.仔细阅读“Panli注册协议”，同意条款后，点击“提交注册” 按钮。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/43/633931212019316158.jpg" width="550" height="280" /></p> <p>　　6.然后页面会提示您，系统已将一封验证邮件发送到刚才您所填写的电子邮件信箱中。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/43/633931212094508290.jpg" width="550" height="249" /></p> <p>　　7.请登录该电子邮件地址收取验证邮件，然后点击信件中的“激活”链接，完成您的注册。</p> <p>　　8.完成注册。</p> </div>'),
(21, 2, '快速代购', 0, '快速代购', '快速代购', '<div class="bt"> <h1>快速代购</h1> </div> <div class="content"> <p style="text-align:left;">Panli独有的“快速代购”功能能让会员更方便、快捷地代购商品。您只需把要代购商品的详细页网址粘贴到输入框，系统就会为您自动抓取详细地商品信息。具体操作如下：</p> <p style="text-align:left;">&nbsp;</p> <p style="text-align:left;">1.如下图所示，在Panli网站任意页面的右上方，将您需要代购商品的链接地址，粘贴至横线处，并点击“快速代购”按钮。<br /> 　　</p> <p style="text-align:center;"><img border="0" alt="634145636868269545.jpg" src="http://img.panli.com/CMS/help/45/634145636868269545.jpg" width="660" height="163" /></p> <p style="text-align:center;">&nbsp;</p> <p style="text-align:left;">2.如下图所示，系统成功抓取商品信息后，您可以修改需要代购的商品数量。</p> <p style="text-align:center;"><img border="0" alt="634145636968265721.jpg" src="http://img.panli.com/CMS/help/45/634145636968265721.jpg" width="575" height="478" /></p> <p style="text-align:left;">　　<br /> <br /> 3.如下图所示，若商品有多种尺码或款式，请您在备注中注明，以免给您带来不必要的麻烦。</p> <p style="text-align:center;"><img border="0" alt="634145637045485857.jpg" src="http://img.panli.com/CMS/help/45/634145637045485857.jpg" width="575" height="478" /></p> <p style="text-align:center;">&nbsp;</p> <p style="text-align:left;">　　</p> <p style="text-align:left;">4.如下图所示，确认无误后，请点击“提交代购”按钮。</p> <p style="text-align:center;"><img border="0" alt="634145637210534146.jpg" src="http://img.panli.com/CMS/help/45/634145637210534146.jpg" width="575" height="478" /></p> <p style="text-align:center;">&nbsp;</p> <p style="text-align:left;">&nbsp;</p> <p style="text-align:left;">5.如下图所示，商品成功添加至购物车后，您可以选择查看购物车并结算，或者继续填写代购单。</p> <p style="text-align:center;"><img border="0" alt="634145637258270230.jpg" src="http://img.panli.com/CMS/help/45/634145637258270230.jpg" width="577" height="475" /></p> <p style="text-align:left;">&nbsp;</p> <p style="text-align:left;">&nbsp;</p> <p style="text-align:left;">　　</p> <p style="text-align:left;"><strong>您是否会遇到这样的问题？</strong></p> <p style="text-align:left;">如下图所示，当出现抓取商品信息失败时，请您填写商品信息，并按正常流程提交代购，若在代购中出现问题，我们的客服人员将在通过站内短信与您取得联系。</p> <p style="text-align:center;"><img border="0" alt="634145637299454303.jpg" src="http://img.panli.com/CMS/help/45/634145637299454303.jpg" width="577" height="476" /></p> </div>'),
(22, 2, '在线客服', 0, '在线客服', '在线客服', '<div class="bt"> <h1>在线客服</h1> </div> <div class="content"> <p>　　Panli在线客服系统为您提供实时答疑服务。具体操作如下：</p> <p>　　1.在Panli任一页面的上方点击“在线客服”链接。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/46/633931221000875933.jpg" width="550" height="126" /></p> <p>　　2.进入在线客服页面后</p> <p>　　（1）如果右侧按钮为橙色，说明客服在线，请点击进入进行交谈。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/46/633931221036755996.jpg" width="550" height="211" /></p> <p>　　a.进入对话窗口后，首先请等待客服人员应答。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/46/633931221110388125.jpg" width="550" height="431" /></p> <p>　　b.客服人员应答后，您就可以开始与客服人员进行交流。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/46/633931221145644187.jpg" width="550" height="431" /></p> <p>　　c.客服评价：对当前的客服人员的服务进行评价。</p> <p>　　您可以在交流过程中对服务进行评价。</p> <p>　　具体操作为：点击输入框上方的五角星<br /> <img border="0" alt="" src="http://img.panli.com/CMS/help/46/633931221225984328.jpg" width="550" height="431" /><br /> 　　</p> <p>　　选择星数进行服务满意度评价<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/46/633931221301176460.jpg" width="550" height="431" /></p> <p>　　您还可以在对话结束时，对本次服务进行评价。</p> <p>　　具体操作为：对话结束时，系统会自动弹出提示请您评价本次服务。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/46/633931221364356571.jpg" width="334" height="303" /></p> <p>　　注：每次服务只能评价一次，如果已在对话过程中自行评价，则结束时系统不会再弹出评价提示。</p> <p>　　（2）如果按钮为灰色，说明当前客服离线，您可以点击留言。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/46/633931221073416060.jpg" width="550" height="214" /></p> <p>　　请按照提示填写留言信息，客服人员上线后会以邮件的方式将反馈信息发送至您所填的电子邮件信箱中。<br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/46/633931221185424257.jpg" width="441" height="404" /></p> <p>　　注：由于无法查看具体信息，因此涉及到代购单以及运单的查询请通过短信息或邮件联系我们的相关客服人员。</p> <p>　　我们的客服邮箱是<a href="mailto:service@panli.com">service@panli.com</a></p> </div>'),
(23, 3, 'Paypal支付', 0, 'Paypal支付', 'Paypal支付', '<div class="bt"> <h1>Paypal支付</h1> </div> <div class="content"> <p>支持全球范围4种国际卡(VISA 、Master 、American Express、JCB Card)和部分国家银行卡。</p> <p><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_display-approved-signup-countries-outside" target="_blank">了解Paypal</a>&nbsp;</p> <p>请您注意：无论您使用的是何种货币账户，Paypal均以美元进行折算。</p> <p>根据中国银行公布的最新汇率，自<span style="color:#ff0000;">2010年8月13日14：30（<span style="color:#ff0000;">北京时间</span>）</span>起，Panli实行的兑换率为<span style="color:#ff0000;">1：6.63</span>（美元：人民币），我们将根据中国银行汇率的变化不定期进行实时调整。</p> <p>Paypal充值，实时到账。</p> <p><span style="color:#ff6600;">Paypal账户收款Paypal公司目前不收取任何手续费，因此Panli制定了相应的标准。</span></p> <p><strong>充值金额(美元) 　手续费 　　Panli账户金额(rmb)</strong></p> <p>10美元 　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 66.3</p> <p>20美元 　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 132.6</p> <p>50美元 　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 331.5</p> <p>100美元　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 663</p> <p>200美元　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1326</p> <p>500美元　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3315</p> <p>&nbsp;</p> <p><span style="color:#ff0000;">支付未到账情况：</span></p> <p><span style="color:#ff0000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>如果您使用Paypal充值成功但是Panli未到账?</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 请登录Panli网，在<a href="http://www.panli.com/mypanli/Account/Service.aspx">http://www.panli.com/mypanli/Account/Service.aspx</a>提供您的充值方式、充值日期、充值金额或订单号以及Panli注册会员名。在收到您提交的信息2个工作日内，财务人员将联系第三方支付平台为您查看，确认核实后，会为您手动充值。</p> </div>'),
(24, 3, '国际信用卡支付', 0, '国际信用卡支付', '国际信用卡支付', '<div class="bt"> <h1>国际信用卡支付</h1> </div> <div class="content"> <p>　　支持全球范围3种国际卡，VISA 、Master 、JCB Card(为保证网上支付的安全性，信用卡支付需提供3D验证码)。</p> <p>　　<a href="http://main.ips.com.cn/product/payment_International_Card.shtml">国外信用卡支付帮助</a></p> <p>　　请您注意：无论您使用的是何种货币账户，网银均以人民币进行折算。</p> <p>　　通过网银充值，实时到账，汇率以中国银行当天公布的汇率为准。</p> <p>　　<span style="color:#ff0000;">国际信用卡收款网银公司目前不收取任何手续费，因此Panli网制定了相应的标准。</span></p> <p>　　<strong>充值金额(rmb)　 手续费 　Panli账户金额(rmb)</strong></p> <p>&nbsp; 　 50 　　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;0　　　　50</p> <p>　　100　　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;0 　　　100</p> <p>　　200 　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;0　　　 200</p> <p>　　500 　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;0 　　　500</p> <p>　　1000 　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 　0　　　 1000</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2000 　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 0 　　　2000</p> <p>　　</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#ff0000;">支付未到账情况：</span>由于目前信用卡支付第三方平台无法保证接受所有信用卡以及保证100%成功，因此请您先确认下是否已经支付成功。　　</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果您支付成功而Panli帐户未到账?</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 请登录Panli网，在<a href="http://www.panli.com/mypanli/Account/Service.aspx">http://www.panli.com/mypanli/Account/Service.aspx</a>提供您的充值方式、充值日期、充值金额或订单号以及Panli注册会员名。在收到您提交的信息2个工作日内，财务人员将联系第三方支付平台为您查看，确认核实后，会为您手动充值。</p> </div>'),
(25, 3, '国内银行卡支付', 0, '国内银行卡支付', '国内银行卡支付', '<p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:宋体;color:#333333;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">您的位置：</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US"><a href="http://www.panli.com/Help/"><span style="font-family:宋体;color:#3d96d8;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-size:12.0pt;" lang="EN-US"><span lang="EN-US">帮助首页</span></span></a>&gt;<a href="http://www.panli.com/Help/List.aspx?cid=1"><span style="font-family:宋体;color:#3d96d8;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-size:12.0pt;" lang="EN-US"><span lang="EN-US">帮助中心</span></span></a>&gt;<a href="http://www.panli.com/Help/Search.aspx?sc=2"><span style="font-family:宋体;color:#3d96d8;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-size:12.0pt;" lang="EN-US"><span lang="EN-US">支付说明</span></span></a><?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /><o:p></o:p></span></p> <p style="text-align:left;margin:0cm 0cm 0pt;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US"><a href="http://www.panli.com/shopping_demo/buy_step1.aspx" target="_blank"><span style="font-family:宋体;color:#609cdb;font-size:12pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;" lang="EN-US"><span lang="EN-US">代购演示</span></span></a><o:p></o:p></span></p> <p style="text-align:left;margin:0cm 0cm 0pt;mso-pagination:widow-orphan;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-outline-level:1;" class="MsoNormal" align="left"><b><span style="font-family:宋体;color:black;font-size:24pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:18.0pt;">国内银行卡支付</span></b><b><span style="font-family:Tahoma;color:black;font-size:24pt;mso-font-kerning:18.0pt;" lang="EN-US"><o:p></o:p></span></b></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp; &nbsp; </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">支持国内办理的信用卡和银行卡。</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US"><o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp; &nbsp;&nbsp; <a href="http://main.ips.com.cn/product/payment_rmb.shtml"><span style="font-family:宋体;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-size:12.0pt;" lang="EN-US"><span lang="EN-US">国内银行卡支付帮助</span></span></a><o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">通过</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">IPS</span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">充值，实时到账。</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US"><o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">国内银行卡充值目前不收取任何手续费，如下：</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US"><o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><b><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;mso-bidi-font-size:12.0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp; &nbsp; </span></b><b><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;mso-bidi-font-size:12.0pt;">充值金额</span></b><b><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;mso-bidi-font-size:12.0pt;" lang="EN-US">(rmb) </span></b><b><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;mso-bidi-font-size:12.0pt;">　手续费</span></b><b><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;mso-bidi-font-size:12.0pt;"> </span></b><b><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;mso-bidi-font-size:12.0pt;">　代购账户金额</span></b><b><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;mso-bidi-font-size:12.0pt;" lang="EN-US">(rmb)</span></b><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US"><o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;50 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">0 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">50<o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;100 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;0 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">100<o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp; &nbsp;&nbsp; 200 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;0 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">200<o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;500 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;0 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">500<o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1000 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">0 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">1000<o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2000 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">0 </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">　　　</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">2000<o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:red;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp; </span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US"><o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:red;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-family:宋体;color:red;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">支付未到账情况：</span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">由于目前信用卡支付第三方平台无法保证接受所有信用卡以及保证</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">100%</span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">成功，因此请您先确认下是否已经支付成功。</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;<o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">如果您支付成功而代购帐户未到账</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">?<o:p></o:p></span></p> <p style="text-align:left;margin:3.75pt 0cm;mso-pagination:widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">请登录代购网，在代购官网提供您的充值方式、充值日期、充值金额或订单号以及代购注册会员名。在收到您提交的信息</span><span style="font-family:Tahoma;color:black;font-size:9pt;mso-font-kerning:0pt;" lang="EN-US">2</span><span style="font-family:宋体;color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;mso-font-kerning:0pt;">个工作日内，财务人员将联系第三方支付平台为您查看，确认核实后，会为您手动充值。</span></p>'),
(26, 3, '海外电汇', 0, '海外电汇', '海外电汇', '<div class="bt"> <h1>海外电汇</h1> </div> <div class="content"> <p>　　<strong>招商银行</strong></p> <p>　　Beneficiary''s Bank : China Merchants Bank&nbsp; （SWIFT CODE: CMBCCNBS051）</p> <p>　　（汇入行：招商银行及上海分行SWIFT代码）</p> <p>　　Beneficiary''s a/c no. ：6 2 2 5&nbsp; 8 8 2 1 &nbsp;1 9 1 0&nbsp; 8 9 1 5<br /> <br /> 　　（收款人一卡通卡号）</p> <p>　　Beneficiary:&nbsp; Zheng&nbsp; Li</p> <p>　　（收款人户名）</p> <p>　　<strong>中国银行</strong></p> <p>　　Beneficiary''s Bank : Bank of China （SWIFT CODE: BKCHCNBJ300）</p> <p>　　（汇入行：中国银行及上海分行SWIFT代码）</p> <p>　　Beneficiary''s a/c no. ：4 0 3 1&nbsp; 5 0 2 0&nbsp; 1 8 8 0&nbsp; 5 8 4 5&nbsp; 4 9</p> <p>　　（收款人卡号）</p> <p>　　Beneficiary:&nbsp; Zheng&nbsp; Li</p> <p>　　（收款人户名）</p> <p>　　在办理银行汇款时，无法将您的订单号等信息传递到Panli网；所以采用此种支付方式后，请您登录Panli网，在<a href="http://www.panli.com/mypanli/Account/Service.aspx">http://www.panli.com/mypanli/Account/Service.aspx</a>提供您的汇款信息：您的Panli用户名、汇款日期、汇款金额（人民币金额）、汇款行、汇款人姓名（名在前，姓在后，中间请分开）、汇入的账户及账户名，系统将自动为您发送到客服邮箱，以便工作人员及时准确地将这笔款项加入到您的Panli网RMB账户中，并尽快为您安排发货。</p> <p>&nbsp;</p> </div>');
INSERT INTO `dg_article` (`aid`, `typeid`, `title`, `listorder`, `seokeywords`, `seodescription`, `body`) VALUES
(27, 4, '运输方式及运费对比', 0, '运输方式及运费对比', '运输方式及运费对比', '<span style="widows:2;text-transform:none;text-indent:0px;border-collapse:separate;font:medium Simsun;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-border-horizontal-spacing:0px;-webkit-border-vertical-spacing:0px;-webkit-text-decorations-in-effect:none;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="Apple-style-span"><span style="font-family:Verdana, Arial, Helvetica, sans-serif;color:#333333;font-size:12px;" class="Apple-style-span"> <div style="margin-top:25px;height:35px;" class="bt"> <h1 style="text-align:center;padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;font-family:simhei;color:#333333;font-size:20px;font-weight:normal;padding-top:0px;">运输方式及运费对比</h1> </div> <div style="padding-bottom:20px;line-height:24px;padding-left:15px;padding-right:15px;color:#666666;font-size:14px;padding-top:0px;" class="content"> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">我们提供以下几种质优价廉的国际运送方式供您选择(资费可参考邮局)：</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">A. DHL　您提交运送后，Panli把您的包裹发送到DHL，DHL将在2-3工作日把商品寄达您手中。(安全快捷，运费较高)</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">B. EMS　您提交运送后，Panli把您的包裹发送到EMS，EMS 将在5-7个工作日把商品寄达您手中。(速度较快，运费一般)</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">C. AIR　您提交运送后，Panli把您的包裹发送到AIR，AIR 将在8-15个工作日把商品寄达您手中。(速度较慢，运费较低)</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">D. 国内转送　您提交运送后，Panli将您的商品寄达您国内亲友手中；我们将根据实际的寄达地，为您选择适合的运送方式。</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">为确保您收货安全，目前普通会员进行国内转送时都需要抵扣等同于商品价值的积分来进行国内转送。<a href="http://www.panli.com/Help/Detail.aspx?hid=61">如何获得积分？</a></p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">&nbsp;</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;"><a href="/Help/Postage.aspx">查看运费表</a>&nbsp;&nbsp;<a href="/mypanli/Estimates.aspx">代购费用估算</a><span class="Apple-converted-space">&nbsp;</span>(AIR小包方式，每100g ，国际运费只需18人民币。)</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">每个国际包裹将收取8元报关费。</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">以上货运时间属于正常情况，不作为最终承诺，如发生特殊情况，Panli将及时通知您商品到达的时间。</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">您可能需要为您国内的亲友购物，您可选择国内转送方式。只要是通过Panli国内转送，将收取国内转送运费+服务费<span style="color:#0000ff;">（</span><span style="color:#0000ff;">服务费=商品费用x10%）。</span>Panli保证商品的正确性，并对包裹丢失做赔偿，最高额度1000RMB。</p> </div> </span></span>'),
(28, 4, '大宗商品的运费', 0, '大宗商品的运费', '大宗商品的运费', '<span style="widows:2;text-transform:none;text-indent:0px;border-collapse:separate;font:medium Simsun;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-border-horizontal-spacing:0px;-webkit-border-vertical-spacing:0px;-webkit-text-decorations-in-effect:none;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="Apple-style-span"><span style="font-family:Verdana, Arial, Helvetica, sans-serif;color:#333333;font-size:12px;" class="Apple-style-span"> <div style="margin-top:25px;height:35px;" class="bt"> <h1 style="text-align:center;padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;font-family:simhei;color:#333333;font-size:20px;font-weight:normal;padding-top:0px;">大宗商品的运费</h1> </div> <div style="padding-bottom:20px;line-height:24px;padding-left:15px;padding-right:15px;color:#666666;font-size:14px;padding-top:0px;" class="content"> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　大宗物品通常包括但不局限于以下类别商品：</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　A. 音响 / HIFI；</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　B. 厨房电器(烤箱 / 净水器 / 咖啡机等)；</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　C. 其它家电(冰箱 / 洗衣机 / 烘干机 / 空调机 / 电视机 / 烤箱等)；</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　D. 乐器；</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　E. 电脑及辅助设备(台式电脑 / 手提电脑 / 打印机 / 传真机 / 一体机 / 液晶显示器等)；</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　F. 床上用品(床单 / 罩 / 被套 / 枕头等)；</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　G. 居家装饰 ( 家具等 ) ；</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　H. 健身器材；</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　I. 户外野营用品。</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　国际货运是按商品的重量和体积进行计费的。因此，如果Panli网审核您的订单时发现有大宗商品，则该商品的运费有可能增加，具体变动Panli网客服会与您联系，谢谢您的理解与合作。</p> </div> </span></span>'),
(29, 4, '海关及税项', 0, '海关及税项', '海关及税项', '<span style="widows:2;text-transform:none;text-indent:0px;border-collapse:separate;font:medium Simsun;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-border-horizontal-spacing:0px;-webkit-border-vertical-spacing:0px;-webkit-text-decorations-in-effect:none;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="Apple-style-span"><span style="font-family:Verdana, Arial, Helvetica, sans-serif;color:#333333;font-size:12px;" class="Apple-style-span"> <div style="margin-top:25px;height:35px;" class="bt"> <h1 style="text-align:center;padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;font-family:simhei;color:#333333;font-size:20px;font-weight:normal;padding-top:0px;">海关及税项</h1> </div> <div style="padding-bottom:20px;line-height:24px;padding-left:15px;padding-right:15px;color:#666666;font-size:14px;padding-top:0px;" class="content"> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　为了节省您的时间和费用，我们会对包裹进行最合理的避税处理，但不对商品做清关处理。</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　如果您的包裹被征税，您需自行交税，但是这种情况发生的概率很小，目前只有0.3%的包裹被征税。</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　民用包裹无需交税，被视为商用包裹需交税。</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　<strong>如何避免缴税？您可以参考以下3个建议：</strong></p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　1、包裹的重量，是各国海关对民用包裹、商用包裹的重要判定依据。超过10kg被视作商用包裹的概率比较大，所以您提交运单的时候，请考虑包裹的重量。如果选择DHL，还需要考虑商品的体积（DHL以商品的体积和重量两方面确认收费）。</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　2、Panli设定了包裹重量20kg的上限，如果超过20kg您可以分别提交运单。但建议每个运单不要超过10kg。</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　3、同一商品数量过多，也是被判定为商用包裹的依据之一。请您尽量避免使用同一个包裹寄送数量较多的同一商品。</p> </div> </span></span>'),
(30, 4, '收货注意事项', 0, '收货注意事项', '收货注意事项', '<span style="widows:2;text-transform:none;text-indent:0px;border-collapse:separate;font:medium Simsun;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-border-horizontal-spacing:0px;-webkit-border-vertical-spacing:0px;-webkit-text-decorations-in-effect:none;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="Apple-style-span"><span style="font-family:Verdana, Arial, Helvetica, sans-serif;color:#333333;font-size:12px;" class="Apple-style-span"> <div style="margin-top:25px;height:35px;" class="bt"> <h1 style="text-align:center;padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;font-family:simhei;color:#333333;font-size:20px;font-weight:normal;padding-top:0px;">收货注意事项</h1> </div> <div style="padding-bottom:20px;line-height:24px;padding-left:15px;padding-right:15px;color:#666666;font-size:14px;padding-top:0px;" class="content"> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　当您收到订购的商品时，请先核对包裹重量，如有疑问，请将包裹上的运输凭证(2张)拍照，把数码照片和相关情况的描述发E_mail给Panli客服；</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　在打开包裹前，发现包裹有异常(例如包装异常，有被他人打开过的迹象等)，请将包裹的外包装拍照，把数码照片和相关情况的描述发E_mail给Panli客服；</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　如对收到的商品数量有疑问，或收到了不正确的商品，请将包裹内商品上的ID号拍照，把数码照片和相关情况的描述发E_mail给Panli客服。　</p> </div> </span></span>'),
(31, 5, '如何修改账户资料', 0, '如何修改账户资料', '如何修改账户资料', '<span style="widows:2;text-transform:none;text-indent:0px;border-collapse:separate;font:medium Simsun;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-border-horizontal-spacing:0px;-webkit-border-vertical-spacing:0px;-webkit-text-decorations-in-effect:none;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="Apple-style-span"><span style="font-family:Verdana, Arial, Helvetica, sans-serif;color:#333333;font-size:12px;" class="Apple-style-span"> <div style="margin-top:25px;height:35px;" class="bt"> <h1 style="text-align:center;padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;font-family:simhei;color:#333333;font-size:20px;font-weight:normal;padding-top:0px;">如何修改账户资料</h1> </div> <div style="padding-bottom:20px;line-height:24px;padding-left:15px;padding-right:15px;color:#666666;font-size:14px;padding-top:0px;" class="content"> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　请您登录Panli网，进入“我的Panli”&gt;“个人信息管理”&gt;“编辑个人档案”进行添加或修改，完成后点击“提交”按钮即可。</p> </div> </span></span>'),
(32, 5, '如何修改密码', 0, '如何修改密码', '如何修改密码', '<span style="widows:2;text-transform:none;text-indent:0px;border-collapse:separate;font:medium Simsun;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-border-horizontal-spacing:0px;-webkit-border-vertical-spacing:0px;-webkit-text-decorations-in-effect:none;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="Apple-style-span"><span style="font-family:Verdana, Arial, Helvetica, sans-serif;color:#333333;font-size:12px;" class="Apple-style-span"> <div style="margin-top:25px;height:35px;" class="bt"> <h1 style="text-align:center;padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;font-family:simhei;color:#333333;font-size:20px;font-weight:normal;padding-top:0px;">如何修改密码</h1> </div> <div style="padding-bottom:20px;line-height:24px;padding-left:15px;padding-right:15px;color:#666666;font-size:14px;padding-top:0px;" class="content"> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　请您登录Panli网，进入“我的Panli”&gt;“个人信息管理”&gt;“修改秘密”进行修改，完成后点击“更改密码”按钮即可。</p> </div> </span></span>'),
(33, 5, '忘记密码怎么办', 0, '忘记密码怎么办', '忘记密码怎么办', '<span style="widows:2;text-transform:none;text-indent:0px;border-collapse:separate;font:medium Simsun;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-border-horizontal-spacing:0px;-webkit-border-vertical-spacing:0px;-webkit-text-decorations-in-effect:none;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="Apple-style-span"><span style="line-height:24px;font-family:Verdana, Arial, Helvetica, sans-serif;color:#666666;font-size:14px;" class="Apple-style-span">在“Panli会员登录"”点击“忘记密码”，按提示找回密码。 　　若按上述方法无法找回密码，请联系我们的客服人员。</span></span>'),
(34, 5, '如何修改E-mail地址', 0, '如何修改E-mail地址', '如何修改E-mail地址', '<span style="widows:2;text-transform:none;text-indent:0px;border-collapse:separate;font:medium Simsun;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-border-horizontal-spacing:0px;-webkit-border-vertical-spacing:0px;-webkit-text-decorations-in-effect:none;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="Apple-style-span"><span style="line-height:24px;font-family:Verdana, Arial, Helvetica, sans-serif;color:#666666;font-size:14px;" class="Apple-style-span">请您登录Panli网，进入“我的Panli”&gt;“个人信息管理”&gt;“修改E-mail地址”进行修改，完成后点击“更改”按钮即可。</span></span>'),
(35, 6, '如何帮用户参与竞拍', 0, '如何帮用户参与竞拍', '如何帮用户参与竞拍', '如何帮用户参与竞拍<br /> 　　用“一键填单”把您要竞拍的商品信息抓取后，您可以手动修改商品价格，填写您愿意出的最高竞价，然后提交代购并确认付款，代购将帮您竞拍。<br /> 　　淘宝、易趣采取的是逐级加价的方式，即使您的出价高于次高价很多级，淘宝、易趣也只会把比次高价高一级的价格纳入竞争中，此举充分保护了竞价者的利益，让竞价者花尽可能少的价钱买到喜爱的商品。<br /> 　　我们举个例子：一位卖家拍卖一双靴子，起拍价格是50元，每次的加价幅度是2元，您愿意出的最高竞价是100元。拍卖截止时间到了，如果您出价最高，而比您出价低一级的买家的出价是80元，那么，您将以82元的价格获得此靴子，18元差额将如数退还。<br /> 　　因为拍卖具有时效性，我们建议您在决定好竞拍的价钱后，尽快下订单并确认付款，以便我们能及时为您参与竞拍。<br /> 　　如果您赢得拍卖且最后的价格低于您的最高出价，代购网将退还差额。如果您的出价没有赢得拍卖，导致交易失败，代购网会将本次付款全额退还，不会收取您任何其他费用'),
(36, 6, '多久能收到竞拍成功的商品', 0, '多久能收到竞拍成功的商品', '多久能收到竞拍成功的商品', '<span style="widows:2;text-transform:none;text-indent:0px;border-collapse:separate;font:medium Simsun;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-border-horizontal-spacing:0px;-webkit-border-vertical-spacing:0px;-webkit-text-decorations-in-effect:none;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="Apple-style-span"><span style="font-family:Verdana, Arial, Helvetica, sans-serif;color:#333333;font-size:12px;" class="Apple-style-span"> <div style="margin-top:25px;height:35px;" class="bt"> <h1 style="text-align:center;padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;font-family:simhei;color:#333333;font-size:20px;font-weight:normal;padding-top:0px;">多久能收到竞拍成功的商品</h1> </div> <div style="padding-bottom:20px;line-height:24px;padding-left:15px;padding-right:15px;color:#666666;font-size:14px;padding-top:0px;" class="content"> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　淘宝、易趣通常是个人与个人或小型个体户交易，服务难免没有大商家好。所以在拍卖结束之后，Panli网的上海物流中心通常要3-10个工作日才能从卖家处收到商品，再加上运送到您手中的国际运送时间，通常总共需要15-20个工作日。</p> <p style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">　　因此，通过淘宝、易趣购买商品的用户，要耐心等待商品的送达，但Panli网承诺：一旦收到商品，将以最快的速度发给用户。具体国际运输时间由用户选择的运输方式而定。</p> </div> </span></span>'),
(37, 7, '商品退/换流程', 0, '商品退/换流程', '商品退/换流程', '商品退/换流程<br /> 　　第一步：如果您是因为商品质量问题需要退换商品，请发电子邮件给代购客服申请退货。<br /> 　　第二步：代购客服收到您的申请后，将与国内销售商沟通。当确定他们接受退换时，代购客服将通过电子邮件与您联系，告知您退换的细节。<br /> 　　第三步：了解退货信细节后，请您将相关物品（商品+原始购买凭证+原包装+代购网发给您的退货审核结果邮件复印件），尽快寄还给代购。<br /> 　　请注意：<br /> 　　对于退货商品，请您务必在商家承诺退货的期限内寄还给代购。同时，因为国际退换需要相当的时间(通常都要等待一个月以上)，因此请您在退换过程中耐心等待，代购网也会及时通知您退换的进展情况。'),
(38, 8, '会员级别介绍', 0, '会员级别介绍', '会员级别介绍', '<div class="bt"> <h1>会员级别介绍</h1> </div> <div class="content"> <p>　　Panli网会员分为普通会员和VIP会员。</p> <p>　　所有注册过的用户在晋级为VIP会员之前，均为普通会员。</p> <p>　　VIP会员分为三个级别：金卡会员、白金卡会员和钻石卡会员。具体级别标准如下 ：</p> <p>　　<span style="color:#ff0000;">1、金卡会员</span></p> <p>　　晋级标准：在90天内，至少提交一个运单，且购买商品总金额大于等于500元人民币。只有当您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p> <p>　　优惠待遇：</p> <p>　　oVIP共享：可享受淘宝网VIP商品金卡价格；</p> <p>　　可享受当当网银卡会员待遇；</p> <p>　　可享受卓越网VIP会员优惠（享受最高可达3％的特殊折扣）。</p> <p>　　o级别赠分：单张运单满500元，额外赠送10积分。</p> <p>　　要求：</p> <p>　　o支持Panli网，维护Panli网合法权益及公司形象，禁止恶意攻击或诽谤他人。</p> <p>　　o成为金卡会员后，若在90天内未提交任何运单，则降级为普通会员。</p> <p>　<span style="color:#ff0000;">　2、白金卡会员</span></p> <p>　　晋级标准：在90天内，至少提交两个运单，且购买商品总金额大于等于1500元人民币。只有当您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p> <p>　　优惠待遇：</p> <p>　　oVIP共享：可享受淘宝网VIP商品白金卡价格；</p> <p>　　可享受当当网金卡会员商品折扣价（部分商品最高97折）；</p> <p>　　可享受卓越网VIP会员优惠（享受最高可达3％的特殊折扣）。</p> <p>　　o级别赠分：单张运单满500元，额外赠送20积分。</p> <p>　　要求：</p> <p>　　o支持Panli网，维护Panli网合法权益及公司形象，禁止恶意攻击或诽谤他人。</p> <p>　　o成为白金卡会员后，若在90天内未提交任何运单，则降级为金卡会员。</p> <p>　　<span style="color:#ff0000;">3、钻石卡会员</span></p> <p>　　晋级标准：在90天内，至少提交三个运单，且购买商品总金额大于等于3000元人民币。只有当您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p> <p>　　优惠待遇：</p> <p>　　oVIP共享：可享受淘宝网VIP商品钻石卡价格；</p> <p>　　可享受当当网钻石卡会员商品折扣价（部分商品最高95折）；</p> <p>　　可享受卓越网SVIP会员优惠（享受最高可达5％的特殊折扣）。</p> <p>　　o级别赠分：单张运单满500元，额外赠送30积分。</p> <p>　　要求：</p> <p>　　o支持Panli网，维护Panli网合法权益及公司形象，禁止恶意攻击或诽谤他人。</p> <p>　　o成为钻石卡会员后，若在90天内未提交任何运单，则降级为白金卡会员。</p> <p>　　附：淘宝网VIP商品可在一口价的基础上再享受一定得折扣。<br /> <br /> 　　<img border="0" alt="" src="http://img.panli.com/CMS/help/31/633931195189850598.jpg" width="678" height="201" /></p> </div>'),
(39, 8, '积分规则', 0, '积分规则', '积分规则', '<div class="bt"> <h1>积分规则</h1> </div> <div class="content"> <p>只有当会员确认收货了之后，对应的积分才会真正加入到会员的积分帐户里。</p> <p>&nbsp;</p> <p><strong>如何获得积分</strong></p> <p>1、注册即可获得200积分。</p> <p>2、购买商品：获得等于商品售价的积分值，即消费1元可获得1积分；VIP会员购物时，将额外获得相应级别的级别赠分。只有当您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p> <p>3、身份证件认证通过可获得200积分（仅可一次）：把您充值时提供的相关证件拍下来，把照片发送e-mail到我们的客服信箱:<a href="mailto:SERVICE-ID@PANLI.COM">SERVICE-ID@PANLI.COM</a> 核实后会为您手动增加200积分；支付卡认证通过可获得200积分（仅可一次）；身份证件与支付卡认证都通过，可额外获得300积分。</p> <p>4、选择线下汇款方式充值：汇款1元获得1积分。</p> <p>5、参与网站活动：Panli网将不定期举办积分活动，会员可以参加活动获得积分。</p> <p>&nbsp;</p> <p><strong>如何使用积分</strong></p> <p>1、兑换电子优惠券：</p> <p>·积分与电子优惠券兑换比例：100:1</p> <p>·电子优惠券有4种面值：5元、10元、20元和50元。</p> <p>普通会员只可兑换5元面值的券；金卡会员可兑换5元和10元两种面值的券；白金卡会员可兑换5元、10元和20元三种面值的券；钻石卡会员可兑换任意面值的券。</p> <p>·电子优惠券有效期30天。</p> <p>·可用于抵扣服务费，每次可使用一张。</p> <p>2、使用国内转送服务：<br /> ·当会员级别为普通会员时，如果收货地址在中国国内，则需要消耗一定的积分，消耗的积分值与代购商品的总价格等价；一旦确认收货后，积分将返还到积分帐户中。<br /> &nbsp;&nbsp;&nbsp; 举例：<br /> &nbsp;&nbsp;&nbsp; A会员为普通会员，总共代购了价值800元的商品，本次代购的收货地址是中国广东省广州市，<br /> &nbsp;&nbsp;&nbsp; 如果A会员积分帐户中的积分＜800，则不能使用国内转送服务；&nbsp; <br /> &nbsp;&nbsp;&nbsp; 如果A会员积分帐户中的积分≥800，则可以使用国内转送服务，并且在提交运送的同时，需要扣除A会员<br /> &nbsp;&nbsp;&nbsp; 800积分，等A会员确认收到商品后，系统将800积分返还到A会员的积分帐户中。<br /> ·当会员级别为VIP会员时，使用国内转送服务则不需要消耗积分。</p> <p align="left">3、普通会员使用积分参与拼单购：</p> <p>普通会员，可使用积分参与拼单购，每次拼单将消耗100积分。</p> <p>&nbsp;</p> <p><strong>积分使用规则</strong></p> <p>1、所得的积分在下次消费就可以使用；</p> <p>2、只有商品售价计算积分，其他费用不计算积分；</p> <p>3、累计的积分不可以兑换现金；</p> <p>4、累计的积分不可移至他人的会员ID名下或转让给第三者。&nbsp;</p> </div>'),
(40, 9, '什么是代购？', 0, '什么是代购？', '什么是代购？', '<div class="bt"> <h1>什么是代购？</h1> </div> <div class="content"> <p>　　代购，通俗一点来说，就是找人帮忙购买您需要的商品，可能是因为您在当地买不到这件商品，又或者是当地这件商品的价格比其他地区的贵。帮人从中国购买商品，然后通过快递发货至国外，就是常见的代购形式。</p> <p>　　通过Panli网，您可以在中国任意一家购物网站搜索商品，并且无需人民币，直接用外汇付款就能实现购物，全国商品皆在您的指间，绝对快捷便利！</p> </div>'),
(41, 10, '中国所有商品都可以代购吗？', 0, '中国所有商品都可以代购吗？', '中国所有商品都可以代购吗？', '<div class="bt"> <h1><span style="font-size:16px;">中国所有商品都可以代购吗？</span></h1> </div> <div class="content"> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 只要卖家的商品支持货到付款或者货到放款的支付方式，Panli都可以为您代购。</p> <p>&nbsp;</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 中国网上商城的商品种类繁多，涵盖了生活所需的方方面面，您通过一键填单就可以直接将您喜欢的商品提交代购，而Panli会全心全意为您提供代购服务。</p> <p>&nbsp;</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在购买一些特殊商品时，需按PANLI指定的方式购买。如果您购买了特殊商品，我们的客服人员会在2个工作日内与您联系，向您说明购买特殊商品的方式。</p> <p>&nbsp;&nbsp;</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 还需注意的是，在中国代购的商品，必须是符合中华人民共和国的法律法规，国家准许进口的商品。相关法律法规参见：<a href="http://www.panli.com/Help/Detail.aspx?hid=164">http://www.panli.com/Help/Detail.aspx?hid=164</a>。</p> </div>'),
(42, 10, '代购是怎么收费的？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">代购是怎么收费的？</span></h1> </div> <div class="content"> <p>　　<strong>代购总费用=商品费用+国内运费+国际运费+服务费</strong>，其中：</p> <p>　　<strong>商品费用</strong>：商品的售价</p> <p>　　<strong>国内运费</strong>：商品从卖家所在地运送到代购（上海）的运费。但是，以下2种情况可以免国内运费：</p> <p>　　1、如果您在代购推荐的“免邮商家”网站购物，您就无需再支付国内运费。</p> <p>　　2、如果您是VIP会员，在代购“拼单购”栏目跟单，免国内运费。</p> <p>　　<strong>国际运费</strong>：根据您的商品重量、选择的运送方式、运送地区所计算出来的运费，以及报关费。国际运费请查看<a href="http://www.panli.com/Help/Postage.aspx"><span style="color:#0000ff;">运费表</span></a>。</p> <p>　　<strong>服务费</strong>：服务费=商品费用x10%</p> <p>　　另外，你还可以利用<a href="http://www.panli.com/myPanli/Estimates.aspx"><span style="color:#0000ff;">费用估算</span></a>工具，提前预测您的购物成本。</p> </div>'),
(43, 10, '代购的流程是怎么样的？', 0, '代购的流程是怎么样的？', '代购的流程是怎么样的？', '<h1 style="margin:auto 0cm;"><span style="font-family:宋体;"><span style="color:black;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">代购的流程是怎么样的？</span><span style="font-family:Tahoma;color:black;" lang="EN-US"><?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /><o:p></o:p></span></span></h1> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　<strong><span style="font-family:宋体;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">第一步、挑选商品</span></strong></span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></p> <p><span style="font-family:宋体;"><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">　　到国内任意购物网站挑选心仪的商品。</span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　<strong><span style="font-family:宋体;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">第二步、提交代购单</span></strong></span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　进入</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">“</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">我要代购</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">”</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">页面，只要粘贴商品详细页网址，使用</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">“</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">快速代购</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">”</span><span style="font-family:宋体;"><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">就可以自动填写代购单，您只需手动填写商品备注，详细说明您代购的细节要求，然后提交代购，商品将自动进入您的购物车。</span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　<strong><span style="font-family:宋体;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">第三步、支付货款</span></strong></span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　进入</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">“</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">我的购物车</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">”</span><span style="font-family:宋体;"><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">页面，选择此次要代购的商品，提交代购后，代购系统将自动扣除商品费用和国内运费。待您成功支付了货款，代购将开始为您代购。</span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　<strong><span style="font-family:宋体;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">第四步、代购代购商品</span></strong></span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　代购代购商品的过程是：代购采购员接单</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">&gt;</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">采购员向卖家购买商品</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">&gt;</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">商品到代购</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">&gt;</span><span style="font-family:宋体;"><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">采购员验货</span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　提示：代购采购员代购商品过程中，您可以在</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">“</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">我的送货车</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">”</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">询商品状态，当商品状态显示</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">“</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">已到代购</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">”</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">，您就可以</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">"</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">提交运送</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">"</span><span style="font-family:宋体;"><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">了。</span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　<strong><span style="font-family:宋体;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">第五步、货到支付运费</span></strong></span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　进入</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">“</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">我的送货车</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">”</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">页面，选择</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">"</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">已到代购</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">"</span><span style="font-family:宋体;"><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">的商品提交运送，选择合适的送货方式，然后正确填写您收货的详细信息，最后提交结算，就等代购给您的商品包装发货了。</span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　<strong><span style="font-family:宋体;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">第六步、提交运送后准备发货</span></strong></span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　在等待代购处理运单的过程中，您可以在</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">“</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">我的运单</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">”</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">查看运单状态，当运单状态显示为</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">“</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">已发货</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">”</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">，您还可以在</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">"</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">包裹跟踪查询</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">"</span><span style="font-family:宋体;"><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">自行查询。</span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　<strong><span style="font-family:宋体;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">第七步、确认收货</span></strong></span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　收到包裹后，尽快到</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">“</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">我的运单</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">”</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">页面</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">“</span><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">确认收货</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US">”</span><span style="font-family:宋体;"><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;">并评价代购体验，这是代购将给您送出相应的积分，结束了此次完美的代购。</span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><o:p></o:p></span></span></p> <p><span style="color:black;font-size:9pt;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;mso-bidi-font-family:Tahoma;"><span style="font-family:宋体;">　　您还可以查看代购演示：</span></span><span style="font-family:Tahoma;color:black;font-size:9pt;" lang="EN-US"><a href="http://www">http://www.<span style="font-family:宋体;mso-ascii-font-family:Tahoma;mso-hansi-font-family:Tahoma;" lang="EN-US"><span lang="EN-US">代购</span></span>.com/shopping_demo/buy_step1.aspx</a></span></p>'),
(44, 10, '对液体、膏体、食品、DVD光碟和药品的寄送有什么限定？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">对液体、膏体、食品、DVD光碟和药品的寄送有什</span><span style="font-size:16px;">么限定？</span></h1> </div> <div class="content"> <p>　　参考海关的限定习惯，以下代购商品都有不同的运送限定，大家在提交运单时，要注意选择运送方式。</p> <p>　　（1）药品，只能使用EMS和AIR，无法通过DHL运送；</p> <p>　　（2）食品类，只能使用EMS和AIR来运送，无法通过DHL运送；（另外，如果您代购的食品无真空包装且卖家表示保质期不到半年，考虑到国际运输的时间，这类食品我们建议不要代购。如果您坚持要购买，请您重新下代购单，并在备注里注明“请忽略保质期放心购买”，这样代购员才会为您购买。）</p> <p>　　（3）DVD光碟，只能使用EMS和AIR，无法通过DHL运送；</p> <p>　　（4）电子数码类商品只能通过EMS和AIR，无法通过DHL运送。</p> <p>　　<strong>而化妆品、药品和食品都可能是液体、膏体或者粉状物的形态，请注意以下限定：</strong></p> <p>　　（1）含有液体的商品只能使用AIR运送，无法通过DHL运送；</p> <p>　　（2）膏状、粉状物体只能使用EMS或AIR运送，无法通过DHL运送。</p> </div>'),
(45, 11, '哪些卖家是代购的嫌疑商家？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">哪些卖家是代购</span><span style="font-size:16px;">的嫌疑商家？</span></h1> </div> <div class="content"> <p>　　您运用“一键填单”提交代购信息时，如果系统提示您此商品的卖家是嫌疑商家，请不要惊讶！这是为了维护会员的利益，减少网购风险，Panli累积了部分嫌疑卖家的名单，提醒大家避免购买这些卖家的商品。</p> <p>　　<strong>代购会把哪些卖家视为嫌疑商家？</strong></p> <p>　　1、卖家有可疑行为，例如卖家的商品图片盗用别人店铺的图片，而且价格比市场上的平均价低许多倍；</p> <p>　　2、通过代购采购员和一些卖家打交道的过程中，发现有些卖家的商品质量很差、服务态度恶劣和售后服务缺失等等；</p> <p>　　3、经由淘宝认证，或其他非代购官方渠道获取的可疑卖家。</p> <p>　　友情提示：网购有风险，请您谨慎选择。</p> </div>'),
(51, 11, '代购的商品，会帮我验货吗？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">代购的商品，代购会帮我验货吗？</span></h1> </div> <div class="content"> <p>　　商品到达了代购，代购员将对自己负责采购的商品进行检验。</p> <p>　　例如服饰类的商品，将对颜色、尺码（以您的商品备注或后期最终更改的为准）、以及大面积破损等显著问题进行检查。如果您收到商品时发现有这类问题，请通过电子邮件与我们联系，我们确认后将与您协商并给出解决方案。但色差，线头等细节问题，代购将无法确保，望理解。</p> <p>　　而电子数码类属于特殊商品，代购员验收时，只能检查商品外观是否完好无损，配件是否齐全，而无法开机检查商品是否有质量问题。这类商品，请会员自己衡量把握。</p> </div>'),
(46, 11, '我代购了同一卖家的几个商品，邮费只收一次吗？', 0, '我代购了同一卖家的几个商品，邮费只收一次吗？', '我代购了同一卖家的几个商品，邮费只收一次吗？', '<div class="bt"> <h1><span style="font-size:16px;">我代购了同一卖家的几个商品，邮费只收一次吗？</span></h1> </div> <div class="content"> <p>　　您在同一卖家处代购多个商品，如果一起“提交代购”，并“结算确认”生成的一个订单，Panli只收取您一次国内运费。</p> <p>　　但是，如果您在同一卖家购买的商品数量过多，导致超重而需要补运费，我们会通过站内短信与您联系。</p> </div>'),
(47, 11, '可以自主定制的商品，可以帮我代购吗', 0, '', '', '<p><br /> 可以自主定制的商品，代购i可以帮我代购吗？</p> <p>　　可以的，如果您有特殊的定制要求，请您在“商品备注”告知我们，我们将按照您的标准对卖家提出购买要求。我们也会就商品的定制内容以及情况及时与您联系确认。</p> <p>　　如果您订购的商品需要图片，您可以将图片及要求发送到客服信箱：<a href="mailto:service@daigoucom">service@daigoucom</a>注明商品ID号即可。</p> <p>　&nbsp; 代购不支持会员与卖家私下商议，目前对于用户与卖家私下商议的商品，我们将不予代购。</p>');
INSERT INTO `dg_article` (`aid`, `typeid`, `title`, `listorder`, `seokeywords`, `seodescription`, `body`) VALUES
(48, 11, '提交订单后，我还可以更改我的订单吗？', 0, '提交订单后，我还可以更改我的订单吗？', '提交订单后，我还可以更改我的订单吗？', '<div class="bt"> <h1><span style="font-size:16px;">提交订单后，我还可以更改我的订单吗？</span></h1> </div> <div class="content"> <p>　　如果在代购过程中您需要对您的商品进行颜色或者尺码的调换，您可以通过“我的Panli”发送站内短信给我们。如果：</p> <p>　　<strong>卖家未发货</strong>，我们将联系卖家进行协商，并进行调换。</p> <p>　　<strong>卖家已发货</strong>，我们将联系卖家进行调换货的协商。要是卖家同意调换，您需要承担调换货产生的运费，在得到您的确认后，我们将帮您调换。</p> </div>'),
(49, 11, '如果我要代购的商品缺货了，怎么办？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">如果我要代购的商品缺货了，怎么办？</span></h1> </div> <div class="content"> <p>　　如果您的订单的商品状态显示“无货”，表示我们为您联系卖家后，卖家表明该商品断货了。您只需直接删除订单，货款会自动退至您的Panli账户。</p> <p>　　若您还需要继续代购其他同类的商品，可以重新下单，我们将会尽快为您服务。</p> </div>'),
(50, 11, '忘了注明我要的颜色/尺码，可以补救吗？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">忘了注明我要的颜色/尺码，可以补救吗？</span></h1> </div> <div class="content"> <p>　　如果您的商品状态是“未处理”，可以在“备注”里添加您要的颜色/尺码；</p> <p>　　如果您的商品状态是“订购中”或“联系卖家中”，可以通过站内短信告诉我们您需要的颜色/尺码；</p> <p>　　而采购员在查看了您代购的商品后，如果发现商品信息未填写完整，他们也会及时与您联系。</p> </div>'),
(52, 11, '卖家写了满100包邮，为什么代购还要收我的邮费？', 0, '卖家写了满100包邮，为什么代购还要收我的邮费？', '卖家写了满100包邮，为什么代购还要收我的邮费？', '<div class="bt"> <h1><span style="font-size:16px;">卖家写了满100包邮，为什么代购还要收我的邮费</span><span style="font-size:16px;">？</span></h1> </div> <div class="content"> <p>　　很抱歉，为了保证您的代购顺利进行，您在享受积分优惠以外，暂时不能享用卖方任何有关多件商品打折或包邮等促销优惠。</p> <p>　　但您可以选推荐的“免邮商家”处购买商品，或在"拼单购"栏目挑选您的心仪宝贝，也可享受免邮费的优惠。</p> </div>'),
(53, 11, '购物网上显示有货，但为什么代购说无货呢？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">购物网上显示有货，但为什么代购说无货呢？</span></h1> </div> <div class="content"> <p>　　因为有些卖家很少更新网商铺的信息，有可能会出现这样的情况：卖家实际的库存情况与网商铺显示的不相符。有些网商铺上显示的库存量有很多件，但Panli代购员联系卖家时，卖家可能会告知“无货”。</p> <p>　　因此，卖家实际的库存量，最终还是以联系卖家后得知的情况为准。</p> </div>'),
(54, 11, '可以代购手机吗？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">可以代购手机吗？</span></h1> </div> <div class="content"> <p>　　可以代购，但在代购过程中，请您注意以下4点：</p> <p>　　1、先确认该手机在您当地是否可以使用；</p> <p>　　2、尽量找信誉高的卖家（建议查看买家评价信息），或直接在有信誉的网站购买(例如京东商城)；</p> <p>　　3、DHL不能运送手机，请不要选择DHL提交运单；</p> <p>　　4、像手机这些电子数码类的商品，代购员验收时，只能检查手机外观是否完好无损，配件是否齐全，而无法开机检查手机是否有质量问题，请会员自己衡量把握。</p> </div>'),
(55, 11, '可以代购虚拟物品吗？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">可以代购虚拟物品吗？</span></h1> </div> <div class="content"> <p>　　目前虚拟商品暂时不能进行代购。</p> </div>'),
(56, 11, '如果很多人购买同款商品，造成同家店无货怎么办呢？', 0, '如果很多人购买同款商品，造成同家店无货怎么办呢？', '', '<div class="bt"> <h1><span style="font-size:16px;">如果很多人购买同款商品，造成同家店无货怎么办</span><span style="font-size:16px;">呢？</span></h1> </div> <div class="content"> <p>　　如果很多人购买同款商品造成同家店货源不够，代购会按照跟单者的拼单先后来处理，先到先得！</p> </div>'),
(57, 11, '我代购的易碎品如果发生损坏怎么办？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">我代购的易碎品如果发生损坏怎么办？</span></h1> </div> <div class="content"> <p>如果您通过代购的商品为易碎品（如玻璃、陶瓷制品等，包含但不限于以上商品），鉴于目前物流公司对于易碎品运输的规定，保证商品在发货前的完整性，但是如商品在寄送过程中发生损坏，并被物流判定为易碎品，由此产生的损失需您自行承担。</p> </div>'),
(58, 12, '我该如何选择快递方式？', 0, '', '', '<p><br /> 我该如何选择快递方式？</p> <p>　　您可以根据代购的商品种类、运输时间要求以及运输费用选择合适的快递方式：</p> <p>　　（1）DHL您提交运送后，代购网把您的包裹发送到DHL，DHL将在2-3工作日把商品寄达您手中。(安全快捷，运费较高)</p> <p>　　（2）EMS您提交运送后，代购网把您的包裹发送到EMS，EMS将在5-7个工作日把商品寄达您手中。(速度较快，运费一般)</p> <p>　　（3）AIR您提交运送后，代购网把您的包裹发送到AIR，AIR将在8-15个工作日把商品寄达您手中。(速度较慢，运费较低)</p> <p>　　（4）国内转送您提交运送后，代购网将您的商品寄达您国内亲友手中。(全国各地统一特快专递送达)</p> <p>　　以上货运时间属于正常情况，不作为最终承诺，如发生特殊情况，代购网将及时通知您商品到达的时间。</p> <p>　　查询快递资费：</p> <p>　　商品运输限定：</p> <p>　　当您确认包裹的快递方式之后，您可以使用费用估算工具来为您的代购费用进行估算</p>'),
(59, 12, '我可以给国内的人邮寄包裹吗？', 0, '', '', '<p><br /> 我可以给国内的人邮寄包裹吗？</p> <p>　　如果您想给国内的亲朋好友寄包裹，您在提交运送时可以选择“国内转送”方式。</p> <p>　　国内转送所需时间：在收到您提交的运单后的2-3个工作日，代购将您的商品寄达您国内的亲友手中。(全国各地统一特快专递送达)</p> <p>　　国内转送的费用：国内转送运费+服务费 [服务费=（商品费用+国内运费）x10%]</p> <p>　　但会员级别为普通会员时，使用“国内转送”服务需抵扣等于商品售价的积分值，在您确认收货时将返还，这是为了保障普通会员账户和包裹运送的安全。（获得积分的6种方法：生成网址后再补上）</p> <p>　　国内转送的快递资费：</p>'),
(60, 12, '我的包裹会被海关抽查缴税吗？', 0, '', '', '<p>&nbsp;</p> <p>我的包裹会被海关抽查缴税吗？</p> <p>　　为了节省您的时间和费用，我们会对包裹进行最合理的避税处理，但不对商品做清关处理。</p> <p>　　如果您的包裹被征税，您需自行交税，但是这种情况发生的概率很小，目前只有0.3%的包裹被征税。</p> <p>　　民用包裹无需交税，被视为商用包裹需交税。</p> <p>　　如何避免缴税？您可以参考以下3个建议：</p> <p>　　1、包裹的重量，是各国海关对民用包裹、商用包裹的重要判定依据。超过10kg被视作商用包裹的概率比较大，所以您提交运单的时候，请考虑包裹的重量。如果选择DHL，还需要考虑商品的体积（DHL以商品的体积和重量两方面确认收费）。</p> <p>　　2、代购设定了包裹重量20kg的上限，如果超过20kg您可以分别提交运单。但建议每个运单不要超过10kg。</p> <p>　　3、同一商品数量过多，也是被判定为商用包裹的依据之一。请您尽量避免使用同一个包裹寄送数量较多的同一商品。</p>'),
(61, 12, '我的包裹发出后，如何跟踪运送情况？', 0, '', '', '<p><br /> 我的包裹发出后，如何跟踪运送情况？</p> <p>　　您可以通过查询相关的网站页面获取您包裹的运送信息。</p> <p>　　EMS包裹查询页面：<a href="http://www.ems.com.cn/chinese-main.jsp">http://www.ems.com.cn/chinese-main.jsp</a> （网上查询有1-2个工作日滞后；EMS邮寄时间要1周左右）</p> <p>　　AIR包裹查询页面：<a href="http://intmail.183.com.cn/item/trace/itemTraceAction.do">http://intmail.183.com.cn/item/trace/itemTraceAction.do</a>（网上查询有2-4个工作日滞后；AIR邮寄时间要2周左右）</p> <p>　　DHL包裹查询页面：<a href="http://www.cn.dhl.com/publish/cn/zh.high.html">http://www.cn.dhl.com/publish/cn/zh.high.html</a>（包裹发出当天就可以网上查询；DHL邮寄时间要3-4天）</p> <p>　　如果还是不放心，您还可以通过站内短信与Panli联系，我们将会帮您确认包裹状态。</p>'),
(62, 12, '我的包裹发出后，如何跟踪运送情况？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">我的包裹发出后，如何跟踪运送情况？</span></h1> </div> <div class="content"> <p>　　您可以通过查询相关的网站页面获取您包裹的运送信息。</p> <p>　　<strong>EMS包裹查询页面</strong>：<a href="http://www.ems.com.cn/chinese-main.jsp">http://www.ems.com.cn/chinese-main.jsp</a> （网上查询有1-2个工作日滞后；EMS邮寄时间要1周左右）</p> <p>　　<strong>AIR包裹查询页面：</strong><a href="http://intmail.183.com.cn/item/trace/itemTraceAction.do">http://intmail.183.com.cn/item/trace/itemTraceAction.do</a>（网上查询有2-4个工作日滞后；AIR邮寄时间要2周左右）</p> <p>　　<strong>DHL包裹查询页面</strong>：<a href="http://www.cn.dhl.com/publish/cn/zh.high.html">http://www.cn.dhl.com/publish/cn/zh.high.html</a>（包裹发出当天就可以网上查询；DHL邮寄时间要3-4天）</p> <p>　　如果还是不放心，您还可以通过站内短信与Panli联系，我们将会帮您确认包裹状态。</p> </div>'),
(63, 12, '陆续代购的商品，是一次寄送，还是分批寄送呢？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">陆续代购的商品，是一次寄送，还是分批寄送呢？</span></h1> </div> <div class="content"> <p>　　一次寄送还是分批寄送，完全取决于您。您可以在“我的送货车”中，对已到代购的商品进行自由组合搭配运送，以省国际运费。</p> <p>　　但是从避税的角度考虑，您还可以参考代购的包裹避税建议 </p> </div>'),
(64, 12, '如何知道我的包裹是在Panli打包状态还是已经发送出去了？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">如何知道我的包裹是在Panli打包状态还是已经发</span><span style="font-size:16px;">送出去了？</span></h1> </div> <div class="content"> <p>　　您可以通过“我的代购”-&gt;“我的运单”查看到您的运单状态。</p> <p>　　<strong>未处理：</strong>运单提交后的初始状态。</p> <p>　　<strong>处理中：</strong>仓库正在处理运单、出库、打包和发货。</p> <p>　　<strong>已发货：</strong>包裹已发送给运输方。</p> <p>　　<strong>信息有误：</strong>收件人姓名、地址等信息错误或者不详细。当您发现您的包裹状态为“信息有误”时，请您尽快通过站内短信联系我们，我们将协助您查询解决。</p> <p>　　<strong>已出关退包：</strong>包裹送到寄达地后，被当地海关退回。</p> <p>　　<strong>未出关退包：</strong>包裹未出中国海关，被退回。我们将尽快与您联系，告知您包裹的状态，同时确认您的收货地址，并将再一次帮您邮寄出去。</p> </div>'),
(65, 12, '东西被退回Panli了，怎么办？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">东西被退回Panli了，怎么办？</span></h1> </div> <div class="content"> <p>Panli拿到退包后，</p> <p>如果您的包裹是由于“安检不合格”被退包，代购会与您联系，确认地址完全正确且邮寄方式不变后，我们会免费将包裹为您再次运出；</p> <p>如果您的包裹是由于“无人签收”或“地址不详”被退包，重新发包的运费需您自行承担；</p> <p>如果有其他问题，代购客服会及时与您联系。</p> </div>'),
(66, 12, '要是买的东西出了问题怎么办？', 0, '', '', '<p><br /> 要是买的东西出了问题怎么办？</p> <p>　　如果买的东西出了问题，请您不要着急，若您代购的商品符合代购网的退/换原则，可以根据以下步骤申请退货：</p> <p>　　第一步：发电子邮件给代购网客服申请退货。</p> <p>　　第二步：代购网客服收到您的申请后，将与国内卖家沟通。当确定他们接受退换时，代购网客服将通过电子邮件与您联系，告知您退换的细节。</p> <p>　　第三步：您了解退货细节后，请您将相关物品（商品+原始购买凭证+原包装+代购网网发给您的退货审核结果邮件复印件），尽快寄还给代购网。</p> <p>　　请注意：对于退货商品，请您务必在商家承诺退货的期限内寄还给代购网。另外，因为国际退换需要相当长的时间(通常都要等待1个月以上)，请您在退换过程中耐心等待，代购网也会及时通知您退换的进展情况。</p> <p>&nbsp;</p>'),
(67, 13, '帐号怎么充值？', 0, '', '', '<p><br /> &nbsp;帐号怎么充值？</p> <p>　　 有两种形式的充值方式：</p> <p>　　（1）在线充值</p> <p>　　您注册成为 会员后，在“我的 ”进入我的RMB帐户"，有3种在线充值方式供您选择：Paypal充值、国际信用卡充值和国内银行卡充值。</p> <p>　　（2）线下汇款</p> <p>　　目前 支持国内汇款和海外电汇，您汇款后，请把汇款的相关信息（例如汇款时间、汇款金额、汇款地区、您在 注册的用户名等信息）发到 邮箱service@ .com， 将进行核实并为您手动充值。</p>'),
(68, 13, '充值的手续费怎么算？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">充值的手续费怎么算？</span></h1> </div> <div class="content"> <p>　　（1）Paypal账户收款Paypal公司目前不收取任何手续费，兑换标准只与汇率有关。</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （2）国际信用卡收款网银公司目前不收取任何手续费。</p> <p>　　（3）国内银行卡充值目前不收取任何手续费。</p> </div>'),
(69, 13, '充值成功后，要多久才到账？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">充值成功后，要多久才到账？</span></h1> </div> <div class="content"> <p>　　（1）如果您选择Paypal支付或国际信用卡支付或者国内银行卡支付，都是实时到账。</p> <p>　　（2）如果您选择国内汇款或海外电汇充值，您把汇款信息发电子邮件通知客服后的1-2个工作日内，财务核实后将为您手动充值。</p> </div>'),
(70, 13, '哪些原因容易导致充值不成功？', 0, '', '', '<p><br /> 哪些原因容易导致充值不成功？</p> <p>　　1、采用Paypal、国外信用卡或国内银行卡充值的用户充值不成功，可能有以下原因：</p> <p>　　（1）如果充值时填写的用户名，与您在 注册的用户名不一致，第三方审查时会出现错误，将无法进行自动充值。</p> <p>　　（2）如果您在一个相对较短的时间段频繁充值，有可能导致系统只抓取到其中一项充值信息。</p> <p>　　（3）如果充值时您填写的信息有误，也可能导致银行扣款不成功。</p> <p>　　（4）有时候可能是浏览器问题导致充值不成功。您可以先清除浏览器的Cookies，然后再重新充值，如果还是不行，再换另一个浏览器重新登录充值。</p> <p>　　2、采用国内汇款或海外电汇的用户充值不成功，可能有以下原因：</p> <p>　　(1)您汇款后，如果没有把汇款的相关信息（例如汇款时间、汇款金额、汇款地区、您在 注册的用户名等相关信息）发到 邮箱service@ .com， 将无法进行核实并为您手动充值。</p> <p>　　(2) 您汇款后，如果您把汇款的相关信息发到 邮箱的时候，正好是 的休息时间（北京时间周六-周日）， 将无法及时为您手动充值。</p>'),
(71, 13, '如何申请退款，什么时候能收到？', 0, '', '', '<p><br /> 如何申请退款，什么时候能收到？</p> <p>　　不同的充值方式和充值时间，有不同的退款方式：</p> <p>　　（1）线上充值：账户余额的退款将通过同样的方式退还到会员充值相应的账户内。</p> <p>　　充值2个月内，请您在线申请退款， 将在2-3个工作日内为您退款到第三方支付平台。</p> <p>&nbsp;&nbsp;&nbsp;&nbsp; Paypal用户可以登录您的Paypal账户进行查询退款情况。</p> <p>　　国外信用卡，国内银行卡退款的用户，在第三方支付平台退款将有一个较长的处理过程，请您耐心等待。您可以联系环迅客服进行查询退款情况<a href="http://main.ips.com.cn/contactus/kfzx.shtml">http://main.ips.com.cn/contactus/kfzx.shtml</a></p> <p>　　充值超过2个月，请提供您的 用户名、最后一次充值的时间、金额（您可以查看您的个人消费记录）及要求退款的人民币金额。以便我们为您转告 财务人员进行核实后手动退款。</p> <p>　　（2）线下汇款：账户余额将退还到会员的人民币账户。</p> <p>　　请提供您的 用户名、最后一次充值的时间、金额（您可以查看您的个人消费记录），接收退款的银行名称、银行卡号、持卡人姓名、开户行名称及要求退款的人民币金额。以便 财务人员进行核实后手动退款。</p>'),
(72, 14, '电子优惠券怎么使用？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">电子优惠券怎么使用？</span></h1> </div> <div class="content"> <p>电子优惠券有4种面值：5元、10元、20元和50元。</p> <p>积分兑换的电子优惠券有效期为30天，自兑换后开始计算。</p> <p>在提交运单时，您可以使用帐户已有的电子优惠券来抵扣服务费；一份运单只可使用一张电子优惠券；当服务费的金额小于优惠券的面额时，多余金额不予退还。</p> </div>'),
(73, 14, 'VIP会员有什么优惠？', 0, '', '', '<p><br /> VIP会员有什么优惠？</p> <p>　　 金卡会员：可享受“淘宝网”VIP商品金卡价格、“当当网”银卡会员待遇、“卓越网”VIP会员优惠。</p> <p>　　 白金卡会员：可享受“淘宝网”VIP商品白金卡价格、“当当网”金卡会员商品折扣价（部分商品最高97折）、“卓越网”VIP会员优惠。</p> <p>　　 钻石卡会员：可享受“淘宝网”VIP商品钻石卡价格、“当当网”钻石卡会员商品折扣价（部分商品最高95折）、“卓越网”SVIP会员优惠。</p> <p>　　淘宝网VIP会员卡介绍页面：<a href="http://service.taobao.com/support/help_detail-5813.htm">http://service.taobao.com/support/help_detail-5813.htm</a></p> <p>　　当当网VIP会员规则页面：<a href="http://static.dangdang.com/helpcenter2/1980/9215.shtml">http://static.dangdang.com/helpcenter2/1980/9215.shtml</a></p> <p>　　卓越网的VIP/SVIP会员页面：<a href="http://www.amazon.cn/mn/helpfinal?pageid=263&amp;uid=478-8975681-4640859">http://www.amazon.cn/mn/helpfinal?pageid=263&amp;uid=478-8975681-4640859</a></p>'),
(74, 14, '我如何成为VIP会员？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">我如何成为VIP会员？</span></h1> </div> <div class="content"> <p>　　VIP会员分为3个级别：金卡会员、白金卡会员和钻石卡会员。</p> <p>　　<strong>1、金卡会员的晋级标准</strong>：在90天内，至少提交1个运单，且购买商品总金额大于等于500元人民币。只有当您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p> <p>　　<strong>2、白金卡会员的晋级标准</strong>：在90天内，至少提交2个运单，且购买商品总金额大于等于1500元人民币。只有当您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p> <p>　　<strong>3、钻石卡会员的晋级标准</strong>：在90天内，至少提交3个运单，且购买商品总金额大于等于3000元人民币。只有当您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p> </div>'),
(75, 14, '我如何获得积分？', 0, '', '', '<p><br /> 我如何获得积分？</p> <p>　　您可以通过以下5种方式获得积分：</p> <p>　　1、注册成为会员即可获得200积分。</p> <p>　　2、购买商品：获得等于商品售价的积分值，即消费1元可获得1积分；VIP会员购物时，将额外获得相应级别的级别赠分。只有当您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p> <p>　　3、身份证件认证通过可获得200积分（仅可一次）：把您充值时提供的相关证件拍下来，把照片发送e-mail到我们的客服信箱:SERVICE-ID@PANLI.COM 核实后会为您手动增加200积分；支付卡认证通过可获得200积分（仅可一次）；身份证件与支付卡认证都通过，可额外获得300积分。</p> <p>　　4、选择线下汇款方式充值：汇款1元获得1积分。</p> <p>　　5、参与网站活动：网站将不定期举办积分奖励活动，会员可以参加活动获得积分。</p> <p>　　注意：</p> <p>　　1、不可以兑换现金。</p> <p>　　2、不可以转让。</p>'),
(76, 14, '我如何获得电子优惠券？', 0, '', '', '<p>我如何获得电子优惠券？<br /> 电子优惠券可以通过积分兑换来获取，或者通过活动的方式进行发放。</p> <p>电子优惠券有4种面值：5元、10元、20元和50元。</p> <p>&nbsp;</p> <p>1、积分兑换</p> <p>电子优惠券的有效期为30天，自兑换后开始计算。</p> <p>积分与电子优惠券的兑换比例为100:1。</p> <p>普通会员只可兑换5元面值的电子优惠券；</p> <p>金卡会员可以兑换5元和10元两种面值的电子优惠券；</p> <p>白金卡会员可以兑换5元、10元和20元三种面值的电子优惠券；</p> <p>钻石卡会员可兑换任意面值的电子优惠券。</p> <p>&nbsp;</p> <p>2、活动发放</p> <p>&nbsp;网站会不定期举办各种活动，电子优惠券会作为奖品之一进行发放。</p> <p>&nbsp;</p> <p>此外，无论您手头拥有的电子优惠券面值为多少，都可以用来抵扣服务费，但每次只可使用1张。<br /> </p>'),
(77, 14, '我不想要积分和电子优惠券，怎么处理？', 0, '', '', '<div class="bt"> <h1><span style="font-size:16px;">我不想要积分和电子优惠券，怎么处理？</span></h1> </div> <div class="content"> <p>　　如果不想要积分，您可以在“我的代购”中将积分兑换成电子优惠券，用于抵扣服务费；</p> <p>　　如果不想要电子优惠券，您可以将电子优惠券转售给别人。</p> <p><a href="http://www.panli.com/Coupon/Default.aspx"></a>&nbsp;</p> </div>'),
(78, 14, '我想用电子优惠券抵扣服务费，有什么限制吗？', 0, '', '', '<p><br /> 我想用电子优惠券抵扣服务费，有什么限制吗？</p> <p>　　电子优惠券的兑换额度有会员级别的限制：</p> <p>　　普通会员只可兑换5元面值的券；</p> <p>　　金卡会员可兑换5元和10元两种面值的券；</p> <p>　　白金卡会员可兑换5元、10元和20元三种面值的券；</p> <p>　　钻石卡会员可兑换任意面值的券。</p> <p>　　另外，在提交运单的时候您可以使用电子优惠券进行服务费的抵扣。一份运单只可以使用一张电子优惠券。</p>'),
(79, 14, '为什么不是所有的活动发放的优惠券都可以赠送给好友？', 0, '', '', '<p><br /> 为什么不是所有的活动发放的优惠券都可以赠送给好友？</p> <p>自新版“我的优惠券”上线起，活动发放的电子优惠券只能是当前用户进行激活领取，同时，活动发放的电子优惠券具有如下2种情况：</p> <p>1、一种是仅限当前用户激活使用；</p> <p>2、另一种是当前用户激活后，可以自己使用也可以赠送给好友进行使用。</p> <p>根据每次活动的内容不同，将发放不同的电子优惠券。<br /> </p>'),
(80, 7, '商品退/换原则', 0, '商品退/换原则', '商品退/换原则', '代购网致力于消除您国际网络购物的一切后顾之忧。<p>　　为了保证您的购物方便和安全，您在购物的每一个过程都有相应的标准，包括退货和更换商品。</p> <p>　　<strong>A. 发货错误、次品或货物被损</strong></p> <p>　　当您收到的商品发生上述问题时，请将商品及外包装一同拍照后，把数码照片和相关情况的描述发送到客服信箱：<a href="mailto:service@panli.com">service@panli.com</a>。我们会为您处理后给出答复。</p> <p>　<strong>　B. 商品出现质量问题</strong></p> <p>　　当您购买的商品在使用一段时间后出现质量问题，只要该商品还在质量保证期之内，且有原始购买凭证和商品质量保证卡，您可以委托我们与国内商家联系办理退/换货。</p> <p>　　对于符合退/换条件的商品，Panli网将负责运至国内商家，并将修好或更换的商品运回给您。因每个销售商/生产商都有其独特的处理商品质量问题的原则和方式(以商品质量保证卡中所注明的为准)，我们无法保证厂商能完全满足您的要求，但会尽力为您争取利益，让您满意。</p> <p>　　我们提供此代理服务，不收取任何服务费，但您需承担商品的来回运费。我们保留拒绝为不符合质量保证条件的商品代理此服务的权利。</p> <p>　　我们推荐的国内商家是值得信赖的，我们承诺30天内100%退换货(从发货日期至我们收到您的退货商品，以邮戳为准)。</p> <p>　　<strong>发生以下任何情况，我们将不接受您要求退换的商品：</strong></p> <p>　　A. 商品被调换，原貌改变，或者零件丢失；</p> <p>　　B. 被拆封的商品，比如软件包、CD、DVD、卡带等；</p> <p>　　C. 没有原始购买凭证的商品。</p> <p>　　<span style="color:#ff0000;">特别提醒：</span>在易趣、淘宝等诸如此类的网站需谨慎购物，因其存在较多不法商业行为，如有发生，我们则无法为您安排退换货事宜。</p>'),
(81, 1, '商品的保管期限', 0, '商品的保管期限', '商品的保管期限', '　免费保管期为3个月。<p>　　<strong>相关细则：</strong></p> <p>　　保管期限自商品状态显示为“已到Panli”日开始计算。在保管期内由Panli负责对商品进行保管并承担相应责任，但用户代购的商品保质期在保管期内的例外（例如：部分食品保质期只有1个月）。</p> <p>　　免费保管期为3个月，每超过保管期1个月或以内的天数， Panli将收取商品价格10%的保管费。也就是说：超过保管期1个月或以内的天数，收取商品价格10%的保管费，超过2个月或以内的天数，收取商品价格20%的保管费....以此类推。</p> <p>　　商品状态显示为“已到Panli”后超过1年，Panli将放弃保管。</p>'),
(82, 9, '用户须知', 0, '用户须知', '用户须知', '<p>　　1、 服务条款的确认和接纳</p> <p>　　2、 服务介绍</p> <p>　　3、 服务修订</p> <p>　　4、 服务条款的修改</p> <p>　　5、 用户的帐号 / 密码的安全维护</p> <p>　　6、 用户隐私保护规则</p> <p>　　7、 用户管理</p> <p>　　8、 结束服务</p> <p>　　9、 拒绝提供担保</p> <p>　　10、有限责任</p> <p>　　11、“Panli网”注册用户服务信息的储存及限制</p> <p>　　12、利益保障</p> <p>　　13、通告</p> <p>　　14、参与广告策划</p> <p>　　15、邮件内容的所有权</p> <p>　　16、法律</p> <p>　　1、服务条款的确认和接纳</p> <p>　　“Panli网”注册用户服务的所有权和运作权归“上海番丽电子商务服务有限公司”所有。所提供的服务必须按照其发布的公司章程，服务条款和操作规则严格执行。用户在注册过程中点击“提交”按钮时，表示用户与“上海番丽电子商务服务有限公司”已达成协议并接受其所有的服务条款。</p> <p>　　2、服务介绍</p> <p>　　“上海番丽电子商务服务有限公司”通过国际互联网，运用自己的信息和服务为用户提供国际代购服务。用户必须提供详尽，准确，真实，合法有效的个人资料，并在个人资料变更时及时提交。</p> <p>　　用户也可授权“上海番丽电子商务服务有限公司”向第三方透露其基本资料，但本公司对用户的补充资料不予以公开。除非：</p> <p>　　⑴ 用户要求“上海番丽电子商务服务有限公司”或授权某人通过电子邮件服务透露这些信息。</p> <p>　　⑵ 相应的法律规定及程序要求“上海番丽电子商务服务有限公司”提供用户的个人资料。</p> <p>　　如果用户提供的资料不准确，不真实，不合法有效，本公司有权单方面暂停，中断或终止用户使用“Panli网”注册用户服务的权利。</p> <p>　　在享用“Panli网”注册用户服务的同时，同意接受“Panli网”注册用户服务提供的各类信息服务。</p> <p>　　3、服务修订</p> <p>　　“上海番丽电子商务服务有限公司”保留随时修改或中断服务而不需通知用户的权利。“上海番丽电子商务服务有限公司”行使修改或中断服务的权利，不需对用户或第三方负责。</p> <p>　　4、服务条款的修改</p> <p>　　“上海番丽电子商务服务有限公司”会在必要时修改服务条款，“Panli网”注册用户服务条款一旦发生变动，公司将会在用户进入下一步使用前的页面提示修改内容。如果您同意改动，则按“我同意”按钮。如果您不接受，则及时取消您的用户使用服务资格。</p> <p>　　用户要继续使用“Panli网”注册用户服务需要两方面的确认：</p> <p>　　⑴ 首先确认“Panli网”注册用户服务条款及其变动。</p> <p>　　⑵ 同意接受所有的服务条款限制。</p> <p>　　5、用户的帐号 / 密码的安全维护</p> <p>　　您一旦注册成为用户，会得到一个密码和帐号。您将对基于您的用户名和密码发生的所有行为承担法律责任。因此，请您妥善保管你的密码，不要向任何第三方透露，否则，您本人将承担由此引发的一切法律后果。如果发现您的密码可能已经泄漏，请及时更换。 您可随时改变您的密码和信息，也可以结束旧的帐户重开一个新帐户。用户若发现任何非法使用用户帐号或安全漏洞的情况，需立即通告“上海番丽电子商务服务有限公司”。</p> <p>　　6、用户隐私保护规则</p> <p>　　尊重用户个人隐私是“上海番丽电子商务服务有限公司”的一项基本政策。所以，作为对以上第二点个人注册资料分析的补充，“上海番丽电子商务服务有限公司”不会公开、更改或透露用户的补充资料及保存在“Panli网”注册用户服务中的非公开内容，除非有法律许可要求或“上海潘晓商务服务有限公司”在诚信的基础上认为透露这些信息在以下四种情况是必要的：</p> <p>　　⑴ 遵照有关法律规定，遵从“Panli网”注册用户合法服务程序。</p> <p>　　⑵ 保持维护Panli的商标所有权。</p> <p>　　⑶ 在紧急情况下竭力维护用户个人和社会大众的隐私安全。</p> <p>　　⑷ 符合其他相关要求。</p> <p>　　7、用户管理</p> <p>　　用户单独承担发布内容的责任。用户对服务的使用是根据所有适用于网站服务的地方法律、国家法律和国际法律标准的。</p> <p>　　用户必须遵循：</p> <p>　　⑴ 发布信息时必须符合中国有关法律法规。</p> <p>　　⑵ 不利用网络注册用户服务从事非法活动。</p> <p>　　⑶ 不干扰或混乱网络服务。</p> <p>　　⑷ 遵守所有使用网络注册用户服务的网络协议、规定和程序。</p> <p>　　网络注册用户服务是利用因特网发送和收取信息。用户的行为指引是根据国家有关因特网的法规，政策和程序的。用户须承诺不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽等信息资料。另外，用户也不能传输任何教唆他人构成犯罪行为的资料;不能传输助长国内不利条件和涉及国家安全的资料;不能传输任何不符合当地法规、国家法律和国际法律的资料。禁止未经许可非法进入其它电脑系统。若用户的行为不符合以上提到的服务条款，“上海潘晓商务服务有限公司”将作出独立判断并立即取消用户服务帐号。</p> <p>　　用户需对自己在“Panli网”注册用户服务中的行为承担法律责任。用户若在“Panli网”注册用户服务中散布或传播反动、色情或其他违反国家法律的信息，“Panli网”注册用户服务的系统记录有可能作为用户违反法律的证据。</p> <p>　　8、结束服务</p> <p>　　用户或“上海潘晓商务服务有限公司”可随时根据实际情况中断网站服务。“上海番丽电子商务服务有限公司”不需对任何个人或第三方负责而随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对“Panli网”注册用户服务不满，用户可行使以下追索权：</p> <p>　　⑴ 不再使用“Panli网”注册用户服务。</p> <p>　　⑵ 结束用户使用“Panli网”注册用户服务的资格。</p> <p>　　⑶ 通告“上海番丽电子商务服务有限公司”停止该用户的服务。</p> <p>　　结束用户服务后，用户使用“Panli网”注册用户服务的权利马上中止。与此同时，“上海番丽电子商务服务有限公司”不再对用户承担任何责任和义务。</p> <p>　　9、拒绝提供担保</p> <p>　　用户明确同意邮件服务的使用由用户个人承担风险。“上海番丽电子商务服务有限公司”明确表示不提供任何类型的担保，不论是明确的或隐含的，但是对商业性的隐含担保，特定目的和不违反规定的适当担保不予以限制。“上海番丽电子商务服务有限公司”对服务的及时性，安全性，出错发生均不作担保，对信息是否准确，及时，顺利地发送也不提供任何担保。用户理解并接受任何信息资料 ( 下载或通过“Panli网”注册用户服务取得 ) ，取决于用户自己并由其承担系统受损或资料丢失的所有风险和责任。用户不会从“上海番丽电子商务服务有限公司”收到口头或书写的意见或信息，也不会在这里作明确担保。</p> <p>　　10、有限责任</p> <p>　　“上海番丽电子商务服务有限公司”对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用网络会员服务，或非法使用服务用户传送的信息有所变动。这些损害会导致“上海番丽电子商务服务有限公司”形象及荣誉受损，因此“上海番丽电子商务服务有限公司”在此提出这些损害的可能性。</p> <p>　　11、“Panli网”注册用户服务信息的储存及限制</p> <p>　　“上海番丽电子商务服务有限公司”不对用户所发布信息的删除或储存失败负责。“上海番丽电子商务服务有限公司”对信息的传输量不规定上限，但本公司有判定用户的行为是否符合“Panli网”注册用户服务条款要求和精神的保留权利，如果用户违反了服务条款的规定，则中断其网络注册用户服务的帐号。本网站所有的内容版权归“Panli网”所有，任何人需要转载网站内内容，必须征得“Panli网”授权。</p> <p>　　12、利益保障</p> <p>　　用户同意保障和维护“Panli网”全体成员的利益，负责支付由用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号和其它知识产权的追索费。</p> <p>　　13、通告</p> <p>　　所有发给用户的通告都可通过电子邮件或常规的信件传送。“Panli网”会通过邮件服务发报消息给用户，告知服务条款的修改、服务变更、或其它重要事情。</p> <p>　　14、参与广告策划</p> <p>　　用户可在他们发表的信息中加入宣传资料或参与广告策划，在“Panli网”注册用户服务上展示他们的产品。任何此类促销方法，包括运输货物、付款、服务、商业条件、担保及与广告有关的描述都只是在相应的用户和广告销售商之间发生。“Panli网”不承担任何责任，“Panli网”注册用户服务对此类广告销售不负任何一部分的责任。</p> <p>　　15、邮件内容的所有权</p> <p>　　用户定义的内容包括：文字、软件、声音、图片、录像、图表；在广告中全部内容；电子邮件的全部内容；“Panli网”注册用户服务为用户提供的商业信息。所有这些内容均受版权、商标、标签和其它财产所有权法律的保护。用户只能在“Panli网”和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。</p> <p>　　16、法律</p> <p>　　邮件服务条款要与该国的国家法律解析一致，包括法律条款中有争议抵触的内容。用户和“Panli网”一致同意服从高等法院所有管辖。若有任何服务条款与法律相抵触，这些条款将按尽可能接近的方法重新解析，其它条款对用户保持原有的法律效力和影响。</p>'),
(83, 4, '建议选择', 50, '建议', '建议', '建议选择EMS'),
(84, 4, '建议选择', 50, '建议', '建议', 'text/javaｓｃｒｉｐｔtext/javaｓｃｒｉｐｔ<br />'),
(85, 8, '我想用电子优惠券抵扣服务费，有什么限制吗？', 50, '电子优惠券', '电子优惠券抵扣服务费，有什么限制', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电子优惠券的兑换额度有会员级别的限制：<p>　　普通会员只可兑换5元面值的券；</p> <p>　　金卡会员可兑换5元和10元两种面值的券；</p> <p>　　白金卡会员可兑换5元、10元和20元三种面值的券；</p> <p>　　钻石卡会员可兑换任意面值的券。</p> <p>　　另外，在提交运单的时候您可以使用电子优惠券进行服务费的抵扣。一份运单只可以使用一张电子优惠券。</p>'),
(86, 8, '电子优惠券怎么使用？', 50, '电子优惠券', '电子优惠券使用', '<div class="content"> <p>电子优惠券有4种面值：5元、10元、20元和50元。</p> <p>积分兑换的电子优惠券有效期为30天，自兑换后开始计算。</p> <p>在提交运单时，您可以使用帐户已有的电子优惠券来抵扣服务费；一份运单只可使用一张电子优惠券；当服务费的金额小于优惠券的面额时，多余金额不予退还。</p> </div>'),
(87, 8, '我如何获得电子优惠券？', 50, '电子优惠券', '获得电子优惠券', '<p style="padding-left:30px;text-align:left;">电子优惠券可以通过积分兑换来获取，或者通过活动 的方式进行发放。</p> <p style="padding-left:30px;text-align:left;">电子优惠券有4种面值：5元、10元、20元和 50元。</p> <p style="padding-left:30px;" align="left">&nbsp;</p> <p style="padding-left:30px;" align="left">1、积分兑换</p> <p style="padding-left:60px;" align="left">电子优惠券的有效期为30天，自兑换后开始计算。</p> <p style="padding-left:60px;" align="left">积分与电子优惠券的兑换比例为100:1。</p> <p style="padding-left:60px;">普通会员只可兑换5元面值的电子优惠券；</p> <p style="padding-left:60px;">金卡会员可以兑换5元和10元两种面值的电子优惠券；</p> <p style="padding-left:60px;">白金卡会员可以兑换5元、10元和20元三种面值的电子优惠券；</p> <p style="padding-left:60px;">钻石卡会员可兑换任意面值的电子优惠券。</p> <p style="padding-left:30px;" align="left">&nbsp;</p> <p style="padding-left:30px;" align="left">2、活动发放</p> <p style="padding-left:60px;" align="left">Panli网会不定期举办各种活动，电子优惠券会作为奖品之 一进行发放。</p> <p style="padding-left:30px;" align="left">&nbsp;</p> 此外，无论您手头拥有的电子优惠券面值为多少，都可以用来抵 扣服务费，但每次只可使用1张'),
(88, 8, '我不小心把积分换成电子优惠券了，还可以换回积分吗？', 50, '电子优惠券', '电子优惠券换回积分', '<p>很抱歉，积分兑换成电子优惠券后不可以还原为积分，电子优惠券将用于抵扣服务费，如果您不需要电子</p> <p>优惠券还可以转售，转售页面：http://ewen.com/m.php?name=coupon&amp;action=sell</p>'),
(89, 8, '我如何获得积分？', 50, '如何获得积分', '如何获得积分', '<div class="content"> <p><strong>您可以通过以下几种方式获得积分：</strong></p> <p>1、 注册成为Panli会员即可获得200积分。</p> <p>2、 购买商品：获得等于商品售价的积分值，即消费1元可获得1积分；VIP会员购物时，将额外获得相应级别的级别赠分。只有当您确认收货了之后，对应的积分才 会真正加入到您的积分帐户里。</p> <p>3、 身份证件认证通过可获得200积分（仅可一次）：把您充值时提供的相关证件拍下来，把照片发送e-mail到我们的客服信箱: <a href="mailto:SERVICE-ID@PANLI.COM">SERVICE-ID@PANLI.COM</a> 核实后会为您手动增加200积分；支付卡认证通过可获得200积分（仅可一次）；身份证件与支付卡认证都通过，可额外获得300积分。</p> <p>4、 选择线下汇款方式充值：汇款1元获得1积分。</p> <p>5、 参与网站活动：Panli网将不定期举办积分奖励活动，会员可以参加活动获得积分。</p> <p>6、 发起团购：</p> <p>　　团购成功后，团长可获得本次团购第一优惠档所对应积分。</p> <p>　　举例：</p> <p>　　1)某个团购，第一优惠档为满500元9折，第二优惠档为满1000元8折，若团购成功，团长可获得500点积分。</p> <p>　　2)若优惠档以件数作为标准，则奖励积分会以件数乘以商品原价，折算后再赠送给团长。</p> <p>&nbsp;</p> <p><span style="color:#ff0000;">　　注意：</span></p> <p>1、 不可以兑换现金。</p> <p><span>2、 不可以转让。</span></p> </div>'),
(90, 8, '我如何成为VIP会员？', 50, '如何成为VIP会员', '如何成为VIP会员', 'VIP会员分为3个级别：金卡会员、白金卡会员和钻石卡会员。<p>　　<strong>1、金卡会员的晋级标准</strong>：在90天内，至少提交1个运单，且购买商品总金额大于等于1000元人民币。只有当 您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p> <p>　　<strong>2、白金卡会员的晋级标准</strong>：在90天内，至少提交2个运单，且购买商品总金额大于等于2000元人民币。只 有当您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p> <p>　　<strong>3、钻石卡会员的晋级标准</strong>：在90天内，至少提交3个运单，且购买商品总金额大于等于3000元人民币。只 有当您确认收货了之后，对应的积分才会真正加入到您的积分帐户里。</p>'),
(91, 8, '我不想要积分和电子优惠券，怎么处理？', 50, '电子优惠券', '不想要积分和电子优惠券怎么处理', '<div class="content"> <p>　　如果不想要积分，您可以在“我的Panli”中将积分兑换成电子优惠券，用于抵扣服务费；</p> <p>　　如果不想要电子优惠券，您可以将电子优惠券转售给别人。</p> <p>　　转售页面：http://ewen.com/m.php?name=coupon&amp;action=sell<a href="http://www.panli.com/Coupon/Default.aspx"></a></p> </div>'),
(92, 1, '如何代购', 0, '代购', '代购就是', '代购就是&nbsp; 。。。。');

-- --------------------------------------------------------

--
-- 表的结构 `dg_atype`
--

CREATE TABLE IF NOT EXISTS `dg_atype` (
  `typeid` smallint(5) NOT NULL auto_increment,
  `typename` varchar(255) default '',
  `node` smallint(5) default NULL,
  `listorder` int(10) default '50',
  PRIMARY KEY  (`typeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `dg_atype`
--

INSERT INTO `dg_atype` (`typeid`, `typename`, `node`, `listorder`) VALUES
(1, '新手上路', 0, 0),
(2, '操作指南', 0, 50),
(3, '支付说明', 0, 50),
(4, '配送说明', 0, 50),
(5, '帐户管理', 0, 50),
(6, '代拍说明', 0, 50),
(7, '售后服务', 0, 50),
(8, '会员等级及积分规则', 0, 50),
(9, '常见问题', 0, 50),
(10, '新手常见问题', 9, 50),
(12, '售后常见问题', 9, 50),
(13, '充值和退款常见问题', 9, 50),
(14, '关于会员等级和积分规则', 9, 50),
(17, '拼单购中常见问题', 9, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dg_bankaccount`
--

CREATE TABLE IF NOT EXISTS `dg_bankaccount` (
  `bid` int(11) NOT NULL auto_increment,
  `currency` char(5) NOT NULL,
  `account` varchar(200) NOT NULL,
  `accountname` varchar(50) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `bankname` varchar(200) NOT NULL,
  PRIMARY KEY  (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_cart`
--

CREATE TABLE IF NOT EXISTS `dg_cart` (
  `gid` int(11) NOT NULL auto_increment,
  `anonymous` varchar(50) NOT NULL default '',
  `uid` int(11) NOT NULL default '0',
  `uname` varchar(50) default NULL,
  `goodsurl` varchar(255) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsprice` float(10,2) NOT NULL default '0.00',
  `sendprice` float(10,2) NOT NULL default '0.00',
  `goodsnum` int(10) NOT NULL default '1',
  `goodsimg` varchar(255) default NULL,
  `goodssize` varchar(20) default NULL,
  `goodscolor` varchar(20) default NULL,
  `goodsseller` varchar(50) NOT NULL default '',
  `sellerurl` varchar(255) default '',
  `goodssite` varchar(50) default '淘宝网',
  `siteurl` varchar(255) default 'http://www.taobao.com',
  `expressno` varchar(50) default '' COMMENT '快递单号',
  `type` smallint(5) default '1' COMMENT '1代购2代发货',
  `goodsremark` varchar(255) default NULL,
  `addtime` int(11) default NULL,
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=431 ;

--
-- 转存表中的数据 `dg_cart`
--

INSERT INTO `dg_cart` (`gid`, `anonymous`, `uid`, `uname`, `goodsurl`, `goodsname`, `goodsprice`, `sendprice`, `goodsnum`, `goodsimg`, `goodssize`, `goodscolor`, `goodsseller`, `sellerurl`, `goodssite`, `siteurl`, `expressno`, `type`, `goodsremark`, `addtime`) VALUES
(392, '', 137, 'rainwei1', 'http://item.taobao.com/item.htm?id=10976624940', '2011年夏装韩版短袖小外套 花边短外套棉质小披肩小坎肩', 13.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1EUiiXcdkXXbDEKET_011451.jpg_310x310.jpg', '均码', '白色', '淑女靓衣装', 'http://shop67686949.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '品', 1315539368),
(390, '', 137, 'rainwei1', 'http://item.taobao.com/item.htm?id=12444367769', '【壹宝宝】大码！GAP', 38.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1rbikXXxvXXcjuPQ7_065308.jpg_310x310.jpg', '18', '黑色', 'wuyu76', 'http://51hayi.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '品', 1315539220),
(391, '', 137, 'rainwei1', 'http://item.taobao.com/item.htm?id=12660262806', '【壹宝宝】抢货！Next原单 珊瑚绒夹棉哈衣 婴儿棉袄 棉服 棉衣', 128.00, 10.00, 2, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1hDimXo4lXXc9aYA._081406.jpg_310x310.jpg', '80', '蓝色', 'wuyu76', 'http://51hayi.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '无', 1315539296),
(30, 'GXXlLCNAWmnuCYe3urKP32JBp_BDTH-H6QN0Jg..', 0, '', 'http://item.taobao.com/item.htm?id=4770192509', 'A3002 好评 回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', 16.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mu4HXg8qXXc4MOI3_050416.jpg_310x310.jpg', '', '', '美然阁', 'http://meirange.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1282551858),
(74, 'B4MiZHb70NKH7CRT_sfHZcyXKvrVaHfn', 0, NULL, 'http://item.taobao.com/item.htm?id=6847336085', '淘品牌白领丽人 牛巴戈牛皮羊毛皮毛一体平跟雪地短靴BL7719', 498.00, 20.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1SiJWXlNcXXaAySPb_095241.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1295075496),
(73, '4w71AkRaIcL3xgr9KCVcazHQhssKLEtP', 3, 'lss', 'http://item.taobao.com/item.htm?id=8155369085&cm_cat=50015929', '千足金转运珠红水晶本命年红绳开运手链新年情人节女友生日礼物C', 136.00, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T13fVRXkVkXXcBC9M8_101617.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1295065798),
(72, '4w71AkRaIcL3xgr9KCVcazHQhssKLEtP', 3, 'lss', 'http://item.taobao.com/item.htm?id=8155369085&cm_cat=50015929', '千足金转运珠红水晶本命年红绳开运手链新年情人节女友生日礼物C', 136.00, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T13fVRXkVkXXcBC9M8_101617.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1295065783),
(76, 'IVix7rP3jDo3NOgBTFnaRpgZSAJ-PrpJ', 49, 'xiaozhang123', 'http://item.taobao.com/item.htm?id=9977243366&prc=1&source=dou&cm_cat=30', 'JeanJack新款春装2011品质男装立领休闲薄外套夹克K001', 278.00, 20.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1x988XdFgXXXJ_DoU_015820.jpg_310x310.jpg', '25', '灰色', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '灰色衣服', 1305887543),
(77, 'IVix7rP3jDo3NOgBTFnaRpgZSAJ-PrpJ', 49, 'xiaozhang123', 'http://item.taobao.com/item.htm?id=9977243366&prc=1&source=dou&cm_cat=30', 'JeanJack新款春装2011品质男装立领休闲薄外套夹克K001', 278.00, 20.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1x988XdFgXXXJ_DoU_015820.jpg_310x310.jpg', '25', '灰色', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1305887562),
(78, '7CpinSbXSIOlZuZHgxtmd8g6QX_Qzwwb', 0, NULL, 'http://item.taobao.com/item.htm?id=5634556187&source=dou&prc=2&cm_cat=50010218', '三乐豪华婴儿推车/童车/手推车/可平躺/超宽婴儿车406 打折中', 230.00, 20.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1cEKXXeBqXXbV47s2_044707.jpg_310x310.jpg', '45', '灰色', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '灰色', 1305967078),
(79, '7CpinSbXSIOlZuZHgxtmd8g6QX_Qzwwb', 0, NULL, 'http://item.taobao.com/item.htm?id=5634556187&source=dou&prc=2&cm_cat=50010218', '三乐豪华婴儿推车/童车/手推车/可平躺/超宽婴儿车406 打折中', 230.00, 20.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1cEKXXeBqXXbV47s2_044707.jpg_310x310.jpg', '45', '灰色', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '灰色', 1305967162),
(280, '', 104, 'hellotiger', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', 98.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313477982),
(82, '43SefZA-1wsz4KrzpsCAqBG_LKAMsYEC8g6_TQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=9483882358&cm_cat=50015928&pm2=1', '【淘金币】保平安玉佛 假一罚十 配证书 翡翠玉器玉佩玉吊坠', 399.00, 20.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T15TuXXoVqXXc1PeIV_020340.jpg_310x310.jpg', '', '', '香港比西商城', 'http://bxicom.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1306834013),
(83, 'SE7mU8B4t0DQhvpwNVpFIoSMWjcpX6ggzDerdg..', 0, NULL, 'http://item.taobao.com/item.htm?id=9321871401&prc=1', '2011新款商城正品kakatree LB029 蝴蝶结圆点女童单鞋凉鞋', 99.00, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1YXKaXfpxXXXP_p3W_022400.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1306834209),
(89, 'kX2MUoNS1A-ULJE4tmXyh-mxHBkz4KS3', 0, NULL, 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正的酸角美食20克 店庆促销10送1 ', 0.99, 20.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i8/T171dHXettXXbJZ7za_092025.jpg_310x310.jpg', '', '', 'yemmey', 'http://rate.taobao.com/user-rate-121f75bdd2dad582a3568a37d35dcc89.htm', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1308215021),
(93, '', 50, 'aaa', 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正的酸角美食20克 店庆促销10送1 ', 0.99, 20.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i8/T171dHXettXXbJZ7za_092025.jpg_310x310.jpg', '', '', 'yemmey', 'http://rate.taobao.com/user-rate-121f75bdd2dad582a3568a37d35dcc89.htm', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1308796583),
(94, 'Fw3p5KqyuyNwuYkIIHtys3HFjy-KwjDMOEkOGA..', 50, 'aaa', 'http://item.taobao.com/item.htm?id=10493161261', '兰博基尼 蝙蝠Murcielago 汽车 9.9成新 不支持货到付款 非诚勿扰', 100000000.00, 20.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1aqydXi0hXXbJTeQ9_103237.jpg_310x310.jpg', '', '', 'xuduo456', 'http://shop61203347.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1308986848),
(95, '', 50, 'aaa', 'http://item.taobao.com/item.htm?id=10493161261', '兰博基尼 蝙蝠Murcielago 汽车 9.9成新 不支持货到付款 非诚勿扰', 100000000.00, 20.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1aqydXi0hXXbJTeQ9_103237.jpg_310x310.jpg', '', '', 'xuduo456', 'http://shop61203347.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1308987228),
(96, '', 50, 'aaa', 'http://item.taobao.com/item.htm?id=10493161261', '兰博基尼 蝙蝠Murcielago 汽车 9.9成新 不支持货到付款 非诚勿扰', 100000000.00, 20.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1aqydXi0hXXbJTeQ9_103237.jpg_310x310.jpg', '', '', 'xuduo456', 'http://shop61203347.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1308987269),
(98, '_NEseIBZTsWcRhMHbUhZv48K8LwMyjGHcus-hw..', 0, NULL, 'http://item.taobao.com/item.htm?id=10722453526&', '【淘金币】缪诗 正品 恋爱季节 棉质舒适聚拢文胸 买衣送裤', 79.00, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1VfegXcxvXXbdSITa_120441.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309021705),
(99, 'uuUQWpIuU11J1gxWka_KqhmaDF1RRvR1EyWAw-wAW0c.', 0, NULL, 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正的酸角美食20克 店庆促销10送1', 0.99, 20.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i8/T171dHXettXXbJZ7za_092025.jpg_310x310.jpg', '', '', 'yemmey', 'http://shop36255505.taobao.com ', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309093291),
(100, 'uuUQWpIuU11J1gxWka_KqhmaDF1RRvR1EyWAw-wAW0c.', 0, NULL, 'http://item.taobao.com/item.htm?id=4770192509', '好评+回头客=推荐 碳香烤章鱼足片（特级） 海鲜鱿鱼足片', 16.00, 20.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mu4HXg8qXXc4MOI3_050416.jpg_310x310.jpg', '', '', '美然阁', 'http://meirange.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309093314),
(125, '017kSXTqCXc2pYCPuAC6uSV37y6UhkOkbz7ONQ..', 0, NULL, 'http://www.amazon.cn/gp/product/B003ZYE3C4/ref=s9_simh_gw_p107_d0_i2?pf_rd_m=A1AJ19PSB66TGU&pf_rd_s=center-1&pf_rd_r=0DE1V7H37PW8Z5JG29C7&pf_rd_t=101&pf_rd_p=58840952&pf_rd_i=899254051', '123', 123123.00, 10.00, 1, '', '', '', 'www.amazon.cn', 'http://www.amazon.cn', '卓越', 'www.amazon.cn', '', 1, '请选填颜色、尺寸等要求！', 1309421098),
(116, 'wUrcqMzGygMhpkaNxtKEGrrf76ucOMyB_GWAj1jIXjw.', 0, NULL, 'http://item.taobao.com/item.htm?id=10567928147&ad_id=&am_id=&cm_id=&pm_id=', 'Ochirly欧时力2011夏季新彩蓝色碎花圆领拼撞连衣裙1112082730', 769.00, 20.00, 60, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1xAudXf0uXXcQf1kT_011418.jpg_310x310.jpg', '23', 'Blue', 'null', '', '淘宝网', 'www.taobao.com', '', 1, 'aa', 1309322745),
(124, '017kSXTqCXc2pYCPuAC6uSV37y6UhkOkbz7ONQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=9468688846&ali_refid=a3_620362_1007:1103206163:7:46702465U84y78608587678s868v3I:f6f7f15ed0598fa154c415f74332c972&ali_trackid=1_f6f7f15ed0598fa154c415f74332c972', '2011夏季3折新款CBT户外鞋四季旅游徒步鞋真皮休闲鞋透气鞋男包邮', 700.00, 20.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1ROGfXXltXXbQSDzb_095340.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309419718),
(122, '017kSXTqCXc2pYCPuAC6uSV37y6UhkOkbz7ONQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=8944635077&prc=1&is_b=1', '楼上楼 典雅 天然蓝宝石1.970克拉梨形镶嵌吊坠00192699', 1790.00, 20.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1rNucXdxeXXaRqMM4_052810.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309414973),
(123, '017kSXTqCXc2pYCPuAC6uSV37y6UhkOkbz7ONQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=9468688846&ali_refid=a3_620362_1007:1103206163:7:46702465U84y78608587678s868v3I:59e5148912270f5d0e5f52597d8a1136&ali_trackid=1_59e5148912270f5d0e5f52597d8a1136', '2011夏季3折新款CBT户外鞋四季旅游徒步鞋真皮休闲鞋透气鞋男包邮', 700.00, 20.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1ROGfXXltXXbQSDzb_095340.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309415060),
(126, '', 58, 'fffggg', 'http://item.taobao.com/item.htm?id=10722453526&', '【淘金币】缪诗 正品 恋爱季节 棉质舒适聚拢文胸 买衣送裤', 79.00, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1VfegXcxvXXbdSITa_120441.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', 'cvvvvvvvvvvvv', 2, '请选填颜色、尺寸等要求！', 1309432043),
(141, '', 60, 'ceshi1', 'http://item.taobao.com/item.htm?id=9854411763', '买5送1大牌原单复古袜彩色堆堆袜全棉短袜/中筒女袜子vivi推荐', 5.60, 0.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1dHX7XXpbXXXroysZ_032627.jpg_310x310.jpg', '', '', 'bluefish323', 'http://bluefish323.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309619186),
(173, '', 65, 'wanglijun', 'http://item.taobao.com/item.htm?id=9789957352&ali_refid=a3_420434_1006:1102233588:6:%CB%AE%BE%A7+%CA%D6%C1%B4:b970a3226568d5f4924e1a073fe66321&ali_trackid=1_b970a3226568d5f4924e1a073fe66321', '五冠慈风阁风水 开光招财旺运纳福绿幽灵聚宝盆水晶吉祥手珠/手链', 358.00, 0.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1oXScXoNnXXXEMJo5_055315.jpg_310x310.jpg', '', '', '慈善基金会之一风水', 'http://shop33769088.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309936169),
(136, '40sl_fvUsa1QgobUfZuKLBOn6MOgNdYfZQ9fW78sAdE.', 0, NULL, 'http://item.taobao.com/item.htm?id=6985102347&', '盘发必备U型夹 专业固定 盘发叉 盘发梳 适用前刘海盘发 2个装', 2.00, 0.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i8/T1d0XIXltkXXXXmjE8_100920.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309578778),
(137, 'Lhc845xltxyfMMc3PGtWuC2owLUbEH_W4wbhDA..', 0, NULL, 'http://item.taobao.com/item.htm?id=10866546971', '创意极品★爱情滋味烟灰缸', 15.00, 0.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i8/T1hJSiXdhrXXbT1HYa_120326.jpg_310x310.jpg', '', '', '小魔法精灵', 'http://mmmppp.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309582009),
(134, 'I2QG0_ec5wTqjBw8hBVsrOBZeaPBGTtfKCj68v0k_w4.', 0, NULL, 'http://item.taobao.com/item.htm?id=6985031503&', '女人我最大推荐 瘦大腿瘦小腿刺激按摩滾輪器 瘦腿器 瘦腿滚轮', 4.00, 0.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T18adEXeNgXXavRj_X_115728.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309577790),
(178, 'ZmARHFuE9VxEKY4vFzpQe_mj6tTjN2gJ6dfPhgKr0Dk.', 69, 'myoutman', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', 98.00, 0.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1310054963),
(402, '', 139, 'test123', 'http://item.taobao.com/item.htm?id=4677945146', '新姿奇2011新品韩版黑色性感一字领抹胸公主 蕾丝花边 雪纺连衣裙', 65.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1cpJvXeNyXXXbPmPb_095239.jpg_310x310.jpg', '', '', '新姿奇旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '我对此商品无任何特殊备注。', 1315981047),
(144, 'mPygeUQINe6Mv46pl23aDil-anFvqbMmL5Rrjw..', 0, NULL, 'http://item.taobao.com/item.htm?id=10589134796&', '调整型文胸 聚拢缪诗蝴蝶兰蕾丝刺绣超聚拢调整型文胸 性感胸罩', 69.00, 0.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1rXqhXapjXXaRJWAZ_031327.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309664744),
(145, 'BoEYTpxbmG54U8R4-mfQx1RwRtFGsihxNllRQA_RNNI.', 0, NULL, 'http://item.taobao.com/item.htm?id=10022658980&', '缪诗 专柜正品 郁金香刺绣玫瑰精油按摩聚拢调整型光面无痕文胸', 0.00, 0.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i6/T1lGtQXkNXXXa6LfM9_073352.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309676085),
(146, '', 62, 'abcdef', 'http://item.taobao.com/item.htm?id=9579257035&prc=1&source=dou&cm_cat=50019372&_u=37nb30o335b', '衣品天成 清凉汗衫 数字T 字母t 休闲短袖T恤 男 1104156', 88.00, 0.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mIp3XoJBXXcFv6IW_024220.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, 'asdf', 1309691783),
(148, 'DxpSBE6QqzGuxErbgDsXFHL-feU3BmTXZlhvoQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=9680356919&cm_cat=50019372', '2011夏装新款 男士男装韩版修身百搭撞色拼接短袖t恤 Y35', 39.00, 10.00, 2, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1PsefXiFqXXaqZlZ1_042245.jpg_310x310.jpg', '10', 'hei', 'yemaomao198', 'http://549710.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309749134),
(149, '7O0dxjcNZ0_PpiBsNZ2PbpENpUJ5aGrBRzgTrfZgMwY.', 0, NULL, 'http://item.taobao.com/item.htm?id=10022686104&', '缪诗星语心愿超聚拢收副乳型调整文胸AB杯', 69.00, 0.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1f7ugXh0lXXXxdCk3_050856.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309749145),
(348, 'RdXqKWddgc7ZPFHBSVeSpKcNeAkuoCyFd4kudul4hPU.', 0, NULL, 'http://item.taobao.com/item.htm?id=9367111716&cm_cat=50010158', '2011新款JEEP 男士中长款纯棉休闲夹克 外套2106', 258.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1vh0.XlxCXXbnhzU._113050.jpg_310x310.jpg', '', '', 'maming870704', 'http://shop61804624.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314636170),
(152, 'gVwaRMR3hfOV-d_A8mFxBlJMkzihcJn1BHnTZg..', 0, NULL, 'http://item.taobao.com/item.htm?id=9579257035&cm_cat=50019372&source=dou', '[商城夏季大促]特价39包邮 衣品天成休闲短袖T恤 男 1104156', 88.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mIp3XoJBXXcFv6IW_024220.jpg_310x310.jpg', '', 'blue', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309759461),
(153, '', 64, 'cyj211314', 'http://item.taobao.com/item.htm?id=1071264425', '包邮双冠施华洛世奇专柜正品SWAROVSKI泰迪熊项链水晶小熊878446', 338.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1rBdZXmRyXXcAs3fa_121157.jpg_310x310.jpg', '', '', '山子小屋', 'http://shanzixiaowu.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '0', 1309760584),
(154, 'hz-XW3UgeocgepKYO-7dg_KeyGtDBDzDlD365bKOLtM.', 0, NULL, 'http://item.taobao.com/item.htm?id=9788618754&cm_cat=50019370', '男士polo衫 2011新款夏季休闲双珠地纯棉男士短袖POLO衫 男装纯色', 99.00, 0.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1V85cXmppXXc5mswW_023006.jpg_310x310.jpg', '', '', 'cmc99330', 'http://cmc99330.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309764446),
(165, 'VNFdpusZNww0ILlSd8W7CSI_tMjOMQbDJeD77pPsk0E.', 0, NULL, 'http://item.taobao.com/item.htm?id=3397472098', '淘宝网 ', 0.00, 10.00, 1, 'null', '34', '2', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309825913),
(164, 'VNFdpusZNww0ILlSd8W7CSI_tMjOMQbDJeD77pPsk0E.', 0, NULL, 'http://item.taobao.com/item.htm?id=10767240434&', '缪诗 正品 亮彩红蕴 时尚民族风分体式泳衣两件套', 129.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i5/T1JmKfXd8vXXc_Sq79_102454.jpg_310x310.jpg', 'a', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '10', 2, '请选填颜色、尺寸等要求！', 1309825067),
(168, 'JHfRC117VCoXmubf2fo-chRJQJeenqXtHtyGgezXztY.', 0, NULL, 'http://item.taobao.com/item.htm?id=10759995600&', '缪诗 正品 豹纹部落 豹纹印花系带绕脖调整型超聚拢文胸 买上送下', 168.00, 0.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1_FCiXhpXXXXy99E3_051218.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309857705),
(159, 'gVwaRMR3hfOV-d_A8mFxBlJMkzihcJn1BHnTZg..', 0, NULL, 'http://item.taobao.com/item.htm?id=9477042236&cm_cat=50006843&pm2=1', '2010秋冬Crocs经典款 Lydia 莉迪亚 显瘦高跟鞋坡跟凉鞋 四季可穿', 95.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1.IaiXbBhXXa9C02X_114643.jpg_310x310.jpg', '30', 'pink ', 'tj2597758', 'http://ai503.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309774777),
(219, 'Y6SNbeuTPGfe-2y_QImIviYAqbgtEBFan8wq9g..', 0, NULL, 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', 27.80, 20.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '', '', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311780621),
(175, 'GjcHHABlAKQU1qmTPBlNyn39WHaj5cP_tsGimQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=10022686104&', '缪诗星语心愿超聚拢收副乳型调整文胸AB杯', 69.00, 0.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1f7ugXh0lXXXxdCk3_050856.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1309941368),
(177, 'sa4HuJ2QTn8g4GAqUFWZQuQPnV4jmFaeU2un7lJ39ss.', 0, NULL, 'http://item.taobao.com/item.htm?id=8650747427&', '【冲冠促销】火爆热销夏日最新款蓬发造型道具5件套', 3.00, 0.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T17xlTXglkXXcKxrjX_114313.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1310039435),
(179, 'tWt-OWhGFi9TM_eH4adU3tt5YBrCsJihvjVYFQ..', 0, NULL, 'http://configure.us.dell.com/dellstore/config.aspx?oc=DKMAMT1&c=us&l=en&s=dhs&cs=19&ACD=10550055-1260291-d2b.Y6B5EMKD77KZ8YXCNXZU22WYVS&AID=1260291', 'degg', 4140.00, 10.00, 1, '', '', '', 'configure.us.dell.com', 'http://configure.us.dell.com', '其他网站', '###', '', 1, '请选填颜色、尺寸等要求！', 1310101928),
(180, 'ywnC6VRBE25zrCnkF6s47KRpx9RBcfT_GP3vQQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=9815523028&ali_refid=a3_420630_1006:1102610855:6:%C4%DA%D2%C2:c79f0ab1c5fff972890b80e818cff9e0&ali_trackid=1_c79f0ab1c5fff972890b80e818cff9e0', 'null', 0.00, 0.00, 1, 'null', '70c薄杯', '粉色', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '我对此商品无任何特殊备注。', 1310183658),
(181, 'hz-XW3UgeocgepKYO-7dg_KeyGtDBDzDlD365bKOLtM.', 0, NULL, 'http://item.taobao.com/item.htm?id=9446729764&ali_refid=a3_619362_1007:1102176260:7:46702465U84y78608587678s868v3I:86b943341260abc51a8c5853c0f14255&ali_trackid=1_86b943341260abc51a8c5853c0f14255', 'null', 0.00, 0.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1310205015),
(213, 'A719EGBYCYIk0WELh6PptaEIZgz4WbODv9eJdrYg2wQ.', 0, NULL, 'http://item.taobao.com/item.htm?id=7768492676&cm_cat=50018909', '原装 苹果耳机 正品 mp3 mp4 mp5  电脑 iPod 通用 耳塞式 耳机', 25.00, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1LVqhXfBoXXceCwLb_123858.jpg_310x310.jpg', '', '', 'emily百宝袋', 'http://00010.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311403800),
(184, '7sddzjDIVQddp3ClZLR--4dRaqrBaxCV91_0mQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=8650747427&', 'null', 0.00, 0.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1310304555),
(185, '', 70, 'sbby545', 'http://item.taobao.com/item.htm?id=4140582806', 'null', 0.00, 0.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1310357476),
(192, 'pES5L3-caKAbcIdlhE2Ut5H0EqwW66xgoOIiNQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=10057330273&cm_cat=50011123', '2U良品 夏季新款全棉时尚短袖格子衬衫短袖衬衫男衬衫8082151505 ', 48.00, 12.00, 1, '', 'm', '', 'item.taobao.com', 'http://item.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1310489750),
(191, 'pES5L3-caKAbcIdlhE2Ut5H0EqwW66xgoOIiNQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=10057330273&cm_cat=50011123', '2U良品 夏季新款全棉时尚短袖格子衬衫短袖衬衫男衬衫8082151505 ', 48.00, 12.00, 1, '', 'm', '', 'item.taobao.com', 'http://item.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1310489746),
(193, 'cDpP9NvkkPOdNRBhQtJHdNXB5AM3Gg9TEViGX9JLm6k.', 0, NULL, 'http://item.taobao.com/item.htm?id=10613256520&', 'null', 0.00, 0.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1310523404),
(194, 'D_F7o_hltIufccdsuPopPjXCU2kuSaj-05NU9w..', 0, NULL, 'http://item.taobao.com/item.htm?id=10008349082&', 'null', 0.00, 0.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1310615876),
(199, '', 77, '入土核桃肉g', 'http://item.taobao.com/item.htm?id=10759995600&', 'null', 0.00, 1.11, 11, 'null', '1111111111111', '111111111111111', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1310798071),
(198, '', 77, '入土核桃肉g', 'http://item.taobao.com/item.htm?id=10759995600&', 'null', 0.00, 11111.00, 111, 'null', '11', '1', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '1', 1310798051),
(200, 'GfSn9Y5gQGQlM8ncx3FedLu2qhRToMad0ovxyQ..', 0, NULL, 'http://www.3dbuy.com.cn/shop_detail.php?aid=133875', 'wy', 122.00, 10.00, 1, '', 'y', 'wy', 'www.3dbuy.com.cn', 'http://www.3dbuy.com.cn', '其他网站', '###', '', 1, 'wy', 1311043855),
(201, '5IWFMRfXf2fgmfzJi8XVkGuDIlDrCwyvUcsxYI2zwlc.', 0, NULL, 'http://item.taobao.com/item.htm?id=10767240434&', 'null', 0.00, 0.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311144615),
(202, 'pzcbJCYipgGQppPOR1L8KsG0vgQ9Ie9uZOKzmkAoC-I.', 80, 'brantx', 'http://daigou.dayusheji.com/recommend.php?action=view&gid=68', 'asdfasd', 100.00, 10.00, 10, '', '12', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '其他网站', '###', '', 1, '请选填颜色、尺寸等要求！', 1311254417),
(203, 'crV9zIkxKoZdeYio9w_DR8Lu15i8-YG6JTzfWA..', 0, NULL, 'http://daigou.dayusheji.com/shop.php?action=view&gid=26', '【稀奇】百度上查不到的特产藤蔑果野生果子回甘爽口180g', 6.00, 0.00, 1, 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', 1, '请选填颜色、尺寸等要求！', 1311303754),
(204, 'AYVXxDBvbROOpU-yp0eBZSsMm-OBB19LsPSd_AfBg-c.', 81, 'harryQ', 'http://item.taobao.com/item.htm?id=3293412392', '低价 日本原装 参天制药santen', 29.50, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T12ApyXg0aXXXE1hsU_015050.jpg_310x310.jpg', '', '', '9星商城', 'http://shop59101799.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311307417),
(207, '', 69, 'myoutman', 'http://item.taobao.com/item.htm?id=10489701717', '夏季新款九牧王JOEONE专柜正品 2款男裤时尚商务无褶休闲西裤', 379.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1etujXX8uXXaie.o4_054356.jpg_310x310.jpg', '', '', '九牧王官方旗舰', '', '淘宝网', 'www.taobao.com', '', 1, 'gfdg', 1311325841),
(208, 'wbmYJ0Hs6YCUANIN8UEdqhpwzD1vTu5nmhmgGw..', 0, NULL, 'http://item.taobao.com/item.htm?id=9921403307&ali_refid=a3_419252_1006:1102682080:6:%C1%B9%D0%AC:baee34a140cea37808715b51c745b49b&ali_trackid=1_baee34a140cea37808715b51c745b49b', '特价！CAMEL骆驼 凉鞋 男鞋 沙滩鞋拖鞋 正品2011新款 1290475', 248.00, 12.00, 3, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1.jJ5XkVjXXaaewYa_121247.jpg_310x310.jpg', '1', 'red', '骆驼服饰旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311336381),
(209, 'wbmYJ0Hs6YCUANIN8UEdqhpwzD1vTu5nmhmgGw..', 0, NULL, 'http://item.taobao.com/item.htm?id=9921403307&ali_refid=a3_419252_1006:1102682080:6:%C1%B9%D0%AC:baee34a140cea37808715b51c745b49b&ali_trackid=1_baee34a140cea37808715b51c745b49b', '特价！CAMEL骆驼 凉鞋 男鞋 沙滩鞋拖鞋 正品2011新款 1290475', 248.00, 20.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1.jJ5XkVjXXaaewYa_121247.jpg_310x310.jpg', '', '', '骆驼服饰旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311336584),
(210, 'smOkEK1xkkfLLkBeZeWLzI0oVllT9XstR6HcOw..', 0, NULL, 'http://item.taobao.com/item.htm?id=5928756477', '美国zippo打火机133ml中文包装原装正品zippo油 买一赠三', 9.00, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1kG1eXalbXXcXMO2b_094452.jpg_310x310.jpg', '', '', 'xiaoshiliang2020', 'http://lovedmr.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311388296),
(211, 'smOkEK1xkkfLLkBeZeWLzI0oVllT9XstR6HcOw..', 0, NULL, 'http://item.taobao.com/item.htm?id=10625251199', 'SOLING 八合一 8合1车载手机万能充电器 USB伸缩线 可充Iphone', 88.00, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1S0eiXi0aXXbLmE32_045559.jpg_310x310.jpg', '', '', '起点汽车用品专营店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311388307),
(212, 'smOkEK1xkkfLLkBeZeWLzI0oVllT9XstR6HcOw..', 0, NULL, 'http://item.taobao.com/item.htm?id=10435698091', '魔术道具 Arcane Card Clip 神秘镂空牌夹 Joe Porper签名版 黑色', 16.00, 20.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i5/T17tCcXnhmXXXK7oc6_063226.jpg_310x310.jpg', '', '', 'benjia44119', 'http://magic8000.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311388323),
(214, '', 69, 'myoutman', 'http://gfgrher.com', 'rttrhyrt', 0.10, 0.00, 1, '', '', '', 'gfgrher.com', 'http://gfgrher.com', '其他网站', '###', '', 1, '请选填颜色、尺寸等要求！', 1311506263),
(215, 'Gm0pqOKgqCwUSh0kBxUZIFSA50y-TTFbLojt2VZSPfo.', 0, NULL, 'http://item.taobao.com/item.htm?id=9407175977', '◥◣新桌游◢◤ 纸牌版狼人村  便携版', 13.00, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1ZAN1XiFqXXXs_io8_100749.jpg_310x310.jpg', '', '', '新思维玩意', 'http://newgame.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311515065),
(220, '9EjUsJPBzUYuC1zENzgSpnKLr5QBbiXHq4TLeA..', 0, NULL, 'http://item.taobao.com/item.htm?id=9745317693&cm_cat=50019372&source=douE907C35DDE-1897.html', '【EBG男装】精梭棉韩潮流时尚休闲印花圆领短袖T恤[1410304]', 118.00, 20.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1HE9aXcxzXXaQr_o._113512.jpg_310x310.jpg', 'good', 'good', 'ebg旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311825290),
(218, 'sNLuYTav53mnYV_a90NW4AqKtC6OMNJ7S8tZTw..', 0, NULL, 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', 98.00, 20.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '11', '11', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311769261),
(221, '', 95, 'lhd1982', 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', 27.80, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '', '', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311860951),
(222, '', 95, 'lhd1982', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', 98.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311861015),
(223, '', 95, 'lhd1982', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', 98.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311861026),
(224, '953KUxuC2cg1YozzLVbpBnyAKKryLCuBmL4zbja8c0w.', 0, NULL, 'http://item.taobao.com/item.htm?id=10008349082&', '缪诗 正品 娇鹿迷情系带挂脖超聚拢文胸', 89.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1nCueXipuXXaVD33._112404.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1311935952),
(227, '0dgkXVU685M0t1RzzDcpNU-tNBMBhCQoar_YiMfa0pQ.', 0, NULL, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸', 79.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1312293801),
(230, 'rl15MDtBD1AgP1odqTVdpD8qeZ5GjO49_FV_mA..', 0, NULL, 'http://item.taobao.com/item.htm?id=10478438213&prc=1', '刘谦版 磁戒指 双圈磁力戒指 双圈白色 魔术道具0.008', 18.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1hTWcXj0tXXX0XhsV_020701.jpg_310x310.jpg', '', '白', '魔术8000旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1312515571),
(272, 'rh98qPmroSdEFN1JBwXDBcoOSYRkmNx_9mW0bg..', 0, NULL, 'http://item.taobao.com/item.htm?id=8114116802&ad_id=&am_id=&cm_id=&pm_id=', '电器城Lenovo/联想 3GW101 W101 乐Phone LEPHONE+ 安卓2.2系统', 1680.00, 10.00, 3, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1eLmdXmVbXXcckGI._111301.jpg_310x310.jpg', '', '', '天人数码专营店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313376806),
(250, 'qu7VKq-wT1jEQEKfQXsD9nvTEXWwrt6ruycPSA..', 0, NULL, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸', 79.00, 10.00, 4, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1312725826),
(274, 'BjB31PrTyYrCRzQykV7EhF9tJSNMxcfPwHOuNQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=8114116802&ad_id=&am_id=&cm_id=&pm_id=', '电器城Lenovo/联想 3GW101 W101 乐Phone LEPHONE+ 安卓2.2系统', 1670.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1eLmdXmVbXXcckGI._111301.jpg_310x310.jpg', '', '', '天人数码专营店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313386535),
(245, '-NRr_0GNmv0k3pDDllwW6GhYZl0WZP4n3VBxXHrdUTw.', 0, NULL, 'http://item.taobao.com/item.htm?id=5156685789', '水星 MERCURY S108M 8口 10/100M 以太网交换机', 55.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1SgFxXf4kXXa_4U38_101912.jpg_310x310.jpg', '', '', '忠昌电脑配件专营店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1312687191),
(242, 'F8zKI1fVWv97C8ZPWtiE7j7Eh0Q56WxFakFb6w..', 0, NULL, 'http://item.taobao.com/item.htm?id=4572444020&prc=1&source=dou&cm_cat=50070151', '商城夏季大促 5万条mrrksaar 长裤 男士休闲裤 男裤子 直筒裤', 39.80, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1MeejXjtoXXc1alLa_122156.jpg_310x310.jpg', '', '', 'mrrksaar旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1312624059),
(243, 'WjPc9cE9B8kCZPCQFAuTFeZ93habi-C6de3IAg..', 0, NULL, 'http://daigou.dayusheji.com/shop.php?action=view&gid=1', '测试产品', 50.00, 0.00, 1, 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', 1, '请选填颜色、尺寸等要求！', 1312633405),
(244, 'WjPc9cE9B8kCZPCQFAuTFeZ93habi-C6de3IAg..', 0, NULL, 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', 98.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1312633523),
(249, 'ahS3H6FScLpSYH_stIsYtfJB7Rr1GA6Yg0dDL387Gwg.', 0, NULL, 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', 98.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1312714193),
(265, 'RtoT3K9A0mFZbIA1wXEc5X-BX4H7euZqXjYzrX2xXP4.', 0, NULL, 'http://daigou.dayusheji.com/shop.php?action=view&gid=1', '测试产品', 50.00, 0.00, 1, 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', 1, '请选填颜色、尺寸等要求！', 1313217809),
(278, '05rpTJXwwcU174WIC61GjfUuam-rFebrYl_W9g..', 0, NULL, 'http://item.taobao.com/item.htm?id=6289771511&cm_cat=50016853', '陈冠希拖鞋 夏季凉鞋休闲鞋子 时尚拖鞋 藤原浩男女潮流凉拖鞋', 57.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1Bg5kXnlwXXbCDKjb_123553.jpg_310x310.jpg', '', '', 'hjb314944308', 'http://shop37113979.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313477599),
(263, 'tM_TMpbstScYTQJ-G8wvjJEy8s57xKIDRCo5Bw..', 0, NULL, 'http://item.taobao.com/item.htm?spm=541.83317.124612.16&id=12576208970', '日の長いセーターのカーディガンのセーターにカジュアルまだ甘い2011年新品種のファッション', 55.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1bpN6XdNqXXc4EXg0_033806.jpg_310x310.jpg', '', '', '心情日记zl', 'http://spstar.taobao.com', '淘宝网', 'www.taobao.com', '', 1, 'オプションのカラー、サイズその他の要件をしてください！', 1312860356),
(281, '05rpTJXwwcU174WIC61GjfUuam-rFebrYl_W9g..', 0, NULL, 'http://item.taobao.com/item.htm?id=6289771511&cm_cat=50016853', '陈冠希拖鞋 夏季凉鞋休闲鞋子 时尚拖鞋 藤原浩男女潮流凉拖鞋', 57.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1Bg5kXnlwXXbCDKjb_123553.jpg_310x310.jpg', '', '', 'hjb314944308', 'http://shop37113979.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313483372),
(261, 'TYBbykNXLKtndJQGQH9syaUTwYycMCPDSOiYj1p9924.', 100, 'badxiaofei', 'http://item.taobao.com/item.htm?id=10160125632', '张芸京 京迷 个性拨片项链 可定制 黄铜 牛皮绳', 45.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1dQF.Xh8EXXc4yNU1_041432.jpg_310x310.jpg', '', '', 'susie05750575', 'http://yaogunshougong.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1312764863),
(260, 'TYBbykNXLKtndJQGQH9syaUTwYycMCPDSOiYj1p9924.', 100, 'badxiaofei', 'http://item.taobao.com/item.htm?id=10690638773 ', '【皇冠】明星周边粘贴纸', 3.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i8/T1pN9fXgpjXXb8Nlc3_051031.jpg_310x310.jpg', '', '', 'moonwen98', 'http://star268.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1312764856),
(259, 'TYBbykNXLKtndJQGQH9syaUTwYycMCPDSOiYj1p9924.', 100, 'badxiaofei', 'http://item.taobao.com/item.htm?id=10690823159', '【皇冠】明星周边粘贴纸', 3.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1oxifXkllXXXuw8c3_051027.jpg_310x310.jpg', '', '', 'moonwen98', 'http://star268.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1312764849),
(273, 'iwGEeO2GYGUYgjIkcSlvbkF5o6ijHTXVycD4Lg..', 0, NULL, 'http://www.360buy.com/product/364474.html', '华为（HUAWEI）U8800 3G手机（黑色）WCDMA/GSM 联通定制', 1559.00, 15.00, 1, 'http://img14.360buyimg.com/n1/1616/e25ab750-c703-4f57-ac1e-f4efd8590aae.jpg', '', '', '京东商城', 'http://www.360buy.com/product/', '京东商城', 'www.360buy.com', '', 1, '请选填颜色、尺寸等要求！', 1313377544),
(279, 'c6PaBE6IZJpUOad1FBJNZvqvzpjUkYx0KXYylouNslM.', 104, 'hellotiger', 'http://item.taobao.com/item.htm?id=10890644420', '[限量]STAYREAL x Molly时尚巧物包+ ELLE Girl杂志6月号魔力版', 55.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T12xBPXhhBXXcNjzQ__110116.jpg_310x310.jpg', '', '', '最熟悉陌生人皓', 'http://stayreal.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313477803),
(285, 'Fmy_lHBAXbiWtlxlz5unu7ari002REALBTw3lw..', 0, NULL, 'http://item.taobao.com/item.htm?id=10022325378&', '缪诗 专柜正品  野性能量无痕聚拢调整型U型文胸', 99.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i6/T1MAVIXa4bXXbh0.39_074836.jpg_310x310.jpg', 'l', '白色', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313585597),
(286, 'Fmy_lHBAXbiWtlxlz5unu7ari002REALBTw3lw..', 0, NULL, 'http://item.taobao.com/item.htm?id=3432925102&ad_id=&am_id=&cm_id=&pm_id=', '美国安利纽崔莱产品 安利蛋白粉蛋白质粉正品送螺旋藻50片两瓶', 170.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1tBucXlphXXc7nt7Z_031757.jpg_310x310.jpg', '', '', '欧德凯保健专营店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313585710),
(287, '5LXlIAg_3qUhfncFXTzAIqKM1y-Od99gYMnMGv1nmTQ.', 0, NULL, 'http://item.taobao.com/item.htm?id=10890644420', '[限量]STAYREAL x Molly时尚巧物包+ ELLE Girl杂志6月号魔力版', 55.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T12xBPXhhBXXcNjzQ__110116.jpg_310x310.jpg', '', '', '最熟悉陌生人皓', 'http://stayreal.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313651198),
(288, 'C6XdWOQgD38HICnV1XUd9oWiP3kYmf_y4fOVISM4N74.', 0, NULL, 'http://item.taobao.com/item.htm?spm=541.53683.104316.7&id=12666996625', '【凡琴服饰】2011秋季新款斑点桃心字母带帽中长袖针织衫 女', 219.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1mgKkXatdXXbK1jgZ_032734.jpg_310x310.jpg', '', '', '刘13719007159', 'http://vancen.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313657923),
(289, 'C6XdWOQgD38HICnV1XUd9oWiP3kYmf_y4fOVISM4N74.', 0, NULL, 'http://item.taobao.com/item.htm?spm=541.53683.104316.7&id=12666996625', '【凡琴服饰】2011秋季新款斑点桃心字母带帽中长袖针织衫 女', 219.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1mgKkXatdXXbK1jgZ_032734.jpg_310x310.jpg', '', '', '刘13719007159', 'http://vancen.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313657924),
(290, '', 108, 'test2011', 'http://item.taobao.com/item.htm?id=10722453526&', '【淘金币】 缪诗 正品 恋爱季节 棉质舒适聚拢文胸', 79.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313668786),
(292, '', 110, 'a123', 'http://item.taobao.com/item.htm?id=10767240434&', '缪诗 正品 亮彩红蕴 时尚民族风分体式泳衣两件套', 129.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i5/T1JmKfXd8vXXc_Sq79_102454.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313723755),
(294, '', 108, 'test2011', 'http://item.taobao.com/item.htm?id=9115801052&prc=1&cm_cat=50066686', 'joy 2011秋季新品 蕾丝衫打底衫 长袖高领 镂空黑色上衣 韩国女装', 146.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1uPh1XaRoXXa7iAg9_103931.jpg_310x310.jpg', '', '', 'joyjoso旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313807073),
(295, 'YpUAjfs7Yx6HFaIng0JAiqO8mwuMCiM5IiVBhlKE9Ho.', 0, NULL, 'http://item.taobao.com/item.htm?id=10233654918&cm_cat=50027236', '特【AngelCitiz天使之城】新鲜感针织布松糕凉鞋ZA8024##', 238.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T10T1XXhXXXXcWH5AZ_032639.jpg_310x310.jpg', '20', '红', 'tearing_angel', 'http://shop217225.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313826152),
(296, 'YpUAjfs7Yx6HFaIng0JAiqO8mwuMCiM5IiVBhlKE9Ho.', 0, NULL, 'http://item.taobao.com/item.htm?id=10233654918&cm_cat=50027236', '特【AngelCitiz天使之城】新鲜感针织布松糕凉鞋ZA8024##', 238.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T10T1XXhXXXXcWH5AZ_032639.jpg_310x310.jpg', '20', '红', 'tearing_angel', 'http://shop217225.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313826214),
(297, 'coahBLZ7x3JwKr4TLCspnCcLfoKnw6equWYVUg..', 0, NULL, 'http://item.taobao.com/item.htm?id=10759995600&', '淘金币 缪诗 正品 豹纹部落 豹纹印花系带绕脖调整型超聚拢文胸', 168.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1_FCiXhpXXXXy99E3_051218.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313830948),
(298, 'coahBLZ7x3JwKr4TLCspnCcLfoKnw6equWYVUg..', 0, NULL, 'http://www.360buy.com/product/389038.html', '惠普（hp）HP430 14英寸笔记本电脑 （i3-2310 2G 640G D刻 无线 摄像头 W7）', 3499.00, 15.00, 1, 'http://img13.360buyimg.com/n1/4324/b571fcd8-16aa-4281-80c0-d3ce04304913.jpg', '', '', '京东商城', 'http://www.360buy.com/product/', '京东商城', 'www.360buy.com', '', 1, '请选填颜色、尺寸等要求！', 1313831036),
(299, 'P7ePOvbxP1OUgJxiuz2u0FsnZCXjXl-_oM0W1w..', 0, NULL, 'http://item.taobao.com/item.htm?id=8798588951&prc=1&spm=3.67004.130311.1', '聚团购！索尼W570 索尼数码相机DSC', 1199.00, 10.00, 3, 'http://img02.taobaocdn.com/bao/uploaded/i2/T18l9aXeloXXcuW_QW_025040.jpg_310x310.jpg', '32', '的', '盛世奕想数码专营店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313839294),
(300, 'P7ePOvbxP1OUgJxiuz2u0FsnZCXjXl-_oM0W1w..', 0, NULL, 'http://item.taobao.com/item.htm?id=8798588951&prc=1&spm=3.67004.130311.1', '聚团购！索尼W570 索尼数码相机DSC', 1199.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T18l9aXeloXXcuW_QW_025040.jpg_310x310.jpg', '32', '的', '盛世奕想数码专营店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313839315),
(307, 'DXYQrQibLY-YeJgRp1jwKRF2Ot2rXeWDoedC1A..', 0, NULL, 'http://item.taobao.com/item.htm?id=10759995600&', '淘金币 缪诗 正品 豹纹部落 豹纹印花系带绕脖调整型超聚拢文胸', 168.00, 10.00, 5, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1_FCiXhpXXXXy99E3_051218.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313929885),
(306, 'ZpJe3rWc67ZKoe1NWsweIYBSSLCq3Pg61KUGag..', 113, 'cskok2003', 'http://item.taobao.com/item.htm?id=10572900740&cm_cat=50067451', '特价 多色翻毛皮随意欧美百搭编织流苏穗腰带腰链 女式腰带', 15.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1CAadXmFjXXc1R5oU_015159.jpg_310x310.jpg', '10', 'red', 'yy2818', 'http://lemonxiaoshu.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313902266),
(305, 'pO_kvZpFaqm4gX7_Rloloz4olqpHpBqa2hTLbA..', 0, NULL, 'http://item.taobao.com/item.htm?id=10722453526&', '【淘金币】 缪诗 正品 恋爱季节 棉质舒适聚拢文胸', 79.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313895095),
(310, '', 1, 'admin', 'http://item.taobao.com/item.htm?spm=541.104784.137887.51&id=12702016454', '2011新款秋装女装 手工粗羊毛线针织 宽松蝙蝠袖毛衣 Y642&amp', 288.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1u49kXklhXXacqiU6_061938.jpg_310x310.jpg', '', '', '伊样美丽', 'http://yyml.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313976769),
(309, 'M_bFNDZyGueWGWzy99ehvkjIEVX8wwd0czeKfg..', 0, NULL, 'http://product.dangdang.com/product.aspx?product_id=22455308', '春宴（安妮宝贝最新长篇小说） - 图书 - 当当网', 0.00, 20.00, 1, 'null', '', '', 'null', '我的订单', '当当网', 'www.dangdang.com', '', 1, '请选填颜色、尺寸等要求！', 1313973079);
INSERT INTO `dg_cart` (`gid`, `anonymous`, `uid`, `uname`, `goodsurl`, `goodsname`, `goodsprice`, `sendprice`, `goodsnum`, `goodsimg`, `goodssize`, `goodscolor`, `goodsseller`, `sellerurl`, `goodssite`, `siteurl`, `expressno`, `type`, `goodsremark`, `addtime`) VALUES
(311, '', 1, 'admin', 'http://item.taobao.com/item.htm?id=12318178916&cm_cat=50066686', 'A8', 55.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1R0N4XjRGXXbVrwPa_121237.jpg_310x310.jpg', '', '', '小馒头tb', 'http://52youjia.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1313981060),
(315, 'u843LA3xIYkpdAnP_QvAqkA1qPfR2QPu4OsqQa8GkpQ.', 0, NULL, 'http://item.taobao.com/item.htm?id=10447446761', 'Samsonite新秀丽拉杆箱正品红色V22002硬登机箱25寸20寸超轻', 2580.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1kNqcXjFnXXcv26I6_062345.jpg_310x310.jpg', '', '', 'angelinayiyi1', 'http://xiangbaobaoa.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314065918),
(314, '', 112, 'sakagreen', 'http://item.taobao.com/item.htm?id=10767240434&', '缪诗 正品 亮彩红蕴 时尚民族风分体式泳衣两件套', 129.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i5/T1JmKfXd8vXXc_Sq79_102454.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314000988),
(316, 'u843LA3xIYkpdAnP_QvAqkA1qPfR2QPu4OsqQa8GkpQ.', 0, NULL, 'http://item.taobao.com/item.htm?id=10447446761', 'Samsonite新秀丽拉杆箱正品红色V22002硬登机箱25寸20寸超轻', 2580.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1kNqcXjFnXXcv26I6_062345.jpg_310x310.jpg', '', '', 'angelinayiyi1', 'http://xiangbaobaoa.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314065983),
(317, 'f03G0mE_PAHaJRjcc2Kg7AuZqL8CpOX9DQvWdw..', 0, NULL, 'http://item.taobao.com/item.htm?id=10759995600&', '淘金币 缪诗 正品 豹纹部落 豹纹印花系带绕脖调整型超聚拢文胸', 168.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1_FCiXhpXXXXy99E3_051218.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314071635),
(319, 'xDJMFRR269WpyrQAs7bG5P4PhPQy14zx41tDHw..', 0, NULL, 'http://item.taobao.com/item.htm?id=9995201122&', '一片式 缪诗本色诱惑专柜正品豹纹款性感调整型内衣 无痕文胸', 99.00, 10.00, 5, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1AzygXdhXXXcnaq6X_113957.jpg_310x310.jpg', 'D', '图片上的那个', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314084997),
(320, 'lXedUkyCuhJEzXTMWQpBhKZIRSvS1OwsS-4xsBzwsB4.', 0, NULL, 'http://item.taobao.com/item.htm?id=12410677315', 'Lacoste 法国鳄鱼 专柜 正品 代购 女包 专柜货号: NF0001E1', 742.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/39227512/T2DbJQXaFbXXXXXXXX_!!39227512.jpg_310x310.jpg', '', '', 'zhaoyahua88', 'http://8171946.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314094866),
(321, 'g0J7AYZ46h897jm1KQlXQLiVcyH7lSIgdGf-KQ..', 0, NULL, 'http://www.harada99.com/ProductInfoNew.aspx?id=82', 'G4超强版消腩丸-会员装（买一送一', 299.00, 0.00, 1, '', '', '', 'www.harada99.com', 'http://www.harada99.com', '其他网站', '###', '', 1, '请选填颜色、尺寸等要求！', 1314097016),
(322, 'd8sFOJL5w4A6HLpD-yqLUXWaiIsczY3cxOCcH2PbI-M.', 0, NULL, 'http://3c.taobao.com/go/act/taobao/xjdp.php?TBG=40896.138120.1&spm=1.40896.138120.1&ad_id=&am_id=&cm_id=1400559945bdab8eabae&pm_id=', '淘宝网', 0.00, 10.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314116394),
(323, 'VdUdWnQTV85PSOyWH_tcybox6d3cy5QKuSuYSrRs2O0.', 115, 'yemengfan', 'http://item.taobao.com/item.htm?id=3144833361&pm2=1&prc=1&source=dou&cm_cat=50071661', 'L|oreal/&#27431&#33713&#38597 &#22269&#20869&#19987&#26588 &#28145&#23618&#20462&#22797&#27927&#21457&#38706400ml+400ml &#36229&#20540&#22871&#35013', 55.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1UHtWXbVHXXaNF1Ta_121006.jpg_310x310.jpg', '', '', '积美化妆品专营店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314147015),
(324, '', 116, 'admin110', 'http://cao.paipaicms.com/shop.php?action=view&gid=1', 'null', 0.00, 0.00, 1, 'null', '', '', 'null', '', '拍拍1', 'www.paipai.com', '', 1, '请选填颜色、尺寸等要求！', 1314173440),
(325, 'e-Z7Cndpw0mxwsdImfj6Gye80FMqVk_vzjCmnQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=10722453526&', '【淘金币】 缪诗 正品 恋爱季节 棉质舒适聚拢文胸', 79.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314175864),
(326, 'NAUVoEcq3dBxXDCkDO9dFXfRMmnJ1aK2y65AyIn6oLg.', 0, NULL, 'http://item.taobao.com/item.htm?id=10284354312', '【5折】 大爱！夏日清爽の甜美日系花卉雪纺裙 3715', 85.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T15oeXXnXyXXXEfM_b_123919.jpg_310x310.jpg', '1', '1', 'jinglpeter', 'http://shop33382562.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314178173),
(327, 'HjXEwZApoImF-73bThXXuBrMr_p9vuTfBS954A..', 0, NULL, 'http://daigou.dayusheji.com/shop.php?action=view&gid=1', '测试产品', 50.00, 0.00, 1, 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', 1, '请选填颜色、尺寸等要求！', 1314178265),
(328, '1NzJAQIseEZQvuTA2wmG28fjGYXn_nBKKJ-x-_RTggw.', 0, NULL, 'http://item.taobao.com/item.htm?id=10613256520&', '泳衣 女 分体缪诗雅典娜专柜正品缤纷糖果色分体式泳衣两件套装', 98.00, 10.00, 8, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314188020),
(329, '11VafAgyQsqEvSri-8PTLcZfIPMOsohbOpV1ONwWonQ.', 0, NULL, 'http://item.taobao.com/item.htm?id=10759995600&', '淘金币 缪诗正品 豹纹部落 豹纹印花系带绕脖调整型文胸 买上送下', 168.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1_FCiXhpXXXXy99E3_051218.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314253107),
(331, '', 119, 'i321123', 'http://item.taobao.com/item.htm?id=10589134796&', '调整型文胸 聚拢缪诗蝴蝶兰蕾丝刺绣超聚拢调整型文胸 性感胸罩', 89.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1rXqhXapjXXaRJWAZ_031327.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314262122),
(333, '', 120, 'ly786', 'http://item.taobao.com/item.htm?id=9589540912&prc=1&source=dou&cm_cat=50015514', '奈叶 2011秋季新品韩版街头女裤铅笔裤小脚裤长裤秋装新款牛仔裤', 99.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1vSF9XflrXXar36s4_053439.jpg_310x310.jpg', '10', '', '奈叶服饰旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314271585),
(334, '', 120, 'ly786', 'http://item.taobao.com/item.htm?id=9589540912&prc=1&source=dou&cm_cat=50015514', '奈叶 2011秋季新品韩版街头女裤铅笔裤小脚裤长裤秋装新款牛仔裤', 99.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1vSF9XflrXXar36s4_053439.jpg_310x310.jpg', '', '', '奈叶服饰旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314271747),
(335, 'XdNT7FqiUzli8vbpeAXjq0QcnmWdqObSX5mNnQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=4770192509', '特产零食 果树栀烤出来的鱿鱼片 很像巴西熏肉味道250g 足片', 16.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mu4HXg8qXXc4MOI3_050416.jpg_310x310.jpg', '', '', '美然阁', 'http://meirange.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314338898),
(336, '-EorCulccsco31xNuq1OpgWsPgv_IyG4d2wQ4MWSOrs.', 0, NULL, 'http://item.taobao.com/item.htm?id=12462004266&prc=2', '沐鱼muyu2011新款女包包糖果冻包透明包糖果色手提包单肩包P30126', 138.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1mkCjXdptXXb2tGo2_042817.jpg_310x310.jpg', '', '', '沐鱼旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314341990),
(337, '-EorCulccsco31xNuq1OpgWsPgv_IyG4d2wQ4MWSOrs.', 0, NULL, 'http://item.taobao.com/item.htm?id=12462004266&prc=2', '沐鱼muyu2011新款女包包糖果冻包透明包糖果色手提包单肩包P30126', 138.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1mkCjXdptXXb2tGo2_042817.jpg_310x310.jpg', '', '', '沐鱼旗舰店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314342004),
(338, 'dhUJXqroS_g-a_lnLwOcWbBh4sZOocYHRzgi6BgtVUI.', 0, NULL, 'http://item.taobao.com/item.htm?id=10231841367', '乳头隆起器单只套装升级版', 230.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T13JOiXl4pXXcQuGfb_093038.jpg_310x310.jpg', 'S', '', 'u5r2s4q6', 'http://huliypin.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314405290),
(339, 'dhUJXqroS_g-a_lnLwOcWbBh4sZOocYHRzgi6BgtVUI.', 0, NULL, 'http://item.taobao.com/item.htm?id=10231841367', '乳头隆起器单只套装升级版', 230.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T13JOiXl4pXXcQuGfb_093038.jpg_310x310.jpg', 'S', '', 'u5r2s4q6', 'http://huliypin.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314405329),
(345, 's8Iii7xaySnsdtoyv37ZuRgZmdkzquK2UV0_1w..', 0, NULL, 'http://daigou.dayusheji.com/shop.php?action=view&gid=1', '测试产品', 50.00, 0.00, 1, 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', 1, '请选填颜色、尺寸等要求！', 1314604457),
(346, 'x2VoLzWWwH0S1eeaP8zDFzX2Q_to1__CM6Bj1Q..', 124, 'wang', 'http://item.taobao.com/item.htm?id=4239590067', '肆独特设计帆船牌鞋跟状零钱小巧真牛皮包四色黑色款', 8.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1lnNfXkIgYtJ8n_7U_015905.jpg_310x310.jpg', '', '', 'sj8819', 'http://sj8819.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314610030),
(343, 'YmwMTZD9KZ4VKr0wpGtGtiUI-bPkcQRh1IrFxQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=3397472098', '淘宝网 ', 0.00, 10.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314496630),
(344, 'GzGvk5yjQWlnF9SWFTw3t43efh5crpi4k-WP2w..', 0, NULL, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 女士内衣', 79.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314595709),
(350, '8fYqpRMbjDehorBGRP3W9wWi_N2gu-cAEZOVAg..', 0, NULL, 'http://item.taobao.com/item.htm?id=3397472098', '淘宝网 ', 0.00, 10.00, 1, 'null', '41', '白色', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314779471),
(388, 'bDhHiJlEh8_Gz86I73FpKC08BOD-t9I7utVeJgMRLFo.', 136, 'shqj', 'http://item.taobao.com/item.htm?id=12715151357', '论坛博客群发推广精灵v1.0+注册机', 2.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1nrWkXfVjXXaiGtgW_022805.jpg_310x310.jpg', '', '', 'ye168u8', 'http://zj8u8.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315432815),
(354, '9wL8FZLJ_qg4WkLG3pT4sei9fPwFPwK7USyQ-Rwsf2w.', 0, NULL, 'http://item.taobao.com/item.htm?id=12748048379&ali_refid=a3_420432_1006:1102231108:6:%D4%C2%B1%FD:3f5863d331bf68968a9c1cc012e3a2ce&ali_trackid=1_3f5863d331bf68968a9c1cc012e3a2ce', 'amovo巧克力月饼/中秋大礼可可含量68％＊精美铁盒装礼盒', 599.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1ywalXcpOXXb1oZUZ_031623.jpg_310x310.jpg', '', '', 'amovo巧克力', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314802905),
(398, 'haK7n8BiQOkCGIpsz38dFWT6ej3SjcwmsbnxyXh8-v4.', 0, NULL, 'http://item.taobao.com/item.htm?id=7238421044&ad_id=&am_id=&cm_id=&pm_id=', 'Apple/苹果 iPhone4 智能手机 iPhone 4代 16G CH/A 带wi', 4799.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1x4ajXo8EXXaYX1U4_052548.jpg_310x310.jpg', '', '', '恒丰数码专营', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315891814),
(397, 'n73_tOvS7YCtg7omv_ZB0W0VBaipKnA9PZ86gQ..', 0, NULL, 'http://www.vpsmic.com', 'tset', 99.00, 12.00, 1, '', '1', '1', 'www.vpsmic.com', 'http://www.vpsmic.com', '其他网站', '###', '', 1, '111', 1315831228),
(396, 'UBhOAnoCTGgGLtxUOtfVv6FTl2mRwWVG1Dm0ZA..', 0, NULL, 'http://item.taobao.com/item.htm?id=8882866262', '迷你摄像机 微型 声控摄像机 迷你dv mini dv md 80', 62.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i6/T1kV9nXi0eXXb_jLQ8_100430.jpg_310x310.jpg', '', '', 'wentin', 'http://mybandao.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315630468),
(393, 'scJTNralB4DXU2kBbg_-QG6nNkZK6b20lzeEGg..', 63, 'itosb', 'http://item.taobao.com/item.htm?id=12783260382&stp=top.topint.50010158.sellup.image.2.true', '限时折扣 精品男士夹克 2011新款秋装薄外套 包邮', 180.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1Ayl7Xc0DXXX1x6U._082748.jpg_310x310.jpg', '', '', '千变潮流', 'http://tbtb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315547319),
(394, 'scJTNralB4DXU2kBbg_-QG6nNkZK6b20lzeEGg..', 63, 'itosb', 'http://item.taobao.com/item.htm?id=12783260382&stp=top.topint.50010158.sellup.image.2.true', '限时折扣 精品男士夹克 2011新款秋装薄外套 包邮', 180.00, 20.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1Ayl7Xc0DXXX1x6U._082748.jpg_310x310.jpg', '', '', '千变潮流', 'http://tbtb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, 'AS', 1315547619),
(386, 'AZjfPXEX6vqHabheIuTwHeiXWOBZxQT1o40xA3SAeLI.', 0, NULL, 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8912565496', '多功能迷你音箱/Mini小音响/MP3播放器 SD读卡 USB扩展 带遥控', 39.00, 10.00, 2, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1GJGXXbVtXXa4kNUV_021038.jpg_310x310.jpg', '', '', 'wentin', 'http://mybandao.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315300432),
(384, 'hfAREt1khipRSwFH81ErlJjqiDninT_kVqj_FQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=3397472098', '淘宝网 ', 0.00, 10.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315213352),
(395, 'AEt2BPr-M4l9jSd3ORWyjb-3Co5pB2TRHGsvOg..', 0, NULL, 'http://item.taobao.com/item.htm?id=13157148550&_u=9m6jihh7b72', '【日本正版行货】Sharp 夏普 NTT docomo SH', 1500.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1dCqmXndDXXXaKpjX_083745.jpg_310x310.jpg', '', '黑色和红色相间', '澈的小屋', 'http://shop68539780.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '贴全膜 带说明书 没有划痕', 1315547920),
(379, '9McYpyujSpuc6hJydKb8PxNzF7XXFKZdDlD2jzbsixY.', 0, NULL, 'http://item.taobao.com/item.htm?id=3397472098', '淘宝网 ', 0.00, 10.00, 1, 'null', '38码', '白', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '38码,白色', 1315099798),
(378, 'CjlKthb3ixmgmGWi4zYflrBm4r09BndOtRZuGQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=12991200373', '淘客帝国V5.14 无限制 淘宝客程序 破解版', 15.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1GXaeXo8uXXb7g5Q8_070815.jpg_310x310.jpg', '', '', 'xydream', 'http://myphp.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314974147),
(377, 'CjlKthb3ixmgmGWi4zYflrBm4r09BndOtRZuGQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=12991200373', '淘客帝国V5.14 无限制 淘宝客程序 破解版', 15.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1GXaeXo8uXXb7g5Q8_070815.jpg_310x310.jpg', '', '', 'xydream', 'http://myphp.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314973904),
(376, 'CjlKthb3ixmgmGWi4zYflrBm4r09BndOtRZuGQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=12991200373', '淘客帝国V5.14 无限制 淘宝客程序 破解版', 15.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1GXaeXo8uXXb7g5Q8_070815.jpg_310x310.jpg', '', '', 'xydream', 'http://myphp.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314973729),
(374, 'CjlKthb3ixmgmGWi4zYflrBm4r09BndOtRZuGQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=12991200373', '淘客帝国V5.14 无限制 淘宝客程序 破解版', 15.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1GXaeXo8uXXb7g5Q8_070815.jpg_310x310.jpg', '', '', 'xydream', 'http://myphp.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314973709),
(375, 'CjlKthb3ixmgmGWi4zYflrBm4r09BndOtRZuGQ..', 0, NULL, 'http://item.taobao.com/item.htm?id=12991200373', '淘客帝国V5.14 无限制 淘宝客程序 破解版', 15.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1GXaeXo8uXXb7g5Q8_070815.jpg_310x310.jpg', '', '', 'xydream', 'http://myphp.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314973724),
(372, 'EniwP_iZ36lDQebU2XTRT3Krgb9pfBNZ0dwOyRf9L64.', 0, NULL, 'http://item.taobao.com/item.htm?id=9312038250&ad_id=&am_id=&cm_id=&pm_id=', '【金牌店】佳能数码相机IXUS 115 HS 佳能IXUS115HS  正品行货', 1299.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1EqqaXahnXXcQdE30_040007.jpg_310x310.jpg', '', '', '佳能相机好邦专卖店', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314890109),
(371, '98RLmo16vs_zX9LxoJFln2-7Ua7ODACNAJ1C-SeTpWc.', 0, NULL, 'http://item.taobao.com/item.htm?id=10637590583&prc=1&spm=141.98886.131886.10', 'ACA AK', 338.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/702016902/T2kAROXo8bXXXXXXXX_!!702016902.jpg_310x310.jpg', '', '', '北美电器旗舰', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314886743),
(370, '98RLmo16vs_zX9LxoJFln2-7Ua7ODACNAJ1C-SeTpWc.', 0, NULL, 'http://item.taobao.com/item.htm?id=10759995600&', '缪诗正品 豹纹部落 豹纹印花系带绕脖调整型聚拢女士文胸', 168.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1_FCiXhpXXXXy99E3_051218.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1314886575),
(399, 'ddHkJI--KqQ6fyqyfoc0KSxp67kkbYDxKRQMsg..', 0, NULL, 'http://item.taobao.com/item.htm?id=3397472098', '淘宝网 ', 0.00, 10.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315902091),
(400, 'ddHkJI--KqQ6fyqyfoc0KSxp67kkbYDxKRQMsg..', 0, NULL, 'http://www.dayusheji.com/Services.html', 'null', 0.00, 0.00, 1, 'null', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', 1, '请选填颜色、尺寸等要求！', 1315902111),
(401, 'scJTNralB4DXU2kBbg_-QG6nNkZK6b20lzeEGg..', 0, NULL, 'http://item.taobao.com/item.htm?spm=541.116029.141257.89&id=10184411242', 'C', 129.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1pWqXXlVpXXXpR_QT_013228.jpg_310x310.jpg', '', '', '皇冠公主88', 'http://crown-princess.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315980208),
(403, 'scJTNralB4DXU2kBbg_-QG6nNkZK6b20lzeEGg..', 0, NULL, 'http://item.taobao.com/item.htm?id=12783260382&stp=top.topint.50010158.sellup.image.2.true', '限时折扣 精品男士夹克 2011新款秋装薄外套 包邮', 180.00, 12.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1Ayl7Xc0DXXX1x6U._082748.jpg_310x310.jpg', '', '', '千变潮流', 'http://tbtb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315984639),
(404, 'scJTNralB4DXU2kBbg_-QG6nNkZK6b20lzeEGg..', 0, NULL, 'http://shop60032302.taobao.com/?search=y&scid=201867839&scname=xcTO5bLjMbrFx%2Bu149XiwO8%3D&checkedRange=true&queryType=cat&spm=1100060032302.39235306.1120727204.20', 'null', 0.00, 10.00, 1, 'null', '', '', '宇航纸箱厂', 'http://shop60032302.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315984671),
(405, 'scJTNralB4DXU2kBbg_-QG6nNkZK6b20lzeEGg..', 0, NULL, 'http://item.taobao.com/item.htm?id=12783260382&stp=top.topint.50010158.sellup.image.2.true', '限时折扣 精品男士夹克 2011新款秋装薄外套 包邮', 180.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1Ayl7Xc0DXXX1x6U._082748.jpg_310x310.jpg', '', '', '千变潮流', 'http://tbtb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1315984795),
(406, '23KzbrMNCVQy-B3vI5iS39AxAqrnSqW6nWhRWgF4fSE.', 0, NULL, 'http://item.taobao.com/item.htm?id=2166417889', '【碧瑶】琼崖海棠马油豆乳皂 去鸡皮疙瘩 调理粗糙皮肤', 65.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1YDX6XjtHXXcspoo__110704.jpg_310x310.jpg', '', '', '小馨monica的家', 'http://tbxx.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316000173),
(407, '', 142, 'zyuhong', 'http://item.taobao.com/auction/item_detail-0db1-56378df44b600b2602b9cb3bbde110dc.jhtml?is_b=1', '淘宝网 ', 0.00, 10.00, 1, 'null', '10', '淡蓝色', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '抱枕', 1316072524),
(408, '', 142, 'zyuhong', 'http://item.taobao.com/item.htm?id=2166417889', '【碧瑶】琼崖海棠马油豆乳皂 去鸡皮疙瘩 调理粗糙皮肤', 65.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1YDX6XjtHXXcspoo__110704.jpg_310x310.jpg', '', '', '小馨monica的家', 'http://tbxx.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316072686),
(409, '', 142, 'zyuhong', 'http://item.taobao.com/item.htm?id=8882866262', '微型摄像机 迷你摄像机 迷你数码摄像机 迷你dv mini dv md 80', 62.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1rxtVXnJvXXaLXVE2_043018.jpg_310x310.jpg', '', '', 'wentin', 'http://mybandao.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316072845),
(410, '', 142, 'zyuhong', 'http://item.taobao.com/item.htm?id=8882866262', '微型摄像机 迷你摄像机 迷你数码摄像机 迷你dv mini dv md 80', 62.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1rxtVXnJvXXaLXVE2_043018.jpg_310x310.jpg', '', '', 'wentin', 'http://mybandao.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316072894),
(411, '', 142, 'zyuhong', 'http://item.taobao.com/item.htm?id=8882866262', '微型摄像机 迷你摄像机 迷你数码摄像机 迷你dv mini dv md 80', 62.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1rxtVXnJvXXaLXVE2_043018.jpg_310x310.jpg', '', '', 'wentin', 'http://mybandao.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316072903),
(412, '', 138, 'wiki9794', 'http://click.simba.taobao.com/cc_im?p=%D5%EB%D6%AF%C9%C0+%C5%AE&s=206706017&k=333&e=HoH9uwVQskH5SgLX%2FW34EwnstBc%2BqSt3hKp2ablpALxbtuu10PbnmBSMao%2FQSD%2B1jSJjjcAvTW2aYGfkYcUOkBoFn%2BsvmaOMO7vYfTzM5A%2BtpsJotKlDvu1tQ84xA2kH1MwkT%2B555AcB0X1xR%2BOT8A5dae9', '2011年兔毛长袖显瘦套头打底针织衫女装春秋冬季毛衣上衣新款包邮', 180.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1dsSoXgtjXXXdG6QU_015350.jpg_310x310.jpg', '', '', 'lucha_058', 'http://shop36366941.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316076008),
(413, 'wyRrPcPFXhv8934ZbH0OL1G0Yh_vG8fib8mYQZJ9d4o.', 0, NULL, 'http://item.taobao.com/item.htm?id=8882866262', '微型摄像机 迷你摄像机 迷你数码摄像机 迷你dv mini dv md 80', 62.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1rxtVXnJvXXaLXVE2_043018.jpg_310x310.jpg', '', '', 'wentin', 'http://mybandao.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316107276),
(414, 'wyRrPcPFXhv8934ZbH0OL1G0Yh_vG8fib8mYQZJ9d4o.', 0, NULL, 'http://item.taobao.com/item.htm?id=12534960333&ali_refid=a3_420984_1007:1102175379:7:43abc96922cd461c7c7492833ebcd857:f44309ed958804b67057b828da3b0125&ali_trackid=1_f44309ed958804b67057b828da3b0125', '璞衣 2011秋装新品丝光棉百搭无扣针织衫开衫 186', 98.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1QE9jXcpnXXaOVeo1_041002.jpg_310x310.jpg', '', '', '天水天衣', 'http://puyibs.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316107389),
(415, 'E8gqSIvJxswW6F8voxTGIToRUbDAfJU7nt_rrA..', 0, NULL, 'http://item.taobao.com/item.htm?id=3712103403', '外贸原单G', 48.00, 10.00, 1, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1hIykXnXyXXbYDw_X_085339.jpg_310x310.jpg', '', '', '彭城土著', 'http://shop36063051.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316133858),
(416, 'OLHVS57Kn5GdnfCDHZiuY56ZtuFnLFmQQ0mj2w..', 0, NULL, 'http://sale.taobao.com/?TBG=66364.103947.1&spm=1.66364.103947.1', 'null', 0.00, 10.00, 1, 'null', '32', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316145456),
(417, 'RDdLylAd7OD95MS6kI6zr6_hJCR_Za5N0C8WoA..', 0, NULL, 'http://www.360buy.com/product/340297.html', 'Mamypoko妈咪宝贝瞬吸干爽纸尿裤XL女120片', 229.00, 15.00, 1, 'http://img12.360buyimg.com/n1/3066/2b78d8d3-1ff6-47b0-aa2e-2f79d3b6185a.jpg', '', '', '京东商城', 'http://www.360buy.com/product/', '京东商城', 'www.360buy.com', '', 1, '请选填颜色、尺寸等要求！', 1316147926),
(428, 'IozHq3Mp6NGheDUbgZ0oCsWUq8TTTBoBeM8kjA..', 0, NULL, 'http://item.taobao.com/item.htm?id=12275865232', '太平鸟魔法秋季女装翻领钉花针织外套ME1141009', 619.00, 10.00, 2, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1KVRUXjBAXXaWaUMZ_033731.jpg_310x310.jpg', '', '', '太平鸟官方专营店', '', '淘宝网', 'www.taobao.com', '', 1, 'M号 默认颜色', 1316725659),
(429, 'DW03XRfOOOF9u1b7H1ARYuDmeTsASUCcK3gy8GZeIH0.', 0, NULL, 'http://item.taobao.com/item.htm?id=10022325378&', '无痕文胸 聚拢缪诗野性能量专柜 正品无痕U型调整型内衣 聚拢文胸', 99.00, 10.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i6/T1MAVIXa4bXXbh0.39_074836.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316734298),
(426, 'EJ0PoPZc9pvSL1pNl3tDVpSQc55Fzlxl_L9-xQ..', 0, NULL, 'http://www.taobao.com/', '淘宝网 ', 0.00, 10.00, 1, 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316602721),
(427, 'gXSVcdVRXoTUQJ7MMcUlNRMch5HMUoqBWRH8Zw..', 0, NULL, 'http://item.taobao.com/item.htm?id=10589134796&', '调整型文胸 聚拢缪诗蝴蝶兰蕾丝刺绣超聚拢调整型文胸 性感胸罩', 89.00, 20.00, 1, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1rXqhXapjXXaRJWAZ_031327.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316644392),
(425, '8If1Ak0pDFKKE4gJpUD0UbyDzUubcfhNfm5hrazRIpk.', 0, NULL, 'http://item.taobao.com/item.htm?id=12630054353&stp=top.topint.50011167.sellup.image.2.true', 'ZIRS  2011  新款正品  修身可脱卸帽 冬装男士羽绒服 外套男款', 499.00, 10.00, 1, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1NpOmXjFeXXaOSqI2_043147.jpg_310x310.jpg', '', '', '巨划算0571', 'http://shop67784858.taobao.com', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1316511606),
(430, '5p-Ndpxffb4gV5LiCpUMHV8EJYvv84WIO86-7w..', 0, NULL, 'http://item.taobao.com/item.htm?id=10767240434&', '缪诗亮彩红蕴 时尚民族风分体式泳衣两件套', 129.00, 10.00, 1, 'http://img01.taobaocdn.com/bao/uploaded/i5/T1JmKfXd8vXXc_Sq79_102454.jpg_310x310.jpg', '', '', '私房小女', '', '淘宝网', 'www.taobao.com', '', 1, '请选填颜色、尺寸等要求！', 1330183132);

-- --------------------------------------------------------

--
-- 表的结构 `dg_coupon`
--

CREATE TABLE IF NOT EXISTS `dg_coupon` (
  `cid` int(11) NOT NULL auto_increment,
  `sn` varchar(50) NOT NULL,
  `uid` int(11) default NULL,
  `uname` varchar(50) NOT NULL,
  `getway` tinyint(3) default '1',
  `endtime` int(11) default '0',
  `addtime` int(11) default NULL,
  `money` int(5) default '0',
  `sellmoney` int(5) default NULL,
  `state` tinyint(3) default '1',
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `dg_coupon`
--

INSERT INTO `dg_coupon` (`cid`, `sn`, `uid`, `uname`, `getway`, `endtime`, `addtime`, `money`, `sellmoney`, `state`) VALUES
(1, '20100813101717512', 1, 'admin', 1, 1284259008, 1281665837, 5, 0, 1),
(2, '20100813103952866', 1, 'admin', 1, 1284259192, 1281667192, 10, 0, 1),
(3, '20100813103954190', 1, 'admin', 1, 1284259194, 1281667194, 10, 0, 1),
(4, '20100813104001547', 1, 'admin', 2, 1285209923, 1281667201, 15, 0, 1),
(5, '20100813104001545', 3, 'lss', 2, 1285209810, 1281667207, 20, 0, 1),
(6, '20100824170632734', 3, 'lss', 1, 1285232792, 1282640792, 5, 0, 3),
(7, '20100824170632186', 3, 'lss', 1, 1285232792, 1282640792, 5, 0, 1),
(8, '20100824170632182', 3, 'lss', 1, 1285232792, 1282640792, 5, 3, 2),
(9, '20100824170905675', 3, 'lss', 1, 1285232945, 1282640945, 5, 3, 2),
(10, '20100824170905902', 3, 'lss', 1, 1285232945, 1282640945, 5, 4, 2),
(11, '20101227150714339', 3, 'lss', 1, 1296025634, 1293433634, 5, NULL, 3),
(12, '20101227151101303', 3, 'lss', 1, 1296025861, 1293433861, 5, NULL, 1),
(13, '20101227151101680', 3, 'lss', 1, 1296025861, 1293433861, 5, NULL, 1),
(14, '20101227151101225', 3, 'lss', 1, 1296025861, 1293433861, 5, NULL, 3),
(15, '20101227151101230', 3, 'lss', 1, 1296025861, 1293433861, 5, NULL, 3),
(16, '20110114154750699', 3, 'lss', 1, 1297583270, 1294991270, 20, NULL, 1),
(17, '20110114154750626', 3, 'lss', 1, 1297583270, 1294991270, 20, NULL, 1),
(18, '20110114154807647', 3, 'lss', 1, 1297583287, 1294991287, 50, NULL, 1),
(19, '20110702140430465', 55, 'hanfei', 1, 1312178670, 1309586670, 5, NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dg_delivery`
--

CREATE TABLE IF NOT EXISTS `dg_delivery` (
  `did` int(11) NOT NULL auto_increment,
  `areaid` int(11) NOT NULL,
  `areaname` varchar(50) default NULL,
  `serverfee` float(10,2) default NULL,
  `deliveryname` varchar(50) NOT NULL,
  `senddate` varchar(50) default NULL,
  `queryurl` varchar(255) default NULL,
  `first_weight` float(10,2) default NULL,
  `continue_weight` float(10,2) default NULL,
  `first_fee` float(10,2) default NULL,
  `continue_fee` float(10,2) default NULL,
  `fuel_fee` float(10,2) default '0.00',
  `customs_fee` float(10,2) default '0.00',
  `state` smallint(5) default '1',
  PRIMARY KEY  (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_discount`
--

CREATE TABLE IF NOT EXISTS `dg_discount` (
  `did` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `flag` char(2) default NULL,
  `about` varchar(255) default NULL,
  `pic` varchar(255) default NULL,
  `seokeywords` varchar(255) default NULL,
  `seodescription` varchar(255) default NULL,
  `body` text,
  `fromshop` varchar(255) default NULL,
  `discounttime` varchar(50) default NULL,
  `discounturl` varchar(255) default NULL,
  `listorder` smallint(5) default NULL,
  `addtime` int(11) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `dg_discount`
--

INSERT INTO `dg_discount` (`did`, `title`, `flag`, `about`, `pic`, `seokeywords`, `seodescription`, `body`, `fromshop`, `discounttime`, `discounturl`, `listorder`, `addtime`) VALUES
(1, '测试折扣信息', 'c', '简介信息', '/templates/default/images/431.jpg', NULL, NULL, '内容部分', '淘宝网', '永远有效', 'http://www.test.com', 50, 45646546),
(2, '卓越亚马逊低价狂潮第一波', 'h', '网上商城，卓越亚马逊低价狂潮第一波。手机、笔记本、MP3、摄影摄像、家用家电……一网打尽', 'attachment/discount/201009/20100901120350_238.', '', '', '<p>内容</p>', '', '永远有效', '', 50, 1283313830),
(3, '天天购物网韩妆特惠低至3.3折', 'h', '天天购物网11周年庆！美妆换季，特惠风暴，韩妆特惠低至3.3折', '/templates/default/images/634185020162624127.jpg', '', '', '天天购物网11周年庆！美妆换季，特惠风暴，韩妆特惠低至3.3折，全场满99元+9.9元超值换购价值55元的礼品。省钱就趁现在', '', '永远有效', '', 0, 1283323235),
(4, '艾格夏日季卖风清凉来袭', 'h', '艾格夏日季卖风，季末折扣3折、5折、7折。清凉来袭，马上抢购！', '/templates/default/images/430.jpg', '', '', '艾格夏日季卖风，季末折扣3折、5折、7折。清凉来袭，马上抢购', '', '永远有效', '', 0, 1283323380),
(5, '当当网万种畅品全网最低', 'c', '当当网万种畅销商品，全网最低！震撼价！抓紧时间赶快行动！~', '/templates/default/images/429.jpg', '', '', '当网万种畅销商品，全网最低！震撼价！抓紧时间赶快行动！~', '', '永远有效', '', 0, 1283323470),
(6, 'swatch腕上“时装”7.5折', 'c', '潮流达人们一定会拥有的Swatch，腕上“时装”7.5折玩翻“变装”。', '/templates/default/images/428.jpg', '', '', '潮流达人们一定会拥有的Swatch，腕上“时装”7.5折玩翻“变装”。', '', '永远有效', '', 0, 1283323548);

-- --------------------------------------------------------

--
-- 表的结构 `dg_favorite`
--

CREATE TABLE IF NOT EXISTS `dg_favorite` (
  `fid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `typeid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `goodsurl` varchar(255) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsprice` float(10,2) NOT NULL,
  `goodsimg` varchar(255) default NULL,
  `goodsseller` varchar(50) default NULL,
  `sellerurl` varchar(255) default NULL,
  `goodssite` varchar(50) default NULL,
  `siteurl` varchar(255) default NULL,
  `addtime` int(11) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- 转存表中的数据 `dg_favorite`
--

INSERT INTO `dg_favorite` (`fid`, `uid`, `typeid`, `uname`, `goodsurl`, `goodsname`, `goodsprice`, `goodsimg`, `goodsseller`, `sellerurl`, `goodssite`, `siteurl`, `addtime`) VALUES
(1, 1, 0, 'admin', '', '最新珍藏版CD', 500.00, '', 'xiaoli', 'http://www.taobao.com', '淘宝网', 'http://www.taobao.com', 45645646),
(2, 1, 1, 'admin', '', '收藏测试001', 40.00, '', 'xiaowang', 'http://www.taobao.com', '淘宝网', 'http://www.taobao.com', 54646546),
(7, 0, 2, '', 'http://item.taobao.com/auction/item_detail-0db2-a2f818f0f663824ad5e66af78ced2ad1.htm', '兰兰大码五皇冠', 138.00, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1NrlHXgtAXXc377MZ_032930.jpg_310x310.jpg', 'wyl_211314', 'http://lanlandm.taobao.com', '淘宝网', 'www.taobao.com', 1280731761),
(8, 0, 3, '', 'http://item.taobao.com/auction/item_detail-0db2-a2f818f0f663824ad5e66af78ced2ad1.htm', '兰兰大码五皇冠', 138.00, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1NrlHXgtAXXc377MZ_032930.jpg_310x310.jpg', 'wyl_211314', 'http://lanlandm.taobao.com', '淘宝网', 'www.taobao.com', 1280731857),
(9, 0, 4, '', 'http://item.taobao.com/auction/item_detail-0db2-a2f818f0f663824ad5e66af78ced2ad1.htm', '兰兰大码五皇冠', 138.00, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1NrlHXgtAXXc377MZ_032930.jpg_310x310.jpg', 'wyl_211314', 'http://lanlandm.taobao.com', '淘宝网', 'www.taobao.com', 1280732010),
(10, 0, 5, '', 'http://item.taobao.com/auction/item_detail-0db2-a2f818f0f663824ad5e66af78ced2ad1.htm', '兰兰大码五皇冠', 138.00, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1NrlHXgtAXXc377MZ_032930.jpg_310x310.jpg', 'wyl_211314', 'http://lanlandm.taobao.com', '淘宝网', 'www.taobao.com', 1280732149),
(11, 0, 0, '', 'http://item.taobao.com/auction/item_detail.jhtml?item_id=f92cc20f54eae486a6cf161d1b6faddf', 'ZZ~淑女气质 甜美木耳边宽松A字雪纺女式衬衫[cg0943]', 45.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1ehhHXaVbXXXn6ls0_035945.jpg_310x310.jpg', 'francis.zhu', 'http://i-zz.taobao.com?DOMAIN=i-zz', '淘宝网', 'http://www.taobao.com', 1280732149),
(12, 0, 0, '', 'http://item.taobao.com/auction/item_detail.jhtml?item_id=f92cc20f54eae486a6cf161d1b6faddf', 'ZZ~淑女气质 甜美木耳边宽松A字雪纺女式衬衫[cg0943]', 45.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1ehhHXaVbXXXn6ls0_035945.jpg_310x310.jpg', 'francis.zhu', 'http://i-zz.taobao.com', '淘宝网', 'http://www.taobao.com', 1280732149),
(13, 0, 0, '', 'http://item.taobao.com/auction/item_detail.jhtml?item_id=f92cc20f54eae486a6cf161d1b6faddf', 'ZZ~淑女气质 甜美木耳边宽松A字雪纺女式衬衫[cg0943]', 45.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1ehhHXaVbXXXn6ls0_035945.jpg_310x310.jpg', 'francis.zhu', 'http://i-zz.taobao.com', '淘宝网', 'http://www.taobao.com', 1280732149),
(14, 0, 0, '', 'http://item.taobao.com/item.htm?id=6057212668', '【only专柜代购】 淑女气质修身短袖 粉，灰，黑 三色 9201006', 49.00, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1FwxGXo4BXXc0gRna_122124.jpg_310x310.jpg', '否和日', 'http://shop35164836.taobao.com', '淘宝网', 'http://www.taobao.com', 1280732149),
(15, 0, 0, '', 'http://item.taobao.com/auction/item_detail.jhtml?item_id=9a82124da46b6152c26a32885fc513bc', '李维斯2010炫彩方正系列，超性感热裤，本店超级爆款，卖疯了', 99.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T1WvlHXaXEXXX6iafa_120113.jpg_310x310.jpg', '否和日', 'http://shop35164836.taobao.com', '淘宝网', 'http://www.taobao.com', 1280732149),
(16, 0, 0, '', 'http://item.taobao.com/item.htm?id=2220159654', '②冠自动发货◆完美国际点卡500元整550黄金/完美国际元宝550元宝', 500.00, 'http://img06.taobaocdn.com/bao/uploaded/i6/T1rgBmXaXpXXXkARc2_044803.jpg_310x310.jpg', '深港网盟', 'http://shop35968922.taobao.com', '淘宝网', 'http://www.taobao.com', 1280732149),
(17, 0, 0, '', 'http://item.taobao.com/auction/item_detail-0db2-a2f818f0f663824ad5e66af78ced2ad1.htm', '兰兰大码五皇冠', 138.00, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1NrlHXgtAXXc377MZ_032930.jpg_310x310.jpg', 'wyl_211314', 'http://lanlandm.taobao.com', '淘宝网', 'www.taobao.com', 1280732203),
(18, 0, 0, '', 'http://item.taobao.com/auction/item_detail.jhtml?item_id=f92cc20f54eae486a6cf161d1b6faddf', 'ZZ~淑女气质 甜美木耳边宽松A字雪纺女式衬衫[cg0943]', 45.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1ehhHXaVbXXXn6ls0_035945.jpg_310x310.jpg', 'francis.zhu', 'http://i-zz.taobao.com?DOMAIN=i-zz', '淘宝网', 'http://www.taobao.com', 1280732203),
(19, 0, 0, '', 'http://item.taobao.com/auction/item_detail.jhtml?item_id=f92cc20f54eae486a6cf161d1b6faddf', 'ZZ~淑女气质 甜美木耳边宽松A字雪纺女式衬衫[cg0943]', 45.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1ehhHXaVbXXXn6ls0_035945.jpg_310x310.jpg', 'francis.zhu', 'http://i-zz.taobao.com', '淘宝网', 'http://www.taobao.com', 1280732203),
(20, 0, 0, '', 'http://item.taobao.com/auction/item_detail.jhtml?item_id=f92cc20f54eae486a6cf161d1b6faddf', 'ZZ~淑女气质 甜美木耳边宽松A字雪纺女式衬衫[cg0943]', 45.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1ehhHXaVbXXXn6ls0_035945.jpg_310x310.jpg', 'francis.zhu', 'http://i-zz.taobao.com', '淘宝网', 'http://www.taobao.com', 1280732203),
(21, 0, 0, '', 'http://item.taobao.com/item.htm?id=6057212668', '【only专柜代购】 淑女气质修身短袖 粉，灰，黑 三色 9201006', 49.00, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1FwxGXo4BXXc0gRna_122124.jpg_310x310.jpg', '否和日', 'http://shop35164836.taobao.com', '淘宝网', 'http://www.taobao.com', 1280732203),
(22, 0, 0, '', 'http://item.taobao.com/auction/item_detail.jhtml?item_id=9a82124da46b6152c26a32885fc513bc', '李维斯2010炫彩方正系列，超性感热裤，本店超级爆款，卖疯了', 99.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T1WvlHXaXEXXX6iafa_120113.jpg_310x310.jpg', '否和日', 'http://shop35164836.taobao.com', '淘宝网', 'http://www.taobao.com', 1280732203),
(23, 0, 0, '', 'http://item.taobao.com/item.htm?id=2220159654', '②冠自动发货◆完美国际点卡500元整550黄金/完美国际元宝550元宝', 500.00, 'http://img06.taobaocdn.com/bao/uploaded/i6/T1rgBmXaXpXXXkARc2_044803.jpg_310x310.jpg', '深港网盟', 'http://shop35968922.taobao.com', '淘宝网', 'http://www.taobao.com', 1280732203),
(35, 3, 1, 'lss', 'http://item.taobao.com/item.htm?id=2433163658', '特价 梦娜●包芯丝连裤袜 透气舒适丝袜●W2383黑肤', 5.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T1A1NyXn0fXXb966w8_101209.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com', '淘宝网', 'www.taobao.com', 1280829334),
(36, 3, 4, 'lss', 'http://item.taobao.com/item.htm?id=5052729654', '素雅提花改良棉质短旗袍 显窈窕身材淑女旗袍●艾琳诗怡●20A09', 96.00, 'http://img07.taobaocdn.com/bao/uploaded/i7/T1cmxxXftFXXann2ZZ_032315.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com?DOMAIN=xixiliyichu', '淘宝网', 'www.taobao.com', 1280829352),
(34, 3, 5, 'lss', 'http://item.taobao.com/item.htm?id=2433163658', '特价 梦娜●包芯丝连裤袜 透气舒适丝袜●W2383黑肤', 5.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T1A1NyXn0fXXb966w8_101209.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com', '淘宝网', 'www.taobao.com', 1280829320),
(27, 3, 2, 'lss', 'http://item.taobao.com/item.htm?id=6057212668', '【only专柜代购】 淑女气质修身短袖 粉，灰，黑 三色 9201006', 49.00, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1FwxGXo4BXXc0gRna_122124.jpg_310x310.jpg', '否和日', 'http://shop35164836.taobao.com', '淘宝网', 'http://www.taobao.com', 1280736902),
(28, 3, 2, 'lss', 'http://item.taobao.com/auction/item_detail.jhtml?item_id=9a82124da46b6152c26a32885fc513bc', '李维斯2010炫彩方正系列，超性感热裤，本店超级爆款，卖疯了', 99.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T1WvlHXaXEXXX6iafa_120113.jpg_310x310.jpg', '否和日', 'http://shop35164836.taobao.com', '淘宝网', 'http://www.taobao.com', 1280736902),
(33, 3, 3, 'lss', 'http://item.taobao.com/item.htm?id=2433163658', '特价 梦娜●包芯丝连裤袜 透气舒适丝袜●W2383黑肤', 5.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T1A1NyXn0fXXb966w8_101209.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com', '淘宝网', 'www.taobao.com', 1280829316),
(30, 1, 2, 'admin', 'http://item.taobao.com/auction/item_detail.jhtml?item_id=7a57576d62be5980665065aea99d41bd&x_id=0db1&from=baobeihulian', '商品名称测试', 59.00, 'http://www.babydaigou.com/shangpin_img/0fd0a37ff9329cc0dadf1c35be7d43df.jpg', 'jakiee66\r\n', 'http://rate.taobao.com/user-rate-7508dbab264786682534f64f7a7bb1e1.htm', '淘宝网', 'http://www.taobao.com', 1280798099),
(32, 3, 2, 'lss', 'http://item.taobao.com/item.htm?id=2433163658', '特价 梦娜●包芯丝连裤袜 透气舒适丝袜●W2383黑肤', 5.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T1A1NyXn0fXXb966w8_101209.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com', '淘宝网', 'www.taobao.com', 1280829266),
(37, 3, 2, 'lss', 'http://item.taobao.com/item.htm?id=5052729654', '素雅提花改良棉质短旗袍 显窈窕身材淑女旗袍●艾琳诗怡●20A09', 96.00, 'http://img07.taobaocdn.com/bao/uploaded/i7/T1cmxxXftFXXann2ZZ_032315.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com?DOMAIN=xixiliyichu', '淘宝网', 'www.taobao.com', 1280829357),
(38, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=5052729654', '素雅提花改良棉质短旗袍 显窈窕身材淑女旗袍●艾琳诗怡●20A09', 96.00, 'http://img07.taobaocdn.com/bao/uploaded/i7/T1cmxxXftFXXann2ZZ_032315.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com?DOMAIN=xixiliyichu', '淘宝网', 'www.taobao.com', 1280829361),
(39, 3, 2, 'lss', 'http://item.taobao.com/item.htm?id=5052729654', '素雅提花改良棉质短旗袍 显窈窕身材淑女旗袍●艾琳诗怡●20A09', 96.00, 'http://img07.taobaocdn.com/bao/uploaded/i7/T1cmxxXftFXXann2ZZ_032315.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com?DOMAIN=xixiliyichu', '淘宝网', 'www.taobao.com', 1280829376),
(40, 3, 2, 'lss', 'http://item.taobao.com/item.htm?id=5052729654', '素雅提花改良棉质短旗袍 显窈窕身材淑女旗袍●艾琳诗怡●20A09', 96.00, 'http://img07.taobaocdn.com/bao/uploaded/i7/T1cmxxXftFXXann2ZZ_032315.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com?DOMAIN=xixiliyichu', '淘宝网', 'www.taobao.com', 1280829381),
(41, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=5052729654', '素雅提花改良棉质短旗袍 显窈窕身材淑女旗袍●艾琳诗怡●20A09', 96.00, 'http://img07.taobaocdn.com/bao/uploaded/i7/T1cmxxXftFXXann2ZZ_032315.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com?DOMAIN=xixiliyichu', '淘宝网', 'www.taobao.com', 1280829390),
(42, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=5052729654', '素雅提花改良棉质短旗袍 显窈窕身材淑女旗袍●艾琳诗怡●20A09', 96.00, 'http://img07.taobaocdn.com/bao/uploaded/i7/T1cmxxXftFXXann2ZZ_032315.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com?DOMAIN=xixiliyichu', '淘宝网', 'www.taobao.com', 1280829394),
(43, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=2433163658', '特价 梦娜●包芯丝连裤袜 透气舒适丝袜●W2383黑肤', 5.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T1A1NyXn0fXXb966w8_101209.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com?DOMAIN=xixiliyichu', '淘宝网', 'www.taobao.com', 1280829414),
(44, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=2433163658', '特价 梦娜●包芯丝连裤袜 透气舒适丝袜●W2383黑肤', 5.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T1A1NyXn0fXXb966w8_101209.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com?DOMAIN=xixiliyichu', '淘宝网', 'www.taobao.com', 1280829422),
(74, 3, 2, 'lss', 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8909155805', '特！重磅独家品！rosebullet冬季限量品复古蓝色气质百搭毛衣大衣', 235.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1lSxVXi4yXXcC7m7Y_030600.jpg_310x310.jpg', '程雪19820228', 'http://shop33099055.taobao.com', '淘宝网', 'www.taobao.com', 1293678160),
(47, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=5052729654', '素雅提花改良棉质短旗袍 显窈窕身材淑女旗袍●艾琳诗怡●20A09', 96.00, 'http://img07.taobaocdn.com/bao/uploaded/i7/T1cmxxXftFXXann2ZZ_032315.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com', '淘宝网', 'www.taobao.com', 1280831533),
(48, 7, 0, 'ceshi', 'http://item.taobao.com/auction/item_detail-0db1-56378df44b600b2602b9cb3bbde110dc.jhtml?is_b=1', '珍爱梦幻七彩幸运星发光抱枕WQ10 韩国设计/超炫视频展示生日礼物', 158.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1V5BsXfBzXXbrLafb_122742.jpg_310x310.jpg', '珍爱家居旗舰店', 'http://rate.taobao.com/user-rate-745020bbf7dfda089c2e6f9456954267--receivedOrPosted|0--buyerOrSeller|1.htm', '淘宝网', 'www.taobao.com', 1283244016),
(49, 7, 0, 'ceshi', 'http://item.taobao.com/item.htm?id=6764065988', '【上上屋】新款凉鞋 糖果色鱼嘴高跟凉鞋女鞋x903021', 39.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T15XBHXnXoXXanS6E8_071219.jpg_310x310.jpg', 'xizier1985', 'http://shangshangwu.taobao.com?DOMAIN=shangshangwu', '淘宝网', 'www.taobao.com', 1283244016),
(50, 7, 0, 'ceshi', 'http://item.taobao.com/item.htm?id=6764065988', '【上上屋】新款凉鞋 糖果色鱼嘴高跟凉鞋女鞋x903021', 39.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T15XBHXnXoXXanS6E8_071219.jpg_310x310.jpg', 'xizier1985', 'http://shangshangwu.taobao.com', '淘宝网', 'www.taobao.com', 1283244016),
(51, 7, 0, 'ceshi', 'http://item.taobao.com/item.htm?id=2166417889', 'F4【半价冲四冠】进口银白色超闪眼线眼影液 开亮眼头 超显眼大', 9.00, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1Vb0HXfRmXXXWOZcV_020025.jpg_310x310.jpg', '小馨monica的家', 'http://tbxx.taobao.com?DOMAIN=tbxx', '淘宝网', 'www.taobao.com', 1283843340),
(52, 7, 0, 'ceshi', 'http://item.taobao.com/auction/item_detail-0db1-56378df44b600b2602b9cb3bbde110dc.jhtml?is_b=1', '珍爱梦幻七彩幸运星发光抱枕WQ10 韩国设计/超炫视频展示生日礼物', 158.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1V5BsXfBzXXbrLafb_122742.jpg_310x310.jpg', '珍爱家居旗舰店', 'http://rate.taobao.com/user-rate-745020bbf7dfda089c2e6f9456954267--receivedOrPosted|0--buyerOrSeller|1.htm', '淘宝网', 'www.taobao.com', 1283843340),
(53, 7, 0, 'ceshi', 'http://item.taobao.com/item.htm?id=6764065988', '【上上屋】新款凉鞋 糖果色鱼嘴高跟凉鞋女鞋x903021', 39.00, 'http://img05.taobaocdn.com/bao/uploaded/i5/T15XBHXnXoXXanS6E8_071219.jpg_310x310.jpg', 'xizier1985', 'http://shangshangwu.taobao.com?DOMAIN=shangshangwu', '淘宝网', 'www.taobao.com', 1283843340),
(75, 3, 2, 'lss', 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8909155805', '特！重磅独家品！rosebullet冬季限量品复古蓝色气质百搭毛衣大衣', 235.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1lSxVXi4yXXcC7m7Y_030600.jpg_310x310.jpg', '程雪19820228', 'http://shop33099055.taobao.com', '淘宝网', 'www.taobao.com', 1293678585),
(76, 3, 5, 'lss', 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8909155805', '特！重磅独家品！rosebullet冬季限量品复古蓝色气质百搭毛衣大衣', 235.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1lSxVXi4yXXcC7m7Y_030600.jpg_310x310.jpg', '程雪19820228', 'http://shop33099055.taobao.com', '淘宝网', 'www.taobao.com', 1293678619),
(77, 3, 1, 'lss', 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8909155805', '特！重磅独家品！rosebullet冬季限量品复古蓝色气质百搭毛衣大衣', 235.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1lSxVXi4yXXcC7m7Y_030600.jpg_310x310.jpg', '程雪19820228', 'http://shop33099055.taobao.com', '淘宝网', 'www.taobao.com', 1293678946),
(70, 3, 5, 'lss', 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8909155805', '特！重磅独家品！rosebullet冬季限量品复古蓝色气质百搭毛衣大衣', 235.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1lSxVXi4yXXcC7m7Y_030600.jpg_310x310.jpg', '程雪19820228', 'http://shop33099055.taobao.com', '淘宝网', 'www.taobao.com', 1293677486),
(71, 3, 0, 'lss', 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8909155805', '特！重磅独家品！rosebullet冬季限量品复古蓝色气质百搭毛衣大衣', 235.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1lSxVXi4yXXcC7m7Y_030600.jpg_310x310.jpg', '程雪19820228', 'http://shop33099055.taobao.com', '淘宝网', 'www.taobao.com', 1293677801),
(72, 3, 1, 'lss', 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8909155805', '特！重磅独家品！rosebullet冬季限量品复古蓝色气质百搭毛衣大衣', 235.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1lSxVXi4yXXcC7m7Y_030600.jpg_310x310.jpg', '程雪19820228', 'http://shop33099055.taobao.com', '淘宝网', 'www.taobao.com', 1293678029),
(73, 3, 1, 'lss', 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8909155805', '特！重磅独家品！rosebullet冬季限量品复古蓝色气质百搭毛衣大衣', 235.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1lSxVXi4yXXcC7m7Y_030600.jpg_310x310.jpg', '程雪19820228', 'http://shop33099055.taobao.com', '淘宝网', 'www.taobao.com', 1293678116),
(62, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=5052729654', '8折清仓 素雅提花改良棉质短旗袍 ●艾琳诗怡●20A09 原价96', 76.00, 'http://img03.taobaocdn.com/bao/uploaded/i7/T1cmxxXftFXXann2ZZ_032315.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com', '淘宝网', 'www.taobao.com', 1293528300),
(78, 3, 2, 'lss', 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8909155805', '特！重磅独家品！rosebullet冬季限量品复古蓝色气质百搭毛衣大衣', 235.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1lSxVXi4yXXcC7m7Y_030600.jpg_310x310.jpg', '程雪19820228', 'http://shop33099055.taobao.com', '淘宝网', 'www.taobao.com', 1293678985),
(64, 3, 1, 'lss', 'http://item.taobao.com/item.htm?id=8472842872', '特 2010秋冬新款 加厚毛圈精梳棉女袜松口袜●阳光女孩●A6352', 9.20, 'http://img02.taobaocdn.com/bao/uploaded/i2/T18XFSXcxkXXXB92Z4_053008.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com', '淘宝网', 'www.taobao.com', 1293529866),
(79, 3, 2, 'lss', 'http://item.taobao.com/auction/item_detail.htm?item_num_id=8909155805', '特！重磅独家品！rosebullet冬季限量品复古蓝色气质百搭毛衣大衣', 235.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1lSxVXi4yXXcC7m7Y_030600.jpg_310x310.jpg', '程雪19820228', 'http://shop33099055.taobao.com', '淘宝网', 'www.taobao.com', 1293679100),
(80, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=8368059075', '2010冬季加绒款雪地靴子  男鞋女鞋子 保暖板鞋 爆款特价', 90.00, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1E5lSXi8tXXc5btM0_034655.jpg_310x310.jpg', '飘渺cheng', 'http://shop34678553.taobao.com', '淘宝网', 'www.taobao.com', 1294110163),
(81, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=8397479568', '2010秋冬新款 羊绒高领收摆毛衣 牵小狗的美女62058', 125.00, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1lgdRXalpXXa3Ti.0_035647.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com', '淘宝网', 'www.taobao.com', 1294110163),
(82, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=8397479568', '2010秋冬新款 羊绒高领收摆毛衣 牵小狗的美女62058', 125.00, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1lgdRXalpXXa3Ti.0_035647.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com', '淘宝网', 'www.taobao.com', 1294110163),
(83, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=5052729654', '8折清仓 素雅提花改良棉质短旗袍 ●艾琳诗怡●20A09 原价96', 76.00, 'http://img03.taobaocdn.com/bao/uploaded/i7/T1cmxxXftFXXann2ZZ_032315.jpg_310x310.jpg', '西西里衣橱', 'http://xixiliyichu.taobao.com', '淘宝网', 'www.taobao.com', 1294110163),
(87, 3, 0, 'lss', 'http://item.taobao.com/item.htm?id=3870150349', 'CAT头层牛皮靴军靴雪地靴 高帮户外靴男式靴子red wing', 155.00, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1by8TXcJnXXbQSXc9_101926.jpg_310x310.jpg', '飘渺cheng', 'http://shop34678553.taobao.com', '淘宝网', 'www.taobao.com', 1294114465),
(88, 55, 0, 'hanfei', 'http://item.taobao.com/item.htm?id=10589134796&', '调整型文胸 聚拢缪诗蝴蝶兰蕾丝刺绣超聚拢调整型文胸 性感胸罩', 69.00, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1rXqhXapjXXaRJWAZ_031327.jpg_310x310.jpg', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', 1309765991),
(89, 55, 0, 'hanfei', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', 98.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', 1309765991),
(90, 55, 0, 'hanfei', 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', 27.80, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', 1309766278),
(91, 55, 0, 'hanfei', 'http://auction1.paipai.com/104C3B000000000000103B2E07C7918F?PTAG=20083.6.9', '●亮片火烈鸟标语印花T（MR-09045） ', 49.00, 'iamges/noimg60.gif', '3886096', '', '拍拍1', 'www.paipai.com', 1309766598),
(92, 60, 0, 'ceshi1', 'http://item.taobao.com/item.htm?id=10640950964', '苹果数据线 ipad ipod iphone4 3gs touch数据线 USB数据线', 6.50, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1GfGeXmJrXXbZ5qvc_125719.jpg_310x310.jpg', 'michael_zhao_09', 'http://shop58556295.taobao.com', '淘宝网', 'www.taobao.com', 1309872314),
(93, 60, 0, 'ceshi1', 'http://item.taobao.com/item.htm?id=9268518425&ad_id=&am_id=&cm_id=&pm_id=', 'Baboos正品 iphone 4 3G/3GS iPod Touch nano IPAD IPOD数据线', 19.00, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1pLF7XiNgXXbjUT7U_015907.jpg_310x310.jpg', 'null', '', '淘宝网', 'www.taobao.com', 1309872314),
(94, 60, 0, 'ceshi1', 'http://item.taobao.com/item.htm?id=8650747427&', '【冲冠促销】火爆热销夏日最新款蓬发造型道具5件套', 3.00, 'http://img04.taobaocdn.com/bao/uploaded/i4/T17xlTXglkXXcKxrjX_114313.jpg_310x310.jpg', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', 1309872314),
(95, 60, 0, 'ceshi1', 'http://item.taobao.com/item.htm?id=9854411763', '买5送1大牌原单复古袜彩色堆堆袜全棉短袜/中筒女袜子vivi推荐', 5.60, 'http://img04.taobaocdn.com/bao/uploaded/i4/T1dHX7XXpbXXXroysZ_032627.jpg_310x310.jpg', 'bluefish323', 'http://bluefish323.taobao.com', '淘宝网', 'www.taobao.com', 1309872314),
(96, 70, 0, 'sbby545', 'http://item.taobao.com/item.htm?id=4140582806', 'null', 0.00, 'null', 'null', '', '淘宝网', 'www.taobao.com', 1310357484),
(100, 100, 0, 'badxiaofei', 'http://item.taobao.com/item.htm?id=5005161552', '红色 5米 嘉宾题名长卷/商务签到卷轴/圣旨签到簿/特价婚庆签名轴', 27.80, 'http://img01.taobaocdn.com/bao/uploaded/i5/T1WhlxXmXyXXbpVns8_102009.jpg_310x310.jpg', '51佳缘喜铺', 'http://51xipu.taobao.com', '淘宝网', 'www.taobao.com', 1312643647),
(99, 99, 0, 'senyi168', 'http://item.taobao.com/item.htm?id=8872511864', '新款秒杀特价 男圆领短袖T恤 男T恤 男短袖T恤男', 45.00, 'http://img02.taobaocdn.com/bao/uploaded/i6/T1LSGcXmBeXXbZlnEW_024717.jpg_310x310.jpg', '爱上无所谓', 'http://shop33280480.taobao.com', '淘宝网', 'www.taobao.com', 1312532128),
(101, 100, 0, 'badxiaofei', 'http://item.taobao.com/item.htm?id=10890644420', '[限量]STAYREAL x Molly时尚巧物包+ ELLE Girl杂志6月号魔力版', 55.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T12xBPXhhBXXcNjzQ__110116.jpg_310x310.jpg', '最熟悉陌生人皓', 'http://stayreal.taobao.com', '淘宝网', 'www.taobao.com', 1312692753),
(102, 100, 0, 'badxiaofei', 'http://item.taobao.com/item.htm?id=10890644420', '[限量]STAYREAL x Molly时尚巧物包+ ELLE Girl杂志6月号魔力版', 55.00, 'http://img01.taobaocdn.com/bao/uploaded/i1/T12xBPXhhBXXcNjzQ__110116.jpg_310x310.jpg', '最熟悉陌生人皓', 'http://stayreal.taobao.com', '淘宝网', 'www.taobao.com', 1312692764);

-- --------------------------------------------------------

--
-- 表的结构 `dg_goods`
--

CREATE TABLE IF NOT EXISTS `dg_goods` (
  `gid` int(11) NOT NULL auto_increment,
  `gtypeid` int(11) default NULL,
  `usertype` smallint(2) NOT NULL,
  `uname` varchar(50) NOT NULL COMMENT '当前操作用户',
  `goodsurl` varchar(255) default NULL,
  `goodsname` varchar(255) default NULL,
  `goodsprice` float(10,2) default NULL,
  `goodsseller` varchar(50) default NULL,
  `goodsimg` varchar(255) default NULL,
  `sellerurl` varchar(255) default NULL,
  `shopname` varchar(50) default NULL,
  `rindex` tinyint(3) default '3',
  `views` int(11) default NULL,
  `buynum` int(11) default NULL,
  `why` text,
  `about` text,
  `listorder` int(11) default '50',
  `flag` char(2) default NULL,
  `Audit` int(2) NOT NULL default '0',
  `addtime` int(11) default NULL,
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- 转存表中的数据 `dg_goods`
--

INSERT INTO `dg_goods` (`gid`, `gtypeid`, `usertype`, `uname`, `goodsurl`, `goodsname`, `goodsprice`, `goodsseller`, `goodsimg`, `sellerurl`, `shopname`, `rindex`, `views`, `buynum`, `why`, `about`, `listorder`, `flag`, `Audit`, `addtime`) VALUES
(60, 10, 0, '', 'http://item.taobao.com/item.htm?id=10589134796&', '调整型文胸 聚拢缪诗蝴蝶兰蕾丝刺绣超聚拢调整型文胸 性感胸罩', 69.00, '私房小女', 'attachment/order/201106/20110624152514_367.jpg', 'http://mmusestb.taobao.com', '淘宝网', 1, 82, 35, '整型文胸 聚拢缪诗蝴蝶兰蕾丝刺绣超聚拢调整型文胸 性感胸罩 ', '整型文胸 聚拢缪诗蝴蝶兰蕾丝刺绣超聚拢调整型文胸 性感胸罩', 1, 'c', 1, 1308900315),
(61, 10, 0, '', 'http://item.taobao.com/item.htm?id=10022686104&', '缪诗星语心愿超聚拢收副乳型调整文胸AB杯', 69.00, '私房小女', 'attachment/order/201106/20110624152625_991.jpg', 'http://mmusestb.taobao.com', '淘宝网', 1, 49, 27, '缪诗星语心愿超聚拢收副乳型调整文胸AB杯 ', '缪诗星语心愿超聚拢收副乳型调整文胸(AB杯)', 2, 'c', 1, 1308900399),
(62, 10, 0, '', 'http://item.taobao.com/item.htm?id=10022658980&', '缪诗 专柜正品 郁金香刺绣玫瑰精油按摩聚拢调整型光面无痕文胸', 99.00, '私房小女', 'attachment/order/201106/20110624152712_925.jpg', 'http://mmusestb.taobao.com', '淘宝网', 3, 66, 27, '缪诗 专柜正品 郁金香刺绣玫瑰精油按摩聚拢调整型光面无痕文胸 ', '缪诗 专柜正品 郁金香刺绣玫瑰精油按摩聚拢调整型光面无痕文胸', 1, 'c', 1, 1308900432),
(63, 10, 0, '', 'http://item.taobao.com/item.htm?id=9995361456&', '缪诗淡雅伊人正品纯棉调整型前扣文胸/性感内衣', 89.00, '私房小女', 'attachment/order/201106/20110624152754_991.jpg', 'http://mmusestb.taobao.com', '淘宝网', 1, 22, 1, '缪诗淡雅伊人正品纯棉调整型前扣文胸/性感内衣 ', '缪诗淡雅伊人正品纯棉调整型前扣文胸/性感内衣', 1, 'c', 1, 1308900474),
(64, 10, 0, '', 'http://item.taobao.com/item.htm?id=10022325378&', '缪诗 专柜正品  野性能量无痕聚拢调整型U型文胸', 99.00, '私房小女', 'attachment/order/201106/20110624152830_406.jpg', 'http://mmusestb.taobao.com', '淘宝网', 3, 156, 24, '缪诗 专柜正品 野性能量无痕聚拢调整型U型文胸 ', '缪诗 专柜正品 野性能量无痕聚拢调整型U型文胸', 1, 'c', 1, 1309962683),
(65, 10, 0, '', 'http://item.taobao.com/item.htm?id=10022680596&', '【淘金币】专柜正品 香榭丽蕾丝刺绣聚拢调整型文胸（A杯、B杯', 69.00, '私房小女', 'attachment/order/201106/20110624152933_661.jpg', 'http://mmusestb.taobao.com', '淘宝网', 1, 44, 4, '专柜正品 香榭丽蕾丝刺绣聚拢调整型文胸（A杯、B杯 ', '专柜正品 香榭丽蕾丝刺绣聚拢调整型文胸（A杯、B杯)', 1, 'c', 1, 1308900573),
(9, 1, 0, '', 'http://item.taobao.com/item.htm?id=5277483154', '两件包邮  韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', 68.00, '汀汀噹噹bb', 'templates/default/images/7686.jpg', 'http://shop36162170.taobao.com', '淘宝网', 3, 36, 8, '两件包邮  韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', '两件包邮&nbsp; 韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', 2, 'c', 0, 1308901100),
(10, 2, 0, '', 'http://item.taobao.com/item.htm?id=3963185588', '09秋冬新款 VIVI推荐款~磨砂兔毛系带粗高跟短靴 踝靴 女靴', 59.00, '坚持8', 'templates/default/images/7686.jpg', 'http://shop35062404.taobao.com', '淘宝网', 3, 15, 0, '09秋冬新款 VIVI推荐款~磨砂兔毛系带粗高跟短靴 踝靴 女靴', '09秋冬新款 VIVI推荐款~磨砂兔毛系带粗高跟短靴 踝靴 女靴', 2, 'c', 0, 1308901094),
(11, 2, 0, '', 'http://item.taobao.com/item.htm?id=5014236996', '2010新款外贸roxy平底夹脚人字拖鞋/凉拖/可爱沙滩拖/凉鞋/后跟', 15.00, 'roxy88', 'templates/default/images/7686.jpg', 'http://shop58044481.taobao.com', '淘宝网', 3, 18, 1, '2010新款外贸roxy平底夹脚人字拖鞋/凉拖/可爱沙滩拖/凉鞋/后跟', '2010新款外贸roxy平底夹脚人字拖鞋/凉拖/可爱沙滩拖/凉鞋/后跟', 2, 'c', 0, 1308901086),
(12, 2, 0, '', 'http://item.taobao.com/item.htm?id=3846036928', '潮流女鞋|09秋季新款防水台圆头罗马及踝靴短靴2638黑色', 43.00, '书香小筑2008', 'templates/default/images/7686.jpg', 'http://shoe-jp.taobao.com', '淘宝网', 3, 20, 0, '潮流女鞋|09秋季新款防水台圆头罗马及踝靴短靴2638黑色', '潮流女鞋|09秋季新款防水台圆头罗马及踝靴短靴2638黑色', 2, 'c', 0, 1308901080),
(13, 3, 0, '', 'http://item.taobao.com/item.htm?id=3381873206', '专柜小样 Lancome兰蔻煽色流光炫色口红308# 非常漂亮粉嫩裸妆色', 25.00, '甜筒小姐', 'templates/default/images/7686.jpg', 'http://shop35688066.taobao.com?NUM=35688066', '淘宝网', 3, 13, 0, '专柜小样 Lancome兰蔻煽色流光炫色口红308# 非常漂亮粉嫩裸妆色', '专柜小样 Lancome兰蔻煽色流光炫色口红308# 非常漂亮粉嫩裸妆色', 2, 'c', 0, 1308901073),
(14, 3, 0, '', 'http://item.taobao.com/auction/item_detail--.jhtml?taomi=8aR2LQR6GJA6k9U0E8zvDxDmmOhPGDqNXSxkmQVkhIM%2FCbr%2B14aFXL6JvvUvipiYbbrRuDorE0gdguftURZN5RscPSPPcCKTaJFlxXOwzbCSIp%2BSPPgL2%2FarhD0G5PXAdMZKDYMbpUYzbm%2BuGkgqrupL8ssZ9rnFliWiAYu%2F6xIWWmn78W55Y', 'H61073 SHILLS超炫光BB无瑕霜樱花飞舞限量版50ML 保湿专柜正品', 29.90, '柠檬绿茶', 'templates/default/images/7686.jpg', 'http://nmlch.taobao.com', '淘宝网', 3, 13, 0, 'H61073 SHILLS超炫光BB无瑕霜樱花飞舞限量版50ML 保湿专柜正品', 'H61073 SHILLS超炫光BB无瑕霜(樱花飞舞限量版)50ML 保湿专柜正品', 2, 'c', 0, 1308901067),
(15, 3, 0, '', 'http://item.taobao.com/item.htm?id=1746097135', '日本杂志连续3年评选NO.1资生堂自然之眉墨铅笔眉笔 日本直送', 23.00, 'cosmoaily', 'templates/default/images/7686.jpg', 'http://cosmoaily.taobao.com', '淘宝网', 3, 21, 0, '日本杂志连续3年评选NO.1资生堂自然之眉墨铅笔眉笔 日本直送', '日本杂志连续3年评选NO.1资生堂自然之眉墨铅笔(眉笔) 日本直送', 2, 'c', 0, 1308901061),
(16, 3, 0, '', 'http://item.taobao.com/item.htm?id=1518664192', 'R 送粉扑【百年宫廷御用】谢馥春胭脂膏珠光桃红礼盒装', 39.90, '开心阿米果', 'templates/default/images/7686.jpg', 'http://ghhzp.taobao.com', '淘宝网', 3, 16, 0, 'R 送粉扑【百年宫廷御用】谢馥春胭脂膏珠光桃红礼盒装', 'R 送粉扑【百年宫廷御用】谢馥春胭脂膏珠光(桃红)礼盒装', 2, 'c', 0, 1308901053),
(17, 3, 0, '', 'http://item.taobao.com/item.htm?id=2166417889', 'F4【半价冲四冠】进口银白色超闪眼线眼影液 开亮眼头 超显眼大', 9.00, '小馨monica的家', 'templates/default/images/7686.jpg', 'http://tbxx.taobao.com?DOMAIN=tbxx', '淘宝网', 3, 25, 1, 'F4【半价冲四冠】进口银白色超闪眼线眼影液 开亮眼头 超显眼大', 'F4【半价冲四冠】进口银白色超闪眼线眼影液 开亮眼头 超显眼大', 2, 'c', 0, 1308901047),
(18, 4, 0, '', 'http://item.taobao.com/item.htm?id=6288253468', '特 极美推荐 重磅真丝 100%SILK 35姆米 60/米', 15.00, '小小黑崽', 'templates/default/images/7686.jpg', 'http://zzzztsyle.taobao.com?DOMAIN=zzzztsyle', '淘宝网', 3, 28, 0, '特 极美推荐 重磅真丝 100%SILK 35姆米 60/米', '特 极美推荐 重磅真丝 100%SILK 35姆米 60/米', 2, 'h', 0, 1308901041),
(19, 4, 0, '', 'http://item.taobao.com/item.htm?id=5031797615', '女士时尚居家拖鞋 情侣拖鞋 小碎花室内拖鞋 特价拖鞋', 9.20, '新易发鞋业', 'templates/default/images/7686.jpg', 'http://shop59562172.taobao.com', '淘宝网', 3, 24, 1, '女士时尚居家拖鞋 情侣拖鞋 小碎花室内拖鞋 特价拖鞋', '女士时尚居家拖鞋 情侣拖鞋 小碎花室内拖鞋 特价拖鞋', 2, 'c', 0, 1308901029),
(20, 4, 0, '', 'http://item.taobao.com/item.htm?id=4792997734', 'E7347 简家 金冠 出口日本原单超柔长毛绒心型靠垫 抱枕 超细纤维', 12.80, '居家家', 'templates/default/images/7686.jpg', 'http://jianjia.taobao.com?DOMAIN=jianjia', '淘宝网', 3, 22, 1, 'E7347 简家 金冠 出口日本原单超柔长毛绒心型靠垫 抱枕 超细纤维', 'E7347 简家 金冠 出口日本原单超柔长毛绒心型靠垫 抱枕 超细纤维', 2, 'c', 0, 1308901022),
(21, 4, 0, '', 'http://item.taobao.com/auction/item_detail-0db1-56378df44b600b2602b9cb3bbde110dc.jhtml?is_b=1', '珍爱梦幻七彩幸运星发光抱枕WQ10 韩国设计/超炫视频展示生日礼物', 158.00, '珍爱家居旗舰店', 'templates/default/images/7686.jpg', 'http://rate.taobao.com/user-rate-745020bbf7dfda089c2e6f9456954267--receivedOrPosted|0--buyerOrSeller|1.htm', '淘宝网', 3, 24, 1, '珍爱梦幻七彩幸运星发光抱枕WQ10 韩国设计/超炫视频展示生日礼物', '珍爱梦幻七彩幸运星发光抱枕WQ10 韩国设计/超炫视频展示生日礼物', 2, 'c', 0, 1308901015),
(55, 2, 1, 'l8094248', 'http://item.taobao.com/item.htm?id=8368059075', '2010冬季加绒款雪地靴子  男鞋女鞋子 保暖板鞋 爆款特价', 90.00, '飘渺cheng', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1E5lSXi8tXXc5btM0_034655.jpg_310x310.jpg', 'http://shop34678553.taobao.com', '淘宝网', 5, 34, 0, 'NIKE的鞋子', '', 50, 'c', 1, 1293768166),
(51, 2, 1, 'l8094248', 'http://item.taobao.com/item.htm?id=8050142877', '李维斯男鞋休闲鞋 levis懒虫一脚蹬套脚经典休闲鞋子褶皱板鞋男鞋', 45.00, '360运动', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1fIFOXeXBXXaKAfQ8_100431.jpg_310x310.jpg', 'http://9565.taobao.com', '淘宝网', 3, 55, 0, '很好看，穿着也舒服！', '', 50, 'c', 0, 1293765817),
(23, 5, 0, '', 'http://item.taobao.com/item.htm?id=6701460287', '7.21新品入！昕薇推荐 摩洛哥波西米亚风珍珠款发带/发绳', 13.80, '暴暴蓝ashia', 'templates/default/images/7686.jpg', 'http://shop33900281.taobao.com?NUM=33900281', '淘宝网', 3, 29, 1, '7.21新品入！昕薇推荐 摩洛哥波西米亚风珍珠款发带/发绳', '7.21新品入！昕薇推荐 摩洛哥波西米亚风珍珠款发带/发绳', 2, 'c', 0, 1308901008),
(24, 5, 0, '', 'http://item.taobao.com/item.htm?id=6143756507', 'H&M正品 摩洛哥风情手链', 22.00, 'shinyshiny1', 'templates/default/images/7686.jpg', 'http://opiumm.taobao.com', '淘宝网', 3, 41, 3, 'H&M正品 摩洛哥风情手链', 'H&amp;M正品 摩洛哥风情手链', 2, 'c', 0, 1308901000),
(25, 6, 0, '', 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正 20克 买10送1哦', 0.99, 'yemmey', 'templates/default/images/7686.jpg', 'http://kldz.taobao.com?DOMAIN=kldz', '淘宝网', 3, 57, 19, '缅甸酸角片 味道纯正 20克 买10送1哦', '缅甸酸角片 味道纯正 20克 买10送1哦', 2, 'c', 0, 1308900994),
(26, 6, 0, '', 'http://item.taobao.com/item.htm?id=2489358461', '【稀奇】百度上查不到的特产藤蔑果野生果子回甘爽口180g', 6.00, 'yemmey', 'templates/default/images/7686.jpg', 'http://kldz.taobao.com', '淘宝网', 3, 24, 2, '【稀奇】百度上查不到的特产藤蔑果野生果子回甘爽口180g', '【稀奇】百度上查不到的特产藤蔑果野生果子回甘爽口180g', 2, 'c', 0, 1308900987),
(27, 6, 0, '', 'http://item.taobao.com/item.htm?id=4770192509', 'A3002 好评+回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', 16.00, '美然阁', 'templates/default/images/7686.jpg', 'http://meirange.taobao.com?DOMAIN=meirange', '淘宝网', 3, 60, 8, 'A3002 好评+回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', 'A3002 好评+回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', 2, 'c', 0, 1308900979),
(28, 23, 0, '', 'http://item.taobao.com/item.htm?id=4770192509', 'A3002 好评+回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', 16.00, '美然阁', 'attachment/order/201009/20100901154844_640.jpg', 'http://meirange.taobao.com', '淘宝网', 3, 34, 0, '推荐原因', '内容', 2, '', 0, 1308900972),
(29, 1, 0, '', 'http://item.taobao.com/item.htm?id=8025763935', '魔麦 2010秋冬 女 韩版新款双排扣耸肩修身呢大衣/毛呢外套 12808', 248.00, '', 'attachment/order/201010/20101029104000_123.jpg', '', '淘宝网', 3, 18, 0, '', '', 2, '', 0, 1308900964),
(30, 2, 0, '', 'http://item.taobao.com/item.htm?id=8633036658', 'xiezi', 288.00, 'ww', '', 'http://item.taobao.com/item.htm?id=8633036658', 'ds', 3, 69, 0, 'sds', 'dsds<br />', 50, 'h', 0, 1293766737),
(31, 4, 0, '', 'http://item.taobao.com/item.htm?id=8633036658', '2010冬装新款 女童打底衣 打底裤子 夹绒两件套 灰', 69.00, '1卡尔菲特专卖', 'attachment/order/201012/20101228102530_139.jpg', 'http://shop34733610.taobao.com', '淘宝网', 3, 66, 0, '', '', 0, 'h', 0, 1293767269),
(32, 4, 0, '', 'http://item.tmall.com/item.htm?id=7342598443&prc=1&source=dou&cm_cat=50033826', '2010冬装新款 女童打底衣 打底裤子 夹绒两件套 灰', 69.00, '1卡尔菲特专卖', 'attachment/order/201012/20101228102806_285.jpg', 'http://shop34733610.taobao.com', '淘宝网', 3, 22, 0, '', '', 2, '', 0, 1308900950),
(53, 3, 1, 'l8094248', 'http://item.taobao.com/item.htm?id=2684873118', '全民疯抢护肤 去黑头导出液送收毛孔精华 正品去黑头产品套装包邮', 145.00, '', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1DIXWXilnXXaYzcQ9_103000.jpg_310x310.jpg', '', '淘宝网', 3, 16, 0, '效果很显著', '', 50, 'c', 0, 1293765719),
(54, 4, 1, 'l8094248', 'http://item.taobao.com/item.htm?id=5057027321', '外出必备 韩版裤脚夹裤夹裤边夹 防裤子过长触地 多色随机', 2.30, 'bigbadbaby', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1zSxyXgXAXXXlgkM0_035848.jpg_310x310.jpg', 'http://yijilai.taobao.com', '淘宝网', 3, 19, 0, '太方便了！', '', 50, 'c', 0, 1294903639),
(56, 2, 1, 'l8094248', 'http://item.taobao.com/item.htm?id=3397472098', '热卖秋冬男鞋男士休闲鞋 时尚板鞋37码38码，至45码 偏大一码', 69.00, 'newsmp3', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1mnxMXjxvXXXsP.za_122532.jpg_310x310.jpg', 'http://shop33863738.taobao.com', '淘宝网', 5, 74, 11, '太好了！太好了！太好了！太好了！太好了！太好了！', '', 50, 'c', 1, 1293768562),
(50, 2, 1, 'l8094248', 'http://item.taobao.com/item.htm?id=4372352109', '2010冬款 VANS 保暖加厚英伦休闲鞋男鞋子 男士板鞋 火爆热卖', 85.00, '飘渺cheng', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1hONPXeljXXa1n.36_063325.jpg_310x310.jpg', 'http://shop34678553.taobao.com', '淘宝网', 3, 29, 1, '时尚又不是温暖，实在是舒服！', '', 50, 'c', 1, 1293765851),
(57, 1, 0, '', 'http://item.tmall.com/item.htm?id=8943155424&is_b=1', '全民疯抢 原价198 现158 男式外套 韩版男士小风衣 黑', 198.00, '寻宝热线', 'attachment/order/201101/20110113173642_782.jpg', 'http://rm1986.taobao.com', '淘宝网', 1, 26, 0, '', '', 2, '', 1, 1308900941),
(58, 10, 0, '', 'http://item.taobao.com/item.htm?id=9995201122&', '一片式文胸 缪诗本色诱惑正品豹纹款性感调整型内衣 无痕文胸', 99.00, '私房小女', 'attachment/order/201106/20110624151243_833.jpg', 'http://mmusestb.taobao.com', '淘宝网', 3, 97, 25, '小M说：\n这款文胸的生产厂家就是为两年前为我们生产一片式文胸的外贸工厂. 这家厂使用专业的进口设备, 专为欧洲大牌定牌生产一片式文胸, 主要出口法国. 欧洲女性崇尚自然胸型', '<p><span style="color:#ff3366;font-weight:bold;">小M说：</span><br /> 这款文胸的生产厂家就是为两年前为我们生产一片式文胸的外贸工厂. 这家厂使用专业的进口设备, 专为欧洲大牌定牌生产一片式文胸, 主要出口法国. 欧洲女性崇尚自然胸型, 很多欧洲一线大牌都使用薄杯, 甚至无模杯蕾丝罩杯, 鸡心位分得比较开. 所以很多MM对我们的老版的一片式文胸的评价是:质量好, 材质一流, 舒服但聚拢效果不明显. 所以这次在设计新款的时候, 小M家设计师特意按亚洲女性的身材重新设计了版型,<strong>在秉承一惯的高级工艺和材质基础上, 新改良的<span style="color:#ff3399;">超强聚拢版</span>一定会给你带来更完美的体验.</strong><br /> <br /> 这是MM对我们老版一片式的评价, 因为大家对我们质量的任可, 小M才下决心推出改良版,毕竟一片式文胸的面料和生产成本很高的, 如今的淘宝低价横行, 没有MM们的好评, 小M还真是不敢轻易下定单呀.<br /> </p> <p><span style="color:#333333;font-weight:bold;">关于面料:</span><br /> 一片式内衣的舒适度是内衣中最好的. 整个文胸 除搭扣处没有一个线头，所有接口都是采用一片式热压技术一次成型压制出来的, 连钢圈处也能做到平滑过渡.<strong>欧洲进口的面料, 如同第二层肌肤般柔滑透气</strong>. 这样质量的文胸在商场里起码是三百多的价格哦.</p> <p><span style="color:#333333;font-weight:bold;">关于效果:</span><br /> 一片式的好处就不多说了, 消除了普通文胸的压力点, 穿起来自然是非常舒服的. 要告诉大家的是这次采用的<strong>掌托式立体模杯, 聚拢效果超强</strong>, 再加上加高土台,<strong>穿上去A杯小胸MM也可以变身“乳沟皇后”</strong>哦. 11CM宽的侧比, 收副乳也不用担心小肉肉勒成一节节的尴尬.到底效果有多好, 大家还是看模特实拍图吧, 我家模特Nana 穿了这款简直是劲爆哦。曼妮芬有款秘密武器聚拢杯型就是和这款一样的。</p> <p>裤子算小平角低腰款，M适合臀围90以内裤子26以内，L适合臀围97以内裤子29以内</p>', 50, 'c', 1, 1308899960),
(59, 10, 0, '', 'http://item.taobao.com/item.htm?id=10759995600&', '缪诗 正品 豹纹部落 豹纹印花系带绕脖调整型超聚拢文胸 买上送下', 168.00, '私房小女', 'attachment/order/201106/20110624151407_740.jpg', 'http://mmusestb.taobao.com', '淘宝网', 3, 143, 85, '这款绕脖式的内衣，很适合夏天穿吊带衫或者露背裙的时候穿，聚拢效果也很好，推荐', '<img align="middle" src="http://img02.taobaocdn.com/imgextra/i2/152092278/T2yjVuXiXMXXXXXXXX_!!152092278.jpg" />', 50, 'c', 1, 1308899969),
(66, 10, 0, '', 'http://item.taobao.com/item.htm?id=10008349082&', '【淘金币】缪诗 正品 娇鹿迷情系带挂脖超聚拢文胸', 89.00, '私房小女', 'attachment/order/201106/20110624153012_132.jpg', 'http://mmusestb.taobao.com', '淘宝网', 1, 142, 27, '【淘金币】缪诗 正品 娇鹿迷情系带挂脖超聚拢文胸 ', '【淘金币】缪诗 正品 娇鹿迷情系带挂脖超聚拢文胸', 1, 'c', 1, 1308900636),
(67, 10, 0, '', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', 98.00, '私房小女', 'attachment/order/201106/20110624153121_413.jpg', 'http://mmusestb.taobao.com', '淘宝网', 1, 203, 52, '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 ', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', 1, 'c', 1, 1308900681),
(68, 1, 0, '', 'http://item.taobao.com/item.htm?id=10767240434&', '缪诗 正品 亮彩红蕴 时尚民族风分体式泳衣两件套', 129.00, '私房小女', 'attachment/order/201106/20110624153153_427.jpg', 'http://mmusestb.taobao.com', '淘宝网', 1, 163, 34, '缪诗 正品 亮彩红蕴 时尚民族风分体式泳衣两件套 ', '缪诗 正品 亮彩红蕴 时尚民族风分体式泳衣两件套', 1, 'c', 1, 1308900906),
(69, 1, 0, '', 'http://item.taobao.com/item.htm?id=10722453526&', '【淘金币】缪诗 正品 恋爱季节 棉质舒适聚拢文胸 买衣送裤', 79.00, '私房小女', 'attachment/order/201106/20110624153253_843.jpg', 'http://mmusestb.taobao.com', '淘宝网', 1, 243, 56, '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 买衣送裤 ', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 买衣送裤', 1, 'c', 1, 1311781382),
(70, 2, 1, '小张', 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正的酸角美食20克 店庆促销10送1', 0.99, 'yemmey', 'http://img04.taobaocdn.com/bao/uploaded/i8/T171dHXettXXbJZ7za_092025.jpg_310x310.jpg', 'http://shop36255505.taobao.com ', '淘宝网', 4, NULL, NULL, '的公司股东', NULL, 50, 'h', 0, 1312517666),
(71, 4, 1, '小张', 'http://item.taobao.com/item.htm?id=10944582046', '国内现货正品AF代购Abercrombie印第安刺绣头像亨利领短T恤补货', 399.00, '加州甜甜橙', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1YZtsXnFtXXbXIuI._082107.jpg_310x310.jpg', 'http://shop59962140.taobao.com', '淘宝网', 3, NULL, NULL, '发达省份', NULL, 50, 'h', 0, 1313396219),
(74, 9, 0, '', 'http://item.taobao.com/item.htm?id=12754324073', '占风 薄款 男士牛仔裤 男式牛仔裤 男装韩版牛仔裤 033U ', 80.00, '官方', 'attachment/order/201108/20110824155358_607.jpg', 'damiyu.taobao.com', '大米鱼淘宝店铺', 4, 26, 7, '产品直销，减少代购流程，直接生成运单！', '此商品为我商城直销产品，无需代购就能直接运至您所在的国家，减少开支！', 10, 'w', 1, 1314585267),
(73, 23, 0, '', 'http://www.onlinecomponents.com/te-connectivity-amp-brand_173630-1.html?p=10263194', '173630-1', 0.50, '', 'attachment/order/201108/20110821104432_443.jpg', '', '', 1, 15, 2, '', '', 0, '', 1, 1313894673),
(75, 1, 0, '', 'http://item.taobao.com/item.htm?id=9367111716&cm_cat=50010158', '2011新款JEEP 男士中长款纯棉休闲夹克 外套2106', 258.00, 'maming870704', 'attachment/order/201108/20110829105005_273.jpg', 'http://shop61804624.taobao.com', '淘宝网', 1, 28, 3, '', 'qweqwe', 0, 'c', 1, 1314586205),
(76, 1, 0, '', 'http://item.taobao.com/item.htm?id=12534960333&ali_refid=a3_420984_1007:1102175379:7:43abc96922cd461c7c7492833ebcd857:f44309ed958804b67057b828da3b0125&ali_trackid=1_f44309ed958804b67057b828da3b0125', '璞衣 2011秋装新品镂空蕾丝丝光棉百搭无扣针织衫开衫 186', 98.00, '天水天衣', 'attachment/order/201109/20110904173902_312.jpg', 'http://puyibs.taobao.com', '淘宝网', 1, 11, 1, '', '', 0, '', 1, 1315129142),
(77, 25, 0, '', 'http://item.taobao.com/item.htm?id=8882866262', '迷你 微型 声控摄像机 迷你dv mini dv md 80 ', 62.00, 'wentin', 'http://web5.kabiqi.com/pic/2007/6/26/wentin/Digital/MD80-1214-0.jpg', 'mybandao.taobao.com', '', 5, 68, 23, '好东西', '<p>好产品</p>', 1, 'c', 1, 1315301083);

-- --------------------------------------------------------

--
-- 表的结构 `dg_goodstype`
--

CREATE TABLE IF NOT EXISTS `dg_goodstype` (
  `typeid` int(11) NOT NULL auto_increment,
  `typename` varchar(50) NOT NULL default '',
  `listorder` smallint(5) default '50',
  PRIMARY KEY  (`typeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `dg_goodstype`
--

INSERT INTO `dg_goodstype` (`typeid`, `typename`, `listorder`) VALUES
(1, '女装', 50),
(2, '男装', 50),
(3, '鞋子', 50),
(4, '箱包', 50),
(5, '食品保健', 50),
(6, '图书音像', 50),
(7, '美容美发', 50),
(8, '数码通讯', 50),
(9, '礼品', 50),
(10, '家居用品', 50),
(11, '流行饰品', 50),
(12, '其他', 50);

-- --------------------------------------------------------

--
-- 表的结构 `dg_gtype`
--

CREATE TABLE IF NOT EXISTS `dg_gtype` (
  `typeid` int(11) NOT NULL auto_increment,
  `typename` varchar(50) default NULL,
  `node` int(11) default NULL,
  `listorder` int(11) default NULL,
  `seotitle` varchar(255) default NULL,
  `seokeyword` varchar(255) default NULL,
  `seocontent` varchar(255) default NULL,
  PRIMARY KEY  (`typeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `dg_gtype`
--

INSERT INTO `dg_gtype` (`typeid`, `typename`, `node`, `listorder`, `seotitle`, `seokeyword`, `seocontent`) VALUES
(1, '服装', 0, 100, '', '', ''),
(2, '鞋包', 0, 50, '', '', ''),
(3, '美容', 0, 50, '', '', ''),
(4, '居家', 0, 50, '', '', ''),
(5, '配饰', 0, 50, '', '', ''),
(6, '食品', 0, 50, '', '', ''),
(8, '女装', 1, 9, '', '', ''),
(9, '男装11', 1, 0, '', '', ''),
(10, '内衣袜品', 1, 0, '', '', ''),
(11, '鞋子', 2, 0, '', '', ''),
(12, '箱包', 2, 0, '', '', ''),
(13, '彩妆', 3, 0, '', '', ''),
(14, '护肤', 3, 0, '', '', ''),
(15, '美容美发用品', 3, 0, '', '', ''),
(16, '家纺', 4, 0, '', '', ''),
(17, '装饰', 4, 0, '', '', ''),
(18, '日用品', 4, 0, '', '', ''),
(19, '办公文具', 4, 0, '', '', ''),
(20, '礼品', 4, 0, '', '', ''),
(21, '服装配饰', 5, 0, '', '', ''),
(22, '饰品', 5, 0, '', '', ''),
(23, '特产', 6, 0, '', '', ''),
(24, '豆类', 6, 0, NULL, NULL, NULL),
(25, '测试一', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dg_guestbook`
--

CREATE TABLE IF NOT EXISTS `dg_guestbook` (
  `gid` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL default '0',
  `uname` varchar(255) default '',
  `addtime` int(10) default '0',
  `msg` mediumtext,
  `reply` mediumtext,
  `state` smallint(5) default '1',
  `hide` smallint(5) default '0',
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_ipfiltering`
--

CREATE TABLE IF NOT EXISTS `dg_ipfiltering` (
  `ipid` int(11) NOT NULL auto_increment,
  `ip` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY  (`ipid`),
  KEY `uname` (`uname`),
  KEY `uname_2` (`uname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='恶意IP过滤' AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_news`
--

CREATE TABLE IF NOT EXISTS `dg_news` (
  `nid` int(11) NOT NULL auto_increment,
  `title` varchar(255) default '',
  `listorder` smallint(5) default '50',
  `seokeywords` varchar(255) default '',
  `seodescription` varchar(255) default '',
  `body` text,
  `addtime` int(11) default NULL,
  PRIMARY KEY  (`nid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dg_news`
--

INSERT INTO `dg_news` (`nid`, `title`, `listorder`, `seokeywords`, `seodescription`, `body`, `addtime`) VALUES
(1, '最新公告测试001', 50, '公告信息测试', '公告测试描述', '公告内容', 164564456),
(2, '测试公告0024', 50, '测试公告0024', '测试公告0024', '测试公告002测试公告002测试公告002测试公告002测试公告002测试公告002测试公告002测试公告002测试公告002测试公告002测试公告002测试公告测试公告002测试公告002测试公告002测试公告002测试公告002测试公告测试公告002测试公告002测试公告002测试公告002测试公告002测试公告测试公告002测试公告002测试公告002测试公告002测试公告002测试公告分33333', 1309772315),
(4, '紧急通告', 1, '紧急', '非常紧急', '今天非常紧急', 1315301294);

-- --------------------------------------------------------

--
-- 表的结构 `dg_order`
--

CREATE TABLE IF NOT EXISTS `dg_order` (
  `oid` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `sid` varchar(50) default NULL COMMENT '货单发ID',
  `typeid` smallint(5) default '12',
  `goodsurl` varchar(255) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsprice` float(10,2) NOT NULL default '0.00',
  `sendprice` float(10,2) NOT NULL default '0.00',
  `goodsnum` int(10) default NULL,
  `goodsimg` varchar(255) default NULL,
  `goodssize` varchar(20) default NULL,
  `goodscolor` varchar(20) default NULL,
  `goodsseller` varchar(50) default NULL,
  `sellerurl` varchar(255) default NULL,
  `goodssite` varchar(50) default NULL,
  `siteurl` varchar(255) default NULL,
  `expressno` varchar(50) default '',
  `type` smallint(5) default '0',
  `goodsremark` varchar(255) default NULL,
  `orderweight` int(11) default '0',
  `orderremark` varchar(255) default NULL,
  `orderimg` varchar(255) default NULL,
  `payid` varchar(50) default NULL,
  `paytime` int(11) default NULL,
  `addtime` int(11) default NULL,
  `uptime` int(11) default NULL,
  `state` smallint(5) default '1',
  `pinoid` varchar(20) NOT NULL default '0',
  `pinnum` int(11) NOT NULL default '0',
  PRIMARY KEY  (`oid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=203 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_otype`
--

CREATE TABLE IF NOT EXISTS `dg_otype` (
  `typeid` int(11) NOT NULL auto_increment,
  `typename` varchar(50) default NULL,
  `node` int(11) default NULL,
  `listorder` int(11) default NULL,
  PRIMARY KEY  (`typeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `dg_otype`
--

INSERT INTO `dg_otype` (`typeid`, `typename`, `node`, `listorder`) VALUES
(1, 'Women', 0, 0),
(2, '男装', 0, 0),
(3, '鞋子', 0, 0),
(4, '箱包', 0, 0),
(5, '食品保健', 0, 0),
(6, '图书音像', 0, 0),
(7, '美容美发', 0, 0),
(8, '数码通信', 0, 0),
(9, '礼品', 0, 0),
(10, '家居用品', 0, 0),
(11, '流行饰品', 0, 0),
(12, '其他', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dg_payid`
--

CREATE TABLE IF NOT EXISTS `dg_payid` (
  `pid` int(11) NOT NULL auto_increment,
  `payid` varchar(30) NOT NULL,
  `payabout` varchar(255) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_pm`
--

CREATE TABLE IF NOT EXISTS `dg_pm` (
  `mid` int(11) NOT NULL auto_increment,
  `fromuid` int(11) NOT NULL,
  `fromuname` varchar(50) NOT NULL,
  `touid` int(11) NOT NULL,
  `touname` varchar(50) NOT NULL,
  `type` smallint(5) default '1',
  `subject` varchar(60) NOT NULL,
  `sendtime` int(11) default NULL,
  `writetime` int(11) default NULL,
  `hasview` tinyint(1) default NULL,
  `isadmin` tinyint(1) default '0',
  `message` text,
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- 转存表中的数据 `dg_pm`
--

INSERT INTO `dg_pm` (`mid`, `fromuid`, `fromuname`, `touid`, `touname`, `type`, `subject`, `sendtime`, `writetime`, `hasview`, `isadmin`, `message`) VALUES
(1, 1, 'admin', 1, 'admin', 0, '测试短信标题', 4645646, 56461564, 0, 0, '测试信息内容'),
(29, 25, 'admin', 3, 'lss', 1, '短信测试', 1283908840, 1283908840, 0, 1, '短信测试'),
(3, 0, '', 1, 'admin', 1, 'dddd', 1279356736, 1279356736, 0, 0, 'dddd'),
(4, 0, '', 1, 'admin', 1, 'dddd', 1279356738, 1279356738, 0, 0, 'dddd'),
(5, 0, '', 1, 'admin', 1, 'dddd', 1279356740, 1279356740, 0, 0, 'dddd'),
(6, 0, '', 1, 'admin', 1, 'dddd', 1279356741, 1279356741, 0, 0, 'dddd'),
(7, 0, '', 1, 'admin', 1, 'dddd', 1279356743, 1279356743, 0, 0, 'dddd'),
(8, 0, '', 1, 'admin', 1, 'dddd', 1279356745, 1279356745, 1, 0, 'dddd'),
(11, 0, '', 0, '0', 1, '群发一条信息测试', 1279358243, 1279358243, 0, 1, '群发一条信息测试内容'),
(12, 0, '', 1, 'admin', 1, '给会员发信息测试', 1279358290, 1279358290, 0, 0, '发信息给会员测试内容'),
(13, 11, '', 3, 'lss', 1, '群发一条信息测试', 1279358243, 0, 1, 1, '群发一条信息测试内容'),
(14, 3, 'lss', 11, '', 2, 'reply:群发一条信息测试', 1281168242, 1281168242, 0, 0, '测试回复短信！！！'),
(15, 3, 'lss', 11, '', 2, 'reply:群发一条信息测试', 1281168608, 1281168608, 0, 0, '复读生仿盛大发生的'),
(16, 3, 'lss', 11, '', 2, 'reply:群发一条信息测试', 1281168621, 1281168621, 0, 0, '复读生复读生'),
(17, 3, 'lss', 11, '', 2, 'reply:群发一条信息测试', 1281168641, 1281168641, 0, 0, '复读生复读生 '),
(18, 3, 'lss', 11, '', 2, 'reply:群发一条信息测试', 1281168709, 1281168709, 0, 0, '复读生复读生 '),
(19, 3, 'lss', 11, '', 2, 'reply:群发一条信息测试', 1281168716, 1281168716, 0, 0, '到饭店 '),
(20, 0, 'admin', 3, 'lss', 1, '商品好33 缺货!需要等待五天！您是否取消？', 1281429961, 1281429961, 1, 0, '商品好33 缺货!需要等待五天！您是否取消此订单？'),
(21, 3, 'lss', 0, 'admin', 2, 'reply:商品好33 缺货!需要等待五天！您是否取消？', 1281430111, 1281430111, 0, 0, '好的！请帮我取消'),
(22, 0, 'admin', 3, 'lss', 1, '你的运单已经发送，注意接收', 1282902393, 1282902393, 1, 0, '你的运单已经发送，注意接收，谢谢光临网站'),
(23, 11, '', 7, 'ceshi', 1, '群发一条信息测试', 1279358243, 1279358243, 1, 1, '群发一条信息测试内容'),
(24, 0, 'admin', 7, 'ceshi', 1, '测试使用', 1283908585, 1283908585, 1, 0, '1234567 请勿回复'),
(25, 0, 'admin', 0, '0', 1, '短信测试', 1283908840, 1283908840, 0, 1, '短信测试'),
(26, 25, 'admin', 7, 'ceshi', 1, '短信测试', 1283908840, 1283908840, 1, 1, '短信测试'),
(27, 25, 'admin', 1, 'admin', 1, '短信测试', 1283908840, 1283908840, 0, 1, '短信测试'),
(28, 11, '', 1, 'admin', 1, '群发一条信息测试', 1279358243, 1279358243, 0, 1, '群发一条信息测试内容'),
(31, 3, 'lss', 0, 'admin', 2, 'reply:你的运单已经发送，注意接收', 1288335625, 1288335625, 0, 0, 'sss'),
(32, 25, 'admin', 49, 'xiaozhang123', 1, '短信测试', 1283908840, 1283908840, 1, 1, '短信测试'),
(33, 11, '', 49, 'xiaozhang123', 1, '群发一条信息测试', 1279358243, 1279358243, 1, 1, '群发一条信息测试内容'),
(34, 25, 'admin', 48, '小张', 1, '短信测试', 1283908840, 1283908840, 1, 1, '短信测试'),
(35, 11, '', 48, '小张', 1, '群发一条信息测试', 1279358243, 1279358243, 1, 1, '群发一条信息测试内容'),
(58, 25, 'admin', 80, 'brantx', 1, '短信测试', 1283908840, 1283908840, 1, 1, '短信测试'),
(59, 11, '', 80, 'brantx', 1, '群发一条信息测试', 1279358243, 0, 1, 1, '群发一条信息测试内容'),
(60, 25, 'admin', 81, 'harryQ', 1, '短信测试', 1283908840, 1283908840, 1, 1, '短信测试'),
(61, 11, '', 81, 'harryQ', 1, '群发一条信息测试', 1279358243, 1279358243, 1, 1, '群发一条信息测试内容'),
(62, 25, 'admin', 66, 'zzqss', 1, '短信测试', 1283908840, 1283908840, 1, 1, '短信测试'),
(63, 11, '', 66, 'zzqss', 1, '群发一条信息测试', 1279358243, 1279358243, 0, 1, '群发一条信息测试内容'),
(65, 25, 'admin', 99, 'senyi168', 1, '短信测试', 1283908840, 0, 1, 1, '短信测试'),
(67, 25, 'admin', 100, 'badxiaofei', 1, '短信测试', 1283908840, 1283908840, 1, 1, '短信测试'),
(68, 11, '', 100, 'badxiaofei', 1, '群发一条信息测试', 1279358243, 1279358243, 1, 1, '群发一条信息测试内容'),
(69, 25, 'admin', 105, 'jiangyanfeng', 1, '短信测试', 1283908840, 0, 0, 1, '短信测试'),
(70, 11, '', 105, 'jiangyanfeng', 1, '群发一条信息测试', 1279358243, 0, 0, 1, '群发一条信息测试内容'),
(71, 25, 'admin', 108, 'test2011', 1, '短信测试', 1283908840, 1283908840, 1, 1, '短信测试'),
(72, 11, '', 108, 'test2011', 1, '群发一条信息测试', 1279358243, 1279358243, 1, 1, '群发一条信息测试内容'),
(73, 25, 'admin', 114, 'liulei', 1, '短信测试', 1283908840, 1283908840, 0, 1, '短信测试'),
(74, 11, '', 114, 'liulei', 1, '群发一条信息测试', 1279358243, 1279358243, 0, 1, '群发一条信息测试内容'),
(75, 0, 'admin', 0, '0', 1, '发撒旦法', 1314609839, 1314609839, 0, 1, '司法所地方'),
(76, 75, 'admin', 116, 'admin110', 1, '发撒旦法', 1314609839, 1314609839, 1, 1, '司法所地方'),
(77, 25, 'admin', 116, 'admin110', 1, '短信测试', 1283908840, 1283908840, 0, 1, '短信测试'),
(78, 11, '', 116, 'admin110', 1, '群发一条信息测试', 1279358243, 1279358243, 1, 1, '群发一条信息测试内容'),
(79, 75, 'admin', 131, '通途', 1, '发撒旦法', 1314609839, 1314609839, 1, 1, '司法所地方'),
(80, 25, 'admin', 131, '通途', 1, '短信测试', 1283908840, 1283908840, 1, 1, '短信测试'),
(81, 11, '', 131, '通途', 1, '群发一条信息测试', 1279358243, 1279358243, 1, 1, '群发一条信息测试内容'),
(82, 0, 'admin', 142, 'zyuhong', 1, '幸福', 1316073407, 1316073407, 0, 0, '幸福是一种感觉，'),
(83, 75, 'admin', 142, 'zyuhong', 1, '发撒旦法', 1314609839, 1314609839, 0, 1, '司法所地方'),
(84, 25, 'admin', 142, 'zyuhong', 1, '短信测试', 1283908840, 1283908840, 0, 1, '短信测试'),
(85, 11, '', 142, 'zyuhong', 1, '群发一条信息测试', 1279358243, 1279358243, 0, 1, '群发一条信息测试内容');

-- --------------------------------------------------------

--
-- 表的结构 `dg_rechargerecord`
--

CREATE TABLE IF NOT EXISTS `dg_rechargerecord` (
  `rid` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) default NULL,
  `sn` varchar(50) default NULL,
  `amount` float(10,2) default '0.00' COMMENT '充值原始额度',
  `currency` varchar(10) default NULL COMMENT '币种',
  `money` float(10,2) NOT NULL COMMENT '换算过的额度',
  `paytype` smallint(5) default '0' COMMENT '充值方式 0转账1支付宝支付2paypal充值3psi充值4其他',
  `payname` varchar(30) default NULL,
  `addtime` int(11) default NULL,
  `successtime` int(11) default NULL,
  `remark` varchar(255) default NULL,
  `state` smallint(5) default '1',
  PRIMARY KEY  (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=170 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_record`
--

CREATE TABLE IF NOT EXISTS `dg_record` (
  `rid` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) default NULL,
  `type` smallint(2) default '1',
  `action` smallint(5) default '0',
  `money` float(10,2) default NULL,
  `accountmoney` float(10,2) default NULL,
  `remark` varchar(255) default NULL,
  `addtime` int(11) default NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=410 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_refund`
--

CREATE TABLE IF NOT EXISTS `dg_refund` (
  `rid` int(11) NOT NULL auto_increment,
  `rechargeid` int(11) default NULL,
  `uid` int(11) default NULL,
  `uname` varchar(50) NOT NULL,
  `money` float(10,2) default NULL,
  `rechargetime` int(11) default NULL,
  `rechargemoney` float(10,2) default NULL,
  `rechargesn` varchar(50) default NULL,
  `remark` varchar(255) default NULL,
  `refundremark` varchar(255) NOT NULL default ' ',
  `addtime` int(11) default NULL,
  `state` smallint(5) default '1',
  PRIMARY KEY  (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_scorerecord`
--

CREATE TABLE IF NOT EXISTS `dg_scorerecord` (
  `sid` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) default '',
  `remark` varchar(255) default '',
  `score` int(11) default '0',
  `totalscore` int(11) default NULL,
  `type` smallint(5) default '1' COMMENT '1获得2消费',
  `addtime` int(11) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=177 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_sendorder`
--

CREATE TABLE IF NOT EXISTS `dg_sendorder` (
  `sid` int(11) NOT NULL auto_increment,
  `sn` varchar(50) default NULL,
  `uid` int(11) default NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(255) default NULL,
  `oids` varchar(255) default NULL,
  `couponid` int(11) default NULL,
  `freight` float(10,2) NOT NULL default '0.00',
  `serverfee` float(10,2) default '0.00',
  `customsfee` float(10,2) default '0.00' COMMENT '报关费',
  `totalfee` float(10,2) default '0.00',
  `Insurancefee` float(10,2) NOT NULL default '0.00',
  `countmoney` float(10,2) default NULL,
  `countweight` float(10,2) default NULL,
  `consignee` varchar(30) NOT NULL,
  `country` varchar(30) default NULL,
  `city` varchar(30) default NULL,
  `zip` varchar(30) default NULL,
  `tel` varchar(30) default NULL,
  `address` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `did` int(11) default NULL,
  `deliveryname` varchar(30) default NULL,
  `areaname` varchar(30) default NULL,
  `addtime` int(11) default NULL,
  `uptime` int(11) default NULL,
  `comment` text,
  `commenttime` int(11) default NULL,
  `reply` text,
  `showcomment` smallint(5) default '0',
  `state` smallint(5) default '1',
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `dg_sendorder`
--

INSERT INTO `dg_sendorder` (`sid`, `sn`, `uid`, `uname`, `email`, `oids`, `couponid`, `freight`, `serverfee`, `customsfee`, `totalfee`, `Insurancefee`, `countmoney`, `countweight`, `consignee`, `country`, `city`, `zip`, `tel`, `address`, `remark`, `did`, `deliveryname`, `areaname`, `addtime`, `uptime`, `comment`, `commenttime`, `reply`, `showcomment`, `state`) VALUES
(32, '369852', 131, '通途', '828682@qq.com', '190', 0, 50.00, 31.20, 10.00, 91.20, 0.00, 96.00, 22.00, '4545', '朝鲜', '454', '454545', '5454', '545', '454545', 8, 'CMS', '美国', 1315206108, 1330015797, NULL, NULL, NULL, 0, 4),
(33, '12312313', 134, 'steven', 'cskoksteven@yahoo.com', '192', 0, 50.00, 50.00, 10.00, 110.00, 0.00, 4749.00, 100.00, 'kok', '马来西亚', 'pj', '47810', '0165551515', '6-2  1stjln pju 5/10', '', 8, 'CMS', '美国', 1315206892, 1330015797, NULL, NULL, NULL, 0, 4),
(34, '128894461110', 145, 'fccdd', 'fccsh@126.com', '202,201,200', 0, 80.00, 50.00, 10.00, 140.00, 0.00, 315.00, 600.00, 'John', '美国', 'as', 'asd', '52347721', 'fe', '', 8, 'CMS', '美国', 1316513530, 1330015797, '感觉不错，下次继续', 1316513725, '', 0, 4);

-- --------------------------------------------------------

--
-- 表的结构 `dg_service`
--

CREATE TABLE IF NOT EXISTS `dg_service` (
  `aid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `uname` varchar(50) NOT NULL,
  `name` varchar(255) default NULL,
  `account` varchar(255) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `price` float(10,2) NOT NULL,
  `num` int(11) NOT NULL default '1',
  `money` float(10,2) NOT NULL,
  `remark` varchar(255) default NULL,
  `type` smallint(5) NOT NULL default '0',
  `addtime` int(11) NOT NULL,
  `state` smallint(5) NOT NULL default '0',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_shopsite`
--

CREATE TABLE IF NOT EXISTS `dg_shopsite` (
  `sid` int(11) NOT NULL auto_increment,
  `shopname` varchar(50) NOT NULL default '淘宝网',
  `shopurl` varchar(50) NOT NULL default 'www.taobao.com',
  `shopcode` varchar(20) NOT NULL default 'taobao',
  `charset` varchar(10) NOT NULL default 'gbk',
  `preg_goodsname` varchar(255) default NULL,
  `preg_goodsname2` varchar(255) default NULL,
  `preg_goodsname3` varchar(255) default NULL,
  `preg_goodsprice` varchar(255) default NULL,
  `preg_goodsprice2` varchar(255) default NULL,
  `preg_goodsprice3` varchar(255) default NULL,
  `preg_sendprice` varchar(255) default NULL,
  `preg_sendprice2` varchar(255) default NULL,
  `preg_sendprice3` varchar(255) default NULL,
  `preg_goodsimg` varchar(255) default NULL,
  `preg_goodsimg2` varchar(255) default NULL,
  `preg_goodsimg3` varchar(255) default NULL,
  `preg_goodsseller` varchar(255) default NULL,
  `preg_goodsseller2` varchar(255) default NULL,
  `preg_goodsseller3` varchar(255) default NULL,
  `preg_sellerurl` varchar(255) default NULL,
  `preg_sellerurl2` varchar(255) default NULL,
  `preg_sellerurl3` varchar(255) default NULL,
  `preg_vipprice1` varchar(255) default '',
  `preg_vipprice2` varchar(255) default '',
  `preg_vipprice3` varchar(255) default '',
  `state` smallint(5) default '1',
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `dg_shopsite`
--

INSERT INTO `dg_shopsite` (`sid`, `shopname`, `shopurl`, `shopcode`, `charset`, `preg_goodsname`, `preg_goodsname2`, `preg_goodsname3`, `preg_goodsprice`, `preg_goodsprice2`, `preg_goodsprice3`, `preg_sendprice`, `preg_sendprice2`, `preg_sendprice3`, `preg_goodsimg`, `preg_goodsimg2`, `preg_goodsimg3`, `preg_goodsseller`, `preg_goodsseller2`, `preg_goodsseller3`, `preg_sellerurl`, `preg_sellerurl2`, `preg_sellerurl3`, `preg_vipprice1`, `preg_vipprice2`, `preg_vipprice3`, `state`) VALUES
(1, '淘宝网', 'www.taobao.com', 'taobao', 'gbk', '/<title>(?P<this>.*)-(.*)<\\/title>/U', '', '', '/<strong id=\\"J_StrPrice\\" >(?P<this>.*)<\\/strong>/U', '/<em class=\\"price left\\">(?P<this>.*)<\\/em>/U', '/<input type=\\"hidden\\" name=\\"current_price\\" value= \\"(?P<this>.*)\\" \\/>/U', '', '10', '', '/<img id=\\"J_ImgBooth\\" src=\\"(?P<this>.*)\\"  data-hasZoom="700" \\/>/U', '/<img id=\\"ark:mainImage\\" src=\\"(?P<this>.*)\\"\\/>/U', '', '/<a class=\\"hCard fn\\" href=\\"(.*)\\">(?P<this>.*)<\\/a>/U', '/<a class=\\"hCard fn\\" href=\\"(.*)\\" target=\\"_blank\\">(?P<this>.*)<\\/a>/U', '/<input type=\\"hidden\\" name=\\"seller_nickname\\" value=\\"(?P<this>.*)\\" \\/>/U', '/<a class=\\"hCard fn\\" href=\\"(?P<this>.*)\\">(.*)<\\/a>/U', '/<a class=\\"hCard fn\\" href=\\"(?P<this>.*)\\" target=\\"_blank\\">(.*)<\\/a>/U', '/<label>商    家：<\\/label>([\\w\\W]*?)<a href=\\"(?P<this>.*)\\">(.*)<\\/a>/', '/\\''VIP 金　卡\\'': \\"(?P<this>.*)\\",/U', '/\\''VIP 白金卡\\'': \\"(?P<this>.*)\\",/U', '/\\''VIP 钻石卡\\'': \\"(?P<this>.*)\\"/U', 1),
(2, '拍拍1', 'www.paipai.com', 'paipai', 'gbk', '<input type=\\"hidden\\" name=\\"sTitle\\" value=\\"(?P<this>.*)\\" \\/>', '', '', '<input type=\\"hidden\\" name=\\"Price\\" value=\\"(?P<this>.*)\\" />', '', '', '/<li> <a href=\\"#nolink\\" info=\\''河南\\|\\|(?P<this>.*)\\|(.*)''  > 河南 <\\/a><\\/li>/U', '/<em id=\\"shipCost\\">(?P<this>.*)元/U', '', '/picList:\\[\\[(.*)\\],\\[(.*)\\],\\[\\"(?P<this>.*) \\",\\"\\",\\"\\",\\"\\",\\"\\"\\],/U', '', '', '/qqUin:\\"(?P<this>.*)\\",/U', '', '', '/<li>店铺信用：<a href=\\"(?P<this>.*)\\" target=\\"_blank\\">/U', '/<li class=\\"sellerlink2\\"><a href=\\"(?P<this>.*)\\" title=\\"信用评价\\">信用评价<\\/a><\\/li>/U', '', '', '', '', 1),
(3, '免邮商品', 'daigou.dayusheji.com', 'dayusheji', 'utf-8', '/<h1 id=\\"goodsname\\">(?P<this>.*)<\\/h1>/U', '', '', '/<span id=\\"goodsprice\\">(?P<this>.*)<\\/span>/U', '', '', '', '0', '', '/<img id=\\"goodsimg\\" src=\\"(?P<this>.*)\\" \\/>/U', '', '', '', 'daigou.dayusheji.com', '', '', 'http://daigou.dayusheji.com', '', '', '', '', 1),
(4, '百度有啊', 'youa.baidu.com', 'youa', 'gbk', '/<TITLE>(?P<this>.*)_(.*)<\\/TITLE>/U', '/<h1>(?P<this>.*)<\\/h1>/U', '', '/<span class=\\"price\\">(?P<this>.*).<small>(.*)<\\/small><\\/span>/U', '', '', '', '10', '', '/<img class=\\"bigimg\\" (.*) style=\\"background-image:url\\((?P<this>.*)\\)\\">/U', '', '', '', 'youa.baidu.com', '', '', 'http://youa.baidu.com', '', '', '', '', 1),
(5, '卓越', 'www.amazon.cn', 'amazon', 'utf-8', '/<span id=\\"btAsinTitle\\">(?P<this>.*)<\\/span>/U \r\n', '', '', '/<b class=\\"priceLarge\\">￥ (?P<this.*>)<\\/b>/U', '', '', '', '20', '', '/<img onload=\\"\\" src=\\"(?P<this.*>)\\" id=\\"prodImage\\" alt=\\"\\" onmouseover=\\"\\" width=\\"\\" border=\\"0\\" height=\\"\\">/U', '', '', '', 'www.amazon.cn', '', 'http://www.amazon.cn', '', '', '', '', '', 1),
(6, '当当网', 'www.dangdang.com', 'dangdang', 'gbk', '/<title>(?P<this>.*)<\\/title>/U', '/<h1>(?P<this>.*)<Vh1>/U', '', '/<span class=\\"num\\" id=\\"salePriceTag\\">￥(?P<this>.*)<\\/span>/U', '', '', '', '20', '', '/<img src=\\"(?P<this>.*)\\" alt="" id=\\"largePic\\"\\/>/U', '', '', '/<span class=\\"sell\\">(?P<this>.*)<\\/span>/U', '', '', '/<a href=\\"(.*)\\" target=\\"_blank\\">(?P<this>.*)<\\/a>/U', '', '', '', '', '', 1),
(7, '新蛋中国', 'www.newegg.com.cn', 'newegg', 'gbk', '/<title>(?P<this>.*)-(.*)<\\/title>/U', '/<h1>(?P<this>.*)<\\/h1>/U', '', '', '-1', '', '', '20', '', '/<img id=\\"bigImg\\" class=\\"bk_line2\\" index=\\"0\\" alt="" src=\\"(?P<this>.*)\\"\\/>/U', '', '', '', '新蛋中国', '', '', 'www.newegg.com.cn', '', '', '', '', 1),
(8, '易趣', 'www.eachnet.com', 'eachnet', 'utf-8', '/<title>(?P<this>.*)-(.*)<\\/title>/U', '', '', '', '-1', '', '', '15', '', '/<img src=\\"(?P<this>.*)\\" id=\\"itemImage\\" width=\\"300px\\" height=\\"300px\\"/U', '', '', '/<a href=\\"(.*)\\" target=\\"_blank\\">(?P<this>.*)<\\/a> <\\/p>/U', '/webchater = \\''(?P<this>.*)\\''/U', '', '/<a href=\\"(?P<this>.*)\\" target=\\"_blank\\">(.*)<\\/a>/U', '', '', '', '', '', 1),
(9, '京东商城', 'www.360buy.com', '360buy', 'gbk', '/<h1>(?P<this>.*)<font style=\\''color:#ff0000\\'' id=\\''advertiseWord\\''><\\/font><\\/h1>/U', '', '', '', '-1', '', '', '15', '', '/src=\\"(?P<this>.*)\\" width=\\"350\\" height=\\"350\\" alt=\\"(.*)\\"/U', '/<img onerror=\\"this.src=''(.*)''\\" src=\\"(?P<this>.*)\\" width=\\"50\\" height=\\"50\\"/U', '', '', '京东商城', '', '', 'http://www.360buy.com/product/', '', '', '', '', 1),
(10, '麦包包网', 'www.mbaobao.com', 'mbaobao', 'utf-8', '/<title>(?P<this>.*)-(.*)<\\/title>/U', '/<h2 class=\\"h2_prodtitle\\">(?P<this>.*)<\\/h2>/U', '/id=\\"js_goods_title\\">(?P<this>.*)<\\/a>/U', '/<b class=\\"b_proprice\\">(?P<this>.*)<\\/b>/U', '', '', '', '15', '', '/<img src=\\"(?P<this>.*)\\" width=\\"420\\" height=\\"420\\" alt="" class=\\"js_goods_image_url\\" \\/>/U', '', '', '', '麦包包网', '', '', 'item.mbaobao.com', '', '', '', '', 1),
(11, '凡客诚品', 'www.vancl.com', 'vancl', 'utf-8', '/id=\\"styleinfo\\" name=\\"(.*)\\">(?P<this>.*)<\\/span>/U', '', '', '/<span>￥<strong>(?P<this>.*)<\\/strong><\\/span>/U', '', '', '', '15', '', '/<img src=\\"(?P<this>.*)\\" alt=\\"(.*)\\" \\/><\\/li>/U', '/<img alt=\\"(.*)\\" src=\\"(?P<this>.*)\\"\\/>/U', '', '', '凡客诚品', '', '', 'item.vancl.com', '', '', '', '', 1),
(13, '时尚起义', 'www.shishangqiyi.com', 'shishangqiyi', 'utf-8', '/<span class=\\"style1\\"><strong>(?P<this>.*)<\\/strong><\\/span>/U', '', '', '/<strong>(?P<this>.*)元<\\/strong>/U', '', '', '', '15', '', '/<img src=\\"(?P<this>.*)\\" width=\\"260\\" >/U', '', '', '', '时尚起义', '', '', 'www.shishangqiyi.com', '', '', '', '', 1),
(14, '百联e站', 'www.blemall.com', 'blemall', 'gbk', '/<h1 class=\\"t_name\\">(?P<this>.*)<\\/h1>/U', '', '', '', '-1', '', '', '15', '', '/<div class=\\"picture\\" style=\\"background: url((?P<this>.*)) no-repeat;\\">/U', '', '', '', '百联e站', '', '', 'www.blemall.com', '', '', '', '', 1),
(15, 'NO5时尚广场', 'www.no5.com.cn', 'no5', 'gbk', '/<title>(?P<this>.*)–(.*)<\\/title>/U', '/<div class=\\"pro_text\\" id=\\"pro_text_pname\\">(?P<this>.*)<\\/div>/U', '', '/<div class=\\"pro_text magenta\\"><span>(?P<this>.*)元<\\/span><\\/div>/U', '', '', '', '15', '', '/<img src=\\"(?P<this>.*)\\" width=\\"250\\" height=\\"250\\" alt=\\"(.*)\\" \\/>/U', '', '', '', 'NO5时尚广场', '', '', 'www.no5.com.cn/goods', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dg_shop_goods`
--

CREATE TABLE IF NOT EXISTS `dg_shop_goods` (
  `gid` int(11) NOT NULL auto_increment,
  `gtypeid` int(11) default NULL,
  `goodsname` varchar(255) default NULL,
  `goodsprice` float(10,2) default NULL,
  `goodsimg` varchar(255) default NULL,
  `rindex` tinyint(3) default '3',
  `views` int(11) default NULL,
  `buynum` int(11) default NULL,
  `about` text,
  `listorder` int(11) default '50',
  `flag` char(2) default NULL,
  `addtime` int(11) default NULL,
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `dg_shop_goods`
--

INSERT INTO `dg_shop_goods` (`gid`, `gtypeid`, `goodsname`, `goodsprice`, `goodsimg`, `rindex`, `views`, `buynum`, `about`, `listorder`, `flag`, `addtime`) VALUES
(1, 1, '测试产品', 50.00, 'templates/default/images/7686.jpg', 3, 144, 35, '详细信息11', 50, 'c', 1281496242),
(3, 1, '回头率外贸SAINT GALANT BOHEMIA防水台坡跟单鞋真皮里076', 49.00, 'templates/default/images/7686.jpg', 3, 20, 1, '111111', 50, 'c', 1309535723),
(4, 1, '日单民族T（vans beams stussy zoo york clot remix', 45.00, 'templates/default/images/7686.jpg', 3, 21, 0, '很不好', 0, 'c', 1281496242),
(5, 1, '2010夏季韩版新款 拼色5字菱格链条大容量单肩包包 新到西瓜红', 158.00, 'templates/default/images/7686.jpg', 3, 15, 0, '2010夏季韩版新款 拼色5字菱格链条大容量单肩包包 新到西瓜红', 0, 'c', 1281496242),
(6, 1, '夏装新款☆青花瓷之恋☆高档印花棉 超显身材的开叉旗袍 特119！', 119.00, 'templates/default/images/7686.jpg', 3, 83, 24, '夏装新款☆青花瓷之恋☆高档印花棉 超显身材的开叉旗袍 特119！', 0, 'c', 1281496242),
(7, 1, '100%真丝面料 桑蚕丝  绣花 连衣裙 宽松小A型。单件包邮。', 165.00, 'templates/default/images/7686.jpg', 3, 32, 0, '100%真丝面料', 0, 'c', 1281496242),
(8, 1, '韩版碎花绣花真丝拼接OL淑女雪纺腰带荷叶边多层抹胸吊带裙连衣裙', 78.00, 'templates/default/images/7686.jpg', 3, 100, 9, '韩版碎花绣花真丝拼接OL淑女雪纺腰带荷叶边多层抹胸吊带裙连衣裙', 0, 'c', 1281496242),
(9, 1, '两件包邮  韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', 68.00, 'templates/default/images/7686.jpg', 3, 129, 32, '两件包邮&nbsp; 韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', 0, 'c', 1281496242),
(10, 2, '09秋冬新款 VIVI推荐款~磨砂兔毛系带粗高跟短靴 踝靴 女靴', 59.00, 'templates/default/images/7686.jpg', 3, 17, 0, '09秋冬新款 VIVI推荐款~磨砂兔毛系带粗高跟短靴 踝靴 女靴', 0, 'c', 1281496242),
(11, 2, '2010新款外贸roxy平底夹脚人字拖鞋/凉拖/可爱沙滩拖/凉鞋/后跟', 15.00, 'templates/default/images/7686.jpg', 3, 18, 1, '2010新款外贸roxy平底夹脚人字拖鞋/凉拖/可爱沙滩拖/凉鞋/后跟', 0, 'c', 1281496242),
(12, 2, '潮流女鞋|09秋季新款防水台圆头罗马及踝靴短靴2638黑色', 43.00, 'templates/default/images/7686.jpg', 3, 19, 0, '潮流女鞋|09秋季新款防水台圆头罗马及踝靴短靴2638黑色', 0, 'c', 1281496242),
(13, 3, '专柜小样 Lancome兰蔻煽色流光炫色口红308# 非常漂亮粉嫩裸妆色', 25.00, 'templates/default/images/7686.jpg', 3, 25, 2, '专柜小样 Lancome兰蔻煽色流光炫色口红308# 非常漂亮粉嫩裸妆色', 0, 'c', 1281496242),
(14, 3, 'H61073 SHILLS超炫光BB无瑕霜樱花飞舞限量版50ML 保湿专柜正品', 29.90, 'templates/default/images/7686.jpg', 3, 15, 0, 'H61073 SHILLS超炫光BB无瑕霜(樱花飞舞限量版)50ML 保湿专柜正品', 0, 'c', 1281496242),
(15, 3, '日本杂志连续3年评选NO.1资生堂自然之眉墨铅笔眉笔 日本直送', 23.00, 'templates/default/images/7686.jpg', 3, 24, 0, '日本杂志连续3年评选NO.1资生堂自然之眉墨铅笔(眉笔) 日本直送', 0, 'c', 1281496242),
(16, 3, 'R 送粉扑【百年宫廷御用】谢馥春胭脂膏珠光桃红礼盒装', 39.90, 'templates/default/images/7686.jpg', 3, 17, 0, 'R 送粉扑【百年宫廷御用】谢馥春胭脂膏珠光(桃红)礼盒装', 0, 'c', 1281496242),
(17, 3, 'F4【半价冲四冠】进口银白色超闪眼线眼影液 开亮眼头 超显眼大', 9.00, 'templates/default/images/7686.jpg', 3, 31, 1, 'F4【半价冲四冠】进口银白色超闪眼线眼影液 开亮眼头 超显眼大', 0, 'c', 1281496242),
(18, 4, '特 极美推荐 重磅真丝 100%SILK 35姆米 60/米', 15.00, 'templates/default/images/7686.jpg', 3, 25, 1, '特 极美推荐 重磅真丝 100%SILK 35姆米 60/米', 0, 'c', 1281496242),
(19, 4, '女士时尚居家拖鞋 情侣拖鞋 小碎花室内拖鞋 特价拖鞋', 9.20, 'templates/default/images/7686.jpg', 3, 29, 1, '女士时尚居家拖鞋 情侣拖鞋 小碎花室内拖鞋 特价拖鞋', 0, 'c', 1281496242),
(20, 4, 'E7347 简家 金冠 出口日本原单超柔长毛绒心型靠垫 抱枕 超细纤维', 12.80, 'templates/default/images/7686.jpg', 3, 29, 1, 'E7347 简家 金冠 出口日本原单超柔长毛绒心型靠垫 抱枕 超细纤维', 0, 'c', 1281496242),
(21, 4, '珍爱梦幻七彩幸运星发光抱枕WQ10 韩国设计/超炫视频展示生日礼物', 158.00, 'templates/default/images/7686.jpg', 3, 30, 5, '珍爱梦幻七彩幸运星发光抱枕WQ10 韩国设计/超炫视频展示生日礼物', 0, 'c', 1281496242),
(22, 5, '包邮啦!七夕情人节礼物 only my love 明星我的唯一爱情侣项链', 55.00, 'templates/default/images/7686.jpg', 3, 27, 0, '包邮啦!七夕情人节礼物 only my love 明星我的唯一爱情侣项链', 0, 'c', 1281496242),
(23, 5, '7.21新品入！昕薇推荐 摩洛哥波西米亚风珍珠款发带/发绳', 13.80, 'templates/default/images/7686.jpg', 3, 33, 0, '7.21新品入！昕薇推荐 摩洛哥波西米亚风珍珠款发带/发绳', 0, 'c', 1281496242),
(24, 5, 'H&M正品 摩洛哥风情手链', 22.00, 'templates/default/images/7686.jpg', 3, 37, 6, 'H&amp;M正品 摩洛哥风情手链', 0, 'c', 1281496242),
(25, 6, '缅甸酸角片 味道纯正 20克 买10送1哦', 0.99, 'templates/default/images/7686.jpg', 3, 51, 5, '缅甸酸角片 味道纯正 20克 买10送1哦', 0, 'c', 1281496242),
(26, 6, '【稀奇】百度上查不到的特产藤蔑果野生果子回甘爽口180g', 6.00, 'templates/default/images/7686.jpg', 3, 36, 3, '【稀奇】百度上查不到的特产藤蔑果野生果子回甘爽口180g', 0, 'c', 1281496242),
(27, 6, 'A3002 好评+回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', 16.00, 'templates/default/images/7686.jpg', 3, 51, 11, 'A3002 好评+回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', 0, 'c', 1281496242),
(28, 23, 'A3002 好评+回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', 16.00, 'attachment/order/201009/20100901154844_640.jpg', 3, 58, 3, '内容', 0, NULL, 1283327324),
(29, 8, '测试产品发布', 500.00, 'attachment/shop/201009/20100902141859_778.jpg', 3, 39, 10, '测试产品内容噩噩噩是说', 50, NULL, 1283408347),
(30, 1, '头像', 22.00, 'attachment/shop/201011/20101130111703_845.jpg', 3, 730, 21, '头像头像头像<br />', 50, NULL, 1291087023),
(31, 1, 'dd', 434.00, 'attachment/shop/201109/20110923014916_853.jpg', 3, 9, 0, 'ddd', 0, NULL, 1316713756),
(32, 2, '迷你播放器', 188.00, '', 5, 93, 32, '', 1, NULL, 1315292511),
(33, 3, '护法', 128.00, '', 3, 2, 0, '', 0, NULL, 1316713699);

-- --------------------------------------------------------

--
-- 表的结构 `dg_shop_gtype`
--

CREATE TABLE IF NOT EXISTS `dg_shop_gtype` (
  `typeid` int(11) NOT NULL auto_increment,
  `typename` varchar(50) default NULL,
  `node` int(11) default NULL,
  `listorder` int(11) default NULL,
  `seotitle` varchar(255) default NULL,
  `seokeyword` varchar(255) default NULL,
  `seocontent` varchar(255) default NULL,
  PRIMARY KEY  (`typeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `dg_shop_gtype`
--

INSERT INTO `dg_shop_gtype` (`typeid`, `typename`, `node`, `listorder`, `seotitle`, `seokeyword`, `seocontent`) VALUES
(1, 'clothes', 0, 0, '', '', ''),
(2, '数码', 0, 0, '', '', ''),
(3, '美容', 0, 50, '', '', ''),
(4, '居家', 0, 50, '', '', ''),
(5, '配饰', 0, 50, '', '', ''),
(6, '食品', 0, 50, '', '', ''),
(8, '女装', 1, 9, '', '', ''),
(9, '男装', 1, 0, '', '', ''),
(10, '内衣袜品', 1, 0, '', '', ''),
(11, '鞋子', 2, 0, '', '', ''),
(12, '箱包', 2, 0, '', '', ''),
(13, '彩妆', 3, 0, '', '', ''),
(14, '护肤', 3, 0, '', '', ''),
(15, '美容美发用品', 3, 0, '', '', ''),
(16, '家纺', 4, 0, '', '', ''),
(17, '装饰', 4, 0, '', '', ''),
(18, '日用品', 4, 0, '', '', ''),
(19, '办公文具', 4, 0, '', '', ''),
(20, '礼品', 4, 0, '', '', ''),
(21, '服装配饰', 5, 0, '', '', ''),
(22, '饰品', 5, 0, '', '', ''),
(23, '特产', 6, 0, '', '', ''),
(24, '淑女装', 8, 8, NULL, NULL, NULL),
(25, '美女装', 8, 0, NULL, NULL, NULL),
(26, '土豆', 6, 0, NULL, NULL, NULL),
(27, '头花', 5, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dg_smtpaccount`
--

CREATE TABLE IF NOT EXISTS `dg_smtpaccount` (
  `eid` int(11) NOT NULL auto_increment,
  `smtp_server` varchar(50) default '' COMMENT '邮件服务器地址',
  `smtp_port` smallint(5) default '25' COMMENT '邮件服务器端口号',
  `smtp_email` varchar(50) default NULL,
  `smtp_account` varchar(50) default '' COMMENT '邮件服务器账户名',
  `smtp_password` varchar(255) default '' COMMENT '邮件服务密码',
  `smtp_name` varchar(255) default NULL COMMENT '发信人名字',
  `reply_address` varchar(255) default '' COMMENT '回复地址',
  `smtp_auth` smallint(5) default '1' COMMENT '是否smtp验证',
  `smtp_ssl` smallint(5) default '0' COMMENT '否是ssl模式',
  `state` smallint(5) default '1' COMMENT '状态1正常0禁用',
  PRIMARY KEY  (`eid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 表的结构 `dg_special`
--

CREATE TABLE IF NOT EXISTS `dg_special` (
  `sid` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `flag` char(2) default NULL,
  `about` varchar(255) default NULL,
  `pic` varchar(255) default NULL,
  `seokeywords` varchar(255) default NULL,
  `seodescription` varchar(255) default NULL,
  `body` mediumtext,
  `listorder` smallint(5) default '50',
  `addtime` int(11) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dg_special`
--

INSERT INTO `dg_special` (`sid`, `title`, `flag`, `about`, `pic`, `seokeywords`, `seodescription`, `body`, `listorder`, `addtime`) VALUES
(1, '牛仔很忙 我们的最佳搭配拍档', 'tj', '简介测试信息简介测试信息牛仔几乎是必备的服饰，一直长盛不衰。不同款式的牛仔裤，经过不同衣服鞋子配饰的组合，就可诠释出不同的个性色彩！', 'attachment/special/201108/20110805122108_909.jpg', '', '', '内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试仔几乎是必备的服饰，一直长盛不衰。不同款式的牛仔裤，经过不同衣服鞋子配饰的组合', 50, 4651631),
(2, '完美鞋包SHOW 演绎夏日别样风情', 'hd', '炎夏即将登场，传统的帆布，皮质，草编等材质的靓包美鞋都开始活跃起来。快来看看小编推荐的本季最新流行鞋包吧！', '/templates/default/images/81.jpg', '关键词2', '描述2', '测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下22', 50, 1282276461),
(4, '我们都是大小孩 寻找童梦奇缘', 'tj', '儿童节马上就要到了，让我们纪念属于自己心里那份永远长不大的童真，这一天，有每个人永不凋谢的童梦奇缘', 'attachment/special/201108/20110805122057_757.jpg', '', '', '儿童节马上就要到了，让我们纪念属于自己心里那份永远长不大的童真，这一天，有每个人永不凋谢的童梦奇缘', 50, 0),
(3, '浪漫夏日 必备连衣裙单品大网罗', 'hd', '美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味', '/templates/default/images/96.jpg', '', '', '<p><img border="0" alt="" src="/attachment/editor/201106/20110620155715_941.jpg" /></p>', 0, 1282534441),
(8, 'vrldkhfd', 'hd', 'fdsadfgsad', 'attachment/special/201105/20110519164353_467.jpg', '反对撒过的', '反对撒过的', '打工撒个任务额尔和', 30, 1305794633),
(9, '了解代购中国', 'sy', '了解代购中国，快速成为代购一族', 'attachment/special/201106/20110611101228_813.jpg', '代购', '了解代购中国，快速成为代购一族', '了解代购中国，快速成为代购一族', 5, 1306913363),
(6, '潮流必备品 美腿丝袜大比拼', 'tj', '丝袜是女人浪漫与性感的最好体现。丝袜是千变万化，宣扬着女性的柔媚与妖娆，表达女人对时尚的追求与生活的品味……', 'attachment/special/201108/20110805122040_131.jpg', '', '', '丝袜是女人浪漫与性感的最好体现。丝袜是千变万化，宣扬着女性的柔媚与妖娆，表达女人对时尚的追求与生活的品味……', 50, 0),
(7, 'women', 'sy', 'sdsdsads', 'attachment/special/201011/20101129182413_245.jpg', 'sds', 'ds', 'sdasdasdsadsds', 50, 1291026253),
(10, '新手常见问题', 'sy', '新手常见问题，为您排忧解答', 'attachment/special/201106/20110611101219_987.jpg', '常见问题', '新手常见问题，为您排忧解答', '新手常见问题，为您排忧解答', 8, 1306913430),
(11, '什么是代购', 'sy', '什么是代购，玩转网上购物', 'attachment/special/201106/20110611101205_416.jpg', '代购，购物', '什么是代购，玩转网上购物', '什么是代购，玩转网上购物', 9, 1306913486),
(12, '首页幻灯', 'sy', '倒萨', 'attachment/special/201106/20110620162149_481.jpg', '范德萨', '范德萨', '打工撒第三个<br />', 50, 1308557120),
(13, '首页幻灯2', 'sy', '代购', 'attachment/special/201106/20110620162248_363.jpg', '范德萨', '但是', '对方是个哈<br />', 40, 1308558168),
(14, 'The return of the LBD', 'sy', 'Find out what&#039;s in this season!', 'attachment/special/201107/20110728180115_710.jpg', 'black dress', 'The new LBD in ultra mini short length...', 'Find out what''s in this season! Something borrowed something old something new...but most importantly something black and short...', 1, 1309773196),
(15, 'Big black bow', 'hd', 'Be daring in this big black bow', 'attachment/special/201107/20110704180005_480.jpg', 'black bow', 'black bow dress', '<h1 align="left"><span style="background-color:#009900;font-family:Times New Roman;font-size:14px;">be daring this</span><span style="background-color:#009900;font-family:Times New Roman;font-size:14px;"> season, dare to be seen in this season must have, black bow is the way to a black tie party and more</span></h1>', 2, 1309773605),
(16, '首页活动banner', 'ap', '测试首页活动banner！', 'attachment/special/201108/20110822173307_333.jpg', '测试首页活动banner！', '测试首页活动banner！', '<h1 align="center">测试首页活动banner！</h1> <h3 align="left">测试首页活动banner！</h3> <h3 align="left">测试首页活动banner！</h3>', 60, 1313827895),
(18, '京东商城国内最大的数码商城', 'ur', '360buy京东商城秉承“以人为本”的服务理念，全程为个人用户和企业用户提供人性化的“亲情360”全方位服务，努力为用户创造亲切、轻松和愉悦的购物环境；不断丰富产品结构，以期最大化地满足消费者日趋多样的购物需求。相较于同类电子商务网站，360buy京东商城拥有更为丰富的商品种类，并凭借更具竞争力的价格和逐渐完善的物流配送体系等各项优势，赢得市场占有率多年稳居行业首位的骄人成绩。\n', 'attachment/special/201108/20110824115420_974.gif', '360buy京东商城', '360buy京东商城', '<h1 class="tit"><em><span style="color:#e53333;">公司简介</span></em>&nbsp; <a href="http://www.360buy.com/">http://www.360buy.com/</a></h1> <p>自2004年初正式涉足电子商务领域以来，京东商城一直保持高速成长，连续六年增长率均超过200%。京东商城始终坚持以纯电子商务模式运营，缩减中间环节，为消费者在第一时间提供优质的产品及满意的服务。</p> <p>京东商城目前拥有遍及全国各地2000万注册用户，1200家供应商，在线销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等11大类数万个品牌70余万种优质商品，日订单处理量超过15万单，网站日均PV超过3500万。现在，京东商城已占据中国网络零售市场份额33.9%，连续12个季度蝉联行业头名。</p> <h3>飞速发展 捷报频传</h3> <p>高速发展的京东商城获得了多项殊荣，"中国企业未来之星"、"2008中国最具投资价值企业50强"、"年度商业模式10强"、"2009年度网民最喜爱的网上购物商城"、"2009中国最具投资价值企业50强"、"2009年度北京十大商业品牌"、"2010德勤高科技高增长中国50强"等奖项的荣膺，不仅是对京东商城业绩的肯定，更是对公司未来前景的充分认可。</p> <h3>资本注入 势不可挡</h3> <p>京东商城无论在访问量、点击率、销售量及行业影响力上，均在国内B2C网购平台中首屈一指。飞速发展和广阔前景赢得了国际著名风险投资基金的青睐。2007年，京东商城获得了来自今日资本千万美元的融资。2008年底，今日资本、雄牛资本以及亚洲著名投资银行家梁伯韬先生私人公司共计2100万美元的联合注资，为京东商城的高速发展提供了资金保障。2011年初，京东商城获得俄罗斯投资者数字天空技术(DST)、老虎基金等共6家基金和社会知名人融资共计15亿美元。这是中国互联网市场迄今为止单笔金额最大的融资，说明投资者对京东商业模式和出色经营业绩的认可，对于正在发展的京东商城乃至中国电子商务行业具有非常积极的意义。</p> <h3>用户体验 以人为本</h3> <p>京东商城提供了灵活多样的商品展示空间，消费者查询、购物都将不受时间和地域的限制。依托多年打造的庞大物流体系，消费者充分享受了"足不出户，坐享其成"的便捷。2009年初，京东商城斥资成立物流公司,布局全国物流体系。目前，京东商城分布在华北、华东、华南、西南、华中的五大物流中心覆盖了全国各大城市，并在武汉、沈阳、西安、杭州等城市设立二级库房，仓储总面积达到40万平方米。</p> <p>2009年至今，京东商城陆续在天津、苏州、杭州、南京、深圳、宁波、无锡、济南、武汉、厦门等超过70座重点城市建立了城市配送站，为用户提供物流配送、货到付款、移动POS刷卡、上门取换件等服务。2010年，京东商城在北京等城市率先推出"211限时达"配送服务，在全国实现"售后100分"服务承诺，随后又推出"全国上门取件"、"先行赔付"、7×24小时客服电话等专业服务。2011年初，京东商城推出"GIS包裹实时跟踪系统"；3月，京东商城获得ACER宏碁电脑产品售后服务授权，同期发布"心服务体系"，京东商城开创了电子商务行业全新的整体服务标准。</p> <p>京东商城在为消费者提供正品行货、机打发票、售后服务的同时，还推出了"价格保护"、"延保服务"等举措，京东商城通过不断优化的服务引领网络零售市场，率先为中国电子商务行业树立了诚信经营的标杆。</p>', 60, 1314158060);

-- --------------------------------------------------------

--
-- 表的结构 `dg_sysconfig`
--

CREATE TABLE IF NOT EXISTS `dg_sysconfig` (
  `sid` int(11) NOT NULL auto_increment,
  `varname` varchar(50) default '' COMMENT '变量名',
  `info` varchar(255) default '' COMMENT '说明',
  `groupid` smallint(5) default '0' COMMENT '分组，备用',
  `type` varchar(20) default 'string' COMMENT 'string字符串number数字bool是否',
  `value` mediumtext COMMENT '值',
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- 转存表中的数据 `dg_sysconfig`
--

INSERT INTO `dg_sysconfig` (`sid`, `varname`, `info`, `groupid`, `type`, `value`) VALUES
(1, 'cfg_site_closed', '关闭网站', 0, 'bool', 'N'),
(3, 'cfg_site_pagenum', '前台分页量', 0, 'number', '10'),
(2, 'cfg_site_logo', '网站logo', 0, 'string', 'images/logo.gif'),
(4, 'cfg_site_url', '网站网址', 0, 'string', 'http://www.domain.com'),
(5, 'cfg_reg_score', '注册送积分', 0, 'number', '200'),
(7, 'cfg_googlemap_key', 'google地图授权码', 0, 'string', '132465'),
(8, 'cfg_index_msnlink', 'MSN客服链接', 0, 'string', 'test111@gmail.com'),
(9, 'cfg_index_qqlink', 'QQ客服链接', 0, 'string', '5277745571'),
(6, 'cfg_reg_checkemail', '注册邮件验证', 0, 'bool', 'N'),
(11, 'cfg_site_bottomlogo', '网站底部logo', 0, 'string', 'www.xx.com'),
(12, 'cfg_water_mark', '是否加水印', 0, 'bool', 'N'),
(13, 'cfg_water_img', '水印图片位置', 1, 'string', '9'),
(14, 'cfg_thumb_width', '缩略图宽度', 0, 'number', '200'),
(15, 'cfg_thumb_height', '缩略图高度', 0, 'number', '121'),
(16, 'cfg_site_name', '网站名称', 0, 'string', '代购网'),
(17, 'cfg_site_keywords', '网站关键词', 0, 'string', '代购网，代购网'),
(18, 'cfg_site_description', '网站描述', 0, 'string', '代购网'),
(19, 'cfg_site_bottomtxt', '网站底部版权', 0, 'string', '&#169; 2010 tuan.domain.com 豫ICP证070791号 '),
(23, 'cfg_page_cache', '是否开启模板缓存', 0, 'bool', 'N'),
(24, 'cfg_login_time', '登录cookie有效时间', 0, 'number', '3600'),
(27, 'cfg_templet_name', '模板设置', 0, 'string', 'default'),
(28, 'cfg_water_imgsrc', '水印图片地址', 0, 'string', 'images/watermark.png'),
(29, 'cfg_water_text', '文字水印内容', 0, 'string', 'http://tuan.domain.com'),
(30, 'cfg_water_text_size', '文字水印字体大小', 0, 'string', '12'),
(31, 'cfg_water_text_color', '文字水印字体颜色', 0, 'string', '#CCCCCC'),
(34, 'cfg_sendorder_score', '收货送积分', 0, 'number', '100'),
(35, 'cfg_vip_score1', '升级金卡会员', 0, 'number', '1000'),
(36, 'cfg_vip_score2', '升级白金卡会员', 0, 'number', '2000'),
(37, 'cfg_vip_score3', '升级钻石卡会员', 0, 'number', '3000'),
(38, 'cfg_vip_sendfee1', '金卡会员服务费折扣', 0, 'number', '0.9'),
(39, 'cfg_vip_sendfee2', '白金卡会员服务费折扣', 0, 'number', '0.8'),
(40, 'cfg_vip_sendfee3', '钻石卡会员服务费折扣', 0, 'number', '0.7'),
(41, 'cfg_vip_validity', '会员有效时间（单位:天）', 0, 'int(2)', '30'),
(43, 'cfg_site_huilv', '中美汇率比', 0, 'string', '0.54'),
(45, 'cfg_recommend_score', '推荐送积分', 0, 'number', '10'),
(46, 'cfg_index_tel', '客服电话', 0, 'string', '0371-12345678'),
(47, 'cfg_weibolink', '新浪微博链接', 0, 'string', 'http://weibo.com'),
(48, 'cfg_facebooklink', 'Facebook链接', 0, 'string', 'http://www.facebook.com'),
(49, 'cfg_twitterlink', 'Twitter可爱的小鸟', 0, 'string', 'http://twitter.com/yirod');

-- --------------------------------------------------------

--
-- 表的结构 `dg_users`
--

CREATE TABLE IF NOT EXISTS `dg_users` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `email` char(50) default NULL,
  `tname` varchar(50) default NULL,
  `utype` smallint(5) default '0',
  `sex` smallint(5) default '0',
  `tel` varchar(50) default NULL,
  `zip` varchar(20) default NULL,
  `card` varchar(20) NOT NULL,
  `address` varchar(255) default NULL,
  `qq` varchar(20) default '',
  `msn` varchar(50) default '',
  `country` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `face` varchar(50) default NULL,
  `scores` int(11) default '0',
  `money` decimal(10,2) default '0.00' COMMENT '账户余额',
  `regip` char(16) default NULL,
  `regtime` int(11) default NULL,
  `validity` int(2) NOT NULL,
  `loginip` char(16) default NULL,
  `logintime` int(11) default NULL,
  `activekey` char(5) default NULL,
  `state` smallint(5) default '1',
  `memberid` varchar(25) default NULL,
  `remark` text,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

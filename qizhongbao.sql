-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015-11-20 14:52:52
-- 服务器版本: 5.5.46-0ubuntu0.14.04.2
-- PHP 版本: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `qizhongbao`
--

-- --------------------------------------------------------

--
-- 表的结构 `qzb_admin`
--

CREATE TABLE IF NOT EXISTS `qzb_admin` (
  `userid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `roleid` smallint(5) DEFAULT '0',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `auth` text NOT NULL,
  `list_size` smallint(5) NOT NULL,
  `left_width` smallint(5) NOT NULL DEFAULT '150',
  PRIMARY KEY (`userid`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `qzb_admin`
--

INSERT INTO `qzb_admin` (`userid`, `username`, `password`, `roleid`, `realname`, `auth`, `list_size`, `left_width`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3', 1, '超级管理员', '', 10, 150);

-- --------------------------------------------------------

--
-- 表的结构 `qzb_block`
--

CREATE TABLE IF NOT EXISTS `qzb_block` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `qzb_block`
--

INSERT INTO `qzb_block` (`id`, `type`, `name`, `content`) VALUES
(1, 2, '幻灯图片1', 'http://demo.xiaocms.com/template/default/images/1.png'),
(2, 2, '幻灯图片2', 'http://demo.xiaocms.com/template/default/images/2.png'),
(3, 2, '幻灯图片3', 'http://demo.xiaocms.com/template/default/images/3.png');

-- --------------------------------------------------------

--
-- 表的结构 `qzb_category`
--

CREATE TABLE IF NOT EXISTS `qzb_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` tinyint(1) NOT NULL,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `childids` varchar(255) NOT NULL,
  `catname` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keywords` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  `catdir` varchar(30) NOT NULL,
  `http` varchar(255) NOT NULL,
  `items` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ispost` smallint(2) NOT NULL,
  `verify` smallint(2) NOT NULL DEFAULT '0',
  `islook` smallint(2) NOT NULL,
  `listtpl` varchar(50) NOT NULL,
  `showtpl` varchar(50) NOT NULL,
  `pagetpl` varchar(50) NOT NULL,
  `pagesize` smallint(5) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `listorder` (`listorder`,`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `qzb_category`
--

INSERT INTO `qzb_category` (`catid`, `typeid`, `modelid`, `parentid`, `child`, `childids`, `catname`, `image`, `content`, `seo_title`, `seo_keywords`, `seo_description`, `catdir`, `http`, `items`, `listorder`, `ismenu`, `ispost`, `verify`, `islook`, `listtpl`, `showtpl`, `pagetpl`, `pagesize`) VALUES
(1, 1, 1, 0, 1, '8,9,10,11,', '服务范围', '', '', '', '', '', 'Services', '', 0, 0, 1, 0, 0, 0, 'list_news.html', 'show_news.html', 'page.html', 10),
(2, 1, 2, 0, 1, '6,7,', '案例展示', '', '', '', '', '', 'Case', '', 8, 0, 1, 0, 0, 0, 'list_works.html', 'article_works.html', 'page.html', 10),
(3, 2, 0, 0, 0, '', '关于我们', '', '&lt;p&gt;\r\n北京企中宝科技有限公司诞生于2015年,是一个专注于高端品牌网站建设的设计工作室，2007年年初正式注册“上海某某信息技术有限公司”公司化运营。 但仍然使用“品网视觉”作为品牌。\r\n&lt;/p&gt;\r\n&lt;p&gt;织梦无忧是上海一家专业的网站建设公司，团队骨干有着丰富的网页设计和网站开发水平，为客户提供更符合搜索引擎的网站研发服务，协助构建OA网络办公信息平台，定制网站与数据库开发，并提供域名注册、国内外虚拟主机、网站维护等互联网一站式服务。我们将商业与技术完美结合起来，以使我们的客户可以在快速发展的信息科技领域中获得更有效的竞争力。&lt;/p&gt;\r\n&lt;p&gt;公司成立以来，先后为金光集团（中国）、兰花集团、农商银行、湘林集团、羿富建设集团、闪迪、雷鹏、畅贷网、即付宝、集图网、等数百家企业单位提供了网站建设。2014年1月，公司与欧唯特信息系统（上海）有限公司签定协议，成为其长期网页制作伙伴。&lt;/p&gt;\r\n&lt;p&gt;我们一直秉承“只做有灵魂的设计”和“坚持原创”的核心价值观，以“为客户赢得客户”为己任，用我们的激情和智慧，勤奋与努力，帮助上海的中小企业开展网站建设，打开互联网营销局面，深刻影响着织梦无忧的经营模式和营销思路。&lt;/p&gt;\r\n&lt;p&gt;我们坚信，中国的每一家企业都应该有一个赋有灵魂的网站，用来发布企业产品、发布企业资讯、开展网上调查、与客户进行在线交流、分析客户需求和了解市场发展等功能于一体的营销型网站。&lt;/p&gt;', '北京企中宝科技有限公司', '', '', 'About us', '', 0, 0, 1, 0, 0, 0, 'list_news.html', 'show_news.html', 'page.html', 10),
(4, 1, 1, 0, 0, '', '新闻动态', '', '', '', '', '', 'News', '', 9, 0, 1, 0, 0, 0, 'list_article.html', 'article_article.html', 'page.html', 10),
(5, 2, 0, 0, 0, '', '联系我们', '', '&lt;p&gt;\r\n	中国 · 北京 · 怀柔区路888号\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	公司：北京企中宝科技有限公司\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	电话：010-88888888\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	邮箱：service@qizhongbao.net\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	邮编：100001\r\n&lt;/p&gt;', '', '', '', 'Contact us', '', 0, 0, 1, 0, 0, 0, 'list_news.html', 'show_news.html', 'page.html', 10),
(6, 1, 2, 2, 0, '', '网站设计', '', '', '', '', '', 'webdesign', '', 8, 0, 1, 0, 0, 0, 'list_works.html', 'article_works.html', '', 10),
(7, 1, 2, 2, 0, '', '手机网站', '', '', '', '', '', 'webphone', '', 0, 0, 1, 0, 0, 0, 'list_works.html', 'article_works.html', '', 10),
(8, 2, 0, 1, 0, '', '网站设计与开发', '', '&lt;p&gt;-企业形象/产品网站设计开发&lt;/p&gt;\r\n&lt;p&gt;-集团官方网站设计开发&lt;/p&gt;\r\n&lt;p&gt;-淘宝/天猫店铺视觉设计&lt;/p&gt;\r\n&lt;p&gt;-html5+css3&lt;/p&gt;\r\n&lt;p&gt;-各类型网站设计和制作&lt;/p&gt;', '', '', '&lt;p&gt;-企业形象/产品网站设计开发&lt;/p&gt;\r\n                                &lt;p&gt;-集团官方网站设计开发&lt;/p&gt;\r\n                                &lt;p&gt;-淘宝/天猫店铺视觉设计&lt;/p&gt;\r\n                                &lt;p&gt;-html5+css3&lt;/p&gt;', 'webdev', '', 0, 0, 1, 0, 0, 0, '', '', 'page.html', 10),
(9, 2, 0, 1, 0, '', '软件界面设计', '', '&lt;p&gt;\r\n	-软件视觉设计\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	-Windows/Mac\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	-OA系统\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	-管理系统界面\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	-其他终端\r\n&lt;/p&gt;', '', '', '', 'soft', '', 0, 0, 1, 0, 0, 0, '', '', 'page.html', 10),
(10, 2, 0, 1, 0, '', '品牌VIS设计', '', '&lt;p&gt;\r\n	-Logo设计\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	-平面设计\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	-视觉识别系统设计\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	-画册设计\r\n&lt;/p&gt;', '', '', '', 'brand', '', 0, 0, 1, 0, 0, 0, '', '', 'page.html', 10),
(11, 2, 0, 1, 0, '', '其他增值服务', '', '&lt;p&gt;\r\n	-网站维护与管理\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	-域名注册\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	-服务器租赁\r\n&lt;/p&gt;', '', '', '', 'other', '', 0, 0, 1, 0, 0, 0, '', '', 'page.html', 10);

-- --------------------------------------------------------

--
-- 表的结构 `qzb_content`
--

CREATE TABLE IF NOT EXISTS `qzb_content` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`listorder`,`time`),
  KEY `time` (`catid`,`time`),
  KEY `status` (`catid`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `qzb_content`
--

INSERT INTO `qzb_content` (`id`, `catid`, `modelid`, `title`, `thumb`, `keywords`, `description`, `listorder`, `status`, `hits`, `username`, `time`) VALUES
(1, 4, 1, '提高网站运行速度已势在必行！', '', '网站', '\r\n	如果在四五年前，花费40、50秒等待一个网站慢慢打开，或许并不是难事。而现在，让一个用户等待10秒以上打开网站，估计已经没有几个人可以有耐心。而现实情况是，至少有60%的企业网站，打开速度慢如蜗牛。品网视觉', 0, 1, 1, 'admin', 1447806489),
(2, 4, 1, '企业建站需要策划吗？', '', '', '\r\n	网站太需要策划了，而这往往不被网站的拥有者和制作人所重视。许多企业在做网站时，简单从事：找一些有关企业简介及产品简介的资料，再配上几幅照片，交给制作人，叮嘱几句“做得漂亮些啊”之类的话，余下的事就是', 0, 1, 1, 'admin', 1447806537),
(3, 4, 1, '多屏时代下的营销型网站', '', '网站', '\r\n	由以前集中在双屏(电视、电脑)到三屏(电视、电脑、平板电脑)、四屏(电视、电脑、平板电脑、手机)，再到户外大屏也被纳入，真正的多屏世界已经来临。更大的智能手机、家用平板电脑、互联网电视不断推出，智能手表、', 0, 1, 1, 'admin', 1447806611),
(4, 4, 1, '网站推广细节在网站制作时怎么体现？', '', '网站推广,网站制作', '\r\n	品网视觉今天和和大家讨论SEO优化细节在网站制作时怎么体验。欢迎大家补充。\r\n\r\n\r\n	&amp;nbsp;\r\n\r\n\r\n	辅助导航：在设计每个页面时尽可能增加辅助导航，例如我们网站新闻页面，在上方增加的辅助导航，网站大量页面存在重复的', 0, 1, 1, 'admin', 1447806641),
(5, 4, 1, '网站价格为啥差异那么大？', '', '网站', '\r\n	下面来讲一下高端网站和低端网站的主要区别，提醒大家在挑选设计师时对照一下：\r\n\r\n\r\n	&amp;nbsp;\r\n\r\n\r\n	1.是否使用现成模版来套用的（如果用模版，优点是几天就可以做好网站，成本比较低，但是模版网站有很大缺点，一个是', 0, 1, 2, 'admin', 1447806685),
(6, 4, 1, '北京网络公司哪家好？', '', '网络公司,北京', '\r\n	上海网络公司很多，有专门从事网站建设的，有网站优化排名做得比较好的，有的网络营销推广做得不错，专门接网络营销外包。\r\n\r\n\r\n	&amp;nbsp;\r\n\r\n\r\n	那么，怎么选择网络公司做网站呢？\r\n\r\n\r\n	&amp;nbsp;\r\n\r\n\r\n	首先要明白自己为什么要做', 0, 1, 2, 'admin', 1447808377),
(7, 4, 1, '推广效果不佳多半在于网站建设不给力！', '', '网站建设,推广', '\r\n	中小企业通过搜索引擎付费广告，推广自己的产品和服务，到底有没有效果？答案是毋庸置疑的，可以毫不客气的说，如果说在所有的互联网产品中，谈及谁对中小企业营销发展贡献最大的话，笔者一定会选择搜索引擎。我们', 0, 1, 2, 'admin', 1447808492),
(8, 4, 1, '做网站要哪些资料？有哪些作用？', '', '做网站,资料', '\r\n	企业要建立一个网站应该准备哪些资料？\r\n\r\n\r\n	在口网视觉已经了解了客户想要的网站风格后，随之，我们需要了解您建立网站的目的：建立一个行之有效的营销性的网站决不能马马虎虎，草率行事，随便准备点资料，找一些象', 0, 1, 6, 'admin', 1447808587),
(9, 4, 1, '策划一个企业网站需要注意什么？', '', '', '\r\n	作为一个企业网站，首要条件就是要具有较强的盈利能力和宣传能力。一个不能给企业带来利润或宣传的网站，就如同一个垃圾网站，对企业没有丝毫的帮助。而企业网站要想具有较强的盈利能力，就应该有一个完整的网站建', 0, 1, 7, 'admin', 1447808612),
(10, 6, 2, '案例测试九', '/qizhongbao/data/upload/image/201511/9385854d1b3347aef9f12cbeabc139d8.png', '', '', 0, 1, 5, 'admin', 1447830842),
(11, 6, 2, '案例测试七', '/qizhongbao/data/upload/image/201511/77d37e9286eb844153d158d13fd61e52.jpg', '', '', 0, 1, 0, 'admin', 1447831867),
(12, 6, 2, '案例测试六', '/qizhongbao/data/upload/image/201511/601852cdddc40f4dcb892915d47bbb5d.png', '', '', 0, 1, 1, 'admin', 1447832039),
(13, 6, 2, '案例测试五', '/qizhongbao/data/upload/image/201511/6b635171e7d02f39c564ebf61409514c.png', '', '', 0, 1, 1, 'admin', 1447832233),
(14, 6, 2, '案例测试四', '/qizhongbao/data/upload/image/201511/9d9c820245b56f1139b4c92171546910.png', '', '', 0, 1, 1, 'admin', 1447832337),
(15, 6, 2, '案例测试三', '/qizhongbao/data/upload/image/201511/28da0bda970532c00497177fe8b6f907.png', '', '', 0, 1, 3, 'admin', 1447832373),
(16, 6, 2, '案例测试二', '/qizhongbao/data/upload/image/201511/6b82efee1e82b6e1c7a99235a6fb8124.png', '', '', 0, 1, 6, 'admin', 1447832404),
(17, 6, 2, '案例测试一', '/qizhongbao/data/upload/image/201511/78e1794326a3fbc11759efd37c16ec45.png', '', '', 0, 1, 6, 'admin', 1447832437);

-- --------------------------------------------------------

--
-- 表的结构 `qzb_content_news`
--

CREATE TABLE IF NOT EXISTS `qzb_content_news` (
  `id` mediumint(8) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qzb_content_news`
--

INSERT INTO `qzb_content_news` (`id`, `catid`, `content`) VALUES
(1, 4, '&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	如果在四五年前，花费40、50秒等待一个网站慢慢打开，或许并不是难事。而现在，让一个用户等待10秒以上打开网站，估计已经没有几个人可以有耐心。而现实情况是，至少有60%的企业网站，打开速度慢如蜗牛。品网视觉是一家专业的网站建设公司，历经六年的艰苦创业，已经跻身上海网站建设十强品牌。由于很多公司对网站建设的预算有限，在选择网站建设公司及选购域名、网站主机的时候，忽视了产品品质和售后服务。而由此带来的结果却是，网站运行不稳定或者打开速度特别慢。但是品网视觉所要表述的观点是，网站建设与网络营销，提高网站运行速度已经势在必行。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	&lt;strong&gt;宽带速率已经今非昔比&lt;/strong&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	早在四五年前，接入家庭或者办公室的宽带是什么速度？一般在2M或者4M，而现在呢，动辄20M甚至更高。在国家一次又一次的推动下，据说在不久的将来宽带速率可以达到100M。在如此高速的宽带下，为什么很多网站打开速度依旧很慢呢？那是因为网站数据存放在机房的服务器上，而现在多半服务器接入速率只有4M甚至更少（这里面指的是虚拟主机，独立服务器一般有5M或者10M,）。而网站运行速度取决于服务器端的带宽，所以网站打开慢也是必然。很多公司为了贪图一时便宜，选购主机时重视价格而忽视质量，造成网站速度打开时非常慢。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	&lt;strong&gt;心理期望远远超越以前&lt;/strong&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	尽管多半企业网站运行速度并不理想，但是这并不影响用户对网站高速度的期望，因为很多大型门户网站速度很快。要知道，尽快网站很多数以千万计，但是每天我们更多接触的网站，只有那么几个十几个而已。比如，打开腾讯、新浪这样的大型网站速度很快，打开百度、谷歌搜索引擎也很快。而打开某个公司的网站速度却很慢，这个时候用户会有什么样的心理反应？一定是非常失望和沮丧，所以上海网络公司品网视觉认为，提升网站访问速度势在必行。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	&lt;strong&gt;浮躁面前用户耐心不在&lt;/strong&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\n	也许你已经发现，现在的人已经很没有耐心，动辄几句话说不到一起就大动肝火。由于高物价高房价高生活压力的现状，每个人都倍感压力，都变得不耐烦起来。可以想象，一个网站拖延几分钟还打不开，会产生怎样的结果？要么关掉网站，要么即便等待，也会留下不好的印象。很多公司一个月在搜索引擎上投放数以万计的广告费用，而咨询的人成单的客户却寥寥无几。原因就在于网站建设不给力，或者很多用户只是点击了广告，产生了广告费用但是网站却压根就没有打开。所以，为了提高网站营销效果，那么就想办法提高网站访问速度吧。\n&lt;/p&gt;\n&lt;div&gt;\n	&lt;br /&gt;\n&lt;/div&gt;'),
(2, 4, '&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	网站太需要策划了，而这往往不被网站的拥有者和制作人所重视。许多企业在做网站时，简单从事：找一些有关企业简介及产品简介的资料，再配上几幅照片，交给制作人，叮嘱几句“做得漂亮些啊”之类的话，余下的事就是等待验收。制作人呢，则是首先遵从客户的意见，最大限度地满足客户的要求，以网页好看为主，再加点动态效果之类，完活交差。这样的网站，可能真的漂亮，双方也都满意，但绝对称不上是一个很实用的好网站。为什么？因为它不外是一个企业的宣传画册，类似一个黑板报，它所传递的只是一些简单的信息。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	一个实用的、有价值的好网站，特别是企业网站，它应该具有一定的功能，我们叫它功能型网站。功能型网站，是网络技术与企业的实际相结合的产物，它是实实在在有用的东西。 &amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	一个好的企业网站的建设，其实是一个营销整合的过程，它首先需要了解企业的各种需求，包括了解企业的市场状况、竞争状态、营销渠道、方式及方法等，然后，把它与互联网技术相结合，适合网上操作的，移到网上进行(当然是要比原来的网下操作更好)，可以与网络结合进行的，把它结合起来。而这个事情，往往是由深知企业文化及市场状况和了解将来的销售策略的企业内部人员完成的。这样才会对制作方建设的网站做到成竹在胸。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	大多数企业，尽管它是传统营销的行家，但对互联网，尤其是网络可以实现的功能并不了解，或者是没有很深入的了解，那么他也就提不出什么要求，想不到设置什么功能，这个时候，就需要网络营销策划人了。而如何更简捷地体现网站的功能，这些功能又怎样地与企业的CI系统相结合等等，是网站的深入策划，也是每一个好的网站所离不开的。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	品网视觉在给客户做网站的时候，是先了解市场规律，而且我们也具有丰富的传统营销策划经验，同时又非常的通晓互联网，再加上高尚的职业道德观念。企业建站需要一个完整的策划，这个策划要有企业的市场分析，可行性分析，目标群体分析，网站的主要栏目设置，网站的主要功能，网站的整体结构等多方面的内容。品网视觉会在制作前进行各种调查、分析出结果后，再为企业制定出最适合本企业的策划案及美观的界面设计。\r\n&lt;/p&gt;'),
(3, 4, '&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	由以前集中在双屏(电视、电脑)到三屏(电视、电脑、平板电脑)、四屏(电视、电脑、平板电脑、手机)，再到户外大屏也被纳入，真正的多屏世界已经来临。更大的智能手机、家用平板电脑、互联网电视不断推出，智能手表、谷歌眼镜、车载屏幕出现在消费者的生活里，构成了一个完整的生态系统。屏幕无处不在，相互依靠。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	目前中国已经超越美国，成为世界上智能手机第一拥有大国，而手机和移动设备的普及，已经带领我们进入了一个新的移动互联网时代。据研究调查表明，88%的用户在看电视的同时会使用电脑或移动设备。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	现在人们的生活习惯、阅读和观看方式都已经被改变，越来越多的人将目光从纸刊、电视转移到互联网，使用电脑打开网络搜索查找，使用移动设备分享、阅读已经成为趋势。在这样的趋势下企业主们也将营销投放从传统媒体转换到互联网中，而且不仅仅是PC端，还有目前越来越火的移动网络。很多企业都开始建立属于自己的网站，并且为网站展开一系列的网络营销，为品牌进行网络口碑营销。这所有的一切早就是营销圈里的热门话题，各类相关的论坛、演讲也开展了不少，今天我主要想和大家从技术的角度来谈谈多屏建站。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:20px;&quot;&gt;&lt;strong&gt;Web网站与Wap网站结合&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	在这个多屏时代大家建设网站最看重的不外乎两点：网站的整合性及营销性。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	网站的整合性\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	随着多屏时代的到来，很多企业都建立了属于自己的移动营销型网站，但是同时也有一些企业主在抱怨操作不方便，如果能够将wap网站融入到web网站中，整合一起操作效率会更好。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	网站的营销性\r\n&lt;/p&gt;'),
(4, 4, '&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	品网视觉今天和和大家讨论SEO优化细节在网站制作时怎么体验。欢迎大家补充。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	辅助导航：在设计每个页面时尽可能增加辅助导航，例如我们网站新闻页面，在上方增加的辅助导航，网站大量页面存在重复的和title标签问题。网站制作大量页面存在重复的和title标\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	页面参数问题：网站制作每页面最好只使用一个参数，或者是整个网站生成静态页面，如果生成静态页面，保存目录不宜过深，因为搜索引擎对网站的权重会一层一层递减，首页权重是最大的。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	代码问题：在页面设计时，尽量减化代码，有利于排名。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	链接的统一性：搜索引擎排名最主要的因素就是网站内容和链接，假如网站内部链接不一致，在很大程度上直接影响着网站在搜索引擎中的排名。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	隐藏文字问题：隐藏文字主要指利用样式使这个文字对搜索引擎可见，对用户不可见。这种方式早就被列入各大搜索引擎惩罚的对象中。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	合理利用框架和js：网站主要内容和链接不要写入框架和js里面，例如该页面针对的关键词短语，现在搜索引擎还不能很好地识别js里面的内容，框架里面的内容也会在网站排名时从页面内容里分离出去，也就是排除了这部分内容的作用。但js和框架也可以起到积极作用。\r\n&lt;/p&gt;'),
(5, 4, '&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	下面来讲一下高端网站和低端网站的主要区别，提醒大家在挑选设计师时对照一下：\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	1. 是否使用现成模版来套用的（如果用模版，优点是几天就可以做好网站，成本比较低，但是模版网站有很大缺点，一个是容易和别的网站“撞衫”，二是自由度不是很好，可能不能完全满足你的要求；三是对搜索引擎可能不友好，自然排名上不去）\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	2. 是否具有SEO优化功能（可填写每个页面的标题、关键字、描述）\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	3. 是否能生成sitemap.xml\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	4. 网站空间是否稳定，速度是否快，能同时支持多少人在线而不影响速度。（不稳定的空间对网站的排名伤害是非常大的）\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	5. 是否符合W3C标准（这个从外观上是看不出来的，必须让专业的人来看）\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	6. 网站需求不一样。名片型网站和展示营销型网站，肯定是价格不一样。大家也必须注意，价格是和网站的需求息息相关的。想用很低的价格去做一个很多功能的、完美的网站，基本是不可能的。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	7. 网站的菜单、分类是否可以在后台自己添加修改。（有些网站设计公司把这些都做死掉，对他们来说可以免除很多的工作）\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	8. 网站设计的水准。这个很难用标准去衡量，但是可以以大多数人的审美观来作评判。并且可以从很多细节上看出这个网站是否经过设计。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	9. 设计再好的网站也需要后期的不断维护才能让其一直保持最佳应用效果，一个好的网站建设公司的实力，往往是 网站做完之后的售后服务质量中体现的。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	无论你是否有足够预算，品网视觉(www.pinwang.cc)都能为您量身定做适合的方案，让你的成本最优化、结果最优化。\r\n&lt;/p&gt;'),
(6, 4, '&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	上海网络公司很多，有专门从事网站建设的，有网站优化排名做得比较好的，有的网络营销推广做得不错，专门接网络营销外包。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	那么，怎么选择网络公司做网站呢？\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	首先要明白自己为什么要做网站，自己要个什么网站，网站用来做什么？\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	1、如果您对网站的要求不高，您还不知道网站到底有多大的用处，您做网站的目的也只是因为朋友的公司，同行的企业做了网站。所以自己也要做个网站，就像是开公司，要办营业执照一样，被逼无奈。那么，您可以这样去选择上海网络公司。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	找一个正规一些的上海网络公司，如果是对网站没要求的，一般的网络公司都可以满足您的需求，您只需要考虑，他是不是个骗子，这个公司能不能继续搞下去，以后你的网站续费没问题。（千万别找私人工作室哦，个人，学生就更不用讲了，到时候网站出了问题，没办法搞。因为不正规的公司，可能搞一二个月，一年不搞了，到时候续费都成问题，那时候急就没用了。）\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	2、如果您要做一个品牌宣传的网站，想您的网站比同行要好，想客户打开你们这种行业的网站的时候，就会想到你们公司的网站是最好的，你们提供的产品和服务是最好的。您对网站的要求是比较高的，您找的网络公司，也是要相对好些的，当然价格也要相对高些。要不然，怎么他们做出来的网站，达不到你们的要求，怎么会修改，怎么会重做，第一对技术员的要求高些，第二增加了制作时间，网络公司的投入就多了，那么，费用肯定是相对要高些的。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	那么，您可以这样去选择上海网络公司。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	找一个实力要好些的上海网络公司，制作经验丰富些的，网站设计水平和网站代码开发水平都要高一等的。最重要的是服务态度好，也不是牌子越大越好，如果服务不好，怎么能跟您沟通好，只有经过多次修改，改进，才能做出一个好的网站。才能做出比别人好的网站。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	3、如果您是做一个营销型的网站，想利用网站开发业务，想在网上赚一笔。想利用网络推广把自己的产品推广出去，搞网上销售的那种。那么，您一定要选择对的网络公司。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	要有能力把你的网站推广到百度第一页，当然这个价格肯定是要高些的，实际上上海网站推广搞得好的公司真的不多，没几家。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	除了网站排名，另外要把网络市场做好，不错过客户，就要做网络营销，要做整个网络营销推广，把自己的信息覆盖到互联网各个角落。分析客户的同购买心理，分析客户的搜索习惯，把推广的关键词做广，做到不管什么客户用什么关键词，都能很好的找到贵公司的网站。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	那么为什么说品网视觉比别的网络公司有优势呢。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 一般网络公司（特别是工作室） &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 品网视觉\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	建站费用 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 虚报价格现象严重，太高或太低 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;公司有严格的收费标准\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	建站周期 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 技术员少，流程拖沓，周期不确定 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;建站程序员充足，严格按合同周期完成&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	网站风格&amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;设计水平差，往往实现不了客户想要的效果 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;由经验丰富的网页设计师操刀\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	网站功能 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 以模版为主，稳定性差。 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;程序安全稳定，功能性强，定制开发\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	质量 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 团队不固定，没有配套产品，程序来源于网络 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;强大网站研发，以及网站推广团队\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	售后维护 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 售后经常找不到服务商，网站不安全 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;全天等候客服人员，随时多能够修改\r\n&lt;/p&gt;'),
(7, 4, '&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	中小企业通过搜索引擎付费广告，推广自己的产品和服务，到底有没有效果？答案是毋庸置疑的，可以毫不客气的说，如果说在所有的互联网产品中，谈及谁对中小企业营销发展贡献最大的话，笔者一定会选择搜索引擎。我们姑且不论搜索引擎攫取了多少利润，在给广大网民提供信息检索便利的同时，搜索引擎的确让不少中小微型企业获取了新的营销际遇。品网视觉是一家专业的网站建设公司，从2009年创业至今一直专注于网站建设业务，在给中小公司提供网站建设服务的同时，品网视觉也目睹太多的企业，通过搜索引擎逆势崛起。但是我们也应该看到事物的另一面，抱怨营销推广无效而且消费太高的大有人在，那么问题究竟出现在哪里呢？\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:20px;&quot;&gt;&lt;strong&gt;互联网时代没有网站万万不可：&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	现在不用多说，每家企业都明白互联网的重要性。但是真正用好互联网的公司，并没有多少，尤其是中小企业，由于资金、人力的缺乏，在机遇面前很多时候失之交臂。比如很多传统制造业，在现实的成本激增市场压力面前，颇有前瞻的选择了互联网，选择了电子商务。但是可惜的是，多半企业由于准备不足而败北。当然我们还看到一些老古董企业，甚至认为传统的销售模式完全可以支撑企业运营，公司连一个最基本的官方网站都没有。品网视觉认为，在互联网时代经营企业，首先需要做的就是设计制作一个不错的网站。如果没有网站，或者网站设计制作的不给力，必定会让企业在无形之中失去诸多机会。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:20px;&quot;&gt;&lt;strong&gt;网站是所有营销方式的聚合点：&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	网站是什么？这是每个公司和每个网站建设公司都应该深入思考的问题，网站建设完后放置在哪里，本身不会自动产生任何效益。网站只是一个工具，其作用是辅助营销而非替代营销。比如企业参见一个展会推介产品或者服务，那么一定会有客商在展会后浏览企业的网站进入深入了解。很多企业现在也做了天猫旗舰店，如果是小东西还好说，如果是成千上万的物品，多数人还是会特别慎重的仔细了解企业背景的。而公司的网站，就是最好的途径之一。同样的，很多公司做推广做营销，其归依点还是在网站上。所以，网站似乎同心多圆的原点，是任何营销方式的聚合点。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:20px;&quot;&gt;中小企业网站建设输赢在细节：&lt;/span&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	并不是说大企业网站做的一定就非常好，很多大公司网站设计的并不好，或许网站上很多内容经年累月不更新。但是大公司有的是资源，有的是营销资金，损失几个客户也无所谓。那么小公司有什么？对于上搜索引擎推广的小公司来说，损失任何一个广告点击者，疏忽任何一个意向客户的咨询者，都是一种生存的痛。而现实情况确实，很多公司买个模板网站就上搜索引擎展开推广，每天广告费投入上千，但是真正成单者却寥寥无几。问题出在哪里？对于凡此简单的营销推广模式，问题一定是出现在网站上，而且多半的根源在于网站的细节没有被足够重视。\r\n&lt;/p&gt;'),
(8, 4, '&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;企业要建立一个网站应该准备哪些资料？&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	在口网视觉已经了解了客户想要的网站风格后，随之，我们需要了解您建立网站的目的：建立一个行之有效的营销性的网站决不能马马虎虎，草率行事，随便准备点资料，找一些象征性的图片，一下子塞给我们，这是绝对的错误!也许您得知同行企业已纷纷建网，并取得了一定的收效；提醒您注意，必须在一开始就明确：您能够利用网站做什么？通过网站，您能够为访问者或顾客提供什么，或者说您给消费者带来了什么利益？然后在问问自己能够从中获得什么利益？ 品网视觉在拿到您提供的资料后，会派专员为您提供的文字资料负责整理，这个人会根据您所在的行业做一些市场调查后，他会站在企业、市场和消费者的多角度考虑文字的组织方式。我们的工作体会是企业在提供资料时常常是基于企业宣传手册、彩页、各种报告、技术资料，我想说的是，这些资料往往技术性太强或一味地站在企业角度，而缺乏站在客户角度考虑问题。当然，这些都是很好的资料，但建议您最好还是找品网的专员重组一下。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;一个企业网站要需要多久才能见到效果？&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	一般品网视觉在为客户的网站制作完成后，就是对网站进行第一步的优化，其次后，我们会把企业网站登录到各大搜索引擎，最后，如果您有需要，我们会再根据企业的不同性质制定出不同的整体网络营销方案，再按方案的具体内容，在企业的指导下逐步实施。一般情况下，三个月后会企业会见到明显效果。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;企业网站怎么样才能起到作用？&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	企业建设自己的网站不是摆设，而是要从中获得效益。网站的制作不但要求美观，而且还需要根据企业经营的需要，构造适合自身特点的上网计划和模式，以最小的投入换取最大的回报。只有把网站做成企业和客户之间的有效纽带，网站才能真正发挥作用。另外，企业网站还应该多关注自己特定的客户群，通过多种形式和客户保持沟通，吸引客户不断地通过网站和企业进行交流，从而加深与客户的关系、更深层次地了解客户需求、为企业发展提供服务。\r\n&lt;/p&gt;'),
(9, 4, '&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;作为一个企业网站，首要条件就是要具有较强的盈利能力和宣传能力。一个不能给企业带来利润或宣传的网站，就如同一个垃圾网站，对企业没有丝毫的帮助。而企业网站要想具有较强的盈利能力，就应该有一个完整的网站建设策划。制作方会根据企业的不同性质及不同的商业目的为企业提供一套完成的网站建设策划案。&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	品网视觉在给一个企业网站策划的时候，首先会为客户考虑以下几点：\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	(1 )、明确客户建立网站的目的\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	根据客户的产品、销售渠道和销售对象等情况，明确客户的网站是信息服务型、销售型、销售服务型或是综合型，面向企业客户的网站和面向个体消费者的网站是完全不一样的，即使是面向个体消费者的网站，也并非所有都需要销售商品，而且并不是所有产品都适合在网上销售。比如，面向企业客户的网站的重点是其在企业间合作过程中的作用，而不需要象面向消费者的网站那样千方百计去增加浏览率，另如可口可乐、柯达都没有在网上销售产品，网站只是它们树立形象，提供顾客服务的一个工具，是它们整体营销战略的一部分。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	(2 )、了解客户的目标市场\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	您的客户是企业还是个体消费者，他们来自何处？他们信息化程度如何，经常上网吗？他们主要使用哪些语言？主要希望了解哪些信息？他们的购买水平如何？主要使用哪种浏览器？当然，最初建网站时不可能了解这么细致，网站内容需要随着对消费者了解的深入而逐步调整。比如，企业的顾客群体如果是喜欢新技术、受教育程度较高或经常使用Internet的，则电子商务成功的可能性就很高。此外，目前Internet用户中男多女少也是考虑因素，“Dell电脑”网上销售成功的原因，首先在于其市场定位的正确。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	(3 )、明确客户的竞争优势\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	您的网上、网下竞争对手是谁？(网上竞争对手是通过搜索引擎查找)，与他们相比，您的商品、价格、服务、品牌、配送渠道等方面有什么优势？竞争对手的优势是否能学习？根据客户自身的竞争优势来为您确定正确的营销战略。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	(4 )、分析您的网站如何为客户提供信息？\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	您的网站信息来源在哪里？信息是集中到网站编辑处更新、发布还是由各部门自行更新、发布？集中发布可能安全性好，便于管理，但信息更新速度可能较慢，有时还可能出现协调不力的问题。比如，某产品已经售缺，但网站编辑却不知道，仍在网上销售该产品。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	(5 )、规划好收款与配送事宜\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	如果您需要做的是一个销售型网站，我们会首先分析顾客购买你商品的频率如何？您是否能接受货到付款或在线支付(如果购买频率高，最好能接受)？您的商品如何配送？配送的成本、时间如何考虑？\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	(6 )、评估您能从网站获取的利益\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	您的网站是单独的业务，还是传统业务的一部分？你希望从哪些方面获得利润？你的获利能力如何？\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;color:#666666;font-family:AppleGothic, Arial, ''Microsoft Yahei'', Simsun;background-color:#FFFFFF;&quot;&gt;\r\n	当然具体的网站策划，需要您确定对网站的定位后，才能做出更符合您网站的策划方案。\r\n&lt;/p&gt;');

-- --------------------------------------------------------

--
-- 表的结构 `qzb_content_product`
--

CREATE TABLE IF NOT EXISTS `qzb_content_product` (
  `id` mediumint(8) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `caseimg` varchar(255) NOT NULL,
  `wangzhi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qzb_content_product`
--

INSERT INTO `qzb_content_product` (`id`, `catid`, `content`, `caseimg`, `wangzhi`) VALUES
(10, 6, '', '/qizhongbao/data/upload/image/201511/334ef6f7afd46767ca42304f3a3450ba.jpg', ''),
(11, 6, '', '/qizhongbao/data/upload/image/201511/40c71dc5ce1f70c294531f86d8463bcb.jpg', ''),
(12, 6, '', '/qizhongbao/data/upload/image/201511/31d4dd823359ca6caaa4e22d018b7dd3.jpg', ''),
(13, 6, '', '/qizhongbao/data/upload/image/201511/fbfbdaf79788edfd3f7f9709ae3e7a51.jpg', ''),
(14, 6, '', '/qizhongbao/data/upload/image/201511/4403e2643b76b7d570ea24f70287dd58.jpg', ''),
(15, 6, '', '/qizhongbao/data/upload/image/201511/999f5dfc3acb28be8550d5f0507041bd.jpg', ''),
(16, 6, '', '/qizhongbao/data/upload/image/201511/a38edcb3e15b2935290c6ce72608a061.jpg', ''),
(17, 6, '', '/qizhongbao/data/upload/image/201511/3e8205ab15915a12296677c06bdea077.jpg', 'http://www.qizhongbao.net');

-- --------------------------------------------------------

--
-- 表的结构 `qzb_form_comment`
--

CREATE TABLE IF NOT EXISTS `qzb_form_comment` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cid` mediumint(8) NOT NULL,
  `userid` mediumint(8) NOT NULL,
  `username` char(20) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` char(20) DEFAULT NULL,
  `pinglunneirong` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `status` (`status`),
  KEY `time` (`time`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qzb_form_gestbook`
--

CREATE TABLE IF NOT EXISTS `qzb_form_gestbook` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cid` mediumint(8) NOT NULL,
  `userid` mediumint(8) NOT NULL,
  `username` char(20) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` char(20) DEFAULT NULL,
  `xingming` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `status` (`status`),
  KEY `time` (`time`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `qzb_form_gestbook`
--

INSERT INTO `qzb_form_gestbook` (`id`, `cid`, `userid`, `username`, `listorder`, `status`, `time`, `ip`, `xingming`, `mobile`, `msg`, `email`, `company`) VALUES
(1, 0, 0, '', 0, 1, 1447918884, '::1', NULL, NULL, NULL, '222222@qq.com', '222222');

-- --------------------------------------------------------

--
-- 表的结构 `qzb_member`
--

CREATE TABLE IF NOT EXISTS `qzb_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT '',
  `modelid` smallint(5) NOT NULL,
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `regip` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qzb_member_geren`
--

CREATE TABLE IF NOT EXISTS `qzb_member_geren` (
  `id` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `qzb_model`
--

CREATE TABLE IF NOT EXISTS `qzb_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` tinyint(3) NOT NULL,
  `modelname` char(30) NOT NULL,
  `tablename` char(20) NOT NULL,
  `listtpl` varchar(30) NOT NULL,
  `showtpl` varchar(30) NOT NULL,
  `joinid` smallint(5) DEFAULT NULL,
  `setting` text,
  PRIMARY KEY (`modelid`),
  KEY `typeid` (`typeid`),
  KEY `joinid` (`joinid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `qzb_model`
--

INSERT INTO `qzb_model` (`modelid`, `typeid`, `modelname`, `tablename`, `listtpl`, `showtpl`, `joinid`, `setting`) VALUES
(1, 1, '文章模型', 'content_news', 'list_news.html', 'show_news.html', 0, 'a:1:{s:7:"default";a:6:{s:5:"title";a:2:{s:4:"name";s:6:"标题";s:4:"show";s:1:"1";}s:8:"keywords";a:2:{s:4:"name";s:9:"关键字";s:4:"show";s:1:"1";}s:5:"thumb";a:2:{s:4:"name";s:9:"缩略图";s:4:"show";s:1:"1";}s:11:"description";a:2:{s:4:"name";s:6:"描述";s:4:"show";s:1:"1";}s:4:"time";a:2:{s:4:"name";s:12:"发布时间";s:4:"show";s:1:"1";}s:4:"hits";a:2:{s:4:"name";s:9:"阅读数";s:4:"show";s:1:"1";}}}'),
(2, 1, '产品模型', 'content_product', 'list_product.html', 'show_product.html', NULL, 'a:1:{s:7:"default";a:6:{s:5:"title";a:2:{s:4:"name";s:6:"标题";s:4:"show";s:1:"1";}s:8:"keywords";a:2:{s:4:"name";s:9:"关键字";s:4:"show";s:1:"1";}s:5:"thumb";a:2:{s:4:"name";s:9:"缩略图";s:4:"show";s:1:"1";}s:11:"description";a:2:{s:4:"name";s:6:"描述";s:4:"show";s:1:"1";}s:4:"time";a:2:{s:4:"name";s:12:"发布时间";s:4:"show";s:1:"1";}s:4:"hits";a:2:{s:4:"name";s:9:"阅读数";s:4:"show";s:1:"1";}}}'),
(3, 3, '在线留言', 'form_gestbook', 'list_gestbook.html', 'index.html', NULL, 'a:1:{s:4:"form";a:7:{s:4:"post";s:1:"0";s:3:"num";s:1:"0";s:4:"time";s:0:"";s:5:"check";s:1:"0";s:4:"code";s:1:"0";s:6:"member";s:1:"0";s:4:"show";a:5:{i:0;s:8:"fullname";i:1;s:6:"mobile";i:2;s:5:"email";i:3;s:7:"company";i:4;s:3:"msg";}}}'),
(4, 3, '文章评论', 'form_comment', 'list_comment.html', 'form.html', 1, 'a:1:{s:4:"form";a:8:{s:4:"post";s:1:"0";s:3:"num";s:1:"0";s:4:"time";s:0:"";s:5:"check";s:1:"0";s:4:"code";s:1:"0";s:6:"member";s:1:"0";s:4:"show";a:1:{i:0;s:14:"pinglunneirong";}s:10:"membershow";a:1:{i:0;s:14:"pinglunneirong";}}}'),
(5, 2, '个人', 'member_geren', 'list_geren.html', 'show_geren.html', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `qzb_model_field`
--

CREATE TABLE IF NOT EXISTS `qzb_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `tips` text NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `setting` mediumtext NOT NULL,
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `qzb_model_field`
--

INSERT INTO `qzb_model_field` (`fieldid`, `modelid`, `field`, `name`, `isshow`, `tips`, `pattern`, `errortips`, `formtype`, `setting`, `listorder`, `disabled`) VALUES
(1, 1, 'content', '内容', 1, '', '', '', 'editor', 'a:4:{s:7:"toolbar";s:1:"1";s:5:"width";s:3:"700";s:6:"height";s:3:"450";s:12:"defaultvalue";s:0:"";}', 0, 0),
(2, 2, 'content', '内容', 1, '', '', '', 'editor', 'a:5:{s:7:"toolbar";s:1:"2";s:5:"items";s:256:"''source'',''|'',''forecolor'',''bold'',''italic'',''underline'',''lineheight'',''|'',''fontname'',''fontsize'',''code'',''plainpaste'',''wordpaste'',''|'',''image'',''multiimage'',''flash'',''media'',''insertfile'',''link'',''unlink'',''|'',''justifyleft'',''justifycenter'',''justifyright'',''justifyfull''";s:5:"width";s:3:"700";s:6:"height";s:3:"450";s:12:"defaultvalue";}', 0, 0),
(3, 3, 'fullname', '姓名', 1, '', '1', '', 'input', 'a:2:{s:4:"size";s:3:"150";s:12:"defaultvalue";s:0:"";}', 5, 0),
(4, 3, 'mobile', '联系电话', 1, '', '1', '', 'input', 'a:2:{s:4:"size";s:3:"150";s:12:"defaultvalue";s:0:"";}', 4, 0),
(5, 3, 'msg', '详细内容', 1, '', '1', '留言内容不能为空', 'textarea', 'a:3:{s:5:"width";s:3:"400";s:6:"height";s:2:"90";s:12:"defaultvalue";s:0:"";}', 1, 0),
(6, 4, 'pinglunneirong', '评论内容', 1, '', '1', '评论内容不能为空', 'textarea', 'a:3:{s:5:"width";s:3:"400";s:6:"height";s:2:"90";s:12:"defaultvalue";s:0:"";}', 0, 0),
(7, 2, 'caseimg', '案例图片', 1, '', '', '', 'file', 'a:3:{s:4:"type";s:12:"png,jpg,jpeg";s:7:"preview";s:1:"1";s:4:"size";s:1:"5";}', 1, 0),
(8, 2, 'wangzhi', '网址', 0, '请输入公司官网', '/^http:\\/\\//', '', 'input', 'a:2:{s:4:"size";s:3:"180";s:12:"defaultvalue";s:0:"";}', 0, 0),
(9, 3, 'email', '电子邮箱', 1, '', '/^[\\w\\-\\.]+@[\\w\\-\\.]+(\\.\\w+)+$/', '', 'input', 'a:2:{s:4:"size";s:3:"180";s:12:"defaultvalue";s:0:"";}', 3, 0),
(10, 3, 'company', '公司名称', 1, '', '', '', 'input', 'a:2:{s:4:"size";s:3:"180";s:12:"defaultvalue";s:0:"";}', 2, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

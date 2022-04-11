-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Хост: saekip.mysql.ukraine.com.ua
-- Время создания: Дек 19 2013 г., 19:05
-- Версия сервера: 5.1.69-cll-lve
-- Версия PHP: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `saekip_apostrof`
--

-- --------------------------------------------------------

--
-- Структура таблицы `jos_assets`
--

CREATE TABLE IF NOT EXISTS `jos_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Дамп данных таблицы `jos_assets`
--

INSERT INTO `jos_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 518, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 112, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 113, 114, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 115, 116, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":1},"core.manage":{"7":1},"core.delete":[],"core.edit.state":[]}'),
(11, 1, 117, 118, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 119, 120, 1, 'com_login', 'com_login', '{}'),
(13, 1, 121, 122, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 123, 124, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 125, 126, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 127, 128, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 129, 130, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 131, 132, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 133, 136, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 137, 138, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 139, 140, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 141, 142, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 143, 144, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 145, 146, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.own":{"6":1},"core.edit.state":[]}'),
(25, 1, 147, 150, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 151, 152, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 61, 2, 'com_content.category.2', 'Новини', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 134, 135, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 148, 149, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 53, 63, 64, 3, 'com_content.article.1', 'Головна сторінка', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 38, 22, 23, 4, 'com_content.article.2', 'Шукаємо партнерів з розповсюдження художньої літератури', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(34, 39, 28, 29, 4, 'com_content.article.3', 'Сергій Рожко                   Транс_форматорний блюз', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 38, 20, 21, 4, 'com_content.article.4', '19.11.2010 року створено видавництво Апостроф', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 38, 24, 25, 4, 'com_content.article.5', 'Новина видавництва 3', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 39, 32, 33, 4, 'com_content.article.6', 'Микола Шатилов        Кляті сімдесяті...', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 27, 19, 26, 3, 'com_content.category.7', 'Новини видавництва', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(39, 27, 27, 36, 3, 'com_content.category.8', 'Нові книги', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(40, 39, 30, 31, 4, 'com_content.article.7', 'Нова книга 3', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 27, 37, 44, 3, 'com_content.category.9', 'Новини мистецького життя', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(42, 41, 38, 39, 4, 'com_content.article.8', 'Новина мистецького життя 1', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 41, 40, 41, 4, 'com_content.article.9', 'Новина мистецького життя 2', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 41, 42, 43, 4, 'com_content.article.10', 'Новина мистецького життя 3', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 27, 45, 52, 3, 'com_content.category.10', 'Новини студії "Люкс Дизайн"', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(46, 45, 46, 47, 4, 'com_content.article.11', 'Тиражування CD/DVD дисків', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 45, 48, 49, 4, 'com_content.article.12', 'Друк листівок по дуже вигідним цінам', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 45, 50, 51, 4, 'com_content.article.13', 'Ексклюзивні візитки та календарики з частковим лаком', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 27, 53, 60, 3, 'com_content.category.11', 'Картини', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(50, 49, 54, 55, 4, 'com_content.article.14', 'НА МОРСЬКИХ ПРОСТОРАХ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 49, 56, 57, 4, 'com_content.article.15', 'КАМІННЯ І МОРЕ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 49, 58, 59, 4, 'com_content.article.16', 'РОЖЕВИЙ РАНОК', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 8, 62, 69, 2, 'com_content.category.12', 'Сторінки сайту', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(54, 53, 65, 66, 3, 'com_content.article.17', 'Про нас', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 56, 71, 72, 3, 'com_content.article.18', 'Люцина Хворост - Паперовий кораблик', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(56, 8, 70, 101, 2, 'com_content.category.13', 'Книги', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(57, 8, 102, 111, 2, 'com_content.category.14', 'Готуються до друку', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(58, 56, 73, 74, 3, 'com_content.article.19', 'Олександр Бобошко - У СВІТІ ВТРАТ І СВЯТ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 56, 75, 76, 3, 'com_content.article.20', 'Олександра Ковальова    ПОТІК', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 57, 103, 104, 3, 'com_content.article.21', 'Іларіон і Раїса Хейлики', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 57, 105, 106, 3, 'com_content.article.22', 'Світлана ЗАГРЕБА поезії', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 57, 107, 108, 3, 'com_content.article.23', 'текст - текст', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 53, 67, 68, 3, 'com_content.article.24', 'Картини', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 1, 512, 513, 1, 'com_easybookreloaded', 'com_easybookreloaded', '{"core.admin":[],"core.manage":[]}'),
(65, 1, 506, 507, 1, 'com_xmap', 'com_xmap', '{}'),
(71, 1, 508, 509, 1, 'com_foxcontact', 'com_foxcontact', '{}'),
(72, 57, 109, 110, 3, 'com_content.article.25', 'Зинаїда Серебрякова', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 56, 77, 78, 3, 'com_content.article.26', 'Олександр Косолапов - З далеких літ.', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 56, 79, 80, 3, 'com_content.article.27', 'Віталій Кирпатовський - ЗІРНИЦІ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 39, 34, 35, 4, 'com_content.article.28', 'Олександр Бобошко                                   ЖЕВРІЄ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 56, 81, 82, 3, 'com_content.article.29', 'Олександра Ковальова, Ольга Тільна - Ходім туди, де спить трава...', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 56, 83, 84, 3, 'com_content.article.30', 'Сергій Рожко - Транс_форматорний блюз', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 56, 85, 86, 3, 'com_content.article.31', 'Лариса Вировець - ЯКБИ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 1, 510, 511, 1, 'com_chronoforms', 'chronoforms', '{}'),
(81, 1, 514, 515, 1, 'com_phocaguestbook', 'com_phocaguestbook', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 56, 87, 88, 3, 'com_content.article.32', 'Микола Шатилов', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 56, 89, 90, 3, 'com_content.article.33', 'Олександр Бобошко  ЖЕВРІЄ поезії', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 56, 91, 92, 3, 'com_content.article.34', 'Податкова система', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 56, 93, 94, 3, 'com_content.article.35', 'Краєзнавство', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 56, 95, 96, 3, 'com_content.article.36', 'Микола Воловик', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 56, 97, 98, 3, 'com_content.article.37', 'CD-Співана поезія клубу «Апостроф»', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 56, 99, 100, 3, 'com_content.article.38', 'Глиняні письмена', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 1, 516, 517, 1, 'com_phocagallery', 'com_phocagallery', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_banners`
--

CREATE TABLE IF NOT EXISTS `jos_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_banner_clients`
--

CREATE TABLE IF NOT EXISTS `jos_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `jos_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(5120) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 27, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 12, 1, 'новини', 'com_content', 'Новини', 'новини', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2010-06-28 13:26:37', 42, '2011-05-06 09:25:55', 0, '*'),
(3, 28, 1, 13, 14, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 15, 16, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 17, 18, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 19, 20, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 38, 2, 2, 3, 2, 'новини/новини-видавництва', 'com_content', 'Новини видавництва', 'новини-видавництва', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-05-06 09:26:18', 42, '2011-05-06 09:26:37', 0, '*'),
(8, 39, 2, 4, 5, 2, 'новини/нові-книги', 'com_content', 'Нові книги', 'нові-книги', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-05-06 10:21:04', 42, '2011-05-06 10:21:16', 0, '*'),
(9, 41, 2, 6, 7, 2, 'новини/новини-мистецького-життя', 'com_content', 'Новини мистецького життя', 'новини-мистецького-життя', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-05-06 10:38:41', 0, '0000-00-00 00:00:00', 0, '*'),
(10, 45, 2, 8, 9, 2, 'новини/новини-студії-люкс-дизайн', 'com_content', 'Новини студії "Люкс Дизайн"', 'новини-студії-люкс-дизайн', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-05-06 10:55:28', 0, '0000-00-00 00:00:00', 0, '*'),
(11, 49, 2, 10, 11, 2, 'новини/картини', 'com_content', 'Картини', 'картини', '', '', 1, 42, '2011-08-06 06:58:01', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-05-06 11:05:13', 42, '2011-05-06 11:05:23', 0, '*'),
(12, 53, 1, 21, 22, 1, 'сторінки-сайту', 'com_content', 'Сторінки сайту', 'сторінки-сайту', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-05-06 11:24:03', 0, '0000-00-00 00:00:00', 0, '*'),
(13, 56, 1, 23, 24, 1, 'книги', 'com_content', 'Книги', 'книги', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-05-10 06:47:54', 42, '2011-08-02 11:34:03', 0, '*'),
(14, 57, 1, 25, 26, 1, 'готуються-до-друку', 'com_content', 'Готуються до друку', 'готуються-до-друку', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-05-10 06:48:12', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_chronoforms`
--

CREATE TABLE IF NOT EXISTS `jos_chronoforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `form_type` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `wizardcode` longtext,
  `events_actions_map` longtext,
  `params` longtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_chronoforms`
--

INSERT INTO `jos_chronoforms` (`id`, `name`, `form_type`, `content`, `wizardcode`, `events_actions_map`, `params`, `published`) VALUES
(1, 'order', 1, '<h1>Ви замовили</h1>\r\n<?php\r\nif (isset($_GET[''book''])) {\r\n?>\r\n<p>Книгу - <strong><?php echo $_GET[''book'']; ?></strong></p>\r\n<p>Автор - <strong><?php echo $_GET[''author'']; ?></strong></p>\r\n<?php\r\n}\r\n?>\r\n<?php\r\nif (isset($_GET[''paint''])) {\r\n?>\r\n<p>Картину - <strong><?php echo $_GET[''paint'']; ?></strong></p>\r\n<p>Автор - <strong><?php echo $_GET[''author'']; ?></strong></p>\r\n<?php\r\n}\r\n?>\r\n<div class="ccms_form_element cfdiv_text" id="__container_div"><label>Ім''я *</label><input maxlength="150" size="30" class=" validate[''required'']" title="" type="text" value="" name="name" />\r\n<div class="clear"></div><div id="error-message-name"></div></div><div class="ccms_form_element cfdiv_text" id="e_mail__container_div"><label>E-mail *</label><input maxlength="150" size="30" class=" validate[''required'',''email'']" title="" type="text" value="" name="email" />\r\n<div class="clear"></div><div id="error-message-email"></div></div><div class="ccms_form_element cfdiv_text" id="__container_div"><label>Телефон</label><input maxlength="150" size="30" class="" title="" type="text" value="" name="phone" />\r\n<div class="clear"></div><div id="error-message-phone"></div></div><div class="ccms_form_element cfdiv_textarea" id="__container_div"><label>Детальний запит</label><textarea cols="45" rows="12" class="" title="" type="textarea" name="text"></textarea>\r\n<div class="clear"></div><div id="error-message-text"></div></div><input type="hidden" value="<?php echo $_GET[''book'']; ?>" name="book" />\r\n<input type="hidden" value="<?php echo $_GET[''paint'']; ?>" name="paint" />\r\n<input type="hidden" value="<?php echo $_GET[''author'']; ?>" name="author" />\r\n<div class="ccms_form_element cfdiv_submit" id="submit_container_div"><input name="submit" class="" value="Надiслати" type="submit" />\r\n<div class="clear"></div><div id="error-message-submit"></div></div>', 'array (\n  ''field_1'' => \n  array (\n    ''input_text_1_label_text'' => ''Ім\\''я *'',\n    ''input_text_1_input_name'' => ''name'',\n    ''input_text_1_input_id'' => '''',\n    ''input_text_1_input_value'' => '''',\n    ''input_text_1_input_maxlength'' => ''150'',\n    ''input_text_1_input_size'' => ''30'',\n    ''input_text_1_input_class'' => '''',\n    ''input_text_1_input_title'' => '''',\n    ''input_text_1_validations'' => ''required'',\n    ''input_text_1_instructions'' => '''',\n    ''input_text_1_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n  ),\n  ''field_2'' => \n  array (\n    ''input_text_2_label_text'' => ''E-mail *'',\n    ''input_text_2_input_name'' => ''email'',\n    ''input_text_2_input_id'' => '''',\n    ''input_text_2_input_value'' => '''',\n    ''input_text_2_input_maxlength'' => ''150'',\n    ''input_text_2_input_size'' => ''30'',\n    ''input_text_2_input_class'' => '''',\n    ''input_text_2_input_title'' => '''',\n    ''input_text_2_validations'' => ''required,email'',\n    ''input_text_2_instructions'' => '''',\n    ''input_text_2_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n  ),\n  ''field_3'' => \n  array (\n    ''input_text_3_label_text'' => ''Телефон'',\n    ''input_text_3_input_name'' => ''phone'',\n    ''input_text_3_input_id'' => '''',\n    ''input_text_3_input_value'' => '''',\n    ''input_text_3_input_maxlength'' => ''150'',\n    ''input_text_3_input_size'' => ''30'',\n    ''input_text_3_input_class'' => '''',\n    ''input_text_3_input_title'' => '''',\n    ''input_text_3_validations'' => '''',\n    ''input_text_3_instructions'' => '''',\n    ''input_text_3_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n  ),\n  ''field_4'' => \n  array (\n    ''input_textarea_4_label_text'' => ''Детальний запит'',\n    ''input_textarea_4_input_name'' => ''text'',\n    ''input_textarea_4_input_id'' => '''',\n    ''input_textarea_4_input_value'' => '''',\n    ''input_textarea_4_input_cols'' => ''45'',\n    ''input_textarea_4_input_rows'' => ''12'',\n    ''input_textarea_4_input_class'' => '''',\n    ''input_textarea_4_input_title'' => '''',\n    ''input_textarea_4_validations'' => '''',\n    ''input_textarea_4_instructions'' => '''',\n    ''input_textarea_4_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''textarea'',\n  ),\n  ''field_6'' => \n  array (\n    ''input_hidden_6_input_name'' => ''book'',\n    ''input_hidden_6_input_id'' => '''',\n    ''input_hidden_6_input_value'' => ''<?php echo $_GET[\\''book\\'']; ?>'',\n    ''tag'' => ''input'',\n    ''type'' => ''hidden'',\n  ),\n  ''field_7'' => \n  array (\n    ''input_hidden_7_input_name'' => ''paint'',\n    ''input_hidden_7_input_id'' => '''',\n    ''input_hidden_7_input_value'' => ''<?php echo $_GET[\\''paint\\'']; ?>'',\n    ''tag'' => ''input'',\n    ''type'' => ''hidden'',\n  ),\n  ''field_8'' => \n  array (\n    ''input_hidden_8_input_name'' => ''author'',\n    ''input_hidden_8_input_id'' => '''',\n    ''input_hidden_8_input_value'' => ''<?php echo $_GET[\\''author\\'']; ?>'',\n    ''tag'' => ''input'',\n    ''type'' => ''hidden'',\n  ),\n  ''field_5'' => \n  array (\n    ''input_submit_5_input_name'' => ''submit'',\n    ''input_submit_5_input_id'' => '''',\n    ''input_submit_5_input_value'' => ''Надiслати'',\n    ''input_submit_5_input_class'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''submit'',\n  ),\n)', 'YToxOntzOjY6ImV2ZW50cyI7YToyOntzOjQ6ImxvYWQiO2E6MTp7czo3OiJhY3Rpb25zIjthOjQ6e3M6MTg6ImNmYWN0aW9uX2xvYWRfanNfMCI7czowOiIiO3M6MTk6ImNmYWN0aW9uX2xvYWRfY3NzXzEiO3M6MDoiIjtzOjIzOiJjZmFjdGlvbl9sb2FkX2NhcHRjaGFfMiI7czowOiIiO3M6MjA6ImNmYWN0aW9uX3Nob3dfaHRtbF8zIjtzOjA6IiI7fX1zOjY6InN1Ym1pdCI7YToxOntzOjc6ImFjdGlvbnMiO2E6OTp7czoyNDoiY2ZhY3Rpb25fY2hlY2tfY2FwdGNoYV80IjthOjE6e3M6NjoiZXZlbnRzIjthOjI6e3M6Mzc6ImNmYWN0aW9uZXZlbnRfY2hlY2tfY2FwdGNoYV80X3N1Y2Nlc3MiO3M6MDoiIjtzOjM0OiJjZmFjdGlvbmV2ZW50X2NoZWNrX2NhcHRjaGFfNF9mYWlsIjthOjE6e3M6NzoiYWN0aW9ucyI7YToxOntzOjIxOiJjZmFjdGlvbl9ldmVudF9sb29wXzUiO3M6MDoiIjt9fX19czoyMzoiY2ZhY3Rpb25fdXBsb2FkX2ZpbGVzXzYiO2E6MTp7czo2OiJldmVudHMiO2E6Mjp7czozNjoiY2ZhY3Rpb25ldmVudF91cGxvYWRfZmlsZXNfNl9zdWNjZXNzIjtzOjA6IiI7czozMzoiY2ZhY3Rpb25ldmVudF91cGxvYWRfZmlsZXNfNl9mYWlsIjthOjE6e3M6NzoiYWN0aW9ucyI7YToxOntzOjIxOiJjZmFjdGlvbl9ldmVudF9sb29wXzciO3M6MDoiIjt9fX19czoyMjoiY2ZhY3Rpb25fY3VzdG9tX2NvZGVfOCI7czowOiIiO3M6MTg6ImNmYWN0aW9uX2RiX3NhdmVfOSI7czowOiIiO3M6MTc6ImNmYWN0aW9uX2VtYWlsXzEwIjtzOjA6IiI7czoxNzoiY2ZhY3Rpb25fZW1haWxfMTEiO3M6MDoiIjtzOjE3OiJjZmFjdGlvbl9lbWFpbF8xMiI7czowOiIiO3M6MjM6ImNmYWN0aW9uX2N1c3RvbV9jb2RlXzEzIjtzOjA6IiI7czozMToiY2ZhY3Rpb25fc2hvd190aGFua3NfbWVzc2FnZV8xNCI7czowOiIiO319fX0=', 'form_mode=easy\nform_method=post\nauto_detect_settings=1\nload_files=1\naction_url=\nform_tag_attach=\nsubmit_action=submit\nadd_form_tags=1\nrelative_url=1\nenable_plugins=1\nshow_top_errors=1\ndatepicker_config=\nenable_jsvalidation=0\njsvalidation_errors=1\njsvalidation_theme=classic\njsvalidation_lang=en', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_chronoform_actions`
--

CREATE TABLE IF NOT EXISTS `jos_chronoform_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chronoform_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `params` longtext NOT NULL,
  `order` int(11) NOT NULL,
  `content1` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Дамп данных таблицы `jos_chronoform_actions`
--

INSERT INTO `jos_chronoform_actions` (`id`, `chronoform_id`, `type`, `enabled`, `params`, `order`, `content1`) VALUES
(44, 1, 'custom_code', 1, 'mode=controller\naction_label=After Email(s)', 13, ''),
(43, 1, 'email', 0, 'to=\ncc=\nbcc=\nsubject=\nfromname=\nfromemail=\nreplytoname=\nreplytoemail=\ndto=\ndsubject=\ndfromname=\ndfromemail=\ndreplytoname=\ndreplytoemail=\nrecordip=1\nattachments=\nsendas=html\naction_label=#3', 12, 'You may customize this message under the "Template" tab in the Email settings box.'),
(42, 1, 'email', 0, 'to=leester@mail.ru\ncc=\nbcc=\nsubject=Order\nfromname=Apostrof\nfromemail=admin@apostrof.in.ua\nreplytoname=\nreplytoemail=\ndto=\ndsubject=\ndfromname=\ndfromemail=\ndreplytoname=\ndreplytoemail=\nrecordip=1\nattachments=\nsendas=html\naction_label=#2', 11, '<p>1 - {name}</p>\r\n<p>2 - {email}</p>\r\n<p>3 - {phone}</p>\r\n<p>4 - {text}</p>\r\n<p>4 - {book}</p>\r\n<p>4 - {paint}</p>'),
(40, 1, 'db_save', 0, 'table_name=\nmodel_id=chronoform_data\nsave_under_modelid=0', 9, ''),
(41, 1, 'email', 1, 'to=info@apostrof.in.ua\r\ncc=\r\nbcc=\r\nsubject=Order\r\nfromname=Apostrof\r\nfromemail=admin@apostrof.in.ua\r\nreplytoname=\r\nreplytoemail=\r\ndto=\r\ndsubject=\r\ndfromname=\r\ndfromemail=\r\ndreplytoname=\r\ndreplytoemail=\r\nrecordip=1\r\nattachments=\r\nsendas=html\r\naction_label=#1', 10, '<p>1 - {name}</p>\r\n<p>2 - {email}</p>\r\n<p>3 - {phone}</p>\r\n<p>4 - {text}</p>\r\n<p>4 - {book}</p>\r\n<p>4 - {paint}</p>'),
(39, 1, 'custom_code', 1, 'mode=controller\naction_label=Before Email(s)', 8, ''),
(34, 1, 'show_html', 1, '', 3, ''),
(35, 1, 'event_loop', 1, '', 5, ''),
(36, 1, 'check_captcha', 0, 'error=You have entered a wrong verification code!', 4, ''),
(37, 1, 'event_loop', 1, '', 7, ''),
(38, 1, 'upload_files', 0, 'files=\nupload_path=\nmax_size=100\nmin_size=0\nmax_error=Sorry, Your uploaded file size exceeds the allowed limit.\nmin_error=Sorry, Your uploaded file size is less than the minimum limit.\ntype_error=Sorry, Your uploaded file type is not allowed.', 6, ''),
(33, 1, 'load_captcha', 1, 'fonts=0', 2, ''),
(31, 1, 'load_js', 1, '', 0, ''),
(32, 1, 'load_css', 1, '', 1, ''),
(45, 1, 'show_thanks_message', 1, '', 14, 'Дякуємо за замовлення!');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Дамп данных таблицы `jos_content`
--

INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 32, 'Головна сторінка', 'головна-сторінка', '', '<p style="text-align: left;"><strong>Ми щиро раді вітати вас на нашому сайті!</strong></p>\r\n<p style="text-align: left;">Видавництво «Апостроф» в 	найближчому майбутньому це:<br />– українська поезія та 	проза (забута, 	класична та сучасна)<br />– художні альбоми та буклети<br />– історичні та подарункові книги з 	ексклюзивним дизайном</p>\r\n<p style="text-align: left;">а також<br />– календарі, листівки, поштові картки та інш.</p>\r\n<p style="text-align: justify;">Особливу увагу звертаємо 	на художню цінність наших видань. 	Прагнемо, щоб кожна наша книжка 	задовольняла найсуворіших критиків 	як своїм літературним змістом, так 	і художнім оформленням.  Співпрацюємо з фаховими 	редакторами, коректорами, дизайнерами, 	художниками.</p>\r\n<p style="text-align: justify;">Налагоджуємо зв''язки з 	книжковими крамницями та мережами 	розповсюдження книжок в Україні та 	за кордоном.  Закликаємо до співпраці авторів та продавців.</p>\r\n<p style="text-align: justify;">Видавництво підтримує 	тісний зв''язок з українським 	поетично-пісенним клубом <a href="http://club.apostrof.in.ua/">«Апостроф»</a></p>\r\n<p style="text-align: right;"><em>Адміністрація видавництва "Апостроф" </em></p>', '', 1, 0, 0, 12, '2011-04-27 11:23:30', 42, '', '2012-02-15 11:40:34', 42, 0, '0000-00-00 00:00:00', '2011-04-27 11:23:30', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 12, 0, 2, '', '', 1, 32230, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 47, 'Друк листівок по дуже вигідним цінам', 'новина-2-студії-люкс-дизайн', '', '<p><img src="images/LuxDesign/novina 2 Lux Design.jpg" border="0" alt="Новини Студії Люкс Дизайн" title="Новини Студії Люкс Дизайн" width="150" height="207" style="float: left; border: 0px none currentColor;" /></p>\r\n<p>Друк листівок по дуже 	вигідним цінам (1000 шт., 4+4, папір крейдований 	115 г/м2):</p>\r\n<p>А6 формат – 160 грн.</p>\r\n<p>Євро формат – 200 грн.</p>\r\n<p>А5 формат – 285 грн.</p>\r\n<p>А4 формат – 550 грн.</p>\r\n<p>Буклет – 610 грн.</p>', '', 1, 0, 0, 10, '2011-05-06 10:58:55', 42, '', '2011-07-24 17:34:52', 42, 0, '0000-00-00 00:00:00', '2011-05-06 10:58:55', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 6, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 33, 'Шукаємо партнерів з розповсюдження художньої літератури', 'новина-2-видавництва', '', '<p><img src="images/knizhnie polki.jpg" border="0" alt="Наши полкі з книжками" title="Наши полкі з книжками" width="150" height="200" style="float: left; border: 0px none currentColor;" /></p>', '', 1, 0, 0, 7, '2011-04-27 11:24:08', 42, '', '2011-07-24 16:36:12', 42, 0, '0000-00-00 00:00:00', '2011-04-27 11:24:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 12, 0, 2, '', '', 1, 18, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 44, 'Новина мистецького життя 3', 'новина-мистецького-життя-3', '', '<p><img src="images/news.png" border="0" align="left" />Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3 Новина мистецького життя 3</p>', '', 1, 0, 0, 9, '2011-05-06 10:47:15', 42, '', '2011-05-06 10:47:32', 42, 0, '0000-00-00 00:00:00', '2011-05-06 10:47:15', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 34, 'Сергій Рожко                   Транс_форматорний блюз', 'транс_форматорний-блюз', '', '<p><img class="caption" src="images/books/Trans_formatornii bluz.jpg" border="0" alt="Транс_форматорний блюз" title="Транс_форматорний блюз" width="100" height="139" style="float: left; border: 0px none currentColor;" />Поезія. Трохи дивне відчуття, коли щось робиш уперше – перший крок, перше освідчення в коханні, перша власна збірка... І зовсім байдуже, що це «уперше» вже робили до тебе інші люди мільйони й мільйони разів. Так само спочатку зовсім не переймаєшся, чи повториться це «вдруге», чи так і залишиться «єдиним». Над цим можна буде замислитись потім... або взагалі не замислюватись: адже все, що має відбутися, відбудеться обов''язково.</p>\r\n<p>Обкладинка, 80 стор. Формат 145х205<a><br /></a></p>', '', 1, 0, 0, 8, '2011-04-27 11:24:40', 42, '', '2011-07-24 19:01:13', 42, 0, '0000-00-00 00:00:00', '2011-04-27 11:24:40', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 11, 0, 1, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 72, 'Зинаїда Серебрякова', 'календар', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl"><img class="slide" src="images/kalend-a3_ copy.png" border="0" alt="календар" title="календар" width="150" height="208" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Зинаїда Серебрякова</h3>\r\n<h4>календар</h4>\r\n<p>Настінний календар на пружинці, 2012 рік. з автопортретами відомої художниці та інформацією (на звороті) про основні періоди її життя. Календар красиво оформлений, випускається накладом 30 шт. як подарункове видання.</p>\r\n<p><em>6 арк.. Формат 305х435</em></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 14, '2011-07-14 18:57:23', 42, '', '2012-01-09 15:08:53', 42, 0, '0000-00-00 00:00:00', '2011-07-14 18:57:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 20, 0, 0, '', '', 1, 139, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 73, 'Олександр Косолапов - З далеких літ.', 'з-далеких-літ', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/z dalekih lit copy.png" border="0" alt="З далеких літ" title="З далеких літ" width="160" height="229" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>16,00 грн</strong></span></p>\r\n<p> </p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Олександр Косолапов</h3>\r\n<h4>З ДАЛЕКИХ ЛІТ</h4>\r\n<p><strong>Поезії</strong></p>\r\n<p>Олександр Косолапов – друге, літературне ім''я українського мовознавця-соціолінґвіста, члена-кореспондента НАН України Ореста Ткаченка. «З далеких літ» – перша окрема книга лірики автора. У ній зібрано тексти, які творилися впродовж багатьох десятиліть ХХ ст., але не були свого часу оприлюднені.</p>\r\n<div>\r\n<p><em>Обкладинка, 64 стор. Формат 145х205</em></p>\r\n<p><a href="замовлення.html?book=З далеких літ&amp;author=Олександр Косолапов">Замовити</a></p>\r\n</div>\r\n<span id="mce_marker"> </span></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2011-07-14 19:07:36', 42, '', '2012-01-09 15:30:18', 42, 0, '0000-00-00 00:00:00', '2011-07-14 19:07:36', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 17, 0, 8, '', '', 1, 134, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 42, 'Новина мистецького життя 1', 'новина-мистецького-життя-1', '', '<p><img src="images/news.png" border="0" align="left" />Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1 Новина мистецького життя 1</p>', '', 1, 0, 0, 9, '2011-05-06 10:39:58', 42, '', '2011-05-06 10:47:32', 42, 0, '0000-00-00 00:00:00', '2011-05-06 10:39:58', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 35, '19.11.2010 року створено видавництво Апостроф', 'новина-видавництва-1', '', '<p><img src="images/novini APOSTROF otkritie2.jpg" border="0" width="200" style="float: left; border: 0px none currentColor;" />Видавництво планує друкувати українську поезію, прозу та публіцистику талановитих авторів</p>', '', 1, 0, 0, 7, '2011-04-27 11:25:12', 42, '', '2012-02-15 11:40:13', 42, 0, '0000-00-00 00:00:00', '2011-04-27 11:25:12', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 16, 0, 1, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 43, 'Новина мистецького життя 2', 'новина-мистецького-життя-2', '', '<p><img src="images/news.png" border="0" align="left" />Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2 Новина мистецького життя 2</p>', '', 1, 0, 0, 9, '2011-05-06 10:41:20', 42, '', '2011-05-06 10:47:32', 42, 0, '0000-00-00 00:00:00', '2011-05-06 10:41:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 36, 'Новина видавництва 3', 'новина-видавництва-3', '', '<p><img src="images/news.png" border="0" style="float: left;" />Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3 Новина видавництва 3</p>', '', 2, 0, 0, 7, '2011-04-27 11:26:15', 42, '', '2011-05-06 10:23:35', 42, 0, '0000-00-00 00:00:00', '2011-04-27 11:26:15', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 3, '', '', 1, 131, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 46, 'Тиражування CD/DVD дисків', 'новина-3-студії-люкс-дизайн', '', '<p><img src="images/LuxDesign/novina 3 Lux Design.jpg" border="0" alt="Новини Студії Люкс Дизайн" title="Новини Студії Люкс Дизайн" width="150" height="207" style="float: left; border: 0px none currentColor;" /> Тиражування CD/DVD дисків:</p>\r\n<p>CDДиск + накатка 	+ запис</p>\r\n<p>1000 шт. – 2,65 грн./шт.</p>\r\n<p>100 шт. – 3,85 грн./шт.</p>\r\n<p> </p>\r\n<p>DVDДиск + накатка + запис</p>\r\n<p>1000 шт. – 3,55 грн./шт.</p>\r\n<p>100 шт. – 4,75 грн./шт.</p>\r\n<p>Додатково: коробка, вкладиш, конверт та ін.</p>', '', 1, 0, 0, 10, '2011-05-06 10:58:07', 42, '', '2011-07-24 17:34:07', 42, 0, '0000-00-00 00:00:00', '2011-05-06 10:58:07', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 9, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 76, 'Олександра Ковальова, Ольга Тільна - Ходім туди, де спить трава...', 'ходім-туди,-де-спить-трава', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/hodim_tudy copy.png" border="0" alt="Ходім туди, де спить трава..." title="Ходім туди, де спить трава..." width="240" height="261" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>15,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Олександра Ковальова та Ольга Тільна</h3>\r\n<h4>Ходім туди, де спить трава...</h4>\r\n<p><strong>Поезії</strong></p>\r\n<p>Ця книжечка – спроба двох авторок подати мовне віддзеркалення поетичної стихії, Тексти подані відразу трьома мовами: українською, англійською (переклала Ольга Тільна) та німецькою (переклали  Крістіна Фішер, Сандра Флюстерлінг).</p>\r\n<div>\r\n<p><em>Обкладинка, 88 стор. Формат 104х140</em></p>\r\n<p><a href="замовлення.html?book=Ходім туди, де спить трава...&amp;author=Олександра Ковальова та Ольга Тільна">Замовити</a></p>\r\n</div>\r\n<span id="mce_marker"> </span></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2011-07-24 16:03:09', 42, '', '2012-01-09 15:52:06', 42, 0, '0000-00-00 00:00:00', '2011-07-24 16:03:09', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 13, 0, 7, '', '', 1, 157, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 37, 'Микола Шатилов        Кляті сімдесяті...', 'кляті-сімдесяті', '', '<p><img src="images/books/Shatylov_Klyati.jpg" border="0" width="100" /></p>\r\n<p class="Annotacia"><span style="font-size: 11.0pt; font-family: &quot;Myriad Pro&quot;; mso-bidi-font-family: Arial; letter-spacing: -.1pt;" lang="UK">Микола ШАТИЛОВ (1939) – публіцист, літературний критик, поет; у половині 70-х редагував у Харкові відділ критики місячника «Прапор» (теперішній «Березіль»). Мешкає у Празі. Автор першої в Чехії об’єктивної публікації про Степана Бандеру та ОУН-УПА. Спогади, які вміщено в цій книжці, друкувалися переважно у «Визвольному Шляху» і частково у «Березолі».<br /><br /> </span></p>\r\n<p class="Annotacia"><span style="font-size: 11.0pt; font-family: &quot;Myriad Pro&quot;; mso-bidi-font-family: Arial; letter-spacing: -.1pt;" lang="UK">Обкладинка, 264 стор. Формат 150х205<br /></span></p>', '', 1, 0, 0, 8, '2011-04-27 11:26:44', 42, '', '2012-02-15 11:40:40', 42, 0, '0000-00-00 00:00:00', '2011-04-27 11:26:44', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 22, 0, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 77, 'Сергій Рожко - Транс_форматорний блюз', 'трансформаторний-блюз', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/rozhko copy.png" border="0" alt="Транс_форматорний блюз" title="Транс_форматорний блюз" width="170" height="236" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>20,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Сергій Рожко</h3>\r\n<h4>Транс_форматорний блюз</h4>\r\n<p><strong>Поезія</strong></p>\r\n<p>Поезія. Трохи дивне відчуття, коли щось робиш уперше – перший крок, перше освідчення в коханні, перша власна збірка... І зовсім байдуже, що це «уперше» вже робили до тебе інші люди мільйони й мільйони разів. Так само спочатку зовсім не переймаєшся, чи повториться це «вдруге», чи так і залишиться «єдиним». Над цим можна буде замислитись потім... або взагалі не замислюватись: адже все, що має відбутися, відбудеться обов''язково.</p>\r\n<p><em>Обкладинка, 80 стор. Формат 145х205</em></p>\r\n<p><a href="замовлення.html?book=Транс_форматорний блюз&amp;author=Сергій Рожко">Замовити</a></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2011-07-24 16:16:03', 42, '', '2012-01-09 15:33:34', 42, 0, '0000-00-00 00:00:00', '2011-07-24 16:16:03', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 9, 0, 12, '', '', 1, 198, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 74, 'Віталій Кирпатовський - ЗІРНИЦІ', 'зірниці', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/zirnyci.png" border="0" alt="Zirnyci" title="Zirnyci" width="180" height="246" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>25,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Віталій Кирпатовський</h3>\r\n<h4>ЗІРНИЦІ</h4>\r\n<p><strong>Ліричні пісні та вірші</strong></p>\r\n<p>Це друга двомовна книжка композитора-аматора та поета Віталія Кирпатовського та перша ілюстративна робота астронома та художника Віктора Васильєва. Образні ілюстрації з поринанням у Всесвіт допоможуть зрозуміти, як художник сприймає те, що хвилювало автора музики та віршів. Більшість пісенних текстів представлені українською та російською мовами та супроводжуються нотами.</p>\r\n<p><em>Палітурка, 400 стор. Формат 150х210</em></p>\r\n<p><a href="замовлення.html?book=Зірниці&amp;author=Віталій Кирпатовський">Замовити</a></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2011-07-14 19:46:39', 42, '', '2012-02-15 11:37:37', 42, 42, '2013-09-08 19:44:24', '2011-07-14 19:46:39', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 15, 0, 11, '', '', 1, 119, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 40, 'Нова книга 3', 'нова-книга-3', '', '<p><img src="images/news.png" border="0" style="float: left;" />Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3 Нова книга 3</p>', '', 2, 0, 0, 8, '2011-05-06 10:22:50', 42, '', '2011-05-06 10:26:23', 42, 0, '0000-00-00 00:00:00', '2011-05-06 10:22:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 4, '', '', 1, 133, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 48, 'Ексклюзивні візитки та календарики з частковим лаком', 'новина-1-студії-люкс-дизайн', '', '<p><img src="images/LuxDesign/novina 1 Lux Design.jpg" border="0" alt="Новини Студії Люкс Дизайн" title="Новини Студії Люкс Дизайн" width="150" height="207" style="float: left; border: 0px none currentColor;" /></p>\r\n<p>Ексклюзивні візитки та календарики з частковим лаком (1000 шт., папір крейдований 350 	г/м2):</p>\r\n<p>Візитки 4+0 – 130 грн.</p>\r\n<p>Візитки 4+4 – 160 грн.</p>\r\n<p>Календарики 4+4 – 200 грн.</p>\r\n<p>Візитки без лака – 100грн.</p>', '', 1, 0, 0, 10, '2011-05-06 11:01:08', 42, '', '2011-07-24 17:35:37', 42, 0, '0000-00-00 00:00:00', '2011-05-06 11:01:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 8, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 75, 'Олександр Бобошко                                   ЖЕВРІЄ', 'жевріє', '', '<p><img src="images/books/Boboshko_Zhevr.jpg" border="0" width="100" /> «ЖЕВРІЄ» — п’ята збірка поезій Олександра Бобошка, <br />володаря Гран Прі міжнародного літературного фестивалю «Просто так»</p>\r\n<p>Обкладинка, 72 стор. Формат 135х205</p>', '', 1, 0, 0, 8, '2011-07-14 20:55:14', 42, '', '2011-12-09 18:39:21', 42, 0, '0000-00-00 00:00:00', '2011-07-14 20:55:14', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 14, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 50, 'НА МОРСЬКИХ ПРОСТОРАХ', 'простір', '', '<p><img class="caption" src="images/paints/Prostor.jpg" border="0" alt="Простор" title="Простор" width="120" height="83" style="float: left; margin-top: 1px; margin-bottom: 1px; margin-left: 3px; margin-right: 3px; border: 0px none currentColor;" /></p>\r\n<p><span>Руслан Варламов.</span></p>\r\n<p><span><span>Харків, 2008 р.</span></span></p>\r\n<p><strong> </strong></p>\r\n<p><strong><span style="font-size: x-large;"><strong> </strong></span> </strong></p>', '', 1, 0, 0, 11, '2011-05-06 11:06:15', 42, '', '2011-07-24 18:09:18', 42, 0, '0000-00-00 00:00:00', '2011-05-06 11:06:15', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 14, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 78, 'Лариса Вировець - ЯКБИ', 'якби', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/yakbi copy1.png" border="0" alt="Якби" title="Якби" width="200" height="289" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>16,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Лариса Вировець</h3>\r\n<h4>ЯКБИ</h4>\r\n<p><strong>Поезія</strong></p>\r\n<p>Перша книга українських віршів Лариси Вировець, засновниці харківського українського клубу «Апостроф», художниці та дизайнера за фахом. У книжці вміщено авторські ілюстрації, що нагадують малюнки тушшю. На деяких оживають казкові дракони та кораблі зі щоглами, на інших упізнається неокласицистична архітектура харківського середмістя. Разом із віршами ці рисунки творять гармонійну цілісність, і сама книжка нагадує музей «коштовних дрібничок», галерею перебіжних миттєвостей, ухоплених свавільною рукою митця й увічнених.</p>\r\n<p><em>Обкладинка, 64 стор. Формат 145х205</em></p>\r\n<p><em> </em><a href="замовлення.html?book=Якби&amp;author=Лариса Вировець">Замовити</a></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2011-07-24 19:06:19', 42, '', '2012-01-09 18:00:00', 42, 0, '0000-00-00 00:00:00', '2011-07-24 19:06:19', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 16, 0, 10, '', '', 1, 180, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 51, 'КАМІННЯ І МОРЕ', 'камні', '', '<p><img src="images/paints/Kamni.jpg" border="0" alt="Камни" title="Камни" width="100" height="75" style="float: left; border: 0px none currentColor;" /></p>\r\n<p><span>Руслан Варламов.</span></p>\r\n<p><span><span>Харків, 2008 р.</span> </span></p>', '', 1, 0, 0, 11, '2011-05-06 11:07:41', 42, '', '2011-07-24 18:08:17', 42, 0, '0000-00-00 00:00:00', '2011-05-06 11:07:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 11, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 52, 'РОЖЕВИЙ РАНОК', 'рожевий-ранок', '', '<p><img src="images/paints/Rozovoe utro.jpg" border="0" alt="Розовое утро" title="Розовое утро" width="100" height="73" style="float: left; border: 0px none currentColor;" /></p>\r\n<p><span>Руслан Варламов.</span></p>\r\n<p><span><span>Харків, 2008 р.</span></span></p>', '', 1, 0, 0, 11, '2011-05-06 11:08:18', 42, '', '2012-02-15 11:40:50', 42, 0, '0000-00-00 00:00:00', '2011-05-06 11:08:18', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 6, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(17, 54, 'Про нас', 'про-нас', '', '<p> </p>\r\n<table style="width: 100%;" border="0">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: justify;" rowspan="5" valign="top">\r\n<p><img class="slide" src="images/about/about_1.jpg" border="0" width="600" style="display: block; margin-top: 20px; margin-bottom: 20px; border: 0px none currentColor;" /></p>\r\n<p><strong>Видавництво «Апостроф»</strong> молоде, але енергійне та амбітне. Незважаючи на молодий вік його працівників, воно вже має власне портфоліо і досвід книговидання від попередньої багаторічної роботи..</p>\r\n<p><strong>Наше портфоліо</strong> складається з методичних, навчальних та розвивальних посібників, а також книжок поезії, художньої прози, дитячої літератури, різноманітних календарів, карток, листівок та плакатів та тиражування дисків.</p>\r\n<p><strong>У планах</strong> – видання української поезії, прози, альбомів живопису та графіки, історичні та подарункові книги та альбоми з ексклюзивним дизайном, а також календарі, поштові картки. Особливу увагу звертаємо на художню цінність наших видань. Прагнемо, щоб кожна наша книжка задовольняла найсуворіших критиків як своїм літературним змістом, так і художнім оформленням. Співпрацюємо з фаховими редакторами, коректорами, дизайнерами, художниками.</p>\r\n<p><strong>Видавництво планує</strong> брати участь в українських і міжнародних книжкових виставках. Налагоджуємо зв''язки з книжковими крамницями та мережами розповсюдження книжок в Україні та за кордоном. Закликаємо до співпраці.</p>\r\n</td>\r\n<td style="text-align: right; width: 150px;">\r\n<h3>Анна</h3>\r\n<p><em><strong>директор</strong></em><br /><em><strong>дизайнер</strong></em></p>\r\n</td>\r\n<td style="width: 150px;"><img class="slide" src="images/about/about_2.jpg" border="0" width="120" style="margin-top: 20px; margin-bottom: 10px; margin-left: 35px; margin-right: 35px; border: 0px none currentColor;" /></td>\r\n</tr>\r\n<tr>\r\n<td><img class="slide" src="images/about/about_3.jpg" border="0" width="120" style="margin-top: 10px; margin-bottom: 10px; margin-left: 35px; margin-right: 35px; border: 0px none currentColor;" /></td>\r\n<td>\r\n<h3>Лариса</h3>\r\n<p><em><strong>головний редактор</strong></em><br /><em><strong>ідейний натхненник</strong></em><br /><em><strong>дизайнер</strong></em><br /><em><strong>художник</strong></em></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: right;">\r\n<h3>Інна</h3>\r\n<p><em><strong>менеджер</strong></em></p>\r\n</td>\r\n<td><img class="slide" src="images/about/about_4.jpg" border="0" width="120" style="margin-top: 10px; margin-bottom: 10px; margin-left: 35px; margin-right: 35px; border: 0px none currentColor;" /></td>\r\n</tr>\r\n<tr>\r\n<td><img class="slide" src="images/about/about_5.jpg" border="0" width="120" style="margin-top: 10px; margin-bottom: 10px; margin-left: 35px; margin-right: 35px; border: 0px none currentColor;" /></td>\r\n<td>\r\n<h3>Денис</h3>\r\n<p><em><strong>експерт/технолог</strong></em></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: right;">\r\n<h3>Люцина</h3>\r\n<p><strong><em>редактор, коректор</em></strong></p>\r\n</td>\r\n<td><img class="slide" src="images/about/about_6.jpg" border="0" width="120" style="margin-top: 10px; margin-bottom: 10px; margin-left: 35px; margin-right: 35px; border: 0px none currentColor;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 12, '2011-05-10 05:46:41', 42, '', '2012-02-15 11:41:36', 42, 0, '0000-00-00 00:00:00', '2011-05-10 05:46:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 18, 0, 1, '', '', 1, 814, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 55, 'Люцина Хворост - Паперовий кораблик', 'люцина-хворост-паперовий-кораблик', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/korablyk copy.png" border="0" alt="Паперовий кораблик" title="Паперовий кораблик" width="170" height="213" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>15,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Люцина Хворост</h3>\r\n<h4>Паперовий кораблик</h4>\r\n<p><strong>Поезія</strong></p>\r\n<p>Що візьмеш з паперового кораблика? Бутафорія, і квит. Утім, це – лиш доки не розкриєш цю мініатюрну книжку. Варто ж її розгорнути, як тут-таки опиняєшся на палубі й вирушаєш у мандрівку. <br />На згадку про подорож читачеві залишаться яблука, шкіра змії, птахи з чарівного скла і навіть... еліксир щастя. <br />Виходить, даремно кажуть, буцімто папір — матеріал зрадливий і недовговічний...</p>\r\n<p><em>Обкладинка, 80 стор. Формат 104х140</em></p>\r\n<p><a href="замовлення.html?book=Паперовий кораблик&amp;author=Люцина Хворост">Замовити</a></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2011-05-10 06:42:28', 42, '', '2012-01-09 18:01:06', 42, 0, '0000-00-00 00:00:00', '2011-05-10 06:42:28', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 30, 0, 9, '', '', 1, 179, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 58, 'Олександр Бобошко - У СВІТІ ВТРАТ І СВЯТ', 'олександр-бобошко-у-світі-втрат-і-свят', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/u_sviti_vtrat copy.png" border="0" alt="Транс_форматорний блюз" title="Транс_форматорний блюз" width="160" height="230" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>20,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Олександр Бобошко</h3>\r\n<h4>У СВІТІ ВТРАТ І СВЯТ</h4>\r\n<p><strong>Поезія</strong></p>\r\n<p class="a">Четверта книжка поезій  харківського поета Олександра Бобошка, автора книг «Ніч на п’ятницю», «Пора терезів»,  «Шукран, Багдаде!», володаря Гран Прі міжнародного літературного фестивалю «Просто так».</p>\r\n<em>Обкладинка, 60 стор. Формат 145х205</em>\r\n<p><a href="замовлення.html?book=У світі втрат і свят&amp;author=Олександр Бобошко">Замовити</a></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2011-05-10 06:49:41', 42, '', '2012-02-15 11:38:45', 42, 0, '0000-00-00 00:00:00', '2011-05-10 06:49:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 24, 0, 13, '', '', 1, 136, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 59, 'Олександра Ковальова    ПОТІК', 'потік', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/potik copy.png" border="0" alt="Ходім туди, де спить трава..." title="Ходім туди, де спить трава..." width="180" height="219" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>20,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Олександра Ковальова</h3>\r\n<h4>ПОТІК</h4>\r\n<p><strong>Переклади з німецької</strong></p>\r\n<p>«Потік» – спроба перестворити українською мовою поезію німецькомовних авторів від  середньовіччя до 20-го століття. Майже всі твори цієї збірки з’являються в українському перекладі вперше.</p>\r\n<div>\r\n<p><em>Обкладинка, 232 стор. Формат 104х140</em></p>\r\n<p><a href="замовлення.html?book=Потік&amp;author=Олександра Ковальова">Замовити</a></p>\r\n</div>\r\n<span id="mce_marker"> </span></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2011-05-10 06:50:04', 42, '', '2012-01-09 15:31:57', 42, 0, '0000-00-00 00:00:00', '2011-05-10 06:50:04', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 25, 0, 14, '', '', 1, 123, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 60, 'Іларіон і Раїса Хейлики', 'трикутник-дві-долі,-три-дороги', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl"><img class="slide" src="images/books/Nova_knyga.jpg" border="0" alt="Іларіон і Раїса Хейлики" title="Іларіон і Раїса Хейлики" width="150" height="194" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Іларіон і Раїса Хейлики</h3>\r\n<p><strong>Трикутник. Дві долі,три дороги</strong></p>\r\n<p>Спогади українців, розкиданих долею по світах.</p>\r\n<p><em>Обкладинка, 184 стор. Формат 145х205</em></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 14, '2011-05-10 06:42:28', 42, '', '2012-05-07 01:27:42', 42, 0, '0000-00-00 00:00:00', '2011-05-10 06:42:28', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 13, 0, 2, '', '', 1, 121, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 84, 'Податкова система', 'podatkova', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/podatkova copy.png" border="0" alt="podatkova" title="podatkova" width="170" height="209" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>65,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>В. Онегіна, О. Накісько, С. Руденко</h3>\r\n<h4>Податкова система</h4>\r\n<p>Основи оподаткування, особливості сучасної<br />податкової системи та порядок сплати податків в Україні станом на 01.01.2012 з урахуванням положень Податкового кодексу України, а також умови оподаткування у зарубіжних країнах.<br />Призначається студентам ВНЗ, та широкому колу читачів, яких зацікавили проблеми оподаткування.</p>\r\n<p><em>Обкладинка, 426 стор. Формат 150х210</em></p>\r\n<p><a href="замовлення.html?book=Податкова система&amp;author=В. Онегіна, О. Накісько, С. Руденко">Замовити</a></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2012-01-09 18:07:28', 42, '', '2012-01-09 19:07:55', 42, 0, '0000-00-00 00:00:00', '2012-01-09 18:07:28', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 7, 0, 4, '', '', 1, 113, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 61, 'Світлана ЗАГРЕБА поезії', 'загреба', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl"><img class="slide" src="images/books/Nova_knyga.jpg" border="0" alt="Потік" title="Потік" width="150" height="194" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Світлана ЗАГРЕБА</h3>\r\n<p>поезії</p>\r\n<p>Друга книга молодої талановитої харківської поетки порадує любителів сучасної української поезії.</p>\r\n<p><em>Обкладинка, ххх стор. Формат 145х205</em></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 14, '2011-05-10 06:49:41', 42, '', '2012-02-15 11:40:58', 42, 0, '0000-00-00 00:00:00', '2011-05-10 06:49:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 10, 0, 1, '', '', 1, 207, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 62, 'текст - текст', 'текст-текст', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl"><img class="slide" src="images/books/book_3.jpg" border="0" width="160" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr"><strong>текст текст текст текст текст текст текст </strong><br /><strong>текст текст текст текст текст текст </strong><br /><strong>текст текст текст текст текст</strong></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 0, 0, 0, 14, '2011-05-10 06:50:04', 42, '', '2011-05-10 08:05:09', 0, 0, '0000-00-00 00:00:00', '2011-05-10 06:50:04', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 63, 'Картини', 'картини', '', '<p style="text-align: center;">У нас Ви можете <a href="замовлення.html">замовити</a> постери (репродукції з картин високої якості на полотні чи на папері)<br />відомих художників минулого, а також оригінали живопису <br />харківського художника <strong>Руслана Варламова</strong>. <br />Тут представлені деякі з його робіт.</p>\r\n<p style="text-align: center;">{phocagallery view=category|categoryid=1|       limitstart=0|limitcount=90|detail=6|displayname=1|    displaydetail=0|displaydownload=1|imageshadow=shadow1|displaybuttons=1}</p>', '', 1, 0, 0, 12, '2011-05-10 08:09:38', 42, '', '2013-09-08 14:19:07', 42, 42, '2013-09-09 08:07:22', '2011-05-10 08:09:38', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 17, 0, 0, '', '', 1, 794, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 88, 'Глиняні письмена', 'glynyani_pysmena', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/glynyani_pysmena.png" border="0" alt="Глиняні письмена" title="Глиняні письмена" width="170" height="248" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>15,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Лариса Вировець</h3>\r\n<h4>Глиняні письмена</h4>\r\n<p><strong>Поезія</strong></p>\r\n<p>«Глиняні письмена» – друга книга українських віршів Лариси Вировець, художниці, дизайнерки, очільниці поетично-пісенного клубу «Апостроф», лауреата І премії в номінації «Поезія» харківського обласного конкурсу ім. С. Масельського 2011 р.</p>\r\n<p><em>Обкладинка, 88 стор. Формат 104х140</em></p>\r\n<p><a href="index.php/замовлення.html?book=Глиняні письмена&amp;author=Лариса Вировець">Замовити</a></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2012-05-07 01:08:31', 42, '', '2013-09-08 13:19:23', 42, 0, '0000-00-00 00:00:00', '2012-05-07 01:08:31', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 0, '', '', 1, 108, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 82, 'Микола Шатилов', 'кляті-сімдесяті', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/klyati_70-i copy.png" border="0" alt="кляті-сімдесяті" title="кляті-сімдесяті" width="190" height="271" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>35,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Микола Шатилов</h3>\r\n<h4>Кляті сімдесяті...</h4>\r\n<p><strong>На пам’яті стало</strong></p>\r\n<p><strong>На пам’яті стали </strong></p>\r\n<p>Микола ШАТИЛОВ (1939) – публіцист, літературний критик, поет; у половині 70-х редагував у Харкові відділ критики місячника «Прапор» (теперішній «Березіль»). Мешкає у Празі. Автор першої в Чехії об’єктивної публікації про Степана Бандеру та ОУН-УПА. Спогади, які вміщено в цій книжці, друкувалися переважно у «Визвольному Шляху» і частково у «Березолі».</p>\r\n<div>\r\n<p><em>Обкладинка, 264 стор. Формат 150х205</em></p>\r\n<p><a href="замовлення.html?book=Кляті сімдесяті...&amp;author=Микола Шатилов">Замовити</a></p>\r\n</div>\r\n<span id="mce_marker"> </span></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2011-12-09 19:11:32', 42, '', '2012-01-09 15:35:55', 42, 0, '0000-00-00 00:00:00', '2011-12-09 19:11:32', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 9, 0, 6, '', '', 1, 240, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 83, 'Олександр Бобошко  ЖЕВРІЄ поезії', 'жевріє', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/zhevriye copy.png" border="0" alt="жевріє" title="жевріє" width="170" height="252" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>20,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Олександр Бобошко</h3>\r\n<h4>ЖЕВРІЄ</h4>\r\n<p><strong>Поезії</strong><strong> </strong></p>\r\n<p>«ЖЕВРІЄ» — п’ята збірка поезій Олександра Бобошка, володаря Гран Прі міжнародного літературного фестивалю «Просто так»<br /><br /><em>Обкладинка, 72 стор. Формат 135х205</em></p>\r\n<div>\r\n<p><a href="замовлення.html?book=Жевріє&amp;author=Олександр Бобошко">Замовити</a></p>\r\n</div>\r\n<span id="mce_marker"> </span></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2011-12-09 19:22:51', 42, '', '2012-01-09 15:35:15', 42, 0, '0000-00-00 00:00:00', '2011-12-09 19:22:51', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 5, 0, 5, '', '', 1, 121, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 85, 'Краєзнавство', 'krayeznavstvo', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/krayeznavstvo copy.png" border="0" alt="krayeznavstvo" title="krayeznavstvo" width="200" height="254" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>70,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Л. Жванко</h3>\r\n<h4>Краєзнавство</h4>\r\n<p>Навчальний посібник з історії, культури, етнографії Слобідського краю. Допоможе<br />зруйнувати стереотипи у сприйнятті окремих сторінок історії краю. Розрахований на<br />викладачів, студентів і всіх, хто прагне більше дізнатися про свою малу Батьківщину.</p>\r\n<p><br /><em>Палітурка, 384 стор. Формат 145х205</em></p>\r\n<p><a href="замовлення.html?book=Краєзнавство&amp;author=Л. Жванко">Замовити</a></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2012-01-09 18:19:56', 42, '', '2012-01-09 19:09:50', 42, 0, '0000-00-00 00:00:00', '2012-01-09 18:19:56', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 3, '', '', 1, 112, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 86, 'Микола Воловик', 'cd-volovyk', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/cd_volovik copy.png" border="0" alt="CD-Volovyk" title="CD-Volovyk" width="150" height="144" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>30,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Микола Воловик</h3>\r\n<h4>ВИБРАНЕ</h4>\r\n<p><strong>CD-диск з авторськими піснями<br />відомого харківського барда<br /></strong></p>\r\n<p> </p>\r\n<p><a href="замовлення.html?book=Вибране&amp;author=Микола Воловик">Замовити</a></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2012-01-09 18:25:53', 42, '', '2012-01-09 19:11:24', 42, 0, '0000-00-00 00:00:00', '2012-01-09 18:25:53', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 5, 0, 2, '', '', 1, 101, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 87, 'CD-Співана поезія клубу «Апостроф»', 'апостроф', '', '<table style="width: 100%;" border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="bl">\r\n<p><img class="slide" src="images/cd_5 rokiv copy.png" border="0" alt="Апостроф" title="Апостроф" width="150" height="144" style="margin-left: 35px; margin-right: 35px; margin-top: 0px; margin-bottom: 0px; border: 0px none currentColor;" /></p>\r\n<p style="text-align: center;"><span style="font-size: large; color: #ff6600;"><strong>30,00 грн</strong></span></p>\r\n</td>\r\n<td class="bc" style="width: 100%;">\r\n<div class="bcr">\r\n<h3>Клуб «Апостроф»</h3>\r\n<h4>СПІВАНА ПОЕЗІЯ</h4>\r\n<p><strong>CD-диск, підготований видавництвом до 5-ї річниці клубу «Апостроф»<br /></strong><strong>з новими піснями авторів клубу: <br />Миколи Воловика, <br />Люцини Хворост, <br />Ірини Скринникової, <br />Олексія Крока<br /></strong></p>\r\n<p> </p>\r\n<p><a href="замовлення.html?book=СПІВАНА ПОЕЗІЯ&amp;author=клуб «Апостроф»">Замовити</a></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 13, '2012-01-09 18:32:58', 42, '', '2012-01-09 19:12:50', 42, 0, '0000-00-00 00:00:00', '2012-01-09 18:32:58', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 1, '', '', 1, 120, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_easybook`
--

CREATE TABLE IF NOT EXISTS `jos_easybook` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gbip` varchar(15) NOT NULL DEFAULT '',
  `gbname` varchar(40) NOT NULL DEFAULT '',
  `gbmail` varchar(60) DEFAULT NULL,
  `gbmailshow` tinyint(1) NOT NULL DEFAULT '0',
  `gbloca` varchar(50) DEFAULT NULL,
  `gbpage` varchar(150) DEFAULT NULL,
  `gbvote` int(10) DEFAULT NULL,
  `gbtext` text NOT NULL,
  `gbdate` datetime DEFAULT NULL,
  `gbtitle` varchar(50) DEFAULT NULL,
  `gbcomment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `gbicq` varchar(20) DEFAULT NULL,
  `gbaim` varchar(50) DEFAULT NULL,
  `gbmsn` varchar(50) DEFAULT NULL,
  `gbyah` varchar(50) DEFAULT NULL,
  `gbskype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `jos_easybook`
--

INSERT INTO `jos_easybook` (`id`, `gbip`, `gbname`, `gbmail`, `gbmailshow`, `gbloca`, `gbpage`, `gbvote`, `gbtext`, `gbdate`, `gbtitle`, `gbcomment`, `published`, `gbicq`, `gbaim`, `gbmsn`, `gbyah`, `gbskype`) VALUES
(1, '', 'LeeSteR', 'design@studiosdl.com', 0, '', '', NULL, 'Відгук Відгук Відгук Відгук Відгук Відгук Відгук Відгук Відгук Відгук Відгук Відгук Відгук Відгук', '2011-05-10 08:37:13', NULL, '', 1, '', '', '', '', ''),
(2, '0.0.0.0', 'Илья', NULL, 0, NULL, NULL, 0, 'Вот он мой самый лучший отзыв Вот он мой самый лучший отзыв Вот он мой самый лучший отзыв Вот он мой самый лучший отзыв Вот он мой самый лучший отзыв Вот он мой самый лучший отзыв Вот он мой самый лучший отзыв Вот он мой самый лучший отзыв Вот он мой самый лучший отзыв Вот он мой самый лучший отзыв Вот он мой самый лучший отзыв', '2011-05-10 09:15:21', 'Тестовый отзыв', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(3, '0.0.0.0', 'Інкоґніто', NULL, 0, NULL, NULL, 0, '', '2011-06-03 14:10:11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(4, '0.0.0.0', 'Денис', NULL, 0, NULL, NULL, 0, '', '2011-06-05 14:19:58', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(5, '0.0.0.0', 'илья', NULL, 0, NULL, NULL, 0, '', '2011-07-01 10:44:05', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(6, '0.0.0.0', 'Test', NULL, 0, NULL, NULL, 0, '', '2011-07-25 04:09:09', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(7, '0.0.0.0', 'Test', NULL, 0, NULL, NULL, 0, '', '2011-07-25 07:25:18', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(8, '0.0.0.0', 'Test', '', 0, '', '', 0, 'Тестовое сообщение', '2011-07-27 12:55:09', NULL, '', 1, '', '', '', '', ''),
(9, '0.0.0.0', 'Имя', NULL, 0, NULL, NULL, 0, '', '2011-08-04 08:44:41', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(10, '0.0.0.0', 'TEst', NULL, 0, NULL, NULL, 0, '', '2011-08-04 10:01:29', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(11, '0.0.0.0', 'test', NULL, 0, NULL, NULL, 0, '', '2011-08-04 10:10:06', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(12, '0.0.0.0', 'dfsdf', NULL, 0, NULL, NULL, 0, '', '2011-08-04 10:14:14', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(13, '0.0.0.0', 'ddgfg', NULL, 0, NULL, NULL, 0, '', '2011-08-04 10:52:12', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(14, '0.0.0.0', 'fgdfgdfg', '', 0, '', '', 0, 'hfghfghfghfgh', '2011-08-04 10:52:41', NULL, '', 1, '', '', '', '', ''),
(15, '0.0.0.0', 'gjg', NULL, 0, NULL, NULL, 0, '', '2011-08-04 10:57:19', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(16, '0.0.0.0', 'hjghj', NULL, 0, NULL, NULL, 0, '', '2011-08-04 11:01:24', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_easybook_badwords`
--

CREATE TABLE IF NOT EXISTS `jos_easybook_badwords` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1387 ;

--
-- Дамп данных таблицы `jos_easybook_badwords`
--

INSERT INTO `jos_easybook_badwords` (`id`, `word`) VALUES
(2, 'analdrilling'),
(3, '20six'),
(4, 'ndsfrwudG'),
(5, 'Tadalafil'),
(6, 'hosting'),
(7, 'avacor'),
(8, 'gation'),
(9, 'ruptcy'),
(10, 'obli'),
(11, 'morta'),
(12, 'remoV'),
(13, 'fffd5'),
(14, 'ffffd5'),
(15, 'Wavefrt'),
(16, 'Cialis'),
(17, 'eyebrow-upper-left-corner'),
(18, 'B0000AZJVC'),
(19, 'right-topnav-default-2'),
(20, 'edit1'),
(21, 'display-variation'),
(22, 'erection'),
(23, 'wvvvvv'),
(24, 'mpage.jp'),
(25, '20six.de'),
(26, 'o o o o o o o o o o o o o'),
(27, 'aasgeier'),
(28, 'abspritzer'),
(29, 'sdfds'),
(30, 'ackerfresse'),
(31, 'affenarsch'),
(32, 'affenhirn'),
(33, 'affenkotze'),
(34, 'afterlecker'),
(35, 'aktivex.info'),
(36, 'almosenarsch'),
(37, 'amazing'),
(38, 'am-sperma-riecher'),
(39, 'anal*'),
(40, 'analadmiral'),
(41, 'analbesamer'),
(42, 'analbohrer'),
(43, 'analdrill'),
(44, 'analentjungferer'),
(45, 'analerotiker'),
(46, 'analfetischist'),
(47, 'analf?rster'),
(48, 'anal-frosch'),
(49, 'analnegerdildo'),
(50, 'analratte'),
(51, 'analritter'),
(52, 'aok-chopper'),
(53, 'armleuchter'),
(54, 'arsch'),
(55, 'arschaufrei?er'),
(56, 'arschbackensch?nder'),
(57, 'arschbesamer'),
(58, '?rsche'),
(59, 'arschentjungferer'),
(60, 'arschficker'),
(61, 'arschgeburt'),
(62, 'arschgefickte gummifotze'),
(63, 'arschgeige'),
(64, 'arschgesicht'),
(65, 'arschhaarfetischist'),
(66, 'arschhaarrasierer'),
(67, 'arschh?hlenforscher'),
(68, 'arschkrampe'),
(69, 'arschkratzer'),
(70, 'arschlecker'),
(71, 'arschloch'),
(72, 'arschl?cher'),
(73, 'arschmade'),
(74, 'arschratte'),
(75, 'arschzapfen'),
(76, 'arsebandit'),
(77, 'arsehole'),
(78, 'arsejockey'),
(79, 'arselicker'),
(80, 'arsenuts'),
(81, 'arsewipe'),
(82, 'assel'),
(83, 'assfuck'),
(84, 'assfucking'),
(85, 'assgrabber'),
(86, 'asshol'),
(87, 'asshole'),
(88, 'asshole'),
(89, 'assi'),
(90, 'assrammer'),
(91, 'assreamer'),
(92, 'asswipe'),
(93, 'astlochficker'),
(94, 'auspufflutscher'),
(95, 'bad motherfucker'),
(96, 'badass'),
(97, 'badenutte'),
(98, 'bananenstecker'),
(99, 'bastard'),
(100, 'bastard'),
(101, 'bauernschlampe'),
(102, 'beating the meat'),
(103, 'beef curtains'),
(104, 'beef flaps'),
(105, 'behindis'),
(106, 'bekloppter'),
(107, 'muttergeficktes'),
(108, 'beklopter'),
(109, 'bettn?sser'),
(110, 'betr?ger'),
(111, 'Betr?ger'),
(112, 'bettpisser'),
(113, 'bettspaltenficker'),
(114, 'biatch'),
(115, 'bimbo'),
(116, 'bitch'),
(117, 'bitches'),
(118, 'bitchnutte'),
(119, 'bitsch'),
(120, 'bizzach'),
(121, 'blechfotze'),
(122, 'bl?dmann'),
(123, 'blogspoint'),
(124, 'blow job'),
(125, 'bohnenfresser'),
(126, 'boob'),
(127, 'boobes'),
(128, 'boobie'),
(129, 'boobies'),
(130, 'boobs'),
(131, 'booby'),
(132, 'boy love'),
(133, 'breasts'),
(134, 'brechfurz'),
(135, 'b?ckfleisch'),
(136, 'b?ckst?ck'),
(137, 'b?ckvieh'),
(138, 'buggery'),
(139, 'bullensohn'),
(140, 'bullshit'),
(141, 'bummsen'),
(142, 'bumsen'),
(143, 'bumsklumpen'),
(144, 'buschnutte'),
(145, 'busty'),
(146, 'butt pirate'),
(147, 'buttfuc'),
(148, 'buttfuck'),
(149, 'buttfucker'),
(150, 'buttfucking'),
(151, 'carpet muncher'),
(152, 'carpet munchers'),
(153, 'carpetlicker'),
(154, 'carpetlickers'),
(155, 'chausohn'),
(156, 'clitsuck'),
(157, 'clitsucker'),
(158, 'clitsucking'),
(159, 'cock'),
(160, 'cock sucker'),
(161, 'cockpouch'),
(162, 'cracka'),
(163, 'crap'),
(164, 'craper'),
(165, 'crapers'),
(166, 'crapping'),
(167, 'craps'),
(168, 'cunt'),
(169, 'cunt'),
(170, 'cunts'),
(171, 'dachlattengesicht'),
(172, 'dackelficker'),
(173, 'dickhead'),
(174, 'dicklicker'),
(175, 'diplomarschloch'),
(176, 'doofi'),
(177, 'douglette'),
(178, 'drecksack'),
(179, 'drecksau'),
(180, 'dreckschlitz'),
(181, 'drecksch?ppengesicht'),
(182, 'drecksfotze'),
(183, 'drecksm?sendagmar'),
(184, 'drecksnigger'),
(185, 'drecksnutte'),
(186, 'dreckspack'),
(187, 'dreckst?rke'),
(188, 'dreckvotze'),
(189, 'dumbo'),
(190, 'dummschw?tzer'),
(191, 'dumpfbacke'),
(192, 'd?nnpfifftrinker'),
(193, 'eichellecker'),
(194, 'eierkopf'),
(195, 'eierlutscher'),
(196, 'eisw?rfelpisser'),
(197, 'ejaculate'),
(198, 'entenfisterer'),
(199, 'epilepi'),
(200, 'epilepis'),
(201, 'epileppis'),
(202, 'fagette'),
(203, 'fagitt'),
(204, 'f?kalerotiker'),
(205, 'faltenficker'),
(206, 'fatass'),
(207, 'ferkelficker'),
(208, 'ferkel-ficker'),
(209, 'fettarsch'),
(210, 'fettsack'),
(211, 'fettsau'),
(212, 'feuchtwichser'),
(213, 'fick'),
(214, 'fick*'),
(215, 'fickarsch'),
(216, 'fickdreck'),
(217, 'ficken'),
(218, 'ficker'),
(219, 'fickfehler'),
(220, 'fickfetzen'),
(221, 'fickfresse'),
(222, 'fickfrosch'),
(223, 'fickfucker'),
(224, 'fickgelegenheit'),
(225, 'fickgesicht'),
(226, 'fickmatratze'),
(227, 'ficknudel'),
(228, 'ficksau'),
(229, 'fickschlitz'),
(230, 'fickschnitte'),
(231, 'fickschnitzel'),
(232, 'fingerfuck'),
(233, 'fingerfucking'),
(234, 'fisch-stinkender hodenfresser'),
(235, 'fistfuck'),
(236, 'fistfucking'),
(237, 'flachtitte'),
(238, 'flussfotze'),
(239, 'fotze'),
(240, 'fotzenforscher'),
(241, 'fotzenfresse'),
(242, 'fotzenknecht'),
(243, 'fotzenkruste'),
(244, 'fotzenkuchen'),
(245, 'fotzenlecker'),
(246, 'fotzenl?ckchen'),
(247, 'fotzenpisser'),
(248, 'fotzenschmuser'),
(249, 'fotzhobel'),
(250, 'fris?senficker'),
(251, 'fris?senfotze'),
(252, 'fritzfink'),
(253, 'froschfotze'),
(254, 'froschfotzenficker'),
(255, 'froschfotzenleder'),
(256, 'fuck'),
(257, 'fucked'),
(258, 'fucker'),
(259, 'fucker'),
(260, 'fucking'),
(261, 'fuckup'),
(262, 'fudgepacker'),
(263, 'futtgesicht'),
(264, 'gay lord'),
(265, 'geilriemen'),
(266, 'gesichtsfotze'),
(267, 'g?ring'),
(268, 'gro?maul'),
(269, 'gummifotzenficker'),
(270, 'gummipuppenbumser'),
(271, 'gummisklave'),
(272, 'hackfresse'),
(273, 'hafensau'),
(274, 'hartgeldhure'),
(275, 'heil hitler'),
(276, 'hi hoper'),
(277, 'hinterlader'),
(278, 'hirni'),
(279, 'hitler'),
(280, 'hodenbei?er'),
(281, 'hodensohn'),
(282, 'homo'),
(283, 'hosenpisser'),
(284, 'hosenschei?er'),
(285, 'h?hnerficker'),
(286, 'huhrensohn'),
(287, 'hundeficker'),
(288, 'hundesohn'),
(289, 'hurenlecker'),
(290, 'hurenpeter'),
(291, 'hurensohn'),
(292, 'hurentocher'),
(293, 'idiot'),
(294, 'idioten'),
(295, 'itakker'),
(296, 'ittaker'),
(297, 'jack off'),
(298, 'jackass'),
(299, 'jackshit'),
(300, 'jerk off'),
(301, 'jizz'),
(302, 'judensau'),
(303, 'kackarsch'),
(304, 'kacke'),
(305, 'kacken'),
(306, 'kackfass'),
(307, 'kackfresse'),
(308, 'kacknoob'),
(309, 'kaktusficker'),
(310, 'kanacke'),
(311, 'kanake'),
(312, 'kanaken'),
(313, 'kanaldeckelbefruchter'),
(314, 'kartoffelficker'),
(315, 'kinderficken'),
(316, 'kinderficker'),
(317, 'kinderporno'),
(318, 'kitzler fresser'),
(319, 'klapposkop'),
(320, 'klolecker'),
(321, 'kl?tenlutscher'),
(322, 'knoblauchfresser'),
(323, 'konzentrationslager'),
(324, 'kotgeburt'),
(325, 'kotnascher'),
(326, 'k?mmelt?rke'),
(327, 'k?mmelt?rken'),
(328, 'lackaffe'),
(329, 'lebensunwert'),
(330, 'lesbian'),
(331, 'lurchi'),
(332, 'lustbolzen'),
(333, 'lutscher'),
(334, 'magerschwanz'),
(335, 'manwhore'),
(336, 'masturbate'),
(337, 'meat puppet'),
(338, 'missgeburt'),
(339, 'mi?geburt'),
(340, 'mistsau'),
(341, 'mistst?ck'),
(342, 'mitternachtsficker'),
(343, 'mohrenkopf'),
(344, 'mokkast?bchenveredler'),
(345, 'mongo'),
(346, 'm?se'),
(347, 'm?senficker'),
(348, 'm?senlecker'),
(349, 'm?senputzer'),
(350, 'm?ter'),
(351, 'mother fucker'),
(352, 'mother fucking'),
(353, 'motherfucker'),
(354, 'muschilecker'),
(355, 'muschischlitz'),
(356, 'mutterficker'),
(357, 'nazi'),
(358, 'nazis'),
(359, 'neger'),
(360, 'nigga'),
(361, 'nigger'),
(362, 'niggerlover'),
(363, 'niggers'),
(364, 'niggerschlampe'),
(365, 'nignog'),
(366, 'nippelsauger'),
(367, 'nutte'),
(368, 'nuttensohn'),
(369, 'nuttenstecher'),
(370, 'nuttentochter'),
(371, 'ochsenpimmel'),
(372, '?lauge'),
(373, 'oral sex'),
(374, 'penis licker'),
(375, 'penis licking'),
(376, 'penis sucker'),
(377, 'penis sucking'),
(378, 'penis'),
(379, 'peniskopf'),
(380, 'penislecker'),
(381, 'penislutscher'),
(382, 'penissalat'),
(383, 'penner'),
(384, 'pferdearsch'),
(385, 'phentermine'),
(386, 'pimmel'),
(387, 'pimmelkopf'),
(388, 'pimmellutscher'),
(389, 'pimmelpirat'),
(390, 'pimmelprinz'),
(391, 'pimmelschimmel'),
(392, 'pimmelvinni'),
(393, 'pindick'),
(394, 'piss off'),
(395, 'piss'),
(396, 'pissbirne'),
(397, 'pissbotte'),
(398, 'pisse'),
(399, 'pisser'),
(400, 'pissetrinker'),
(401, 'pissfisch'),
(402, 'pissflitsche'),
(403, 'pissnelke'),
(404, 'polacke'),
(405, 'polacken'),
(406, 'poop'),
(407, 'popellfresser'),
(408, 'popostecker'),
(409, 'popunterlage'),
(410, 'porn'),
(411, 'porno'),
(412, 'pornografie'),
(413, 'pornoprengel'),
(414, 'pottsau'),
(415, 'pr?rieficker'),
(416, 'prick'),
(417, 'quiff'),
(418, 'randsteinwichser'),
(419, 'rasierte votzen'),
(420, 'rimjob'),
(421, 'rindsriemen'),
(422, 'ritzenfummler'),
(423, 'rollbrooden'),
(424, 'roseten putzer'),
(425, 'roseten schlemmer'),
(426, 'rosettenhengst'),
(427, 'rosettenk?nig'),
(428, 'rosettenlecker'),
(429, 'rosettentester'),
(430, 'sackfalter'),
(431, 'sackgesicht'),
(432, 'sacklutscher'),
(433, 'sackratte'),
(434, 'saftarsch'),
(435, 'sakfalter'),
(436, 'schamhaarlecker'),
(437, 'schamhaarsch?del'),
(438, 'schandmaul'),
(439, 'scheisse'),
(440, 'scheisser'),
(441, 'scheissgesicht'),
(442, 'scheisshaufen'),
(443, 'schei?haufen'),
(444, 'schlammfotze'),
(445, 'schlampe'),
(446, 'schleimm?se'),
(447, 'schlitzpisser'),
(448, 'schmalspurficker'),
(449, 'schmeue'),
(450, 'schmuckbert'),
(451, 'schnuddelfresser'),
(452, 'schnurbeltatz'),
(453, 'schrumpelfotze'),
(454, 'schwanzlurch'),
(455, 'schwanzlutscher'),
(456, 'schweinepriester'),
(457, 'schweineschwanzlutscher'),
(458, 'schwuchtel'),
(459, 'schwutte'),
(460, 'sex'),
(461, 'shiter'),
(462, 'shiting'),
(463, 'shitlist'),
(464, 'shitomatic'),
(465, 'shits'),
(466, 'shitty'),
(467, 'shlong'),
(468, 'shut the fuckup'),
(469, 'sieg heil'),
(470, 'sitzpisser'),
(471, 'skullfuck'),
(472, 'skullfucker'),
(473, 'skullfucking'),
(474, 'slut'),
(475, 'smegmafresser'),
(476, 'spack'),
(477, 'spacko'),
(478, 'spaghettifresser'),
(479, 'spastard'),
(480, 'spasti'),
(481, 'spastis'),
(482, 'spermafresse'),
(483, 'spermarutsche'),
(484, 'spritzer'),
(485, 'stinkschlitz'),
(486, 'stricher'),
(487, 'suck my cock'),
(488, 'suck my dick'),
(489, 'threesome'),
(490, 'tittenficker'),
(491, 'tittenspritzer'),
(492, 'titties'),
(493, 'titty'),
(494, 'tunte'),
(495, 'untermensch'),
(496, 'vagina'),
(497, 'vergasen'),
(498, 'viagra'),
(499, 'volldepp'),
(500, 'volldeppen'),
(501, 'vollhorst'),
(502, 'vollidiot'),
(503, 'vollpfosten'),
(504, 'vollspack'),
(505, 'vollspacken'),
(506, 'vollspasti'),
(507, 'vorhaut'),
(508, 'votze'),
(509, 'votzenkopf'),
(510, 'wanker'),
(511, 'wankers'),
(512, 'weichei'),
(513, 'whoar'),
(514, 'whore'),
(515, 'wichsbart'),
(516, 'wichsbirne'),
(517, 'wichser'),
(518, 'wichsfrosch'),
(519, 'wichsgriffel'),
(520, 'wichsvorlage'),
(521, 'wickspickel'),
(522, 'wixa'),
(523, 'wixen'),
(524, 'wixer'),
(525, 'wixxer'),
(526, 'wixxxer'),
(527, 'wixxxxer'),
(528, 'wurstsemmelfresser'),
(529, 'yankee'),
(530, 'zappler'),
(531, 'zyclon b'),
(532, 'zyklon b'),
(533, 'x x x'),
(1000, 'анал'),
(1001, 'анальная'),
(1002, 'анальный'),
(1003, 'аннал'),
(1004, 'аннал'),
(1005, 'аннальная'),
(1006, 'аннальный'),
(1007, 'анус'),
(1008, 'ара'),
(1009, 'ахуе'),
(1010, 'ахуеннейшая'),
(1011, 'ахуеннейший'),
(1012, 'ахуенный'),
(1013, 'ахуй'),
(1014, 'бледям'),
(1015, 'бля'),
(1016, 'бля*'),
(1017, 'блядво'),
(1018, 'бляди'),
(1019, 'блядская'),
(1020, 'блядский'),
(1021, 'блядство'),
(1022, 'блядь'),
(1023, 'блядью'),
(1024, 'блядям'),
(1025, 'вагина'),
(1026, 'вагинальная'),
(1027, 'вагинальный'),
(1028, 'влагалище'),
(1029, 'въебывал'),
(1030, 'въебывать'),
(1031, 'выебнулась'),
(1032, 'выебнулся'),
(1033, 'выебывается'),
(1034, 'выёбывается'),
(1035, 'выебывался'),
(1036, 'выёбывался'),
(1037, 'выебываться'),
(1038, 'выёбываться'),
(1039, 'групповичок'),
(1040, 'групповуха'),
(1041, 'дефларировал'),
(1042, 'дефлорация'),
(1043, 'дефлорировал'),
(1044, 'дефлорированая'),
(1045, 'дефлорированная'),
(1046, 'долбоеб'),
(1047, 'долбоёб'),
(1048, 'долбоебизм'),
(1049, 'ебал'),
(1050, 'ебанулась'),
(1051, 'ебанулся'),
(1052, 'ебануться'),
(1053, 'ебаный'),
(1054, 'ёбаный'),
(1055, 'ебарем'),
(1056, 'ёбарем'),
(1057, 'ебарь'),
(1058, 'ёбарь'),
(1059, 'ебать'),
(1060, 'ебаться'),
(1061, 'ебет'),
(1062, 'ебёт'),
(1063, 'ебля'),
(1064, 'ебнулась'),
(1065, 'ёбнулась'),
(1066, 'ебнулся'),
(1067, 'ёбнулся'),
(1068, 'ебут'),
(1069, 'елда'),
(1070, 'елдою'),
(1071, 'жид'),
(1072, 'жидовка'),
(1073, 'жидовская'),
(1074, 'жидовский'),
(1075, 'жидовское'),
(1076, 'жиды'),
(1077, 'жопа'),
(1078, 'жопа*'),
(1079, 'жопо*'),
(1080, 'жопах'),
(1081, 'жопе'),
(1082, 'жопу'),
(1083, 'жопы'),
(1084, 'жыд'),
(1085, 'жыдовка'),
(1086, 'жыдовская'),
(1087, 'жыдовский'),
(1088, 'жыдовское'),
(1089, 'жыды'),
(1090, 'заебала'),
(1091, 'заебали'),
(1092, 'заебало'),
(1093, 'заебался'),
(1094, 'заебись'),
(1095, 'заебло'),
(1096, 'залупа'),
(1097, 'залупе'),
(1098, 'залупил'),
(1099, 'залупилась'),
(1100, 'залупился'),
(1101, 'залупу'),
(1102, 'затрахал'),
(1103, 'затрахала'),
(1104, 'затрахало'),
(1105, 'изъебнулась'),
(1106, 'изъебнулся'),
(1107, 'изъебыватся'),
(1108, 'изъёбыватся'),
(1109, 'изъебываться'),
(1110, 'изъёбываться'),
(1111, 'индевидуалки'),
(1112, 'индиведуалки'),
(1113, 'индивидуалки'),
(1114, 'копро'),
(1115, 'копрофаг'),
(1116, 'кунилингус'),
(1117, 'куннилингус'),
(1118, 'лезбеянка'),
(1119, 'лезбеянки'),
(1120, 'лезби'),
(1121, 'лезбиянка'),
(1122, 'лезбиянки'),
(1123, 'лезбо'),
(1124, 'лесбеянка'),
(1125, 'лесбеянки'),
(1126, 'лесби'),
(1127, 'лесбиянка'),
(1128, 'лесбиянки'),
(1129, 'лесбо'),
(1130, 'мазо'),
(1131, 'мазохизм'),
(1132, 'манда'),
(1133, 'манде'),
(1134, 'манду'),
(1135, 'манды'),
(1136, 'менет'),
(1137, 'менстра'),
(1138, 'менструация'),
(1139, 'менструирующая'),
(1140, 'менструирующие'),
(1141, 'меньет'),
(1142, 'минет'),
(1143, 'миньет'),
(1144, 'мозгоеб'),
(1145, 'мозгоёб'),
(1146, 'мозгоебля'),
(1147, 'мозгоебство'),
(1148, 'мозгоёбство'),
(1149, 'мудак'),
(1150, 'мудаковатая'),
(1151, 'мудаковатый'),
(1152, 'муде'),
(1153, 'мудила'),
(1154, 'наебал'),
(1155, 'наебали'),
(1156, 'наебать'),
(1157, 'наебли'),
(1158, 'наебнулась'),
(1159, 'наебнулся'),
(1160, 'насрал'),
(1161, 'насрала'),
(1162, 'насрать'),
(1163, 'настапиздил'),
(1164, 'настапиздило'),
(1165, 'настопиздил'),
(1166, 'настопиздило'),
(1167, 'нахуй'),
(1168, 'нахуя'),
(1169, 'невъебеная'),
(1170, 'невъебенная'),
(1171, 'невъебенно'),
(1172, 'невъебенный'),
(1173, 'невъебено'),
(1174, 'невъебеный'),
(1175, 'немфетка'),
(1176, 'немфетки'),
(1177, 'нивъебенная'),
(1178, 'нивъебенно'),
(1179, 'нивъебенный'),
(1180, 'нимфетка'),
(1181, 'нимфетки'),
(1182, 'опезденевшая'),
(1183, 'опезденевший'),
(1184, 'опезденел'),
(1185, 'опезденела'),
(1186, 'опизденевшая'),
(1187, 'опизденевший'),
(1188, 'опизденел'),
(1189, 'опизденела'),
(1190, 'оргии'),
(1191, 'оргия'),
(1192, 'отпиздил'),
(1193, 'отпиздила'),
(1194, 'отпиздили'),
(1195, 'отпизженая'),
(1196, 'отпизженная'),
(1197, 'отпизженный'),
(1198, 'отпизженый'),
(1199, 'отсасал'),
(1200, 'отсасала'),
(1201, 'отсасывает'),
(1202, 'отсосал'),
(1203, 'отсосала'),
(1204, 'оттрахал'),
(1205, 'оттраханая'),
(1206, 'оттраханная'),
(1207, 'оттраханные'),
(1208, 'оттраханые'),
(1209, 'отъебал'),
(1210, 'отъебалась'),
(1211, 'отъебать'),
(1212, 'отъебись'),
(1213, 'охуеваю'),
(1214, 'охуевший'),
(1215, 'охуел'),
(1216, 'охуенейшая'),
(1217, 'охуенейший'),
(1218, 'охуеннейшая'),
(1219, 'охуеннейший'),
(1220, 'охуенный'),
(1221, 'охуеный'),
(1222, 'пархатая'),
(1223, 'пархатый'),
(1224, 'педераз'),
(1225, 'педераст'),
(1226, 'педораз'),
(1227, 'педорас'),
(1228, 'педораст'),
(1229, 'пезда'),
(1230, 'пездабол'),
(1231, 'пездаболка'),
(1232, 'пездато'),
(1233, 'пезде'),
(1234, 'пезденыш'),
(1235, 'пезду'),
(1236, 'пёзды'),
(1237, 'пездюк'),
(1238, 'пездюкам'),
(1239, 'пездюку'),
(1240, 'пездючка'),
(1241, 'пездючкам'),
(1242, 'пелотка'),
(1243, 'пидар'),
(1244, 'пидар*'),
(1245, 'пидарас'),
(1246, 'пидараст'),
(1247, 'пидераз'),
(1248, 'пидор'),
(1249, 'пидор*'),
(1250, 'пидораз'),
(1251, 'пидорас'),
(1252, 'пидораст'),
(1253, 'пизда'),
(1254, 'пизда*'),
(1255, 'пиздабол'),
(1256, 'пиздаболка'),
(1257, 'пиздам'),
(1258, 'пиздатая'),
(1259, 'пиздато'),
(1260, 'пиздатый'),
(1261, 'пизде'),
(1262, 'пиздел'),
(1263, 'пиздела'),
(1264, 'пизденыш'),
(1265, 'пиздеть'),
(1266, 'пиздец'),
(1267, 'пиздил'),
(1268, 'пиздить'),
(1269, 'пиздобол'),
(1270, 'пиздоболка'),
(1271, 'пизду'),
(1272, 'пиздюк'),
(1273, 'пиздюкам'),
(1274, 'пиздюку'),
(1275, 'пиздючка'),
(1276, 'пиздючкам'),
(1277, 'пипка'),
(1278, 'пипки'),
(1279, 'плева'),
(1280, 'подзалупная'),
(1281, 'подзалупный'),
(1282, 'подъебка'),
(1283, 'подъёбка'),
(1284, 'поебался'),
(1285, 'поебок'),
(1286, 'порево'),
(1287, 'порно'),
(1288, 'порнуха'),
(1289, 'порхатая'),
(1290, 'порхатый'),
(1291, 'промандиблядская'),
(1292, 'промандиблядский'),
(1293, 'проститутка'),
(1294, 'проститутки'),
(1295, 'разъебал'),
(1296, 'разъебать'),
(1297, 'распездил'),
(1298, 'распиздил'),
(1299, 'сасал'),
(1300, 'сасала'),
(1301, 'сасет'),
(1302, 'сасёт'),
(1303, 'секс'),
(1304, 'сиська'),
(1305, 'сиськи'),
(1306, 'сперма'),
(1307, 'сперме'),
(1308, 'сперму'),
(1309, 'сраная'),
(1310, 'сраное'),
(1311, 'сраный'),
(1312, 'срать'),
(1313, 'ссучившийся'),
(1314, 'ссучилась'),
(1315, 'ссучился'),
(1316, 'сука'),
(1317, 'сукам'),
(1318, 'суке'),
(1319, 'суки'),
(1320, 'сцука'),
(1321, 'сцуко'),
(1322, 'съебал'),
(1323, 'съебала'),
(1324, 'съебать'),
(1325, 'трахает'),
(1326, 'трахал'),
(1327, 'трахали'),
(1328, 'трахать'),
(1329, 'уебали'),
(1330, 'уебало'),
(1331, 'уебался'),
(1332, 'уебище'),
(1333, 'уёбище'),
(1334, 'уебищная'),
(1335, 'уёбищная'),
(1336, 'уебищные'),
(1337, 'уёбищные'),
(1338, 'уебищный'),
(1339, 'уёбищный'),
(1340, 'уебла'),
(1341, 'уебли'),
(1342, 'уебло'),
(1343, 'уебок'),
(1344, 'уёбок'),
(1345, 'фистинг'),
(1346, 'хер'),
(1347, 'хера'),
(1348, 'хером'),
(1349, 'хуе*'),
(1350, 'хуё*'),
(1351, 'хуево'),
(1352, 'хуем'),
(1353, 'хуеплет'),
(1354, 'хуеплёт'),
(1355, 'хуесос'),
(1356, 'хуесоска'),
(1357, 'хуета'),
(1358, 'хуй'),
(1359, 'хуй*'),
(1360, 'хуйне'),
(1361, 'хуйнею'),
(1362, 'хуйня'),
(1363, 'хуита'),
(1364, 'хую'),
(1365, 'хуя'),
(1366, 'хуя*'),
(1367, 'хуякс'),
(1368, 'хХХ'),
(1369, 'Ххх'),
(1370, 'целка'),
(1371, 'целках'),
(1372, 'целке'),
(1373, 'целки'),
(1374, 'целку'),
(1375, 'черножопая'),
(1376, 'черножопое'),
(1377, 'черножопый'),
(1378, 'член'),
(1379, 'чурка'),
(1380, 'чуркам'),
(1381, 'чурке'),
(1382, 'чурки'),
(1383, 'шлюха'),
(1384, 'шлюхи'),
(1385, 'ялда'),
(1386, 'ялдою');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_extensions`
--

CREATE TABLE IF NOT EXISTS `jos_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10032 ;

--
-- Дамп данных таблицы `jos_extensions`
--

INSERT INTO `jos_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '', '{"administrator":"uk-UA","site":"uk-UA"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '', '{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"BL","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Web Application Framework', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Web Application Framework","type":"library","creationDate":"2008","author":"Joomla","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"1.6.0","description":"The Joomla! Web Application Framework is the Core of the Joomla! Content Management System","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(306, 'mod_online', 'module', 'mod_online', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_unread', 'module', 'mod_unread', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '', '{"mode":"2","skin":"0","compressed":"0","cleanup_startup":"0","cleanup_save":"2","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"1.6.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'plg_content_mavikthumbnails', 'plugin', 'mavikthumbnails', 'content', 0, 1, 1, 0, '{"legacy":true,"name":"plg_content_mavikthumbnails","type":"plugin","creationDate":"Marth 2009","author":"Vitaliy Marenkov","copyright":"Vitaliy Marenkov","authorEmail":"admin@mavik.com.ua","authorUrl":"www.mavik.com.ua","version":"0.9.8.4","description":"PLG_MAVIKTHUMBNAILS_DESCRIPTION","group":""}', '{"popuptype":"modal","blog_link":"0","thumbnails_for":"1","class":"slide","proportions":"keep","default_size":"","width":"","height":"","blog_proportions":"keep","blog_default_size":"","blog_width":"","blog_height":"","zoomin_img":"0","zoomin_cur":"0","quality":"80","thumbputh":"images\\/stories\\/thumbnails","remoteputh":"images\\/stories\\/remote","link_scripts":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'mod_xpertscroller', 'module', 'mod_xpertscroller', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_xpertscroller","type":"module","creationDate":"April 2011","author":"ThemeXpert","copyright":"Copyright (C) 20010 - 2011 ThemeXpert. All rights reserved.","authorEmail":"support@themexpert.com","authorUrl":"www.themexpert.com","version":"2.2","description":"XS_DESC","group":""}', '{"catid":"","count":"5","ordering":"published","user_id":"0","show_featured":"","scroller_layout":"basic_h","module_width":"400","module_height":"200","col_amount":"5","image_position":"top","control_margin":"40px 10px","animation_style":"animation_h","animation_speed":"1000","repeat":"1","keyboard_navigation":"1","auto_play":"0","navigator":"1","interval":"1000","auto_pause":"1","article_title":"1","title_link":"0","item_image":"1","image_link":"1","browser_nav":"","intro_text":"0","intro_text_limit":"100","readmore":"0","image_resize":"1","image_width":"150","image_height":"150","moduleclass_sfx":"","auto_module_id":"1","module_unique_id":"xs_1","load_jquery":"1","jquery_source":"local","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'Joomla! CMS', 'file', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"legacy":true,"name":"Russian","type":"language","creationDate":"2011-04-21","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"1.6.3","description":"Russian language pack (site) for Joomla! 1.6","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"legacy":true,"name":"Russian","type":"language","creationDate":"2011-04-21","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"1.6.3","description":"Russian language pack (administrator) for Joomla! 1.6","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'ru-RU', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"legacy":false,"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.6","description":"Joomla 1.6 Russian Language Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'TinyMCE ru-RU', 'file', 'Z:\\home\\localhost\\www\\apostrof\\tmp\\install_4db6de101b495\\tinymce_ru-ru', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'TinyMCE uk-UA', 'file', 'Z:\\home\\localhost\\www\\apostrof\\tmp\\install_4db6de1ad48d0\\tinymce_uk-ua', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, '', 'language', 'uk-UA', '', 0, 1, 0, 0, '{"legacy":true,"name":"\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 (\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430)","type":"language","creationDate":"19.04.2011","author":"Joomla! Ukraine","copyright":"2005 - 2011 (C) Open Source Matters. 2006 - 2011 (C) Joomla! Ukraine. All rights reserved.","authorEmail":"","authorUrl":"","version":"1.6.3-1.2","description":"\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0438\\u0439 \\u043f\\u0435\\u0440\\u0435\\u043a\\u043b\\u0430\\u0434 \\u0444\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u0457 \\u0447\\u0430\\u0441\\u0442\\u0438\\u043d\\u0438 Joomla 1.6.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, '', 'language', 'uk-UA', '', 1, 1, 0, 0, '{"legacy":true,"name":"\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 (\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430)","type":"language","creationDate":"19.04.2011","author":"Joomla! Ukraine","copyright":"2005 - 2011 (C) Open Source Matters. 2006 - 2011 (C) Joomla! Ukraine. All rights reserved.","authorEmail":"","authorUrl":"","version":"1.6.3-1.2","description":"\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0438\\u0439 \\u043f\\u0435\\u0440\\u0435\\u043a\\u043b\\u0430\\u0434 \\u0430\\u0434\\u043c\\u0456\\u043d\\u0456\\u0441\\u0442\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u043e\\u0457 \\u0447\\u0430\\u0441\\u0442\\u0438\\u043d\\u0438 Joomla 1.6.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'uk-UA', 'package', 'pkg_uk-UA', '', 0, 1, 1, 0, '{"legacy":false,"name":"Ukrainian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.6","description":"\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0438\\u0439 \\u043f\\u0430\\u043a\\u0435\\u0442 \\u043b\\u043e\\u043a\\u0430\\u043b\\u0456\\u0437\\u0430\\u0446\\u0456\\u0457 Joomla 1.6","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'apostrof', 'template', 'apostrof', '', 0, 1, 1, 0, '{"legacy":false,"name":"apostrof","type":"template","creationDate":"2011 Apr 26","author":"\\u0418\\u043b\\u044c\\u044f LeeSteR \\u0421\\u0438\\u0434\\u043e\\u0440\\u0435\\u043d\\u043a\\u043e","copyright":"Copyright 2011 DL Studios","authorEmail":"design@studiosdl.com","authorUrl":"http:\\/\\/studiosdl.com","version":"1.0","description":"\\n\\t\\n\\t<h1>TEMPLATE for Apostrof Publish<\\/h1>\\n\\t \\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'com_phocaguestbook', 'component', 'com_phocaguestbook', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_phocaguestbook","type":"component","creationDate":"25\\/07\\/2011","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"2.0.1","description":"Phoca Guestbook","group":""}', '{"display_title_form":"2","display_name_form":"2","display_email_form":"0","display_website_form":"0","display_content_form":"2","enable_editor":"1","display_path_editor":"1","display_form":"0","form_position":"1","display_required_sign":"1","display_posts":"1","editor_width":"400","editor_height":"200","table_width":"400","predefined_name":"","username_or_name":"0","disable_user_check":"0","registered_users_only":"0","review_item":"1","send_mail":"42","display_name":"1","display_email":"1","display_website":"1","date_format":"DATE_FORMAT_LC","font_color":"#000000","second_font_color":"#dddddd","background_color":"#C8DFF9","border_color":"#E6E6E6","default_pagination":"5","pagination":"5,10,15,20,50","pagination_hide_all":"1","forbidden_word_filter":"","forbidden_whole_word_filter":"","forbidden_word_behaviour":"0","ip_ban":"","max_char":"2000","max_url":"5","deny_url_words":"","enable_captcha":"0","enable_captcha_users":"0","standard_captcha_chars":"1,2,3,4,5,6,7,8,9, a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z, A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z","math_captcha_chars":"1,2,3,4,5,6,7,8,9, a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z, A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z","ttf_captcha_chars":"1,2,3,4,5,6,7,8,9, a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z, A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z","recaptcha_publickey":"","recaptcha_privatekey":"","enable_html_purifier":"1","session_suffix":"","enable_hidden_field":"0","enable_cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Content Plugin', 'xmap_ext', 'xmap_com_content', 'com_content', 0, 1, 1, 0, '{"legacy":true,"name":"Content Plugin","type":"xmap_ext","creationDate":"26\\/01\\/2011","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0","description":"Plugin for Joomla 1.6 categories\\/articles items","group":""}', '{"expand_categories":"1","expand_featured":"1","show_unauth":"0","add_pagebreaks":"1","max_art":"0","max_art_age":"0","add_images":"0","cat_priority":"-1","cat_changefreq":"-1","art_priority":"-1","art_changefreq":"-1","keywords":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'com_xmap', 'component', 'com_xmap', '', 1, 1, 0, 0, '{"legacy":true,"name":"com_xmap","type":"component","creationDate":"2010-07-04","author":"Guillermo Vargas","copyright":"This component is released under the GNU\\/GPL License","authorEmail":"guille@vargas.co.cr","authorUrl":"http:\\/\\/joomla.vargas.co.cr","version":"2.0b2","description":"Xmap - Sitemap Generator for Joomla!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'com_foxcontact', 'component', 'com_foxcontact', '', 1, 1, 0, 0, '{"legacy":false,"name":"COM_FOXCONTACT","type":"component","creationDate":"19\\/03\\/2011","author":"Demis Palma","copyright":"Demis Palma","authorEmail":"demis@extreme.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/joomla-extensions\\/fox-contact-form.html","version":"1.6.13","description":"COM_FOXCONTACT_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'Content - Image gallery - sigplus', 'plugin', 'sigplus', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - Image gallery - sigplus","type":"plugin","creationDate":"Apr 30, 2011","author":"Levente Hunyadi","copyright":"\\u00a9 2009-2011 Levente Hunyadi. All rights reserved.","authorEmail":"hunyadi@gmail.com","authorUrl":"http:\\/\\/hunyadi.info.hu\\/projects\\/sigplus","version":"1.4.2.5","description":"SIGPLUS_DESCRIPTION","group":""}', '{"base_folder":"images","layout":"fixed","rows":"5","cols":"4","thumb_count":"0","thumb_width":"150","thumb_height":"150","thumb_crop":"0","alignment":"center","lightbox":"slimbox","lightbox_slideshow":"0","slider":"boxplus.slider","slider_orientation":"horizontal","slider_navigation":"bottom","slider_buttons":"1","slider_links":"1","slider_counter":"0","slider_overlay":"0","slider_duration":"800","slider_animation":"0","captions":"boxplus.caption","caption_title":"","caption_description":"","download":"0","metadata":"0","margin":"","border_style":"","border_width":"","border_color":"","padding":"","thumb_cache":"1","thumb_folder":"thumbs","preview_folder":"preview","fullsize_folder":"fullsize","base_url":"","thumb_quality":"85","labels":"labels","labels_multilingual":"0","sort_criterion":"labels-filename","sort_order":"0","linkage":"inline","ajaxapi":"default","library":"default","activationtag":"gallery","debug":"0","settings":""}', '', '', 42, '2013-07-29 12:03:35', 0, 0),
(10025, 'sigplus', 'module', 'mod_sigplus', '', 0, 1, 0, 0, '{"legacy":false,"name":"sigplus","type":"module","creationDate":"Apr 30, 2011","author":"Levente Hunyadi","copyright":"\\u00a9 2009-2011 Levente Hunyadi. All rights reserved.","authorEmail":"hunyadi@gmail.com","authorUrl":"http:\\/\\/hunyadi.info.hu\\/projects\\/sigplus","version":"1.4.2.5","description":"SIGPLUS_DESCRIPTION","group":""}', '{"images_folder":"images\\/sampledata\\/fruitshop","layout":"fixed","rows":"1","cols":"1","thumb_count":"0","thumb_width":"200","thumb_height":"200","thumb_crop":"0","alignment":"center","lightbox":"boxplus\\/lightsquare","lightbox_slideshow":"0","slider":"boxplus.slider","slider_orientation":"vertical","slider_navigation":"bottom","slider_buttons":"0","slider_links":"0","slider_counter":"0","slider_overlay":"1","slider_duration":"800","slider_animation":"0","download":"0","metadata":"0","margin":"","border_style":"","border_width":"","border_color":"","padding":"","thumb_cache":"1","thumb_folder":"thumbs","preview_folder":"preview","fullsize_folder":"fullsize","base_url":"","thumb_quality":"85","labels":"labels","labels_multilingual":"0","sort_criterion":"labels-filename","sort_order":"0","linkage":"inline","ajaxapi":"default","library":"default","moduleclass_sfx":"","debug":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'sigplus', 'package', 'pkg_sigplus', '', 0, 1, 1, 0, '{"legacy":false,"name":"sigplus","type":"package","creationDate":"Apr 30, 2011","author":"Levente Hunyadi","copyright":"\\u00a9 2009-2011 Levente Hunyadi. All rights reserved.","authorEmail":"hunyadi@gmail.com","authorUrl":"http:\\/\\/hunyadi.info.hu\\/projects\\/sigplus","version":"1.4.2.5","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'chronoforms', 'component', 'com_chronoforms', '', 1, 1, 0, 0, '{"legacy":false,"name":"ChronoForms","type":"component","creationDate":"17 Apr 2011","author":"Chronoman","copyright":"ChronoEngine.com 2011","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"4.0 RC1.8","description":"Create everytype of Forms with whatever features you like!!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'com_easybookreloaded', 'component', 'com_easybookreloaded', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_easybookreloaded","type":"component","creationDate":"23.05.2011","author":"Kubik-Rubik.de - Viktor Vogel","copyright":"Copyright 2011 Viktor Vogel - All rights reserved","authorEmail":"admin@kubik-rubik.de","authorUrl":"http:\\/\\/www.kubik-rubik.de","version":"3.0.5","description":"COM_EASYBOOKRELOADED_XML_DESCRIPTION","group":""}', '{"offline":"0","add_acl":"1","admin_acl":"8","default_published":"1","send_mail":"1","send_mail_html":"1","emailfornotification":"info@apostrof.in.ua","secret_word":"apostrof","valid_time_emailnot":"1","badwordfilter":"1","entries_perpage":"10","entries_order":"DESC","show_introtext":"0","introtext":"","show_page_title":"0","support_bbcode":"0","support_smilie":"0","smilie_set":"0","support_link":"0","support_mail":"0","support_pic":"0","support_code":"0","support_youtube":"0","geshi_lines":"0","wordwrap":"1","maxlength":"75","template_dark":"0","date_format":"0","show_count_entries":"0","show_logo":"0","show_rating":"0","rating_max":"10","show_rating_type":"0","enable_log":"0","enable_log_notice":"0","registered_username":"1","show_mail":"0","require_mail":"0","show_title":"0","require_title":"0","show_loca":"0","show_home":"0","nofollow_home":"1","show_icq":"0","show_aim":"0","show_msn":"0","show_yah":"0","show_skype":"0","enable_spam":"0","max_value":"20","operator":"0","type_time_sec":"5","enable_spam_reg":"0","maxnumberlinks":"2","block_ip":"","timelock_ip":"30"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'com_phocagallery', 'component', 'com_phocagallery', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_phocagallery","type":"component","creationDate":"04\\/08\\/2011","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"3.0.2","description":"Phoca Gallery","group":""}', '{"categories_description":"","categories_columns":"1","equal_percentage_width":"1","display_image_categories":"1","categories_box_width":"33%","image_categories_size":"4","categories_image_ordering":"10","categories_display_avatar":"1","display_subcategories":"1","display_empty_categories":"0","hide_categories":"","show_categories":"","display_access_category":"0","default_pagination_categories":"0","pagination_categories":"5,10,15,20,50","font_color":"#b36b00","background_color":"#fcfcfc","background_color_hover":"#f5f5f5","image_background_color":"#f5f5f5","image_background_shadow":"shadow1","border_color":"#e8e8e8","border_color_hover":"#b36b00","margin_box":"5","padding_box":"5","display_new":"0","display_hot":"0","display_name":"1","display_icon_detail":"1","display_icon_download":"2","display_icon_folder":"0","font_size_name":"12","char_length_name":"15","category_box_space":"0","display_categories_sub":"1","display_subcat_page":"2","display_category_icon_image":"1","category_image_ordering":"10","display_back_button":"0","display_categories_back_button":"0","default_pagination_category":"6","pagination_category":"5,10,15,20,50","display_img_desc_box":"0","font_size_img_desc":"10","img_desc_box_height":"30","char_length_img_desc":"300","display_categories_cv":"1","display_subcat_page_cv":"0","display_category_icon_image_cv":"1","category_image_ordering_cv":"10","display_back_button_cv":"0","display_categories_back_button_cv":"0","categories_columns_cv":"1","display_image_categories_cv":"1","image_categories_size_cv":"4","detail_window":"6","detail_window_background_color":"#ffffff","modal_box_overlay_color":"#000000","modal_box_overlay_opacity":"0.3","modal_box_border_color":"#6b6b6b","modal_box_border_width":"2","sb_slideshow_delay":"5","sb_lang":"en","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","jak_slideshow_delay":"3","jak_orientation":"none","jak_description":"2","jak_description_height":"10","boxplus_theme":"lightsquare","boxplus_bautocenter":"1","boxplus_autofit":"1","boxplus_slideshow":"0","boxplus_loop":"0","boxplus_captions":"bottom","boxplus_thumbs":"inside","boxplus_duration":"250","boxplus_transition":"linear","boxplus_contextmenu":"1","display_description_detail":"0","display_title_description":"0","font_size_desc":"11","font_color_desc":"#333333","description_detail_height":"16","description_lightbox_font_size":"12","description_lightbox_font_color":"#ffffff","description_lightbox_bg_color":"#000000","slideshow_delay":"3000","slideshow_pause":"2000","slideshow_random":"0","slideshow_description":"peekaboo","detail_buttons":"1","phocagallery_width":"","phocagallery_center":"0","category_ordering":"1","image_ordering":"1","gallery_metadesc":"","gallery_metakey":"","alt_value":"1","enable_cooliris":"0","start_cooliris":"0","piclens_image":"1","switch_image":"0","switch_width":"2000","switch_height":"2000","switch_fixed_size":"0","enable_overlib":"0","ol_bg_color":"#666666","ol_fg_color":"#f6f6f6","ol_tf_color":"#000000","ol_cf_color":"#ffffff","overlib_overlay_opacity":"0.7","overlib_image_rate":"","create_watermark":"0","watermark_position_x":"center","watermark_position_y":"middle","display_category_statistics":"0","display_main_cat_stat":"1","display_lastadded_cat_stat":"1","count_lastadded_cat_stat":"3","display_mostviewed_cat_stat":"1","count_mostviewed_cat_stat":"3","display_feed":"1","feed_cat_ids":"1","feed_img_ordering":"6","feed_img_count":"5","feed_title":"","enable_user_cp":"0","enable_upload_avatar":"1","enable_avatar_approve":"0","enable_usercat_approve":"0","enable_usersubcat_approve":"0","enable_direct_subcat":"0","user_subcat_count":"5","max_create_cat_char":"1000","user_ucp_lang":"1","enable_userimage_approve":"0","max_upload_char":"1000","upload_maxsize":"3145728","upload_maxres_width":"3072","upload_maxres_height":"2304","user_images_max_size":"20971520","enable_multiple":"0","multiple_upload_method":"1","multiple_upload_chunk":"0","multiple_resize_width":"-1","multiple_resize_height":"-1","enable_java":"0","java_box_width":"480","java_box_height":"480","display_rating":"0","display_rating_img":"0","display_comment":"0","display_comment_img":"0","comment_width":"500","max_comment_char":"1000","display_comment_nopup":"0","external_comment_system":"0","fb_comment_user_id":"","display_camera_info":"0","exif_information":"FILE.FileName,FILE.FileDateTime,FILE.FileSize,FILE.MimeType,COMPUTED.Height,COMPUTED.Width,COMPUTED.IsColor,COMPUTED.ApertureFNumber,IFD0.Make,IFD0.Model,IFD0.Orientation,IFD0.XResolution,IFD0.YResolution,IFD0.ResolutionUnit,IFD0.Software,IFD0.DateTime,IFD0.Exif_IFD_Pointer,IFD0.GPS_IFD_Pointer,EXIF.ExposureTime,EXIF.FNumber,EXIF.ExposureProgram,EXIF.ISOSpeedRatings,EXIF.ExifVersion,EXIF.DateTimeOriginal,EXIF.DateTimeDigitized,EXIF.ShutterSpeedValue,EXIF.ApertureValue,EXIF.ExposureBiasValue,EXIF.MaxApertureValue,EXIF.MeteringMode,EXIF.LightSource,EXIF.Flash,EXIF.FocalLength,EXIF.SubSecTimeOriginal,EXIF.SubSecTimeDigitized,EXIF.ColorSpace,EXIF.ExifImageWidth,EXIF.ExifImageLength,EXIF.SensingMethod,EXIF.CustomRendered,EXIF.ExposureMode,EXIF.WhiteBalance,EXIF.DigitalZoomRatio,EXIF.FocalLengthIn35mmFilm,EXIF.SceneCaptureType,EXIF.GainControl,EXIF.Contrast,EXIF.Saturation,EXIF.Sharpness,EXIF.SubjectDistanceRange,GPS.GPSLatitudeRef,GPS.GPSLatitude,GPS.GPSLongitudeRef,GPS.GPSLongitude,GPS.GPSAltitudeRef,GPS.GPSAltitude,GPS.GPSTimeStamp,GPS.GPSStatus,GPS.GPSMapDatum,GPS.GPSDateStamp","display_categories_geotagging":"0","categories_lng":"","categories_lat":"","categories_zoom":"2","categories_map_width":"","categories_map_height":"500","display_icon_geotagging":"0","display_category_geotagging":"0","category_map_width":"","category_map_height":"400","display_icon_vm":"0","pagination_thumbnail_creation":"0","clean_thumbnails":"0","enable_thumb_creation":"1","crop_thumbnail":"0","jpeg_quality":"85","enable_picasa_loading":"1","picasa_load_pagination":"20","enable_facebook_loading":"1","icon_format":"png","large_image_width":"2000","large_image_height":"1500","medium_image_width":"395","medium_image_height":"395","small_image_width":"50","small_image_height":"50","front_modal_box_width":"2000","front_modal_box_height":"2000","folder_permissions":"0755","jfile_thumbs":"1","alias_iconv":"0","enable_cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'plg_content_phocagallery', 'plugin', 'phocagallery', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_phocagallery","type":"plugin","creationDate":"05\\/04\\/2012","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"3.2.0","description":"PLG_CONTENT_PHOCAGALLERY_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_flexicontact_log`
--

CREATE TABLE IF NOT EXISTS `jos_flexicontact_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `status_main` varchar(255) NOT NULL DEFAULT '',
  `status_copy` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `browser_id` tinyint(4) NOT NULL DEFAULT '0',
  `browser_string` varchar(20) NOT NULL DEFAULT '',
  `list_choice` varchar(60) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `DATETIME` (`datetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_languages`
--

CREATE TABLE IF NOT EXISTS `jos_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `jos_languages`
--

INSERT INTO `jos_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `published`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', 1),
(2, 'ru-RU', 'Русский', 'Русский', 'ru', 'ru', '', '', '', 1),
(3, 'uk-UA', 'Українська', 'Українська', 'ua', 'ua', '', '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias` (`client_id`,`parent_id`,`alias`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=157 ;

--
-- Дамп данных таблицы `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 115, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 29, 34, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 30, 31, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 32, 33, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 35, 40, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 36, 37, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 38, 39, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 41, 46, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 42, 43, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 44, 45, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 55, 56, 0, '*', 1),
(17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 47, 48, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 49, 54, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 50, 51, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 52, 53, 0, '*', 1),
(101, 'mainmenu', 'Головна', 'home', '', 'home', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 1, '*', 0),
(102, 'mainmenu', 'Про нас', 'pro-nas', '', 'pro-nas', 'index.php?option=com_content&view=article&id=17', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(103, 'mainmenu', 'Книги', 'knigi', '', 'knigi', 'index.php?option=com_content&view=category&layout=blog&id=13', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"10","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(104, 'mainmenu', 'Готуються до друку', 'gotuyutsya-do-druku', '', 'gotuyutsya-do-druku', 'index.php?option=com_content&view=category&layout=blog&id=14', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"10","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(105, 'mainmenu', 'Картини', 'kartini', '', 'kartini', 'index.php?option=com_phocagallery&view=category&id=1', 'component', 1, 1, 1, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination_categories":"0","show_pagination_category":"1","show_pagination_limit_categories":"0","show_pagination_limit_category":"1","show_ordering_categories":"0","show_ordering_images":"1","display_cat_name_title":"1","display_cat_name_breadcrumbs":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"_pics","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(106, 'mainmenu', 'Відгуки', 'vidguki', '', 'vidguki', 'index.php?option=com_phocaguestbook&view=guestbook&id=1', 'component', 1, 1, 1, 10029, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination":"1","show_pagination_limit":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0),
(113, 'mainmenu', 'Мапа сайту', 'мапа-сайту', '', 'мапа-сайту', 'index.php?option=com_xmap&view=html&id=1', 'component', 1, 1, 1, 10013, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
(139, 'main', 'COM_EASYBOOKRELOADED_ABOUT', 'com_easybookreloaded_about', '', 'com_easybookreloaded/com_easybookreloaded_about', 'index.php?option=com_easybookreloaded&task=about', 'component', 0, 135, 2, 10028, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_easybookreloaded/images/easybook_info.png', 0, '', 78, 79, 0, '', 1),
(138, 'main', 'COM_EASYBOOKRELOADED_BADWORDFILTER', 'com_easybookreloaded_badwordfilter', '', 'com_easybookreloaded/com_easybookreloaded_badwordfilter', 'index.php?option=com_easybookreloaded&controller=badwords', 'component', 0, 135, 2, 10028, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_easybookreloaded/images/easybook_unhappy.png', 0, '', 76, 77, 0, '', 1),
(137, 'main', 'COM_EASYBOOKRELOADED_CONFIG', 'com_easybookreloaded_config', '', 'com_easybookreloaded/com_easybookreloaded_config', 'index.php?option=com_easybookreloaded&task=config', 'component', 0, 135, 2, 10028, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_easybookreloaded/images/easybook_config.png', 0, '', 74, 75, 0, '', 1),
(135, 'main', 'COM_EASYBOOKRELOADED', 'com_easybookreloaded', '', 'com_easybookreloaded', 'index.php?option=com_easybookreloaded', 'component', 0, 1, 1, 10028, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_easybookreloaded/images/easybook_ico.png', 0, '', 71, 80, 0, '', 1),
(136, 'main', 'COM_EASYBOOKRELOADED_MANAGE_ENTRIES', 'com_easybookreloaded_manage_entries', '', 'com_easybookreloaded/com_easybookreloaded_manage_entries', 'index.php?option=com_easybookreloaded', 'component', 0, 135, 2, 10028, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_easybookreloaded/images/easybook_edit.png', 0, '', 72, 73, 0, '', 1),
(112, 'main', 'COM_XMAP_TITLE', 'com_xmap_title', '', 'com_xmap_title', 'index.php?option=com_xmap', 'component', 0, 1, 1, 10013, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 57, 58, 0, '', 1),
(119, 'mainmenu', 'Замовлення', 'замовлення', '', 'замовлення', 'index.php?option=com_chronoforms&view=form', 'component', 1, 1, 1, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"formname":"order","event":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
(140, 'main', 'COM_PHOCAGUESTBOOK', 'com_phocaguestbook', '', 'com_phocaguestbook', 'index.php?option=com_phocaguestbook', 'component', 0, 1, 1, 10029, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocaguestbook/assets/images/icon-16-pgb-menu.png', 0, '', 81, 90, 0, '', 1),
(141, 'main', 'COM_PHOCAGUESTBOOK_CONTROLPANEL', 'com_phocaguestbook_controlpanel', '', 'com_phocaguestbook/com_phocaguestbook_controlpanel', 'index.php?option=com_phocaguestbook', 'component', 0, 140, 2, 10029, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocaguestbook/assets/images/icon-16-pgb-menu-cp.png', 0, '', 82, 83, 0, '', 1),
(142, 'main', 'COM_PHOCAGUESTBOOK_ITEMS', 'com_phocaguestbook_items', '', 'com_phocaguestbook/com_phocaguestbook_items', 'index.php?option=com_phocaguestbook&amp;view=phocaguestbooks', 'component', 0, 140, 2, 10029, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocaguestbook/assets/images/icon-16-pgb-menu-item.png', 0, '', 84, 85, 0, '', 1),
(143, 'main', 'COM_PHOCAGUESTBOOK_GUESTBOOKS', 'com_phocaguestbook_guestbooks', '', 'com_phocaguestbook/com_phocaguestbook_guestbooks', 'index.php?option=com_phocaguestbook&amp;view=phocaguestbookbs', 'component', 0, 140, 2, 10029, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocaguestbook/assets/images/icon-16-pgb-menu-guestbook.png', 0, '', 86, 87, 0, '', 1),
(144, 'main', 'COM_PHOCAGUESTBOOK_INFO', 'com_phocaguestbook_info', '', 'com_phocaguestbook/com_phocaguestbook_info', 'index.php?option=com_phocaguestbook&amp;view=phocaguestbookin', 'component', 0, 140, 2, 10029, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocaguestbook/assets/images/icon-16-pgb-menu-info.png', 0, '', 88, 89, 0, '', 1),
(145, 'main', 'COM_PHOCAGALLERY', 'com_phocagallery', '', 'com_phocagallery', 'index.php?option=com_phocagallery', 'component', 0, 1, 1, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu.png', 0, '', 91, 114, 0, '', 1),
(146, 'main', 'COM_PHOCAGALLERY_CONTROLPANEL', 'com_phocagallery_controlpanel', '', 'com_phocagallery/com_phocagallery_controlpanel', 'index.php?option=com_phocagallery', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-control-panel.png', 0, '', 92, 93, 0, '', 1),
(147, 'main', 'COM_PHOCAGALLERY_IMAGES', 'com_phocagallery_images', '', 'com_phocagallery/com_phocagallery_images', 'index.php?option=com_phocagallery&view=phocagalleryimgs', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-gal.png', 0, '', 94, 95, 0, '', 1),
(148, 'main', 'COM_PHOCAGALLERY_CATEGORIES', 'com_phocagallery_categories', '', 'com_phocagallery/com_phocagallery_categories', 'index.php?option=com_phocagallery&view=phocagallerycs', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-cat.png', 0, '', 96, 97, 0, '', 1),
(149, 'main', 'COM_PHOCAGALLERY_THEMES', 'com_phocagallery_themes', '', 'com_phocagallery/com_phocagallery_themes', 'index.php?option=com_phocagallery&view=phocagalleryt', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-theme.png', 0, '', 98, 99, 0, '', 1),
(150, 'main', 'COM_PHOCAGALLERY_CATEGORYRATING', 'com_phocagallery_categoryrating', '', 'com_phocagallery/com_phocagallery_categoryrating', 'index.php?option=com_phocagallery&view=phocagalleryra', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-vote.png', 0, '', 100, 101, 0, '', 1),
(128, 'main', 'COM_FOXCONTACT_MENU', 'com_foxcontact_menu', '', 'com_foxcontact_menu', 'index.php?option=com_foxcontact', 'component', 0, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_foxcontact/images/email-16.png', 0, '', 59, 60, 0, '', 1),
(129, 'mainmenu', 'Архів новин', 'архів-новин', '', 'архів-новин', 'index.php?option=com_content&view=archive', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"orderby_sec":"alpha","order_date":"created","display_num":"5","filter_field":"title","introtext_limit":"1000","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","link_titles":"1","show_intro":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(130, 'main', 'COM_CHRONOFORMS', 'com_chronoforms', '', 'com_chronoforms', 'index.php?option=com_chronoforms', 'component', 0, 1, 1, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_chronoforms/CF.png', 0, '', 61, 70, 0, '', 1),
(131, 'main', 'COM_CHRONOFORMS_FORMS_MANAGER', 'com_chronoforms_forms_manager', '', 'com_chronoforms/com_chronoforms_forms_manager', 'index.php?option=com_chronoforms', 'component', 0, 130, 2, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 62, 63, 0, '', 1),
(132, 'main', 'COM_CHRONOFORMS_WIZARD', 'com_chronoforms_wizard', '', 'com_chronoforms/com_chronoforms_wizard', 'index.php?option=com_chronoforms&task=form_wizard', 'component', 0, 130, 2, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 64, 65, 0, '', 1),
(133, 'main', 'COM_CHRONOFORMS_EASY_WIZARD', 'com_chronoforms_easy_wizard', '', 'com_chronoforms/com_chronoforms_easy_wizard', 'index.php?option=com_chronoforms&task=form_wizard&wizard_mode=easy', 'component', 0, 130, 2, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 66, 67, 0, '', 1),
(134, 'main', 'COM_CHRONOFORMS_VALIDATE', 'com_chronoforms_validate', '', 'com_chronoforms/com_chronoforms_validate', 'index.php?option=com_chronoforms&task=validatelicense', 'component', 0, 130, 2, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 68, 69, 0, '', 1),
(151, 'main', 'COM_PHOCAGALLERY_IMAGERATING', 'com_phocagallery_imagerating', '', 'com_phocagallery/com_phocagallery_imagerating', 'index.php?option=com_phocagallery&view=phocagalleryraimg', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-vote-img.png', 0, '', 102, 103, 0, '', 1),
(152, 'main', 'COM_PHOCAGALLERY_CATEGORYCOMMENTS', 'com_phocagallery_categorycomments', '', 'com_phocagallery/com_phocagallery_categorycomments', 'index.php?option=com_phocagallery&view=phocagallerycos', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-comment.png', 0, '', 104, 105, 0, '', 1),
(153, 'main', 'COM_PHOCAGALLERY_IMAGECOMMENTS', 'com_phocagallery_imagecomments', '', 'com_phocagallery/com_phocagallery_imagecomments', 'index.php?option=com_phocagallery&view=phocagallerycoimgs', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-comment-img.png', 0, '', 106, 107, 0, '', 1),
(154, 'main', 'COM_PHOCAGALLERY_USERS', 'com_phocagallery_users', '', 'com_phocagallery/com_phocagallery_users', 'index.php?option=com_phocagallery&view=phocagalleryusers', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-users.png', 0, '', 108, 109, 0, '', 1),
(155, 'main', 'COM_PHOCAGALLERY_FB', 'com_phocagallery_fb', '', 'com_phocagallery/com_phocagallery_fb', 'index.php?option=com_phocagallery&view=phocagalleryfbs', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-fb.png', 0, '', 110, 111, 0, '', 1),
(156, 'main', 'COM_PHOCAGALLERY_INFO', 'com_phocagallery_info', '', 'com_phocagallery/com_phocagallery_info', 'index.php?option=com_phocagallery&view=phocagalleryin', 'component', 0, 145, 2, 10030, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-info.png', 0, '', 112, 113, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Головне меню', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Дамп данных таблицы `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 2, 'header', 42, '2011-08-27 07:46:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(6, 'Unread Messages', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unread', 3, 1, '', 1, '*'),
(7, 'Online Users', '', '', 2, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_online', 3, 1, '', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(19, 'Лого', '', '<p><a href="http://apostrof.in.ua"><img src="images/logo.png" border="0" /></a></p>', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"_logo","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(22, 'Нові книги', '', '', 2, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_xpertscroller', 1, 1, '{"catid":["8"],"count":"3","ordering":"c_dsc","user_id":"0","show_featured":"","scroller_layout":"basic_h","module_width":"420","module_height":"210","col_amount":"1","image_position":"left","control_margin":"0","animation_style":"animation_h","animation_speed":"1000","repeat":"1","keyboard_navigation":"1","auto_play":"0","navigator":"0","interval":"1000","auto_pause":"1","article_title":"1","title_link":"0","item_image":"1","image_link":"0","browser_nav":"parent","intro_text":"1","intro_text_limit":"950","readmore":"0","image_resize":"1","image_width":"120","image_height":"170","layout":"_:default","moduleclass_sfx":"_news2","auto_module_id":"1","module_unique_id":"xs_1","load_jquery":"1","jquery_source":"local","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(23, 'Новини мистецького життя', '', '', 3, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_xpertscroller', 1, 1, '{"catid":["9"],"count":"3","ordering":"c_dsc","user_id":"0","show_featured":"","scroller_layout":"basic_h","module_width":"420","module_height":"225","col_amount":"1","image_position":"left","control_margin":"0","animation_style":"animation_h","animation_speed":"1000","repeat":"1","keyboard_navigation":"1","auto_play":"0","navigator":"1","interval":"1000","auto_pause":"1","article_title":"1","title_link":"0","item_image":"1","image_link":"0","browser_nav":"parent","intro_text":"1","intro_text_limit":"950","readmore":"0","image_resize":"1","image_width":"120","image_height":"170","layout":"_:default","moduleclass_sfx":"_news3","auto_module_id":"1","module_unique_id":"xs_1","load_jquery":"1","jquery_source":"local","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(24, 'Відгуки', '', '', 6, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_xpertscroller', 1, 1, '{"catid":["13"],"count":"3","ordering":"c_dsc","user_id":"0","show_featured":"","scroller_layout":"basic_h","module_width":"420","module_height":"225","col_amount":"1","image_position":"left","control_margin":"40px 10px","animation_style":"animation_h","animation_speed":"1000","repeat":"1","keyboard_navigation":"0","auto_play":"0","navigator":"1","interval":"1000","auto_pause":"1","article_title":"1","title_link":"0","item_image":"1","image_link":"0","browser_nav":"parent","intro_text":"1","intro_text_limit":"950","readmore":"0","image_resize":"1","image_width":"120","image_height":"170","layout":"_:default","moduleclass_sfx":"_news6","auto_module_id":"1","module_unique_id":"xs_1","load_jquery":"1","jquery_source":"local","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(25, 'Новини студії "Люкс Дизайн"', '', '', 4, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_xpertscroller', 1, 1, '{"catid":["10"],"count":"3","ordering":"c_dsc","user_id":"0","show_featured":"","scroller_layout":"basic_h","module_width":"420","module_height":"210","col_amount":"1","image_position":"left","control_margin":"40px 10px","animation_style":"animation_h","animation_speed":"1000","repeat":"1","keyboard_navigation":"0","auto_play":"0","navigator":"0","interval":"1000","auto_pause":"1","article_title":"1","title_link":"0","item_image":"1","image_link":"0","browser_nav":"parent","intro_text":"1","intro_text_limit":"950","readmore":"0","image_resize":"1","image_width":"120","image_height":"170","layout":"_:default","moduleclass_sfx":"_news4","auto_module_id":"1","module_unique_id":"xs_1","load_jquery":"1","jquery_source":"local","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(21, 'Новини видавництва', '', '', 1, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_xpertscroller', 1, 1, '{"catid":["7"],"count":"3","ordering":"c_dsc","user_id":"0","show_featured":"","scroller_layout":"basic_h","module_width":"420","module_height":"210","col_amount":"1","image_position":"left","control_margin":"0px 0px","animation_style":"animation_h","animation_speed":"1000","repeat":"1","keyboard_navigation":"0","auto_play":"0","navigator":"0","interval":"1000","auto_pause":"1","article_title":"1","title_link":"0","item_image":"1","image_link":"0","browser_nav":"parent","intro_text":"1","intro_text_limit":"950","readmore":"0","image_resize":"1","image_width":"120","image_height":"170","layout":"_:default","moduleclass_sfx":"_news1","auto_module_id":"1","module_unique_id":"xs_1","load_jquery":"1","jquery_source":"local","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(26, 'Картини', '', '', 1, 'top', 42, '2011-08-27 07:45:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_xpertscroller', 1, 1, '{"catid":["11"],"count":"3","ordering":"c_dsc","user_id":"0","show_featured":"","scroller_layout":"basic_h","module_width":"420","module_height":"210","col_amount":"1","image_position":"left","control_margin":"40px 10px","animation_style":"animation_h","animation_speed":"1000","repeat":"1","keyboard_navigation":"0","auto_play":"0","navigator":"0","interval":"1000","auto_pause":"1","article_title":"1","title_link":"0","item_image":"1","image_link":"0","browser_nav":"parent","intro_text":"1","intro_text_limit":"950","readmore":"0","image_resize":"1","image_width":"120","image_height":"170","layout":"_:default","moduleclass_sfx":"_news5","auto_module_id":"1","module_unique_id":"xs_1","load_jquery":"1","jquery_source":"local","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(27, 'Футер Меню', '', '', 1, 'footer', 42, '2011-08-27 07:46:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_fmenu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(28, 'Копірайт', '', '<p style="text-align: center;" lang="en-US"><span style="font-size: x-small;"><a href="http://lux-d.com.ua" target="_blank"><span style="font-size: x-small;">© </span>дизайн розроблено в Lux Design<span style="font-size: x-small;"><a href="http://lux-d.com.ua" target="_blank">, 2011</a></span> </a></span></p>\r\n<p style="text-align: center;"><span style="font-size: x-small;"><a href="http://studiosdl.com" target="_blank"><span style="font-size: x-small;">© </span>сайт створено в DL Studio<span style="font-size: x-small;"><a href="http://studiosdl.com" target="_blank">, 2011</a></span></a></span></p>', 2, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"_copy","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(32, 'sigplus', '', '', 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_sigplus', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(19, 0),
(21, 101),
(22, 101),
(23, 101),
(24, 101),
(25, 101),
(26, 101),
(27, 0),
(28, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocagallery`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Дамп данных таблицы `jos_phocagallery`
--

INSERT INTO `jos_phocagallery` (`id`, `catid`, `sid`, `title`, `alias`, `filename`, `description`, `date`, `hits`, `latitude`, `longitude`, `zoom`, `geotitle`, `userid`, `videocode`, `vmproductid`, `imgorigsize`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `params`, `metakey`, `metadesc`, `metadata`, `extlink1`, `extlink2`, `extid`, `exttype`, `extl`, `extm`, `exts`, `exto`, `extw`, `exth`, `language`) VALUES
(1, 1, 0, 'Берізки', 'berezki', 'berezki.jpg', '<p>БЕРІЗКИ. Полотно, олія. 40Х50 см. Ціна 1500 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Берізки&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 40, '0', '0', 0, '', 0, '', 0, 926804, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(2, 1, 0, 'Березовий гай', 'berezovaya-roscha', 'berezovaya roscha.jpg', '<p>БЕРЕЗОВИЙ ГАЙ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Березовий гай&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 35, '0', '0', 0, '', 0, '', 0, 574455, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(3, 1, 0, 'Дорога в осінь', 'doroga-v-osen', 'doroga v osen''.jpg', '<p>ДОРОГА В ОСІНЬ. Полотно, олія. 70Х90 см. Ціна 2 800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Дорога в осінь&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 34, '0', '0', 0, '', 0, '', 0, 648218, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(4, 1, 0, 'Фіолент', 'fiolent', 'Fiolent.jpg', '<p>ФІОЛЕНТ. Полотно, олія. 40Х50 см. Ціна 1500 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Фіолент&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 37, '0', '0', 0, '', 0, '', 0, 423501, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(5, 1, 0, 'Флокси й мушля', 'floksy-i-rakushka', 'Floksy i rakushka.jpg', '<p>Флокси й мушля. Картон, олія. 40Х30 см. Ціна 1 200 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Флокси й мушля&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 37, '0', '0', 0, '', 0, '', 0, 830872, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(6, 1, 0, 'Іриси', 'irisy', 'Irisy.JPG', '<p>ІРИСИ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Іриси&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 41, '0', '0', 0, '', 0, '', 0, 533591, 1, 1, 42, '2013-09-09 16:04:24', 6, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(7, 1, 0, 'Каміння і море', 'kamni', 'Kamni.jpg', '<p>КАМІННЯ І МОРЕ. Полотно, олія. 50Х60 см. Ціна 1500 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Каміння і море&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 28, '0', '0', 0, '', 0, '', 0, 473267, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(8, 1, 0, 'Карпати', 'karpaty', 'Karpaty.jpg', '<p>КАРПАТИ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Карпати&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 27, '0', '0', 0, '', 0, '', 0, 482262, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(9, 1, 0, 'Березневий день', 'martovskii-den', 'Martovskii den''.jpg', '<p>БЕРЕЗНЕВИЙ ДЕНЬ. Полотно, олія. 50Х60 см. Ціна 1500 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Березневий день&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 24, '0', '0', 0, '', 0, '', 0, 376802, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(10, 1, 0, 'Моє місто', 'moi-gorod', 'Moi gorod.jpg', '<p>МОЄ МІСТО. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Моє місто&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 33, '0', '0', 0, '', 0, '', 0, 358443, 1, 1, 0, '0000-00-00 00:00:00', 10, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(11, 1, 0, 'Над вічною гладінню', 'nad-vechnoi-gladyu', 'Nad vechnoi glad''yu.jpg', '<p>НАД ВІЧНОЮ ГЛАДІННЮ. Полотно, олія. 70Х90 см. Ціна 3000 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Над вічною гладінню&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 31, '0', '0', 0, '', 0, '', 0, 393067, 1, 1, 0, '0000-00-00 00:00:00', 11, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(12, 1, 0, 'Болото восені', 'osennee-boloto', 'Osennee boloto.jpg', '<p>БОЛОТО ВОСЕНИ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Болото восени&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 35, '0', '0', 0, '', 0, '', 0, 607299, 1, 1, 0, '0000-00-00 00:00:00', 12, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(13, 1, 0, 'Осінній став', 'osennii-prud', 'Osennii prud.jpg', '<p>ОСІННІЙ СТАВ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Осінній став&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 31, '0', '0', 0, '', 0, '', 0, 526588, 1, 1, 0, '0000-00-00 00:00:00', 13, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(14, 1, 0, 'Карелія', 'po-karelii', 'Po Karelii.jpg', '<p>КАРЕЛІЯ. Полотно, олія. 40Х50 см. Ціна 1200 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Карелія&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 34, '0', '0', 0, '', 0, '', 0, 269534, 1, 1, 0, '0000-00-00 00:00:00', 14, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(15, 1, 0, 'Прибій', 'priboi', 'Priboi.jpg', '<p>ПРИБІЙ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Прибій&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 31, '0', '0', 0, '', 0, '', 0, 409654, 1, 1, 0, '0000-00-00 00:00:00', 15, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(16, 1, 0, 'Простір', 'prostor', 'Prostor.jpg', '<p>ПРОСТІР. Полотно, олія. 70Х90 см. Ціна 3000 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Простір&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 34, '0', '0', 0, '', 0, '', 0, 400834, 1, 1, 42, '2013-09-09 08:17:09', 16, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(17, 1, 0, 'Рожевий вечір', 'rozovii-vecher', 'Rozovii vecher.jpg', '<p>РОЖЕВИЙ ВЕЧІР. Полотно, олія. 50Х60 см. Ціна 1500 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Рожевий вечір&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 38, '0', '0', 0, '', 0, '', 0, 330057, 1, 1, 0, '0000-00-00 00:00:00', 17, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(18, 1, 0, 'Рожевий ранок', 'rozovoe-utro', 'Rozovoe utro.jpg', '<p>РОЖЕВИЙ РАНОК. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Рожевий ранок&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 34, '0', '0', 0, '', 0, '', 0, 449894, 1, 1, 0, '0000-00-00 00:00:00', 18, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(19, 1, 0, 'Штиль', 'shtil', 'Shtil''.jpg', '<p>ШТИЛЬ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Штиль&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 29, '0', '0', 0, '', 0, '', 0, 545942, 1, 1, 0, '0000-00-00 00:00:00', 19, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(20, 1, 0, 'Бузковий світанок', 'sirenevii-rascvet', 'Sirenevii rascvet.jpg', '<p>Бузковий світанок. Картон, олія. 40Х50 см. Ціна 1 200 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Бузковий світанок&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 25, '0', '0', 0, '', 0, '', 0, 406062, 1, 1, 0, '0000-00-00 00:00:00', 20, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(21, 1, 0, 'Сутінки над Сумскою', 'sumerki', 'Sumerki.jpg', '<p>СУТІНКИ НАД СУМСЬКОЮ. Полотно, олія. 50Х60 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Сутінки над Сумською&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 35, '0', '0', 0, '', 0, '', 0, 432858, 1, 1, 0, '0000-00-00 00:00:00', 21, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(22, 1, 0, 'Тепла зима', 'teplaya-zima', 'Teplaya zima.jpg', '<p>ТЕПЛА ЗИМА. Полотно, олія. 70Х90 см. Ціна 3000 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Тепла зима&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 27, '0', '0', 0, '', 0, '', 0, 495102, 1, 1, 0, '0000-00-00 00:00:00', 22, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(23, 1, 0, 'Туманний ранок', 'tumannoe-utro', 'Tumannoe utro.jpg', '<p>ТУМАННИЙ РАНОК. Полотно, олія. 55Х75 см. Ціна 2000 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Туманний ранок&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 29, '0', '0', 0, '', 0, '', 0, 360792, 1, 1, 0, '0000-00-00 00:00:00', 23, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(24, 1, 0, 'Ранковий серпанок', 'utrennii-tuman', 'Utrennii tuman.jpg', '<p>РАНКОВИЙ СЕРПАНОК. Полотно, олія. 40Х50 см. Ціна 1300 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Ранковий серпанок&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 25, '0', '0', 0, '', 0, '', 0, 443511, 1, 1, 0, '0000-00-00 00:00:00', 24, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(25, 1, 0, 'Вечірнє море', 'vechermee-more', 'vechermee more.jpg', '<p>ВЕЧІРНЄ МОРЕ. Полотно, олія. 70Х90 см. Ціна 3000 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Вечірнє море&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 32, '0', '0', 0, '', 0, '', 0, 434895, 1, 1, 0, '0000-00-00 00:00:00', 25, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(26, 1, 0, 'Вечір на осколі', 'vecher-na-oskole', 'vecher na oskole.jpg', '<p>ВЕЧІР НА ОСКОЛІ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Вечір на Осколі&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 33, '0', '0', 0, '', 0, '', 0, 496978, 1, 1, 0, '0000-00-00 00:00:00', 26, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(27, 1, 0, 'Яхти', 'yahty', 'Yahty.jpg', '<p>ЯХТИ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Яхти&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 31, '0', '0', 0, '', 0, '', 0, 502661, 1, 1, 0, '0000-00-00 00:00:00', 27, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(28, 1, 0, 'Яхти. Вечір', 'yahtyvecher', 'Yahty.Vecher.jpg', '<p>ЯХТИ. ВЕЧІР. Полотно, олія. 70Х70 см. Ціна 2000 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Яхти. Вечір&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 34, '0', '0', 0, '', 0, '', 0, 325787, 1, 1, 0, '0000-00-00 00:00:00', 28, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(29, 1, 0, 'Захід сонця над Новим Світом', 'zahod-solnca-nad-novim-svetom', 'zahod solnca nad novim svetom.jpg', '<p>ЗАХІД СОНЦЯ НАД НОВИМ СВІТОМ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Захід сонця над Новим Світом&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 28, '0', '0', 0, '', 0, '', 0, 410685, 1, 1, 0, '0000-00-00 00:00:00', 29, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(30, 1, 0, 'Перлина', 'zhemchuzhina', 'zhemchuzhina.jpg', '<p>ПЕРЛИНА. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Перлина&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 34, '0', '0', 0, '', 0, '', 0, 379918, 1, 1, 0, '0000-00-00 00:00:00', 30, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(31, 1, 0, 'Берези взимку', 'zimnie-berezy', 'Zimnie berezy.jpg', '<p>БЕРЕЗИ ВЗИМКУ. Полотно, олія. 70Х50 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Берізки взимку&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 29, '0', '0', 0, '', 0, '', 0, 530685, 1, 1, 0, '0000-00-00 00:00:00', 31, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(32, 1, 0, 'Зимові карпати', 'zimnie-karpaty', 'Zimnie Karpaty.jpg', '<p>ЗИМОВІ КАРПАТИ. Полотно, олія. 50Х70 см. Ціна 1800 грн. - <a href="http://apostrof.in.ua/замовлення.html?paint=Зимові Карпати&author=Руслан Варламов">Замовити</a></p>', '2013-09-08 13:45:17', 32, '0', '0', 0, '', 0, '', 0, 551351, 1, 1, 0, '0000-00-00 00:00:00', 32, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocagallery_categories`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_phocagallery_categories`
--

INSERT INTO `jos_phocagallery_categories` (`id`, `parent_id`, `owner_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `date`, `published`, `approved`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `hits`, `accessuserid`, `uploaduserid`, `deleteuserid`, `userfolder`, `latitude`, `longitude`, `zoom`, `geotitle`, `extid`, `exta`, `extu`, `extauth`, `extfbuid`, `extfbcatid`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
(1, 0, 0, 'Картини Руслана Варламова', '', 'картини-руслана-варламова', '', '', '', '<p style="text-align: center;">У нас Ви можете <a href="замовлення.html">замовити</a> постери (репродукції з картин високої якості на полотні чи на папері)<br />відомих художників минулого, а також оригінали живопису <br />харківського художника <strong>Руслана Варламова</strong>. <br />Тут представлені деякі з його робіт.</p>', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, 0, 436, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocagallery_comments`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocagallery_fb_users`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_fb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocagallery_img_comments`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_img_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocagallery_img_votes`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_img_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocagallery_img_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocagallery_user`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocagallery_votes`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocagallery_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocaguestbook_books`
--

CREATE TABLE IF NOT EXISTS `jos_phocaguestbook_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `report` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_phocaguestbook_books`
--

INSERT INTO `jos_phocaguestbook_books` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `report`, `count`, `params`, `language`) VALUES
(1, 0, 'Guest Book', '', 'guest-book', '', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, 0, 0, '', '*');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_phocaguestbook_items`
--

CREATE TABLE IF NOT EXISTS `jos_phocaguestbook_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `homesite` varchar(50) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `jos_phocaguestbook_items`
--

INSERT INTO `jos_phocaguestbook_items` (`id`, `catid`, `sid`, `username`, `userid`, `email`, `homesite`, `ip`, `title`, `alias`, `content`, `date`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`) VALUES
(1, 1, 0, 'Лариса', 0, '', '', '188.230.122.182', 'Перевірка', 'perevirka', '<p>Перевіряю, чи працюють відгуки...</p>', '2012-11-28 08:04:39', 1, 0, '0000-00-00 00:00:00', 1, '', '*'),
(2, 1, 0, 'Олена', 0, '', '', '178.150.141.248', 'Дякую', 'dyakuyu', '<p>Дякую за співпрацю!</p>', '2013-02-11 18:41:47', 1, 0, '0000-00-00 00:00:00', 2, '', '*'),
(3, 1, 0, 'Кирпатовський Віталій', 0, '', '', '195.211.188.198', 'ГАРНИЙ САЙТ', 'garni-sat', '<p>Приятный сайт, простойю, удобный, нежорогие книги</p>', '2013-09-21 20:01:48', 1, 0, '0000-00-00 00:00:00', 3, '', '*'),
(4, 1, 0, 'Кирпатовський Віталій', 0, '', '', '195.211.188.198', 'Гарний сайт', 'garni-sat', '<p>Приятный сайт, простойю, удобный, нежорогие книги</p>', '2013-09-21 20:09:11', 1, 0, '0000-00-00 00:00:00', 4, '', '*'),
(5, 1, 0, 'Кирпатовськй Віталій', 0, '', '', '195.211.188.198', 'Гарний сайт - магазин', 'garni-sat-magazin', '<p>Приятный сайт, простой, удобный, недорогие книги</p>', '2013-09-21 20:12:38', 1, 0, '0000-00-00 00:00:00', 5, '', '*'),
(6, 1, 0, 'ігор журавель', 0, '', '', '77.122.39.74', 'відгук', 'vidguk', '<p>чудове видавництво! як шкода, що тільки про нього узнав! треба робити більше реклами! побажання дати посилання на особистий звязок з авторами та співробітниками! всього найкращого!</p>', '2013-10-26 19:45:17', 1, 0, '0000-00-00 00:00:00', 6, '', '*'),
(7, 1, 0, 'Кирпатовський Віталій', 0, '', '', '195.211.188.195', 'Одержання заказу', 'oderzhannya-zakazu', '<p><strong>Гречно дякую за швидке та точне виконаннь мого замовлення!!!</strong></p>\n<p><strong>Ще й охайна та красива упаковка.</strong></p>\n<p><strong>Дуже Вам вдячний!!! </strong></p>\n<p><strong>І надалі Вам професійної чіткості та вічливості у роботі Магазиу, Видавництва та клубу "Апостроф".</strong></p>\n<p><em>Віталій Кирпатовський</em></p>\n<p> </p>', '2013-10-31 19:27:25', 1, 0, '0000-00-00 00:00:00', 7, '', '*'),
(8, 1, 0, 'Столштейн Натан', 0, '', '', '2a02:810b:8500:290:1', 'Благодарность', 'blagodarnost', '<p>Сердечне спасибо Вам за столь быстрое исполнение моего заказа. Книга моего школьного товарища Кирпатовского В.М.  "Зирныци" (Извините -нет украинского шрифта) издана, на удивление, качественно, на хорошей бумаге и хорошей печатью. Желаю Вам успеха в вашей трдной и не всегда окупаемой работе. Столштейн.</p>', '2013-11-10 12:32:17', 1, 0, '0000-00-00 00:00:00', 8, '', '*');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_redirect_links`
--

CREATE TABLE IF NOT EXISTS `jos_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(150) NOT NULL,
  `new_url` varchar(150) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Дамп данных таблицы `jos_redirect_links`
--

INSERT INTO `jos_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/apostrof/administerator', '', '', '', 0, '2011-05-10 05:31:11', '0000-00-00 00:00:00'),
(2, 'http://www.apostrof.in.ua/undefined/', '', 'http://www.apostrof.in.ua/pro-nas.html', '', 0, '2011-06-03 09:25:39', '0000-00-00 00:00:00'),
(3, 'http://apostrof.in.ua/adminisrtator', '', '', '', 0, '2011-06-06 09:52:22', '0000-00-00 00:00:00'),
(4, 'http://www.apostrof.in.ua/adminisrtator', '', '', '', 0, '2011-06-06 09:52:50', '0000-00-00 00:00:00'),
(5, 'http://apostrof.in.ua/forum', '', '', '', 0, '2011-06-07 15:26:49', '0000-00-00 00:00:00'),
(6, 'http://apostrof.in.ua/forum/install', '', '', '', 0, '2011-06-07 15:27:27', '0000-00-00 00:00:00'),
(7, 'http://apostrof.in.ua/forum/install/index.php', '', '', '', 0, '2011-06-07 15:27:45', '0000-00-00 00:00:00'),
(8, 'http://www.apostrof.in.ua/images/book/', '', 'http://www.apostrof.in.ua/media/editors/tinymce/jscripts/tiny_mce/plugins/advimage/image.htm', '', 0, '2011-07-14 18:45:41', '0000-00-00 00:00:00'),
(9, 'http://apostrof.in.ua/admin', '', '', '', 0, '2011-07-15 12:00:45', '0000-00-00 00:00:00'),
(10, 'http://apostrof.in.ua/administrtator', '', '', '', 0, '2011-08-02 11:04:07', '0000-00-00 00:00:00'),
(11, 'http://apostrof.in.ua/akropolis/2011-10-05-10-50-48.html', '', 'http://apostrof.in.ua/akropolis/index.php', '', 0, '2011-10-05 11:48:00', '0000-00-00 00:00:00'),
(12, 'http://apostrof.in.ua/мапа-сайта.html', '', '', '', 0, '2012-03-27 01:48:20', '0000-00-00 00:00:00'),
(13, 'http://apostrof.in.ua/', '', '', '', 0, '2012-04-25 05:00:05', '0000-00-00 00:00:00'),
(14, 'http://apostrof.in.ua/http://forum.apostrof.in.ua//', '', 'http://apostrof.in.ua/', '', 0, '2012-09-15 09:28:25', '0000-00-00 00:00:00'),
(15, 'http://apostrof.in.ua/http://apostrof.in.ua//', '', 'http://apostrof.in.ua/', '', 0, '2012-09-25 17:58:04', '0000-00-00 00:00:00'),
(16, 'http://apostrof.in.ua/http:/apostrof.in.ua/', '', 'http://apostrof.in.ua/', '', 0, '2012-09-25 17:59:06', '0000-00-00 00:00:00'),
(17, 'http://apostrof.in.ua/index.php?option=com_formmaker&view=formmaker&id=''', '', '', '', 0, '2012-10-31 12:19:33', '0000-00-00 00:00:00'),
(18, 'http://apostrof.in.ua/forum/', '', '', '', 0, '2012-11-11 04:10:53', '0000-00-00 00:00:00'),
(19, 'http://apostrof.in.ua/forums/', '', '', '', 0, '2012-11-11 04:10:54', '0000-00-00 00:00:00'),
(20, 'http://apostrof.in.ua/foro/', '', '', '', 0, '2012-11-15 03:24:42', '0000-00-00 00:00:00'),
(21, 'http://apostrof.in.ua/a', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:44:07', '0000-00-00 00:00:00'),
(22, 'http://apostrof.in.ua/modules/mod_xpertscroller/interface/js/function(i){return', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:44:07', '0000-00-00 00:00:00'),
(23, 'http://apostrof.in.ua/modules/mod_xpertscroller/interface/js/ c ', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:44:07', '0000-00-00 00:00:00'),
(24, 'http://apostrof.in.ua/&quot;замовлення.html?book=Глиняні', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:42', '0000-00-00 00:00:00'),
(25, 'http://apostrof.in.ua/&quot;замовлення.html?book=СПІВАНА', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:42', '0000-00-00 00:00:00'),
(26, 'http://apostrof.in.ua/&quot;замовлення.html?book=Вибране&author=Микола', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:42', '0000-00-00 00:00:00'),
(27, 'http://apostrof.in.ua/&quot;замовлення.html?book=Краєзнавство&author=Л.', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:42', '0000-00-00 00:00:00'),
(28, 'http://apostrof.in.ua/&quot;замовлення.html?book=Податкова', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:42', '0000-00-00 00:00:00'),
(29, 'http://apostrof.in.ua/&quot;замовлення.html?book=Жевріє&author=Олександр', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:43', '0000-00-00 00:00:00'),
(30, 'http://apostrof.in.ua/&quot;замовлення.html?book=Кляті', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:43', '0000-00-00 00:00:00'),
(31, 'http://apostrof.in.ua/&quot;замовлення.html?book=Ходім', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:43', '0000-00-00 00:00:00'),
(32, 'http://apostrof.in.ua/&quot;замовлення.html?book=З', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:43', '0000-00-00 00:00:00'),
(33, 'http://apostrof.in.ua/&quot;замовлення.html?book=Паперовий', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:43', '0000-00-00 00:00:00'),
(34, 'http://apostrof.in.ua/&quot;images/cd_5', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:44', '0000-00-00 00:00:00'),
(35, 'http://apostrof.in.ua/&quot;images/cd_volovik', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:44', '0000-00-00 00:00:00'),
(36, 'http://apostrof.in.ua/&quot;images/krayeznavstvo', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:44', '0000-00-00 00:00:00'),
(37, 'http://apostrof.in.ua/&quot;images/podatkova', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:44', '0000-00-00 00:00:00'),
(38, 'http://apostrof.in.ua/&quot;images/zhevriye', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:44', '0000-00-00 00:00:00'),
(39, 'http://apostrof.in.ua/&quot;images/klyati_70-i', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:45', '0000-00-00 00:00:00'),
(40, 'http://apostrof.in.ua/&quot;images/hodim_tudy', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:45', '0000-00-00 00:00:00'),
(41, 'http://apostrof.in.ua/&quot;images/z', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:45', '0000-00-00 00:00:00'),
(42, 'http://apostrof.in.ua/&quot;images/korablyk', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:45', '0000-00-00 00:00:00'),
(43, 'http://apostrof.in.ua/&quot;images/kalend-a3_', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:56', '0000-00-00 00:00:00'),
(44, 'http://apostrof.in.ua/plugins/content/sigplus/engines/slimbox/js/ t ', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:56', '0000-00-00 00:00:00'),
(45, 'http://apostrof.in.ua/plugins/content/sigplus/engines/slimbox/js/t}return', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:57', '0000-00-00 00:00:00'),
(46, 'http://apostrof.in.ua/plugins/content/sigplus/engines/slimbox/js/f[o][0];if(p', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:57', '0000-00-00 00:00:00'),
(47, 'http://apostrof.in.ua/plugins/content/sigplus/engines/boxplus/slider/js/javascript:void(0)', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:57', '0000-00-00 00:00:00'),
(48, 'http://apostrof.in.ua/plugins/content/sigplus/engines/boxplus/caption/js/h;return', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:52:57', '0000-00-00 00:00:00'),
(49, 'http://apostrof.in.ua/media/editors/tinymce/jscripts/tiny_mce/javascript:;', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:53:00', '0000-00-00 00:00:00'),
(50, 'http://apostrof.in.ua/media/editors/tinymce/jscripts/tiny_mce/script', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:53:00', '0000-00-00 00:00:00'),
(51, 'http://apostrof.in.ua/media/editors/tinymce/jscripts/tiny_mce/function(r){return', '', 'http://apostrof.in.ua', '', 0, '2012-11-27 23:53:00', '0000-00-00 00:00:00'),
(52, 'http://apostrof.in.ua/мапа-сай', '', '', '', 0, '2012-12-01 17:24:53', '0000-00-00 00:00:00'),
(53, 'http://apostrof.in.ua/user/register', '', 'http://apostrof.in.ua/', '', 0, '2012-12-14 18:58:37', '0000-00-00 00:00:00'),
(54, 'http://apostrof.in.ua/signup/', '', 'http://apostrof.in.ua/', '', 0, '2012-12-14 18:58:37', '0000-00-00 00:00:00'),
(55, 'http://apostrof.in.ua/blogs/load/recent', '', 'http://apostrof.in.ua/', '', 0, '2012-12-14 18:58:41', '0000-00-00 00:00:00'),
(56, 'http://apostrof.in.ua/signup', '', 'http://apostrof.in.ua/', '', 0, '2012-12-14 18:58:43', '0000-00-00 00:00:00'),
(57, 'http://apostrof.in.ua/YaBB.cgi/', '', '', '', 0, '2012-12-14 18:58:47', '0000-00-00 00:00:00'),
(58, 'http://apostrof.in.ua/YaBB.pl/', '', '', '', 0, '2012-12-14 18:58:48', '0000-00-00 00:00:00'),
(59, 'http://apostrof.in.ua/member/register', '', 'http://apostrof.in.ua/', '', 0, '2012-12-14 18:58:48', '0000-00-00 00:00:00'),
(60, 'http://apostrof.in.ua/index.php/forums/member/register', '', 'http://apostrof.in.ua/', '', 0, '2012-12-14 18:58:49', '0000-00-00 00:00:00'),
(61, 'http://apostrof.in.ua/forum/member/register', '', 'http://apostrof.in.ua/', '', 0, '2012-12-14 18:58:49', '0000-00-00 00:00:00'),
(62, 'http://apostrof.in.ua/register/', '', 'http://apostrof.in.ua/', '', 0, '2012-12-14 18:58:50', '0000-00-00 00:00:00'),
(63, 'http://apostrof.in.ua/Ð¼Ð°Ð¿Ð°-ÑÐ°Ð¹Ñ‚Ñƒ.html', '', '', '', 0, '2012-12-15 04:34:16', '0000-00-00 00:00:00'),
(64, 'http://apostrof.in.ua/а', '', '', '', 0, '2012-12-18 20:50:54', '0000-00-00 00:00:00'),
(65, 'http://apostrof.in.ua/phpbb2', '', 'apostrof.in.ua/phpbb2', '', 0, '2013-01-13 14:46:32', '0000-00-00 00:00:00'),
(66, 'http://apostrof.in.ua/phpbb2index.php', '', 'apostrof.in.ua/phpbb2index.php', '', 0, '2013-01-13 14:46:32', '0000-00-00 00:00:00'),
(67, 'http://apostrof.in.ua/замовленн', '', '', '', 0, '2013-01-15 12:06:42', '0000-00-00 00:00:00'),
(68, 'http://apostrof.in.ua/мапа-', '', '', '', 0, '2013-01-15 12:06:42', '0000-00-00 00:00:00'),
(69, 'http://apostrof.in.ua/Р·Р°РјРѕРІР»РµРЅРЅСЏ.html', '', '', '', 0, '2013-01-15 23:54:21', '0000-00-00 00:00:00'),
(70, 'http://apostrof.in.ua/sign_up.html', '', 'http://apostrof.in.ua/', '', 0, '2013-03-09 09:55:38', '0000-00-00 00:00:00'),
(71, 'http://apostrof.in.ua/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&version=1576&cid=20', '', '', '', 0, '2013-05-01 13:45:11', '0000-00-00 00:00:00'),
(72, 'http://apostrof.in.ua/forum/styles/RedBlue/template/overall_footer.html', '', 'http://saekip.ftp.ukraine.com.ua/index.php', '', 0, '2013-06-09 14:30:51', '0000-00-00 00:00:00'),
(73, 'http://apostrof.in.ua/.svn/entries', '', '', '', 0, '2013-06-29 10:54:44', '0000-00-00 00:00:00'),
(74, 'http://www.apostrof.in.ua/edit', '', 'http://www.apostrof.in.ua/', '', 0, '2013-07-26 13:51:32', '0000-00-00 00:00:00'),
(75, 'http://localhost/am1/administrator', '', '', '', 0, '2013-08-31 08:26:00', '0000-00-00 00:00:00'),
(76, 'http://apostrof.in.ua/мапа-ѥайту.html', '', '', '', 0, '2013-09-02 07:00:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_schemas`
--

CREATE TABLE IF NOT EXISTS `jos_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_schemas`
--

INSERT INTO `jos_schemas` (`extension_id`, `version_id`) VALUES
(10028, '3.0.4.1');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` varchar(20480) DEFAULT NULL,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_session`
--

INSERT INTO `jos_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('f7b4949e0436c070814bfef73edd9a45', 0, 1, '1387471918', NULL, 0, '', ''),
('tla3jpivfo20koujgrc3jo0l35', 0, 1, '1387472470', NULL, 0, '', ''),
('r0drfoca4q5fqmkm1p2gb2uu82', 0, 1, '1387472415', NULL, 0, '', ''),
('04p6bog66ab119k7145skag4n3', 0, 1, '1387471939', NULL, 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_template_styles`
--

CREATE TABLE IF NOT EXISTS `jos_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `jos_template_styles`
--

INSERT INTO `jos_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(7, 'apostrof', 0, '1', 'apostrof - Default', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_updates`
--

CREATE TABLE IF NOT EXISTS `jos_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_update_categories`
--

CREATE TABLE IF NOT EXISTS `jos_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_update_sites`
--

CREATE TABLE IF NOT EXISTS `jos_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `jos_update_sites`
--

INSERT INTO `jos_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1),
(3, 'Ukrainian language (uk-UA)', 'collection', 'http://www.joomla-ua.org/update/lang/list.xml', 1),
(4, 'mavikthumbnails', 'extension', 'http://www.mavik.com.ua/download/mavikthumbnails-update.xml', 1),
(6, 'Foxcontact update site', 'extension', 'http://www.fox.ra.it/phocadownload/com_foxcontact.xml', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `jos_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `jos_update_sites_extensions`
--

INSERT INTO `jos_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 10005),
(3, 10006),
(4, 10010),
(6, 10023);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_usergroups`
--

CREATE TABLE IF NOT EXISTS `jos_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `jos_usergroups`
--

INSERT INTO `jos_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Дамп данных таблицы `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(42, 'Super User', 'admin', 'info@apostrof.in.ua', '8d5cdb3eaca3805d754e4b95b3df35ae:fY8ZVcgTPbo6xovcYAcdEwZutfQhDBjL', 'deprecated', 0, 1, '2011-04-26 14:59:07', '2013-12-17 12:40:16', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_user_profiles`
--

CREATE TABLE IF NOT EXISTS `jos_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `jos_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `jos_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_user_usergroup_map`
--

INSERT INTO `jos_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_viewlevels`
--

CREATE TABLE IF NOT EXISTS `jos_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `jos_viewlevels`
--

INSERT INTO `jos_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_xmap_items`
--

CREATE TABLE IF NOT EXISTS `jos_xmap_items` (
  `uid` varchar(100) NOT NULL,
  `itemid` int(11) NOT NULL,
  `view` varchar(10) NOT NULL,
  `sitemap_id` int(11) NOT NULL,
  `properties` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`uid`,`itemid`,`view`,`sitemap_id`),
  KEY `uid` (`uid`,`itemid`),
  KEY `view` (`view`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_xmap_sitemap`
--

CREATE TABLE IF NOT EXISTS `jos_xmap_sitemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `introtext` text,
  `metadesc` text,
  `metakey` text,
  `attribs` text,
  `selections` text,
  `excluded_items` text,
  `is_default` int(1) DEFAULT '0',
  `state` int(2) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count_xml` int(11) DEFAULT NULL,
  `count_html` int(11) DEFAULT NULL,
  `views_xml` int(11) DEFAULT NULL,
  `views_html` int(11) DEFAULT NULL,
  `lastvisit_xml` int(11) DEFAULT NULL,
  `lastvisit_html` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_xmap_sitemap`
--

INSERT INTO `jos_xmap_sitemap` (`id`, `title`, `alias`, `introtext`, `metadesc`, `metakey`, `attribs`, `selections`, `excluded_items`, `is_default`, `state`, `access`, `created`, `count_xml`, `count_html`, `views_xml`, `views_html`, `lastvisit_xml`, `lastvisit_html`) VALUES
(1, 'Мапа сайта', 'mapa-sata', '', NULL, NULL, '{"showintro":"0","show_menutitle":"0","classname":"","columns":"","exlinks":"img_blue.gif","compress_xml":"1"}', '{"mainmenu":{"priority":"0.5","changefreq":"weekly","ordering":0}}', NULL, 1, 1, 1, '2011-05-10 06:27:15', 12, 27, 1, 299, 1305019666, 1387211569);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

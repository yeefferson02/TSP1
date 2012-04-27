-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2012 at 07:12 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ragnarok`
--
CREATE DATABASE `ragnarok` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ragnarok`;

-- --------------------------------------------------------

--
-- Table structure for table `atcommandlog`
--

CREATE TABLE IF NOT EXISTS `atcommandlog` (
  `atcommand_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `atcommand_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  `command` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`atcommand_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE IF NOT EXISTS `auction` (
  `auction_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) unsigned NOT NULL DEFAULT '0',
  `seller_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_id` int(11) unsigned NOT NULL DEFAULT '0',
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `price` int(11) unsigned NOT NULL DEFAULT '0',
  `buynow` int(11) unsigned NOT NULL DEFAULT '0',
  `hours` smallint(6) NOT NULL DEFAULT '0',
  `timestamp` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `item_name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`auction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `branchlog`
--

CREATE TABLE IF NOT EXISTS `branchlog` (
  `branch_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `branch_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`branch_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cart_inventory`
--

CREATE TABLE IF NOT EXISTS `cart_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `nameid` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `char`
--

CREATE TABLE IF NOT EXISTS `char` (
  `char_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_num` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `class` smallint(6) unsigned NOT NULL DEFAULT '0',
  `base_level` smallint(6) unsigned NOT NULL DEFAULT '1',
  `job_level` smallint(6) unsigned NOT NULL DEFAULT '1',
  `base_exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `job_exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `zeny` int(11) unsigned NOT NULL DEFAULT '0',
  `str` smallint(4) unsigned NOT NULL DEFAULT '0',
  `agi` smallint(4) unsigned NOT NULL DEFAULT '0',
  `vit` smallint(4) unsigned NOT NULL DEFAULT '0',
  `int` smallint(4) unsigned NOT NULL DEFAULT '0',
  `dex` smallint(4) unsigned NOT NULL DEFAULT '0',
  `luk` smallint(4) unsigned NOT NULL DEFAULT '0',
  `max_hp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `max_sp` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `sp` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `status_point` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_point` int(11) unsigned NOT NULL DEFAULT '0',
  `option` int(11) NOT NULL DEFAULT '0',
  `karma` tinyint(3) NOT NULL DEFAULT '0',
  `manner` smallint(6) NOT NULL DEFAULT '0',
  `party_id` int(11) unsigned NOT NULL DEFAULT '0',
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pet_id` int(11) unsigned NOT NULL DEFAULT '0',
  `homun_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hair_color` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clothes_color` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weapon` smallint(6) unsigned NOT NULL DEFAULT '0',
  `shield` smallint(6) unsigned NOT NULL DEFAULT '0',
  `head_top` smallint(6) unsigned NOT NULL DEFAULT '0',
  `head_mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `head_bottom` smallint(6) unsigned NOT NULL DEFAULT '0',
  `robe` smallint(6) unsigned NOT NULL DEFAULT '0',
  `last_map` varchar(11) NOT NULL DEFAULT '',
  `last_x` smallint(4) unsigned NOT NULL DEFAULT '53',
  `last_y` smallint(4) unsigned NOT NULL DEFAULT '111',
  `save_map` varchar(11) NOT NULL DEFAULT '',
  `save_x` smallint(4) unsigned NOT NULL DEFAULT '53',
  `save_y` smallint(4) unsigned NOT NULL DEFAULT '111',
  `partner_id` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(2) NOT NULL DEFAULT '0',
  `father` int(11) unsigned NOT NULL DEFAULT '0',
  `mother` int(11) unsigned NOT NULL DEFAULT '0',
  `child` int(11) unsigned NOT NULL DEFAULT '0',
  `fame` int(11) unsigned NOT NULL DEFAULT '0',
  `rename` smallint(3) unsigned NOT NULL DEFAULT '0',
  `delete_date` int(11) unsigned NOT NULL DEFAULT '0',
  `elemental_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`),
  KEY `account_id` (`account_id`),
  KEY `party_id` (`party_id`),
  KEY `guild_id` (`guild_id`),
  KEY `name` (`name`),
  KEY `online` (`online`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `charlog`
--

CREATE TABLE IF NOT EXISTS `charlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `char_msg` varchar(255) NOT NULL DEFAULT 'char select',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_num` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(23) NOT NULL DEFAULT '',
  `str` int(11) unsigned NOT NULL DEFAULT '0',
  `agi` int(11) unsigned NOT NULL DEFAULT '0',
  `vit` int(11) unsigned NOT NULL DEFAULT '0',
  `int` int(11) unsigned NOT NULL DEFAULT '0',
  `dex` int(11) unsigned NOT NULL DEFAULT '0',
  `luk` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(4) NOT NULL DEFAULT '0',
  `hair_color` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chatlog`
--

CREATE TABLE IF NOT EXISTS `chatlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('O','W','P','G','M') NOT NULL DEFAULT 'O',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `src_charid` int(11) NOT NULL DEFAULT '0',
  `src_accountid` int(11) NOT NULL DEFAULT '0',
  `src_map` varchar(11) NOT NULL DEFAULT '',
  `src_map_x` smallint(4) NOT NULL DEFAULT '0',
  `src_map_y` smallint(4) NOT NULL DEFAULT '0',
  `dst_charname` varchar(25) NOT NULL DEFAULT '',
  `message` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `src_accountid` (`src_accountid`),
  KEY `src_charid` (`src_charid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `elemental`
--

CREATE TABLE IF NOT EXISTS `elemental` (
  `ele_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `mode` int(11) unsigned NOT NULL DEFAULT '1',
  `hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `max_hp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `max_sp` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `str` smallint(4) unsigned NOT NULL DEFAULT '0',
  `agi` smallint(4) unsigned NOT NULL DEFAULT '0',
  `vit` smallint(4) unsigned NOT NULL DEFAULT '0',
  `int` smallint(4) unsigned NOT NULL DEFAULT '0',
  `dex` smallint(4) unsigned NOT NULL DEFAULT '0',
  `luk` smallint(4) unsigned NOT NULL DEFAULT '0',
  `life_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ele_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `friend_account` int(11) NOT NULL DEFAULT '0',
  `friend_id` int(11) NOT NULL DEFAULT '0',
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `global_reg_value`
--

CREATE TABLE IF NOT EXISTS `global_reg_value` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `str` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '3',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`str`,`account_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `global_reg_value`
--

INSERT INTO `global_reg_value` (`char_id`, `str`, `value`, `type`, `account_id`) VALUES
(0, '#REWARDPOINTS', '920', 2, 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `gm_site_accounts`
--

CREATE TABLE IF NOT EXISTS `gm_site_accounts` (
  `gm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'index only',
  `gm_account_id` int(11) NOT NULL,
  `gm_user_id` varchar(50) NOT NULL,
  `gm_pass_id` varchar(50) NOT NULL,
  `gm_verification_code` varchar(50) NOT NULL,
  PRIMARY KEY (`gm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `guild`
--

CREATE TABLE IF NOT EXISTS `guild` (
  `guild_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `master` varchar(24) NOT NULL DEFAULT '',
  `guild_lv` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `connect_member` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `max_member` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `average_lv` smallint(6) unsigned NOT NULL DEFAULT '1',
  `exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `next_exp` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_point` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `mes1` varchar(60) NOT NULL DEFAULT '',
  `mes2` varchar(120) NOT NULL DEFAULT '',
  `emblem_len` int(11) unsigned NOT NULL DEFAULT '0',
  `emblem_id` int(11) unsigned NOT NULL DEFAULT '0',
  `emblem_data` blob,
  PRIMARY KEY (`guild_id`,`char_id`),
  UNIQUE KEY `guild_id` (`guild_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `guild_alliance`
--

CREATE TABLE IF NOT EXISTS `guild_alliance` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `opposition` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`alliance_id`),
  KEY `alliance_id` (`alliance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_castle`
--

CREATE TABLE IF NOT EXISTS `guild_castle` (
  `castle_id` int(11) unsigned NOT NULL DEFAULT '0',
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `economy` int(11) unsigned NOT NULL DEFAULT '0',
  `defense` int(11) unsigned NOT NULL DEFAULT '0',
  `triggerE` int(11) unsigned NOT NULL DEFAULT '0',
  `triggerD` int(11) unsigned NOT NULL DEFAULT '0',
  `nextTime` int(11) unsigned NOT NULL DEFAULT '0',
  `payTime` int(11) unsigned NOT NULL DEFAULT '0',
  `createTime` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleC` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG0` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG1` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG2` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG3` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG4` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG5` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG6` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG7` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`castle_id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_expulsion`
--

CREATE TABLE IF NOT EXISTS `guild_expulsion` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mes` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_member`
--

CREATE TABLE IF NOT EXISTS `guild_member` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `hair_color` smallint(6) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `class` smallint(6) unsigned NOT NULL DEFAULT '0',
  `lv` smallint(6) unsigned NOT NULL DEFAULT '0',
  `exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `exp_payper` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`char_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_position`
--

CREATE TABLE IF NOT EXISTS `guild_position` (
  `guild_id` int(9) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mode` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `exp_mode` tinyint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`position`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_skill`
--

CREATE TABLE IF NOT EXISTS `guild_skill` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_storage`
--

CREATE TABLE IF NOT EXISTS `guild_storage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `homunculus`
--

CREATE TABLE IF NOT EXISTS `homunculus` (
  `homun_id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `level` smallint(4) NOT NULL DEFAULT '0',
  `exp` int(12) NOT NULL DEFAULT '0',
  `intimacy` int(12) NOT NULL DEFAULT '0',
  `hunger` smallint(4) NOT NULL DEFAULT '0',
  `str` smallint(4) unsigned NOT NULL DEFAULT '0',
  `agi` smallint(4) unsigned NOT NULL DEFAULT '0',
  `vit` smallint(4) unsigned NOT NULL DEFAULT '0',
  `int` smallint(4) unsigned NOT NULL DEFAULT '0',
  `dex` smallint(4) unsigned NOT NULL DEFAULT '0',
  `luk` smallint(4) unsigned NOT NULL DEFAULT '0',
  `hp` int(12) NOT NULL DEFAULT '1',
  `max_hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `max_sp` int(12) NOT NULL DEFAULT '1',
  `skill_point` smallint(4) unsigned NOT NULL DEFAULT '0',
  `alive` tinyint(2) NOT NULL DEFAULT '1',
  `rename_flag` tinyint(2) NOT NULL DEFAULT '0',
  `vaporize` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`homun_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hotkey`
--

CREATE TABLE IF NOT EXISTS `hotkey` (
  `char_id` int(11) NOT NULL,
  `hotkey` tinyint(2) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `itemskill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_lvl` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`hotkey`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `interlog`
--

CREATE TABLE IF NOT EXISTS `interlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `char_id`, `nameid`, `amount`, `equip`, `identify`, `refine`, `attribute`, `card0`, `card1`, `card2`, `card3`, `expire_time`) VALUES
(1, 150000, 1201, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(2, 150000, 2301, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ipbanlist`
--

CREATE TABLE IF NOT EXISTS `ipbanlist` (
  `list` varchar(255) NOT NULL DEFAULT '',
  `btime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` varchar(255) NOT NULL DEFAULT '',
  KEY `list` (`list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `itemshoppe`
--

CREATE TABLE IF NOT EXISTS `itemshoppe` (
  `itemshoppe_id` int(11) NOT NULL AUTO_INCREMENT,
  `itemshoppe_item_id` int(11) NOT NULL DEFAULT '0' COMMENT 'item ID sa ragnarok server',
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '100',
  `price` int(11) NOT NULL DEFAULT '15',
  `shoppe` varchar(255) NOT NULL DEFAULT 'item',
  `category` varchar(255) NOT NULL DEFAULT 'headgears',
  `sale` int(11) NOT NULL DEFAULT '0' COMMENT 'mahibaw.an kung on sale or wala.. 1 = sale, 0= wala',
  `image` longtext,
  PRIMARY KEY (`itemshoppe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `itemshoppe`
--

INSERT INTO `itemshoppe` (`itemshoppe_id`, `itemshoppe_item_id`, `name`, `description`, `stock`, `price`, `shoppe`, `category`, `sale`, `image`) VALUES
(1, 608, 'Yggdrasil Seed', 'Seed from the Yggdrasil tree which holds our world together. It has a weird, energizing pungence.\r\nRestores one half of Maximum HP and SP.', 39, 10, 'reward', 'consumables', 0, NULL),
(2, 678, 'Poison Bottle', 'A skeleton shaped bottle which contains deadly poison.', 98, 5, 'reward', 'consumables', 0, NULL),
(3, 7136, 'Acid Bottle', 'A bottle holding a highly corrosive acid.', 70, 1, 'reward', 'etc', 0, NULL),
(4, 7135, 'Bottle Grenade', 'A bottle containing a flammable liquid.', 100, 1, 'reward', 'etc', 0, NULL),
(5, 7138, 'Marine Sphere Bottle', 'A bottle containing a dormant Marine Sphere.', 100, 3, 'reward', 'etc', 0, NULL),
(6, 7137, 'Plant Bottle', 'A bottle containing a dormant plant.', 100, 3, 'reward', 'etc', 0, NULL),
(7, 7139, 'Glistening Coat', 'A bottle which contains shining liquid.\r\n', 100, 5, 'reward', 'etc', 0, NULL),
(8, 990, 'Red Blood', 'A vivid red ore that glows from inside with an orange yellow light. Possesses the Fire Property and can form the enchanted stone, Flame Heart, when refined.\r\n', 99, 3, 'reward', 'etc', 0, NULL),
(9, 991, 'Crystal Blue', 'A sky colored ore that glows with the light of the deep ocean depths. Possesses the Water Property and forms the enchanted stone, Mystic Frozen, when refined.\r\n', 100, 3, 'reward', 'etc', 0, NULL),
(10, 992, 'Wind of Verdure', 'A lemon colored ore that contains a pale, greenish light. Possesses the Wind Property and forms the enchanted stone, Rough Wind, when refined.\r\n', 100, 3, 'reward', 'etc', 0, NULL),
(11, 993, 'Green Live', 'A blue-green ore imbued with a faint, mesmerizing light. Possesses the Earth Property and forms the enchanted stone, Great Nature, when refined.\r\n', 100, 3, 'reward', 'etc', 0, NULL),
(12, 505, 'Blue Potion', 'A potion made from ground Blue Herbs that restores about 60 SP.\r\n', 0, 1, 'reward', 'consumables', 0, NULL),
(13, 985, 'Elunium', 'A very light, non-toxic metal used for refining and toughening Armor.\r\n', 99, 3, 'reward', 'etc', 0, NULL),
(14, 984, 'Oridecon', 'Pure Oridecon metal. Widely known as the Blessed Metal, it can increase the damage of weapons once welded to them.\r\n', 100, 3, 'reward', 'etc', 0, NULL),
(15, 604, 'Dead Branch', 'A twig which contains the mysterious power of eternity. It can summon a living creature.\r\n', 48, 5, 'reward', 'consumables', 0, NULL),
(16, 12012, 'Crystal Arrow Quiver', 'A quiver which contains 500 Crystal Arrows.\r\n', 88, 7, 'reward', 'ammunition', 0, NULL),
(17, 12014, 'Immateral Arrow Quiver', 'A quiver which contains 500 Immaterial Arrows.\r\n', 100, 7, 'reward', 'ammunition', 0, NULL),
(18, 12013, 'Shadow Arrow Quiver', 'A quiver which contains 500 Shadow Arrows.\r\n', 100, 7, 'reward', 'ammunition', 0, NULL),
(19, 12010, 'Wind Arrow Quiver', 'A quiver which contains 500 Wind Arrows.\r\n', 100, 7, 'reward', 'ammunition', 0, NULL),
(20, 12009, 'Silver Arrow Quiver', 'A quiver which contains 500 Silver Arrows.\r\n', 90, 7, 'reward', 'ammunition', 0, NULL),
(21, 12183, 'Holy Arrow Quiver', 'A quiver which contains 500 Holy Arrows.\r\n', 100, 7, 'reward', 'ammunition', 0, NULL),
(22, 5137, 'Alice Doll[1]', 'A doll made to resemble Alice.\r\nIt feels like it''s saying "May the force be with you, master!", "Go get em'' tiger!" on the top of your head.\r\nIncrease damage on DemiHuman monster by 10%.\r\nInflict the Sleep status on yourself by a low chance.\r\nSTR + 1\r\nImpossible to refine this item.', 49, 15, 'item', 'headgears', 0, NULL),
(23, 5389, 'Angel Spirit', 'A golden mask rumored to be worn by some ancient Goddess.\r\nHIT + 15, STR + 2', 99, 15, 'item', 'headgears', 0, NULL),
(24, 5490, 'Anubis Helm', 'This ceremonial headdress holds the likeness of Anubis, god of the underworld. \r\nIt is rumored that it empowers the wearer against powerful divine beings.\r\nReduce damage from MVPs by 10%.\r\nIncrease effectiveness of healing and healing items by 10%.', 47, 15, 'item', 'headgears', 0, NULL),
(25, 5512, 'Aquarius Diadem', 'This diadem honors Aquarius, the 11th astrological sign in the zodiac calendar.\r\nSTR + 2, FLEE + 10, Increases resistance to Wind status by 5%.\r\n[Refine Rate 7~10]\r\nDEF + 1, ATK + 15.', 99, 15, 'item', 'headgears', 0, NULL),
(26, 5283, 'Chick Hat', 'A hat with cute little chick on it. It''s hopping action is so cute.\r\nAllows usage Level 2 Double Attack, and if you already know higher than Level 2 Double Attack, then the appropriate level will be used instead.\r\nReduce damage from DemiHuman monster by 3%.\r\nLUK + 2, Maximum HP/SP + 50\r\nImpossible to refine this item.', 100, 15, 'item', 'headgears', 0, NULL),
(27, 5379, 'Tam [1]', 'A large knitted hat that can be used to conceal long hair.\r\nMagic attack increases with each refine level.', 100, 15, 'item', 'headgears', 0, NULL),
(28, 5282, 'Europe Baseball Cap[1]', 'A cap worn to keep the sun from your eyes and focus your sight.', 100, 15, 'item', 'headgears', 0, NULL),
(29, 5382, 'Bell Ribbon[1]', 'A cute ribbon with small bells attached.\r\nEnables use of Level 1 Angelus. VIT + 1.', 100, 15, 'item', 'headgears', 0, NULL),
(31, 5102, 'Blank Eyes', 'A special item, bundled with the Ragnarok Battle Package, that makes its wearer look absent-minded.', 100, 15, 'item', 'headgears', 0, NULL),
(32, 5506, 'Blue Night Cap[1]', 'Increases damage by 5%. MATK + 5%.', 100, 15, 'item', 'headgears', 0, NULL),
(33, 5800, 'Blush of Groom', 'A blushing impression of a bridegroom.\r\nReduces damage from DemiHuman monster by 3%.', 100, 15, 'item', 'headgears', 0, NULL),
(34, 5378, 'Bunny Top Hat', 'An energetic Bunny Band perfect for a magic show.\r\nAGI + 3, Add chance of auto casting Level 5 Increase Agility when attacking.', 100, 15, 'item', 'headgears', 0, NULL),
(35, 5142, 'Crescent Helm', 'A gorgeous and strong helm of an east country general.\r\nVIT + 1\r\nReduces damage from DemiHuman monster by 5%.', 100, 15, 'item', 'headgears', 0, NULL),
(36, 5455, 'Decorative Geographer[1]', 'A special decoration geographer designed to rest nicely on your head.\r\nINT + 1', 100, 15, 'item', 'headgears', 0, NULL),
(37, 5292, 'Dragon Skull	', 'Helmet made from Dragon''s cranial bone. Has resistences against Dragons.\r\nReduce damage from Dragon monster by 5%.\r\nReceive 5% more damage from Dragon monster.', 100, 15, 'item', 'headgears', 0, NULL),
(38, 5211, 'Dress Hat [1]', 'An adorable hat which is always worn on the side of head.\r\nIf the wearer carries an umbrella with this hat on, the wearer will look as if one is going for a picnic.\r\nMDEF + 7\r\nIncreases ATK, MATK 2%, effectiveness of Heal skill 5%.\r\nAdditional ATK, MATK 1% effectiveness of Heal skill 1%, when upgraded lv 7 or more. \r\nSTR + 1, INT + 1', 100, 15, 'item', 'headgears', 0, NULL),
(39, 5198, 'Drooping Bunny', 'A cute bunny doll which can be worn on top of the head.\r\nDEX + 1, Flee Rate + 2', 100, 15, 'item', 'headgears', 0, NULL),
(40, 5296, 'Drooping Nine Tail [1]', 'A hat made to resemble the monster, Nine tails. proud of its great heat-retainablity.\r\nAGI + 1, CRI + 1', 100, 15, 'item', 'headgears', 0, NULL),
(41, 5259, 'Elephant Hat', 'A hat made in the form of a big animal found in one oriental country.\r\nThe body it grows but kind is pure and it is. It will ask with the long nose and to inhale it scatters to wide scope.\r\nVIT + 1\r\nAdd a 1% chance of auto casting Level 3 Water Ball on the enemy when attacking.\r\nEnables use of Level 1 Aqua Benedicta.', 100, 15, 'item', 'headgears', 0, NULL),
(42, 5304, 'Executioner Hood [1]', 'The purple T-shirt which fit into shadowed human face.\r\nProtect its user from Blind.\r\nAdd a 7% resistance against Curse status.', 100, 15, 'item', 'headgears', 0, NULL),
(43, 5156, 'Fathers Mask', 'Mask used by father. Should be very useful when one catches a cold.\r\nMATK + 1%', 100, 15, 'item', 'headgears', 0, NULL),
(44, 5664, 'Filirs Pinions', 'A cute headgear made in the form of wing of Filir, the most popular bird-like homunclus.\r\nIncreases Attack Speed. Delay - 2%', 100, 15, 'item', 'headgears', 0, NULL),
(45, 5380, 'Fish Head Hat', 'A fish head hat with its mouth opening and closing.\r\nWhen its mouth is open you can smell a strong odor of fish.\r\nWhen dealing physical damage there is a small chance to cast Level 1 Frost Weapon.', 100, 15, 'item', 'headgears', 0, NULL),
(46, 5210, 'Flapping Angel Wing', 'A headgear which looks like an angel flapping its wing.\r\nIt make you feel dizzy when you wear it, but also makes your body feel light.\r\nIncreases Attack Speed by 3%.\r\nReduce Casting Time by 3%.\r\nINT + 1, AGI + 1', 100, 15, 'item', 'headgears', 0, NULL),
(47, 5376, 'Flying Evil Wing [1]', 'An unholy Satanic Chain forged with an incantation.\r\nSP + 120. Curse yourself when attacking.', 100, 15, 'item', 'headgears', 0, NULL),
(48, 5339, 'Friend Recruiter Hat', 'A helm with friend wanted ad on it. Do you have many friends?', 100, 15, 'item', 'headgears', 0, NULL),
(49, 5111, 'Galapago Cap', 'A cute looking cap that makes its wearer look just like Galapago the penguin, and the rim, which looks like a beak, actually blocks UV rays.\r\nHas a low chance of gaining the ''Anodyne'' item each time a monster is killed.', 100, 15, 'item', 'headgears', 0, NULL),
(50, 5361, 'Gangster Scarf', 'School scarf from a gang.\r\nATK + 5\r\n[Rogue Class]\r\nEnables use of Level 1 Gangster''s Paradise.', 100, 15, 'item', 'headgears', 0, NULL),
(51, 5377, 'Gentlemans Pipe', 'A long smoking pipe used by gentlemen and nobility.\r\nDecreases damage from Demi Human monster by 2%.', 100, 15, 'item', 'headgears', 0, NULL),
(52, 5176, 'Hahoe Mask ', 'A traditional Korean Hahoe mask made by carefully carving a smiling face. You can feel the emotions of the wearer just by looking at it.\r\n[TaeKwon Class]\r\nLUK + 1, Perfect Dodge + 2', 100, 15, 'item', 'headgears', 0, NULL),
(53, 5481, 'Hermose Cap [1]', 'Attack speed + 5%. ATK + 3%.', 100, 15, 'item', 'headgears', 0, NULL),
(54, 5139, 'Hibiscus ', 'A flower that is said to have beauty like a goddess from a far east country. It is also used for fortune telling or Chinese medicine.\r\nDEX + 1, INT + 1\r\nMDEF + 5\r\nImpossible to refine this item.', 100, 15, 'item', 'headgears', 0, NULL),
(55, 5314, 'Hockey Mask', 'A mask for playing Hockey when wear it and then feel like hold weapon.\r\nIncrease damage on DemiHuman monster by 5%.', 100, 15, 'item', 'headgears', 0, NULL),
(56, 5225, 'Holy Marcher Hat [1]', 'A hat, when equipped, that plays holy music and refresh its wearer.\r\nThe wearer of this holy hat is guarded by an angel.\r\nAdd a 1% chance of auto casting Level 5 Angelus when attacking.\r\nMDEF + 2, ...\r\nAdd a 10% resistance against Stun.', 100, 15, 'item', 'headgears', 0, NULL),
(57, 5383, 'Hunters Cap [1] ', 'A hat for hunters! Good Luck! \r\nRumor who wear it will have a good fortune when hunting monster at the time.\r\nIncreases damage inflicted on Brute monster by 10%.\r\nIncreases physical attack against Demi human monster by 5%.\r\nLUK + 1', 100, 15, 'item', 'headgears', 0, NULL),
(58, 5396, 'Jasper Crest [1]', 'A beautiful headgear with gold ornament and a lovely gemstone in the middle.\r\nDEX + 3, VIT + 1', 100, 15, 'item', 'headgears', 0, NULL),
(59, 5143, 'Kabuki Mask [1]', 'Traditional art mask from far eastern country.\r\nIncrease resistance to Silence status by 30%.', 100, 15, 'item', 'headgears', 0, NULL),
(60, 5322, 'Kerchief', 'Wonderful Kerchief for that loved.\r\nFlee Rate + 5, MDEF + 2', 100, 15, 'item', 'headgears', 0, NULL),
(61, 5518, 'Large Baphomet Horns', 'A headgear made from the horns of Baphomet.\r\nAdds 12% tolerance against Demi-Human monster.\r\nIncrease certain amount of ATK based on wearer''s Job level.', 100, 15, 'item', 'headgears', 0, NULL),
(62, 5311, 'Large Hibiscus [1]', 'A hairpin make by the biggest Chinese rose. Only can found at Ayothaya.\r\nMDEF + 15', 100, 15, 'item', 'headgears', 0, NULL),
(63, 5185, 'Laurel Crown [1]', 'A ring of closely knit branches covered with green leaves and beautiful flowers. Wearing this feels very refreshing.\r\nLUK + 3\r\nIncrease resistance to Blind and Curse by 5%.', 100, 15, 'item', 'headgears', 0, NULL),
(64, 5253, 'Lif Doll [1]', 'A hat made with a cute Lif doll. It makes wearers feel the doll looking down the wearers.\r\nIt may get popular among people who loves a little girl.\r\nINT + 1\r\nDEF descreases by Refine Rate. MDEF increases by Refine Rate.', 100, 15, 'item', 'headgears', 0, NULL),
(65, 5332, 'Loki Mask', 'A mask that imbued with the sweet whispers of Loki.\r\nPerfect Dodge + 3', 100, 15, 'item', 'headgears', 0, NULL),
(66, 5420, 'Mask of Ifrit', 'Mask of Ifrit, the spiritual owner of fire. Rumored to rule a power of the fire.\r\nSTR + 1, INT + 1, Mdef + 5\r\nAdd a 10% resistance against Fire Property monsters.\r\nReduced a 10% resistance against Water Property monsters.\r\nEnables use of Level 1 Sight.\r\nAdd a chance of auto casting Level 3 Meteor Storm on the user when the user receives Physical Damage.\r\nAdd a chance of auto casting Level 3 Fire Bolt on the user when dealing physical damage.\r\nImpossible to refine this item.', 100, 15, 'item', 'headgears', 0, NULL),
(67, 5118, 'Minstrel Hat', 'A stylish wide brimmed hat made to keep the sun out of the eyes of a famous performing minstrel.\r\nINT + 1, DEX + 1', 100, 15, 'item', 'headgears', 0, NULL),
(68, 5214, 'Moonowl Cap', 'A hat created with the monster Moonlight Flower in mind.\nIt is said that it uses 30% of Moonlight Flower''s fur, and 70% of Nine Tails fur.\nNote that you should only use hand washing to clean it.\nWear this with your Nine Tails scarf for the perfect winter fashion!\nAutomatically cast Level 1 Increase Agility by chance when struck by Physical attack.\nDEX + 2', 100, 15, 'item', 'headgears', 0, NULL),
(69, 5099, 'Neko Mimi', 'A cute cat-looking hat which enhances its wearer''s look.\nHas a cat tail which emphasizes the appearance.\nLUK + 2\nMDEF + 10\nReduce 5% of damage taken from Brute monster.', 100, 15, 'item', 'headgears', 0, NULL),
(70, 5151, 'Note Headphones [1]', 'A cool looking set of headphones that have earmuffs designed to resemble music notes.\nYou can listen to your favorite Ragnarok Online music everywhere!\nIncrease resistance to Stun and Freeze by 10%.\nMDEF + 3', 100, 15, 'item', 'headgears', 0, NULL),
(71, 5315, 'Observer', 'An equipment can check energy. Look like where come from another world.\nEnables use of Level 1 Estimation.', 100, 15, 'item', 'headgears', 0, NULL),
(72, 5375, 'Orc Hero Headdress [1]', 'A true Orc Hero''s headgear. It''s so big and heavy that it might hurt your neck.\nSTR + 2\nAdd a 3% chance of auto casting Level 3 Weapon Perfection on the user when receives Physical Damage.', 100, 15, 'item', 'headgears', 0, NULL),
(73, 5299, 'Pagdayaw [1]', 'An headgear which is made of many kinds of property rings. It looks very luxurious and charming.\nAdd a 5% chance of auto casting Level 1 Scream on an enemy when the user receives Physical Damage.', 100, 15, 'item', 'headgears', 0, NULL),
(74, 5286, 'Peco Peco Hairband', 'Headgear with Pecopeco''s wings on it. It makes wearer to move as fas as Pecopeco.\nIncreases Movement Speed by 25%, but decreases Attack Speed by 10% and increases Cast Time by 25%.', 100, 15, 'item', 'headgears', 0, NULL),
(75, 5305, 'Pirate Dagger', 'A small silver knife that is held between your teeth to allow free use of your hands. Reward for helping Pirate Captain Wesley during the 2007 4th anniversary celebration.\nATK + 5', 100, 15, 'item', 'headgears', 0, NULL),
(76, 5514, 'Pisces Diadem', 'This diadem honors Pisces, the 12th astrological sign in the zodiac calendar.\nINT + 2, MDEF + 5, Increases resistance to Water status by 5%.\n[Refine Rate 7~10]\nDEF + 1, MATK + 2%.', 100, 15, 'item', 'headgears', 0, NULL),
(77, 5499, 'Pizza Hat', 'Is there anyone in this world who doesn''t like pizza?? \nEven a fierce monster won''t be able to refuse this tasty food.\nYou can provoke monsters by wearing this hat.\nEnables use of Level 1 Provoke.', 100, 15, 'item', 'headgears', 0, NULL),
(78, 5520, 'Rabbit Earplugs [1]', '...\nATK + 4%, MATK + 4%.', 100, 15, 'item', 'headgears', 0, NULL),
(79, 5293, 'Ramen Hat', 'Noodles put on a head. When hungry, this is portable ration. Be careful not to spoil it.\nDEX + 4\nChance of auto casting Level 1 Concentration on the enemy when attacking.', 100, 15, 'item', 'headgears', 0, NULL),
(80, 5288, 'Red Glasses', 'Must-have item for the pretty. Can make users 3 times more beautiful.\nINT + 1', 100, 15, 'item', 'headgears', 0, NULL),
(81, 5208, 'Rideword Hat [1]', 'A hat made in the image of a scary magical book which attacks human.\n5% chance to absorb 8% HP on Physical attack.\n1% chance to absorb 4% SP on Physical attack.\nYou lose 10 HP per 5 seconds when equipped.', 100, 15, 'item', 'headgears', 0, NULL),
(82, 5325, 'Robo Eyes', 'An unidentified object look like eye.It comes from space and can give out light.\nAttack Power + 2%, MATK + 2%, Dex + 1', 100, 15, 'item', 'headgears', 0, NULL),
(83, 5359, 'Ship Captains Hat [1]', 'Hat of a captain who sails the seven seas.\nIncrease physical ranged attack power by 3%.', 100, 15, 'item', 'headgears', 0, NULL),
(84, 5592, 'Sigrun Wings', 'Ear adornments that symbolize rebirth. They have the ability to change its effects depending on the job of the wearer.\n[Swordman Class, Merchant Class, Thief Class, Taekwon]\nSTR + 1.\n[Mage Class, Acolyte Class, Ninja, Soul Linker]\nINT + 1.\n[Archer Class, Gunslinger]\nDEX + 1.\n[Novice, Super Novice]\nHP + 80, SP + 30.', 100, 15, 'item', 'headgears', 0, NULL),
(85, 5342, 'Sorin Hat Doll [1]', 'So hot! A headgear with the figure of Kafra Sorin! Her cute appearance made the price of this hat rise at the auction place.\nReduces damage from Demihuman monster by 5%.\nWhen physically attacking there is a chance that for 10 seconds you''ll receive ATK +50.\nImpossible to refine this item.', 100, 15, 'item', 'headgears', 0, NULL),
(86, 5257, 'Soul Ring', 'A halo and a pair of wings that are floating above a head. The item makes the wearer to look like a spirit that is walking on the earth.\nMDEF + 2\nAdd a 1% chance of auto casting Level 1 Assumptio on the user when the user receives Physical Damage.', 100, 15, 'item', 'headgears', 0, NULL),
(87, 5509, 'Sting Hat', 'A hand-shape hat made by mud. It feels weird when you wear it.\nSTR + 2, VIT + 1, MDEF + 3.\nIncreases damage against Fire Property monsters by 5%.\nIncrease resistance to Earth Property attacks by 5%.\nAdd a 3% chance of auto casting Level 1 Earth Spike on an enemy when the user receives Physical Damage', 100, 15, 'item', 'headgears', 0, NULL),
(88, 2202, 'Sunglasses [1]', 'Glasses with special, darkened lenses that block ultraviolet light.\nIncreases resistance to Blind status by 5%.', 100, 15, 'item', 'headgears', 0, NULL),
(89, 5550, 'Taurus Crown', 'A magnificent crown created to pay tribute to the 2nd sign of the zodiac, Taurus the Bull.\nAttached to the crown is an Emerald gemstone, the birthstone for those born under this sign.\nDEX + 2, Skill delay - 2%. \nIncreases resistance to the Earth Property by 5%.\n[Refine Rate 7~10]\nDEX + 1, MATK + 1%.', 100, 15, 'item', 'headgears', 0, NULL),
(90, 5549, 'Taurus Diadem', 'A magnificent diadem created to pay tribute to the 2nd sign of the zodiac, Taurus the Bull.\nAttached to the crown is an Emerald gemstone, the birthstone for those born under this sign.\nIt has been known that those born under the sign of Pisces are most compatible with those born under the Capricorn and Virgo signs.\nDEX + 2, Skill delay - 2%. \nIncreases resistance to the Earth Property by 5%.\n[Refine Rate 7~10]\nDEX + 1, MATK + 1%.', 100, 15, 'item', 'headgears', 0, NULL),
(91, 5511, 'Tiara Samambaia [1]', 'A circlet made of samambaia leaf.\nRecovery SP by 8%.', 100, 15, 'item', 'headgears', 0, NULL),
(92, 5395, 'Tiraya Bonnet [1]', 'A souvenir hat to celebarate the 4th Anniversary of Europe Ragnarok Online.\nEach refine increases your HP.\nMax HP + 100, LUK + 3', 100, 15, 'item', 'headgears', 0, NULL),
(93, 5187, 'Twin Ribbon [1]', 'A blue flower decorated with a beatiful red ribbon. Its said to make girls look absolutely lovely.\nMaximum SP + 30, MDEF + 3\nIncreases physical damage to the monster by 20% for 2 seconds when the user Received physical attack.\nReduces MDEF by 20% for 2 seconds.\nIncreases magical damage to the monster by 20% for 2 seconds when the user Received magical attack.\nReduces DEF by 20% for 2 seconds.', 100, 15, 'item', 'headgears', 0, NULL),
(94, 5498, 'Wandering Wolf Hat', 'Can feel a high dignity of the Northern Wolf Tribe. \nIt is made out of Wolf King''s fur and feels like you''ve surrounded by some kind of dignified force when worn.\nFLEE + 10, VIT + 5.\nImpossible to refine this item.', 100, 15, 'item', 'headgears', 0, NULL),
(95, 5574, 'Well-Chewed-Pencil', 'A popular snack while taking tests. It makes one look more studious but, it''s days may be numbered if it stays in somebody''s mouth any longer.\nHIT + 3.\n[+ Model Training Hat]\nDEX + 2, DEF + 2.', 100, 15, 'item', 'headgears', 0, NULL),
(96, 5360, 'Whikebain Ears', 'Ears of Whikebine''s black cat. Very cute.\nIncreases critical attack damage by 10%.\nAdds 5% chance magical defense ignored for 5 seconds when dealing magical damage.\nFLEE + 10,', 100, 15, 'item', 'headgears', 0, NULL),
(97, 5278, 'Yellow Ribbon', 'It''s a piece of ribbon that hangs to one side when worn that was created out of old Flags that was torn by bullets.\nLUK + 2, VIT + 2\nReduces damage from Long Range attacks by 10%', 100, 15, 'item', 'headgears', 0, NULL),
(98, 5464, 'Zaha Doll', 'Zaha doll hat which resembles angel of Zaha. It looks great on your head.\nINT + 2\nEnables use of Level 3 Magnificat.\nImpossible to refine this item.', 100, 15, 'item', 'headgears', 0, NULL),
(99, 2357, 'Valkyrie Armor [1]', 'A set of shining white armor worn by Valkyries, the battle maidens that serve the god Odin.\nAll Stats + 1\nIndestructible (except in upgrade attempts).\n[Mage, Archer, Acolyte Class]\nIncrease resistance to Silence status by 50%.\n[Swordman, Merchant, Thief Class]\nIncrease resistance to Stun status by 50%.\n[Valkyrie Helm & Valkyrja''s Armor & Valkyrja''s Manteau & Valkyrja''s Shoes Equip Set]', 100, 25, 'item', 'armor', 0, NULL),
(100, 2421, 'Valkyrie Shoes [1]', 'A pair of shoes worn by the Valkyries, Odin''s battle maidens.\nThese shoes grow more powerful as the wearer improves his own abilities.\nIndestructible (except in upgrade attempts).\n[Mage, Archer, Acolyte Class]\nMaximum HP + 5 * Base Level\n[Swordman, Merchant, Thief Class]\nMaximum SP + 2 * Job Level\n[Valkyrie Helm & Valkyrja''s Armor & Valkyrja''s Manteau & Valkyrja''s Shoes Equip Set]', 100, 15, 'item', 'armor', 0, NULL),
(101, 2524, 'Valkyrie Manteau  [1]', 'A manteau that is worn by the Valkyries, Odin''s battle maidens.\nIndestructible (except in upgrade attempts).\n[Mage, Archer, Acolyte Class]\nPerfect Dodge + 5\nAdditional Perfect Dodge can be earned by Refining, and is equal to the Refine Rate * 2.\n[Swordman, Merchant, Thief Class]\nReflect 5% of all Physical Melee Damage back to the enemy which inflicted it.\nAdditional Reflect Damage can be earned by Refining, and is equal to the Refine Rate * 2.\nHowever, the perfect dodge or damage reflect will only increase up to + 10 refine.\n[Valkyrie Helm & Valkyrja''s Armor & Valkyrja''s Manteau & Valkyrja''s Shoes Equip Set]', 100, 25, 'item', 'armor', 0, NULL),
(102, 2115, 'Valkyrie Shield  [1]', 'A shield used by Gna, the messenger of Freyja, when she served as a Valkyrie.\nAdd a 20% resistance against Water, Fire, Shadow and Undead Property.\nMDEF + 5\n[+ Odin''s Blessing & Frigg''s Circlet]\nAdditional DEF + 2 and MDEF + 5\nAdditional DEF decrease by Frigg''s Circlet and Valkyrja''s Shield refine rate.\nAdditional MDEF increase by Frigg''s Circlet and Valkyrja''s Shield refine rate.\n[Long Horn, Valkyrja''s Shield Equip Set]', 100, 25, 'item', 'armor', 0, NULL),
(103, 2375, 'Diabolus Armor [1]', 'An Armor which is made of unknown metal in human-world. Misterious power is hided in the armor.\nSTR + 2, DEX + 1, Maximum HP + 150, Add a 5% resistance against Stun, Stone.\n[+ Diablos Ring]\nATK + 3%, MATK + 3%', 99, 25, 'item', 'armor', 0, NULL),
(104, 2433, 'Diabolus Boots [1]', 'A mysterious boots that automatically adjusts its size as the wearer''s size. It seems alive.\nIncreases Maximum HP by 10 times base Level.', 100, 25, 'item', 'armor', 0, NULL),
(105, 2537, 'Diabolus Manteau', 'A manteau that endless dark shape is waving on it. Only the man who overcame the fear can put on this manteau.\nReduces Neutral Property damage by 5%. Maximum HP + 100\nIncreases Physical Damage when facing Satan Morroc by 10%.\n[+ Diablos Boots]\nMaximum HP + 6%\n', 100, 25, 'item', 'armor', 0, NULL),
(106, 2374, 'Diabolus Robe', 'A robe which is decorated with unknown letters. The wearer feels like they''re learning a new language.\nMaximum SP + 150, MDEF + 5\nReduces skill delay by 10%. Increases heal effectiveness by 6%.\n[+ Diablos Ring]\nATK + 3%, MATK + 3%', 100, 25, 'item', 'armor', 0, NULL),
(107, 2410, 'Sleipnir', 'Named after Odin''s trusty steed, these shoes also mimic Sleipnir''s powers.\nIncrease Movement Speed.\nMaximum HP and SP + 20%\nSP Recovery + 15%, MDEF + 10\nImpossible to refine this item.', 100, 15, 'item', 'rentalArmor', 0, NULL),
(108, 14002, 'Veteran Siege Supply Box', 'A box containing 50 Siege White Potions and 20 Siege Blue Potions.\nSiege White Potion - Heals 400~500 Hit Point. HP Affected by Regeneration Potion.\nSiege Blue Potion - Restores 50-70 SP.', 100, 1, 'item', 'consumables', 0, NULL),
(109, 13601, 'Token of Siegfried 20 Box', 'A box containing 20 Tokens of Ziegfried.\n\nToken of Ziegfried - Revives the dead character when player is KO''ed.', 100, 2, 'item', 'consumables', 0, NULL),
(110, 13578, 'Stew of Immortality 30 Box', 'A box containing 30 VIT + 10 dishes.', 100, 2, 'item', 'consumables', 0, NULL),
(111, 13604, 'Steamed Tongue 30 Box', 'STR + 10\nA box containing 30 STR + 10 dishes.', 100, 2, 'item', 'consumables', 0, NULL),
(112, 13592, 'Steamed Scorpion 30 Box', 'AGI + 10\nA box containing 30 AGI + 10 dishes.\n', 100, 2, 'item', 'consumables', 0, NULL),
(113, 13596, 'Dragon Breath Cocktail 30 Box', 'INT + 10\nA box containing 30 INT + 10 dishes.', 95, 2, 'item', 'consumables', 0, NULL),
(114, 12907, 'Nine Tail Dish Box', 'A box containing 10 LUK + 10 dishes.', 100, 2, 'item', 'consumables', 0, NULL),
(115, 13572, 'Hwergelmirs Tonic Box', 'A box containing 30 DEX + 10 dishes.', 100, 2, 'item', 'consumables', 0, NULL),
(116, 13718, 'Abrasive Box 10', 'A box containing 10 Abrasive.\nFor 5 minutes, the player will receive +30 Critical Rate. This rate is doubled by Katar weapons.', 0, 1, 'item', 'consumables', 0, NULL),
(117, 12902, 'Bubble Gum Box 10', 'A box containing 10 tasty Bubble Gums.\n\nBubble gum - Item drop rate increase by 100% for 30 minutes.', 52, 5, 'item', 'consumables', 0, NULL),
(118, 13583, 'Convex Mirror Box 30', 'A box containing 30 Convex Mirrors. Please take a care because is fragile.\n\nConvex Mirror - The person in possession of the mirror can detect the appearance of the boss monsters.\nIt has 10 minutes duration and the effect is removed when the player goes out of the map after using the item or quit the game.\nSome of the MVP monsters can not be detected.', 100, 5, 'item', 'consumables', 0, NULL),
(119, 13571, 'Giant Fly Wing 100', 'A light box containing 100 Giant Fly Wings.\n\nGiant Fly Wing - Allows to teleport many people at once to random areas when used by party master.', 100, 5, 'item', 'consumables', 0, NULL),
(120, 0, 'Premium User (7 Days)', '10% Exp Boost, 10% Discount on Item Shoppe, 20% More Reward Points per Vote,Able to use @autoloot,@homstats,@storage,@guildstorage,@whodrops,@whereis,@noask,@showexp,@noks,@return', 96, 5, 'item', 'premium', 0, NULL),
(121, 0, 'Premium User (15 Days)', '10% Exp Boost, 10% Discount on Item Shoppe, 20% More Reward Points per Vote,Able to use @autoloot,@homstats,@storage,@guildstorage,@whodrops,@whereis,@noask,@showexp,@noks,@return', 78, 8, 'item', 'premium', 0, NULL),
(122, 0, 'Premium User (30 Days)', '10% Exp Boost, 10% Discount on Item Shoppe, 20% More Reward Points per Vote,Able to use @autoloot,@homstats,@storage,@guildstorage,@whodrops,@whereis,@noask,@showexp,@noks,@return', 94, 15, 'item', 'premium', 0, NULL),
(123, 0, 'Change Name', 'Change your character''s name.', 100, 5, 'item', 'consumables', 0, NULL),
(124, 0, 'Change Sex', 'Change your Character''s Gender.', 100, 1, 'item', 'consumables', 0, NULL),
(125, 0, 'Change Pet Name', 'Change your Pet''s Name', 100, 1, 'item', 'consumables', 0, NULL),
(126, 0, 'Change Homunculus Name', 'Change your Humonculus'' Name', 39, 1, 'item', 'consumables', 0, NULL),
(127, 0, 'Change Guild Leader', 'Transfer guild leadership', 89, 1, 'item', 'consumables', 0, NULL),
(128, 0, 'Feel Reset (Star Gladiator)', 'Reset Feel skill of Star Gladiators', 100, 1, 'item', 'consumables', 0, NULL),
(129, 0, 'Unslot Card', 'Used for unslotting cards', 100, 1, 'item', 'consumables', 0, NULL),
(130, 6500, 'Casters Dragon Helm  (7 Days)', 'A large emperor crown usually worn by spell casters, Int + 10. [Caster''s Set Effect]\nInstead of +10 Int ,Int becomes + 20\nDex + 20', 100, 2, 'item', 'rentalArmor', 0, NULL),
(131, 6501, 'Casters Wings (7 Days)', 'A large emperor wings usually worn by spell casters, Reflect 10% of all Physical Melee Damage back to the enemy which inflicted it.', 99, 2, 'item', 'rentalArmor', 0, NULL),
(132, 6502, 'Casters Ring (7 Days)', 'A large emperor ring usually worn by spell casters, MATK + 5%.', 97, 2, 'item', 'rentalArmor', 0, NULL),
(133, 6503, 'Guardians Band (7 Days)', 'A huge band aid that worn by guardians during fight, Vit + 10.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(134, 6504, 'Guardians Wings (7 Days)', 'The great guardian wings that has been kept for over many years that has believed to give life from the user, Maximum HP + 10%.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(135, 6505, 'Guardians Tail (7 Days )', 'A guardian remnant that protects its user from harm, Reduce damage from DemiHuman monster by 5%. [Guardian Set Effect]\nInstead of +10 Vit ,Vit becomes + 20', 100, 2, 'item', 'rentalArmor', 0, NULL),
(136, 6506, 'Lancers Horns (7 Days )', 'The great horns of lancer''s, Str + 10.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(137, 6507, 'Lancers Wings (7 Days )', 'The lancer''s wings is believed to give user a berserk like strength, Inflict 10% more damage with Critical attacks.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(138, 6508, 'Lancers Tail  (7 Days )', 'A Little lancer''s tail that is full of evilness , Increase Attack speed by 5%. [Lancer''s Set Effect]\nInstead of +10 Str ,Str becomes + 20\nLuk + 20', 100, 2, 'item', 'rentalArmor', 0, NULL),
(139, 6509, 'Pathfinders Wolf Helm (7 Days )', 'Worned by hunters that is believed to have the strength of the wolves, Dex + 10.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(140, 6510, 'Pathfinders Wings (7 Days )', 'Worned by hunters that is believed to have the strength of the wolves, Reduce Magic Damage by 10%.\n[Pathfinder''s Set Effect]\nInstead of +10 Dex ,Dex becomes + 20\nAgi + 20', 100, 2, 'item', 'rentalArmor', 0, NULL),
(141, 6511, 'Pathfinders Aura ( 7 Days )', 'worned by hunters that is believed to have the strength of the wolves , Reflect 5% single target attack Magic back at the caster.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(142, 8377, 'Apple_in_Mouth_Bell  ( 7 Days )', 'An exclusive mouth piece which was created with the stats of Pussy Cat Bell.\nIt makes its wearer adorable and irresistible. Reduce damage to demi-human monsters by 3%.', 84, 2, 'item', 'rentalArmor', 0, NULL),
(143, 8378, 'Chocolate_in_Mouth_Bell  ( 7 Days )', 'An exclusive mouth piece which was created with the stats of Pussy Cat Bell.\nIt makes its wearer adorable and irresistible. Reduce damage to demi-human monsters by 3%.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(144, 8379, 'Icecream_in_Mouth_Bell  ( 7 Days )', 'An exclusive mouth piece which was created with the stats of Pussy Cat Bell.\nIt makes its wearer adorable and irresistible. Reduce damage to demi-human monsters by 3%.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(145, 8380, 'Meat_in_Mouth_Bell  ( 7 Days )', 'An exclusive mouth piece which was created with the stats of Pussy Cat Bell.\nIt makes its wearer adorable and irresistible. Reduce damage to demi-human monsters by 3%.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(146, 8381, 'Orange_in_Mouth_Bell  ( 7 Days )', 'An exclusive mouth piece which was created with the stats of Pussy Cat Bell.\nIt makes its wearer adorable and irresistible. Reduce damage to demi-human monsters by 3%.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(147, 8382, 'Strawberry_in_Mouth_Bell  ( 7 Days )', 'An exclusive mouth piece which was created with the stats of Pussy Cat Bell.\nIt makes its wearer adorable and irresistible. Reduce damage to demi-human monsters by 3%.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(148, 8383, 'Carrot_in_Mouth_Bell  ( 7 Days )', 'An exclusive mouth piece which was created with the stats of Pussy Cat Bell.\nIt makes its wearer adorable and irresistible. Reduce damage to demi-human monsters by 3%.', 100, 2, 'item', 'rentalArmor', 0, NULL),
(149, 8384, 'Chewing_Bubblegum_Bell  ( 7 Days )', 'An exclusive mouth piece which was created with the stats of Pussy Cat Bell.\nIt makes its wearer adorable and irresistible. Reduce damage to demi-human monsters by 3%.', 100, 2, 'item', 'rentalArmor', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(23) NOT NULL DEFAULT '',
  `user_pass` varchar(32) NOT NULL DEFAULT '',
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL DEFAULT '',
  `group_id` tinyint(3) NOT NULL DEFAULT '0',
  `state` int(11) unsigned NOT NULL DEFAULT '0',
  `unban_time` int(11) unsigned NOT NULL DEFAULT '0',
  `expiration_time` int(11) unsigned NOT NULL DEFAULT '0',
  `logincount` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `birthdate` date NOT NULL DEFAULT '0000-00-00',
  `credits` float NOT NULL DEFAULT '0',
  `last_vote_gtop` int(11) NOT NULL DEFAULT '0',
  `last_vote_xtreme` int(11) NOT NULL DEFAULT '0',
  `last_vote_gamesites` int(11) NOT NULL DEFAULT '0',
  `last_vote_toparena` int(11) NOT NULL DEFAULT '0',
  `last_vote_ultimateserver` int(11) NOT NULL DEFAULT '0',
  `premium` tinyint(1) NOT NULL DEFAULT '0',
  `name` int(11) NOT NULL DEFAULT '0',
  `know` int(11) NOT NULL DEFAULT '0' COMMENT 'where did you hear about puff RO',
  `report_time` int(11) NOT NULL DEFAULT '0',
  `premium_expiry` varchar(50) NOT NULL,
  PRIMARY KEY (`account_id`),
  KEY `name` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2000006 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`, `state`, `unban_time`, `expiration_time`, `logincount`, `lastlogin`, `last_ip`, `birthdate`, `credits`, `last_vote_gtop`, `last_vote_xtreme`, `last_vote_gamesites`, `last_vote_toparena`, `last_vote_ultimateserver`, `premium`, `name`, `know`, `report_time`, `premium_expiry`) VALUES
(1, 'puffthemagicdragon', 'd19e84efa92b996e6c85773490b7461d', 'S', 'athena@athena.com', 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2000000, 'gmaccount1', '57e6b759618e239fa9857b4fce83cd24', 'M', 'a@a.com', 99, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '0000-00-00', 918, 1335327359, 0, 0, 0, 0, 1, 0, 0, 0, '1336625201'),
(2000001, 'gmaccount2', 'iamgmhello', 'M', 'a@a.com', 99, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2000003, 'gmaccount3', 'iamgmhello', 'M', 'a@a.com', 99, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2000004, 'gmaccount4', 'iamgmhello', 'M', 'a@a.com', 99, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2000005, 'gmaccount5', 'iamgmhello', 'M', 'a@a.com', 99, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

CREATE TABLE IF NOT EXISTS `loginlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user` varchar(23) NOT NULL DEFAULT '',
  `rcode` tinyint(4) NOT NULL DEFAULT '0',
  `log` varchar(255) NOT NULL DEFAULT '',
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginlog`
--

INSERT INTO `loginlog` (`time`, `ip`, `user`, `rcode`, `log`) VALUES
('2012-04-06 21:22:55', '0.0.0.0', 'login server', 100, 'login server started'),
('2012-04-06 21:22:56', '127.0.0.1', 's1', 100, 'charserver - rAthena@127.0.0.1:6121'),
('2012-04-06 21:46:14', '0.0.0.0', 'login server', 100, 'login server started'),
('2012-04-06 21:46:15', '127.0.0.1', 's1', 100, 'charserver - rAthena@127.0.0.1:6121'),
('2012-04-07 15:55:30', '0.0.0.0', 'login server', 100, 'login server started'),
('2012-04-07 15:55:32', '127.0.0.1', 's1', 100, 'charserver - rAthena@127.0.0.1:6121'),
('2012-04-07 15:55:38', '0.0.0.0', 'login server', 100, 'login server shutdown'),
('2012-04-07 15:56:04', '0.0.0.0', 'login server', 100, 'login server started'),
('2012-04-07 15:56:05', '127.0.0.1', 's1', 100, 'charserver - rAthena@127.0.0.1:6121'),
('2012-04-07 15:56:56', '0.0.0.0', 'login server', 100, 'login server started'),
('2012-04-07 15:56:58', '127.0.0.1', 's1', 100, 'charserver - rAthena@127.0.0.1:6121'),
('2012-04-07 15:59:25', '127.0.0.1', 'sampleaccount', 1, 'Incorrect Password.'),
('2012-04-07 16:00:22', '127.0.0.1', 'sampleaccount', 1, 'Incorrect Password.'),
('2012-04-07 16:00:37', '127.0.0.1', 'sample', 0, 'Unregistered ID.'),
('2012-04-07 16:00:50', '127.0.0.1', 'sampleaccount', 1, 'Incorrect Password.'),
('2012-04-07 16:01:41', '127.0.0.1', 'sample12345', 1, 'Incorrect Password.'),
('2012-04-07 16:01:58', '127.0.0.1', 'sample12345', 1, 'Incorrect Password.'),
('2012-04-07 16:13:54', '127.0.0.1', 'samplegm', 0, 'Unregistered ID.'),
('2012-04-07 16:15:40', '127.0.0.1', 'samplegm', 100, 'login ok'),
('2012-04-07 16:21:06', '127.0.0.1', 'samplegm', 100, 'login ok');

-- --------------------------------------------------------

--
-- Table structure for table `lottery`
--

CREATE TABLE IF NOT EXISTS `lottery` (
  `description` varchar(25) NOT NULL,
  `lot_val` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lottery`
--

INSERT INTO `lottery` (`description`, `lot_val`) VALUES
('num1', '2'),
('expiry', '1335348700'),
('num2', '4'),
('num3', '8'),
('date_drawn', '1335327100');

-- --------------------------------------------------------

--
-- Table structure for table `lottery_bets`
--

CREATE TABLE IF NOT EXISTS `lottery_bets` (
  `account_id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `number_combination` int(11) NOT NULL,
  `bet` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `send_name` varchar(30) NOT NULL DEFAULT '',
  `send_id` int(11) unsigned NOT NULL DEFAULT '0',
  `dest_name` varchar(30) NOT NULL DEFAULT '',
  `dest_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `zeny` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mapreg`
--

CREATE TABLE IF NOT EXISTS `mapreg` (
  `varname` varchar(32) NOT NULL,
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL,
  KEY `varname` (`varname`),
  KEY `index` (`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapreg`
--

INSERT INTO `mapreg` (`varname`, `index`, `value`) VALUES
('$arn_pritop60', 0, '480'),
('$arn_pritop70', 0, '480'),
('$arn_pritop80', 0, '480'),
('$arn_pritop90', 0, '480'),
('$arn_acotop', 0, '480'),
('$arn_pritopn60$', 0, 'Default'),
('$arn_pritopn70$', 0, 'Default'),
('$arn_pritopn80$', 0, 'Default'),
('$arn_pritopn90$', 0, 'Default'),
('$arn_acotopn$', 0, 'Default'),
('$timezonestring$', 0, '^FF0000GMT^000000'),
('$ttnames$', 0, 'Breezy Havana'),
('$ttnames$', 1, 'RS125'),
('$ttnames$', 2, 'Hollgrehenn'),
('$ttnames$', 3, 'Antonio'),
('$ttnames$', 4, 'Aragham'),
('$ttnames$', 5, 'Kafra Jasmine'),
('$ttnames$', 6, 'Chris'),
('$ttnames$', 7, 'Breezy Havana'),
('$ttnames$', 8, 'RS125'),
('$ttnames$', 9, 'Breezy Havana'),
('$ttnames$', 10, 'Nari'),
('$ttnames$', 11, 'Senorita Sylvia'),
('$ttnames$', 12, 'Joo Jahk'),
('$ttnames$', 13, 'RS125'),
('$ttranks', 0, '999999'),
('$top_60min', 0, '6'),
('$top_80min', 0, '8'),
('$top_50min', 0, '5'),
('$top_ptmin', 0, '10'),
('$top_70min', 0, '7'),
('$DTS_Time', 0, '76');

-- --------------------------------------------------------

--
-- Table structure for table `memo`
--

CREATE TABLE IF NOT EXISTS `memo` (
  `memo_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  `x` smallint(4) unsigned NOT NULL DEFAULT '0',
  `y` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memo_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mercenary`
--

CREATE TABLE IF NOT EXISTS `mercenary` (
  `mer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `kill_counter` int(11) NOT NULL,
  `life_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mercenary_owner`
--

CREATE TABLE IF NOT EXISTS `mercenary_owner` (
  `char_id` int(11) NOT NULL,
  `merc_id` int(11) NOT NULL DEFAULT '0',
  `arch_calls` int(11) NOT NULL DEFAULT '0',
  `arch_faith` int(11) NOT NULL DEFAULT '0',
  `spear_calls` int(11) NOT NULL DEFAULT '0',
  `spear_faith` int(11) NOT NULL DEFAULT '0',
  `sword_calls` int(11) NOT NULL DEFAULT '0',
  `sword_faith` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mvplog`
--

CREATE TABLE IF NOT EXISTS `mvplog` (
  `mvp_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `mvp_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `kill_char_id` int(11) NOT NULL DEFAULT '0',
  `monster_id` smallint(6) NOT NULL DEFAULT '0',
  `prize` int(11) NOT NULL DEFAULT '0',
  `mvpexp` mediumint(9) NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`mvp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `message` longtext NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `message`, `date`) VALUES
(3, 'Welcome to Puff RO', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2012-04-06'),
(4, 'Why choose Puff RO', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2012-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `npclog`
--

CREATE TABLE IF NOT EXISTS `npclog` (
  `npc_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `npc_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  `mes` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`npc_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE IF NOT EXISTS `party` (
  `party_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `exp` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `item` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `leader_id` int(11) unsigned NOT NULL DEFAULT '0',
  `leader_char` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`party_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE IF NOT EXISTS `pet` (
  `pet_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `level` smallint(4) unsigned NOT NULL DEFAULT '0',
  `egg_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `intimate` smallint(9) unsigned NOT NULL DEFAULT '0',
  `hungry` smallint(9) unsigned NOT NULL DEFAULT '0',
  `rename_flag` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `incuvate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `picklog`
--

CREATE TABLE IF NOT EXISTS `picklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U') NOT NULL DEFAULT 'P',
  `nameid` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '1',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card0` int(11) NOT NULL DEFAULT '0',
  `card1` int(11) NOT NULL DEFAULT '0',
  `card2` int(11) NOT NULL DEFAULT '0',
  `card3` int(11) NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE IF NOT EXISTS `purchase_history` (
  `p_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` text NOT NULL,
  `itemshoppe_id` int(11) NOT NULL,
  `p_history_item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 if redeemable; 0 otherwise',
  PRIMARY KEY (`p_history_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`p_history_id`, `date`, `itemshoppe_id`, `p_history_item_id`, `item_name`, `account_id`, `price`, `quantity`, `status`) VALUES
(1, 'Wednesday, April 25, 2012, 6:25 am', 126, 0, 'Change Homunculus Name', 2000000, 1, 1, 1),
(2, 'Wednesday, April 25, 2012, 6:25 am', 121, 0, 'Premium User (15 Days)', 2000000, 8, 1, 1),
(3, 'Wednesday, April 25, 2012, 6:26 am', 142, 8377, 'Apple_in_Mouth_Bell  ( 7 Days )', 2000000, 2, 1, 1),
(4, 'Wednesday, April 25, 2012, 6:32 am', 132, 6502, 'Casters Ring (7 Days)', 2000000, 2, 1, 1),
(5, 'Wednesday, April 25, 2012, 6:35 am', 131, 6501, 'Casters Wings (7 Days)', 2000000, 2, 1, 1),
(6, 'Wednesday, April 25, 2012, 6:39 am', 121, 0, 'Premium User (15 Days)', 2000000, 7, 1, 1),
(7, 'Wednesday, April 25, 2012, 6:39 am', 22, 5137, 'Alice Doll[1]', 2000000, 13, 2, 1),
(8, 'Wednesday, April 25, 2012, 6:40 am', 142, 8377, 'Apple_in_Mouth_Bell  ( 7 Days )', 2000000, 2, 1, 1),
(9, 'Wednesday, April 25, 2012, 6:42 am', 142, 8377, 'Apple_in_Mouth_Bell  ( 7 Days )', 2000000, 2, 1, 1),
(10, 'Wednesday, April 25, 2012, 6:42 am', 142, 8377, 'Apple_in_Mouth_Bell  ( 7 Days )', 2000000, 2, 1, 1),
(11, 'Wednesday, April 25, 2012, 6:44 am', 132, 6502, 'Casters Ring (7 Days)', 2000000, 2, 1, 1),
(12, 'Wednesday, April 25, 2012, 6:44 am', 142, 8377, 'Apple_in_Mouth_Bell  ( 7 Days )', 2000000, 2, 1, 1),
(13, 'Wednesday, April 25, 2012, 6:46 am', 142, 8377, 'Apple_in_Mouth_Bell  ( 7 Days )', 2000000, 1, 1, 1),
(14, 'Wednesday, April 25, 2012, 6:46 am', 121, 0, 'Premium User (15 Days)', 2000000, 7, 1, 1),
(15, 'Wednesday, April 25, 2012, 6:46 am', 22, 5137, 'Alice Doll[1]', 2000000, 13, 1, 1),
(16, 'Wednesday, April 25, 2012, 6:47 am', 132, 6502, 'Casters Ring (7 Days)', 2000000, 1, 1, 1),
(17, 'Wednesday, April 25, 2012, 6:48 am', 126, 0, 'Change Homunculus Name', 2000000, 1, 1, 1),
(18, 'Wednesday, April 25, 2012, 6:48 am', 1, 608, 'Yggdrasil Seed', 2000000, 9, 1, 1),
(19, 'Wednesday, April 25, 2012, 6:49 am', 16, 12012, 'Crystal Arrow Quiver', 2000000, 6, 1, 1),
(20, 'Wednesday, April 25, 2012, 6:49 am', 13, 985, 'Elunium', 2000000, 2, 1, 1),
(21, 'Wednesday, April 25, 2012, 6:49 am', 20, 12009, 'Silver Arrow Quiver', 2000000, 6, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE IF NOT EXISTS `quest` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL,
  `state` enum('0','1','2') NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `count1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`quest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ragsrvinfo`
--

CREATE TABLE IF NOT EXISTS `ragsrvinfo` (
  `index` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `exp` int(11) unsigned NOT NULL DEFAULT '0',
  `jexp` int(11) unsigned NOT NULL DEFAULT '0',
  `drop` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `account_id`, `date`, `title`, `content`) VALUES
(1, 2000010, 1335037998, 'naay moy gm nga bayot', 'inyung GM nasakpan gi lubot ug kabayo.');

-- --------------------------------------------------------

--
-- Table structure for table `sc_data`
--

CREATE TABLE IF NOT EXISTS `sc_data` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `type` smallint(11) unsigned NOT NULL,
  `tick` int(11) NOT NULL,
  `val1` int(11) NOT NULL DEFAULT '0',
  `val2` int(11) NOT NULL DEFAULT '0',
  `val3` int(11) NOT NULL DEFAULT '0',
  `val4` int(11) NOT NULL DEFAULT '0',
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `skill_homunculus`
--

CREATE TABLE IF NOT EXISTS `skill_homunculus` (
  `homun_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lv` smallint(6) NOT NULL,
  PRIMARY KEY (`homun_id`,`id`),
  KEY `homun_id` (`homun_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sstatus`
--

CREATE TABLE IF NOT EXISTS `sstatus` (
  `index` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `user` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE IF NOT EXISTS `storage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` smallint(11) unsigned NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vote_ip`
--

CREATE TABLE IF NOT EXISTS `vote_ip` (
  `vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(150) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `next_vote_gtop` int(11) NOT NULL DEFAULT '0',
  `next_vote_xtreme` int(11) NOT NULL DEFAULT '0',
  `next_vote_gamesites` int(11) NOT NULL DEFAULT '0',
  `next_vote_toparena` int(11) NOT NULL DEFAULT '0',
  `next_vote_ultimateserver` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=383 ;

--
-- Dumping data for table `vote_ip`
--

INSERT INTO `vote_ip` (`vote_id`, `account_id`, `ip_address`, `next_vote_gtop`, `next_vote_xtreme`, `next_vote_gamesites`, `next_vote_toparena`, `next_vote_ultimateserver`) VALUES
(372, 2000009, '112.198.232.129', 1333995320, 1333995325, 1333995327, 1333995335, 1333995338),
(381, 2000007, '::1', 1334175120, 1334175151, 1334175396, 0, 0),
(373, 2000010, '112.210.109.43', 1333995989, 1333996082, 0, 0, 0),
(377, 2000010, '112.210.125.179', 1334170797, 0, 0, 0, 0),
(380, 2000006, '112.202.25.75', 1334173869, 1334174026, 1334174051, 1334174106, 0),
(382, 2000008, '127.0.0.1', 1335370559, 1334941363, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `woe_times`
--

CREATE TABLE IF NOT EXISTS `woe_times` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `town` tinyint(3) unsigned NOT NULL,
  `castle` tinyint(3) unsigned NOT NULL,
  `sd` tinyint(3) unsigned NOT NULL,
  `sh` tinyint(3) unsigned NOT NULL,
  `sm` tinyint(3) unsigned NOT NULL,
  `st` bigint(20) unsigned NOT NULL,
  `sv` int(10) unsigned NOT NULL,
  `ed` tinyint(3) unsigned NOT NULL,
  `eh` tinyint(3) unsigned NOT NULL,
  `em` tinyint(3) unsigned NOT NULL,
  `et` bigint(20) unsigned NOT NULL,
  `ev` int(10) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `woe_times`
--

INSERT INTO `woe_times` (`id`, `town`, `castle`, `sd`, `sh`, `sm`, `st`, `sv`, `ed`, `eh`, `em`, `et`, `ev`, `active`) VALUES
(1, 1, 1, 1, 17, 0, 1335776400, 0, 1, 18, 15, 1335780900, 0, 0),
(2, 4, 16, 5, 17, 0, 1335517200, 0, 5, 18, 15, 1335521700, 0, 0),
(3, 8, 4, 6, 17, 0, 1335603600, 0, 6, 18, 15, 1335608100, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `zenylog`
--

CREATE TABLE IF NOT EXISTS `zenylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `src_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('M','T','V','S','N','A','E','B','I','D') NOT NULL DEFAULT 'S',
  `amount` int(11) NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

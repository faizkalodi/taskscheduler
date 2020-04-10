-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 10, 2020 at 09:02 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `xx_category`
--

CREATE TABLE `xx_category` (
  `id` int(5) NOT NULL default '0',
  `parent` int(5) NOT NULL default '0',
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `value` text character set latin1 NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `xx_category`
--

INSERT INTO `xx_category` (`id`, `parent`, `time`, `value`) VALUES
(1, 0, '2012-06-25 14:09:03', 'Category'),
(101, 2, '2017-01-22 16:20:31', 'Administrator'),
(2, 1, '2017-01-22 16:20:20', 'User Group'),
(102, 2, '2017-01-22 16:20:38', 'User'),
(105, 3, '2017-02-09 16:26:29', 'Gourmet Product Widgets'),
(104, 3, '2017-02-09 16:26:47', 'Specialties Widgets'),
(113, 105, '2017-02-07 13:59:12', 'Chocolates'),
(3, 1, '2017-02-01 13:53:00', 'Widgets'),
(4, 1, '2017-02-28 00:00:00', 'Store Locations'),
(106, 4, '2017-02-06 12:32:42', 'Bateel'),
(107, 4, '2017-02-06 12:32:48', 'Cafe Bateel'),
(108, 3, '2017-02-09 16:26:07', 'Bateel Widgets'),
(110, 108, '2017-02-07 13:32:58', 'Gifts'),
(111, 108, '2017-02-07 13:33:08', 'Boutiques'),
(112, 108, '2017-02-07 13:33:15', 'Gourmet Products'),
(114, 105, '2017-02-07 13:59:56', 'Pastries'),
(115, 105, '2017-02-07 13:59:59', 'Fine Foods'),
(116, 105, '2017-02-07 14:00:04', 'Dates'),
(117, 105, '2017-02-07 14:00:12', 'Date Health Benefits'),
(118, 3, '2017-02-09 16:26:52', 'french Widgets'),
(119, 3, '2017-02-09 16:26:56', 'menu Widgets'),
(120, 3, '2017-02-09 16:27:00', 'pastry Widgets');

-- --------------------------------------------------------

--
-- Table structure for table `xx_siteinfo`
--

CREATE TABLE `xx_siteinfo` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `upto` date NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `xx_siteinfo`
--

INSERT INTO `xx_siteinfo` (`id`, `title`, `details`, `upto`, `time`) VALUES
(1, 'Website Name', 'Task Scheduler', '2050-12-01', '2020-04-10 10:18:32'),
(6, 'Header Menu Limit', '10', '2050-12-01', '2017-11-27 17:05:12'),
(7, 'Default Meta Title', 'Task Scheduler', '2050-12-01', '2020-04-10 09:33:43'),
(8, 'Default Meta Description', 'Task Scheduler', '2050-12-01', '2020-04-10 09:33:57'),
(9, 'Default Meta Keywords', 'Task Scheduler', '2050-12-01', '2020-04-10 09:34:03'),
(13, 'ETIVE INTRODUCTION', 'Etive Consulting can support and protect your business by working in partnership with you to provide objective, tailored and effective compliance solutions.', '2050-12-01', '2017-11-28 10:32:02'),
(14, 'CONTACT', 'Level 7, Building 11, Bay Square \r\nBusiness Bay, PO Box 488112, \r\nDubai, U.A.E.\r\nTel: +971 (4) 556 1590', '2050-12-01', '2017-11-28 10:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `xx_task`
--

CREATE TABLE `xx_task` (
  `id` int(11) NOT NULL,
  `title` varchar(300) character set utf8 collate utf8_unicode_ci NOT NULL,
  `details` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `estimated_time` varchar(300) character set utf8 collate utf8_unicode_ci NOT NULL,
  `used_time` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `alloted_to` varchar(300) character set utf8 collate utf8_unicode_ci NOT NULL,
  `alloted_by` varchar(300) character set utf8 collate utf8_unicode_ci NOT NULL,
  `alloted_date` varchar(300) NOT NULL,
  `priority` int(50) NOT NULL,
  `status` int(50) NOT NULL,
  `order` int(50) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_task`
--

INSERT INTO `xx_task` (`id`, `title`, `details`, `estimated_time`, `used_time`, `alloted_to`, `alloted_by`, `alloted_date`, `priority`, `status`, `order`, `time`) VALUES
(1, 'Project plan and system Design  for website', 'Create the new project plan\r\nsystem design and database design for the new project', '15', '', '54', '2', '2020-04-10', 4, 2, 0, '2020-04-10 09:21:50'),
(2, 'Database design', 'Start mysql database dsign for each module of the project A', '24', '', '53', '2', '2020-04-11', 2, 1, 0, '2020-04-10 09:23:05'),
(3, 'Create UI for web', 'Discuss the project with project manager and programmer and start the UI works', '48', '', '52', '2', '2020-04-11', 3, 3, 0, '2020-04-10 09:24:32'),
(4, 'Make SEO Plans', 'Makse SEo plans and create analytics account and other required plans for SEO of website project A!', '72', '', '55', '2', '2020-04-10', 1, 1, 0, '2020-04-10 10:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `xx_user`
--

CREATE TABLE `xx_user` (
  `id` int(11) NOT NULL auto_increment,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `designation` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL,
  `department` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `newsletter` varchar(50) NOT NULL,
  `cpanel` int(11) NOT NULL,
  `refer` varchar(10) NOT NULL,
  `upto` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `time` timestamp NOT NULL default '0000-00-00 00:00:00',
  `type` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `xx_user`
--

INSERT INTO `xx_user` (`id`, `fname`, `lname`, `uname`, `password`, `email`, `mobile`, `designation`, `department`, `status`, `image`, `newsletter`, `cpanel`, `refer`, `upto`, `time`, `type`) VALUES
(1, 'Bruce', 'Clay', 'bruceclay', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'bruceclay@brcclay.com', '', '', '', 1, 'user1.png', '', 1, '', '2017-01-23 12:18:56', '2017-01-26 09:11:18', '101'),
(2, 'Admin', 'User', 'admin', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'admin@admin.com', '', '', 'Dubai', 1, 'user2.ico', '', 1, '', '2020-04-10 11:32:04', '2020-04-10 09:59:11', '101'),
(52, 'Jacob', 'Nohe', 'jacob', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'jacob@jjk.com', '', 'Graphic Designer', 'IT', 1, '', '', 2, '', '0000-00-00 00:00:00', '2020-04-09 22:09:32', '102'),
(53, 'Dennis', 'Chelier', 'dennis', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'denis@aa.com', '', 'Programmer', 'IT', 1, '', '', 2, '', '0000-00-00 00:00:00', '2020-04-10 10:24:15', '102'),
(54, 'Nelson', 'Re', 'nelson', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'nelson@aol.cm', '', 'Project Manager', 'IT', 1, '', '', 2, '', '0000-00-00 00:00:00', '2020-04-09 22:09:35', '102'),
(55, 'Raju', 'Mehta', 'raju', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'raju@aol.com', '', 'SEO specialist', 'Marketing', 1, '', '', 2, '', '0000-00-00 00:00:00', '2020-04-09 22:09:38', '102'),
(56, 'Sonia', 'Yadav', 'sonia', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'sonia@aol.com', '', 'Social Media  Executive', 'Marketing', 1, '', '', 2, '', '0000-00-00 00:00:00', '2020-04-09 22:09:41', '102'),
(57, 'Managing', 'Director', 'mdcompany', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'md@tt.com', '', '', '', 1, '', '', 2, '', '0000-00-00 00:00:00', '2020-04-10 10:20:34', '101');

-- --------------------------------------------------------

--
-- Table structure for table `xx_user_logs`
--

CREATE TABLE `xx_user_logs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL,
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `notes` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `xx_user_logs`
--

INSERT INTO `xx_user_logs` (`id`, `uid`, `ip`, `time`, `notes`) VALUES
(1, 2, '127.0.0.1', '2020-04-10 09:59:11', 'Admin: Updated ID:`2` in `xx_user` '),
(2, 57, '127.0.0.1', '2020-04-10 10:01:32', 'Signed in!'),
(3, 57, '127.0.0.1', '2020-04-10 10:05:46', 'Signed Out!'),
(4, 2, '127.0.0.1', '2020-04-10 10:05:52', 'Signed in!'),
(5, 2, '127.0.0.1', '2020-04-10 10:18:20', 'Signed Out!'),
(6, 2, '127.0.0.1', '2020-04-10 10:18:24', 'Signed in!'),
(7, 2, '127.0.0.1', '2020-04-10 10:18:32', 'Admin: Updated ID:`1` in `xx_siteinfo` '),
(8, 2, '127.0.0.1', '2020-04-10 10:18:42', 'Admin: Updated ID:`53` in `xx_user` '),
(9, 2, '127.0.0.1', '2020-04-10 10:20:34', 'Admin: Updated ID:`57` in `xx_user` '),
(10, 2, '127.0.0.1', '2020-04-10 10:20:38', 'Signed Out!'),
(11, 2, '127.0.0.1', '2020-04-10 10:20:43', 'Signed in!'),
(12, 2, '127.0.0.1', '2020-04-10 10:22:05', 'Admin: Updated ID:`4` in `xx_task` '),
(13, 2, '127.0.0.1', '2020-04-10 10:24:15', 'Admin: Updated ID:`53` in `xx_user` '),
(14, 2, '127.0.0.1', '2020-04-10 10:29:32', 'Signed Out!'),
(15, 2, '127.0.0.1', '2020-04-10 10:32:29', 'Signed in!'),
(16, 2, '127.0.0.1', '2020-04-10 10:32:32', 'Signed Out!');

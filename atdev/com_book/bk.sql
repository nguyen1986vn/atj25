CREATE TABLE IF NOT EXISTS `at_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `author` varchar(145) DEFAULT NULL,
  `publisher` varchar(145) DEFAULT NULL,
  `description` text,
  `content` mediumtext,
  `published_date` date DEFAULT NULL,
  `special` tinyint(4) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `sale_off` float DEFAULT NULL,
  `params` text,
  `metakey` varchar(1024) DEFAULT NULL,
  `metadesc` varchar(1025) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `book`
--


-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE IF NOT EXISTS `at_book_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `alias` varchar(200) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `lft` tinyint(4) DEFAULT NULL,
  `rgt` tinyint(4) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `description` text,
  `published` tinyint(4) DEFAULT NULL,
  `access` tinyint(4) DEFAULT NULL,
  `params` text,
  `metakey` varchar(1024) DEFAULT NULL,
  `metadesc` varchar(1024) DEFAULT NULL,
  `metadata` text,
  `created_user_id` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT NULL,
  `language` char(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `at_book_categories` (`id`, `parent_id`, `title`, `alias`, `asset_id`, `lft`, `rgt`, `level`, `description`, `published`, `access`, `params`, `metakey`, `metadesc`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `ordering`, `hits`, `language`) VALUES
(1, 0, 'Root', 'root', NULL, 0, 21, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '*'),
(2, 1, 'Sách kỹ thuật', 'sach-ky-thuat', NULL, 1, 16, 1, '', 1, 1, NULL, '', '', '{"author":"","robots":""}', 42, '2012-04-06 01:42:05', NULL, NULL, 0, 0, '*'),
(3, 2, 'Mã nguồn mở', 'ma-nguon-mo', NULL, 2, 9, 2, '', 1, 1, NULL, '', '', '{"author":"","robots":""}', 42, '2012-04-06 01:42:33', NULL, NULL, 0, 0, '*'),
(4, 3, 'PHP Script', 'php-script', NULL, 3, 4, 3, '', 1, 1, NULL, '', '', '{"author":"","robots":""}', 42, '2012-04-06 01:43:13', NULL, NULL, 0, 0, '*'),
(5, 3, 'MySQL database', 'mysql-database', NULL, 5, 6, 3, '', 1, 1, NULL, '', '', '{"author":"","robots":""}', 42, '2012-04-06 01:43:32', NULL, NULL, 0, 0, '*'),
(6, 2, 'Microsoft', 'microsoft', NULL, 10, 15, 2, '', 1, 1, NULL, '', '', '{"author":"","robots":""}', 42, '2012-04-06 01:43:50', 42, '2012-04-06 04:30:44', 0, 0, '*'),
(7, 6, 'ASP Script', 'asp-script', NULL, 11, 12, 3, '', 1, 1, NULL, '', '', '{"author":"","robots":""}', 42, '2012-04-06 01:44:02', NULL, NULL, 0, 0, '*'),
(8, 6, 'C Sharp', 'c-sharp', NULL, 13, 14, 3, '', 1, 1, NULL, '', '', '{"author":"","robots":""}', 42, '2012-04-06 01:44:13', NULL, NULL, 0, 0, '*'),
(9, 1, 'Sách Kinh Tế', 'sach-kinh-te', NULL, 17, 18, 1, '', 1, 1, NULL, '', '', '{"author":"","robots":""}', 42, '2012-04-06 01:44:28', NULL, NULL, 0, 0, '*'),
(10, 1, 'Sách văn học', 'sach-van-hoc', NULL, 19, 20, 1, '', 1, 1, NULL, '', '', '{"author":"","robots":""}', 42, '2012-04-06 01:44:45', NULL, NULL, 0, 0, '*'),
(11, 3, 'Zend Framework', 'zend-framework', NULL, 7, 8, 3, '', 1, 1, NULL, '', '', '{"author":"","robots":""}', 42, '2012-04-08 00:42:56', NULL, NULL, 0, 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `book_test`
--

CREATE TABLE IF NOT EXISTS `at_book_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `content` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `book_test`
--

INSERT INTO `at_book_test` (`id`, `title`, `alias`, `content`, `published`) VALUES
(1, 'CakePHP Application Development', NULL, 'Develop cutting-edge Web 2.0 applications, and write PHP code in a faster, more productive way\r\nWalk through the creation of a complete CakePHP Web application\r\nCustomize the look and feel of applications using CakePHP layouts and views\r\nMake interactive applications using CakePHP, JavaScript, and AJAX helpers\r\nReady for the forthcoming release of CakePHP 1.2\r\n', 0),
(2, 'Mastering phpMyAdmin 3.4 for Effective MySQL Management', 'Hehehe', 'A step-by-step tutorial for manipulating data with the latest version of phpmyadmin\r\nAdminister your MySQL databases with phpMyAdmin\r\nManage users and privileges with MySQL Server Administration tools\r\nLearn to do things with your MySQL database and phpMyAdmin that you didn''t know were possible!', 0),
(3, 'phpList 2 E-mail Campaign Manager', NULL, 'Harness the power and flexibility of open source software using phpList for e-mail management mastery\r\nUse analytics to identify top-performing links and most engaged subscribers, and target campaigns based on flexible criteria\r\nAutomate routine list management housework, freeing you to produce quality content\r\nIntegrate phpList with existing publishing platforms, including WordPress, Blogger, Joomla!, and Drupal\r\nPacked with screenshots, real-world examples, and detailed explanations', 0),
(4, 'Yii 1.1 Application Development Cookbook', NULL, 'Learn to use Yii more efficiently through plentiful Yii recipes on diverse topics\r\nMake the most efficient use of your controller and views and reuse them\r\nAutomate error tracking and understand the Yii log and stack trace\r\nFull of practically useful solutions and concepts that you can use in your application, with clearly explained code and all the necessary screenshots', 0),
(5, 'Drupal 7 Module Development', NULL, 'Specifically written for Drupal 7 development\r\nWrite your own Drupal modules, themes, and libraries\r\nDiscover the powerful new tools introduced in Drupal 7\r\nLearn the programming secrets of six experienced Drupal developers\r\nGet practical with this book''s project-based format', 0),
(7, 'Magento 1.3: PHP Developer''s Guide', NULL, 'Extend and customize the Magento e-commerce system using PHP code\r\nSet up your own data profile to import or export data in Magento\r\nBuild applications that interface with the customer, product, and order data using Magento''s Core API\r\nPacked with examples for effective Magento Development', 0),
(8, 'WordPress 3 Complete', NULL, 'Learn everything you need for creating your own feature-rich website or blog from scratch\r\nClear and practical explanations of all aspects of WordPress\r\nIn-depth coverage of installation, themes, plugins, and syndication\r\nExplore WordPress as a fully functional content management system\r\nClear, easy-to-follow, concise; rich with examples and screenshots', 0),
(9, 'Drupal 7 Views Cookbook', NULL, 'Brand new recipe examples using the all new Views 3 UI\r\nA wide variety, including multi-display and programmatic views\r\nEasy-to-follow recipes with plenty of screenshots and demonstration', 0),
(10, 'CodeIgniter for Rapid PHP Application Development', NULL, 'Clear, structured tutorial on working with CodeIgniter\r\nCareful explanation of the basic concepts of CodeIgniter and its MVC architecture\r\nUsing CodeIgniter with databases, HTML forms, files, images, sessions, and email\r\nBuilding a dynamic website quickly and easily using CodeIgniter''s prepared code', 0),
(11, 'PHP jQuery Cookbook', NULL, 'Create rich and interactive web applications with PHP and jQuery\r\nDebug and execute jQuery code on a live site\r\nDesign interactive forms and menus\r\nAnother title in the Packt Cookbook range, which will help you get to grips with PHP as well as jQuery', 0),
(12, 'RESTful PHP Web Services', NULL, 'Get familiar with REST principles\r\nLearn how to design and implement PHP web services with REST\r\nReal-world examples, with services and client PHP code snippets\r\nIntroduces tools and frameworks that can be used when developing RESTful PHP applications', 0);


CREATE TABLE IF NOT EXISTS `at_book_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `full_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `shipping` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `at_book_invoice_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
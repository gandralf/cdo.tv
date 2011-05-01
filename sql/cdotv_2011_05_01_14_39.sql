-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Mai 01, 2011 as 02:38 PM
-- Versão do Servidor: 5.1.54
-- Versão do PHP: 5.3.5-1ubuntu7.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `cdotv`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_approved` (`comment_approved`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2011-04-16 16:39:09', '2011-04-16 16:39:09', 'Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org/', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wordpress.org/news/', 'WordPress Blog', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wordpress.org/news/feed/'),
(3, 'http://wordpress.org/extend/ideas/', 'Suggest Ideas', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/support/', 'Support Forum', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://wordpress.org/extend/themes/', 'Themes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wordpress.org/', 'WordPress Planet', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=331 ;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `blog_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 0, 'siteurl', 'http://cdo.tv.localhost', 'yes'),
(2, 0, 'blogname', 'cdo.tv', 'yes'),
(3, 0, 'blogdescription', 'Just another WordPress site', 'yes'),
(4, 0, 'users_can_register', '0', 'yes'),
(5, 0, 'admin_email', 'rafael.santos@gonow.com.br', 'yes'),
(6, 0, 'start_of_week', '1', 'yes'),
(7, 0, 'use_balanceTags', '0', 'yes'),
(8, 0, 'use_smilies', '1', 'yes'),
(9, 0, 'require_name_email', '1', 'yes'),
(10, 0, 'comments_notify', '1', 'yes'),
(11, 0, 'posts_per_rss', '10', 'yes'),
(12, 0, 'rss_use_excerpt', '0', 'yes'),
(13, 0, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 0, 'mailserver_login', 'login@example.com', 'yes'),
(15, 0, 'mailserver_pass', 'password', 'yes'),
(16, 0, 'mailserver_port', '110', 'yes'),
(17, 0, 'default_category', '1', 'yes'),
(18, 0, 'default_comment_status', 'open', 'yes'),
(19, 0, 'default_ping_status', 'open', 'yes'),
(20, 0, 'default_pingback_flag', '1', 'yes'),
(21, 0, 'default_post_edit_rows', '20', 'yes'),
(22, 0, 'posts_per_page', '10', 'yes'),
(23, 0, 'date_format', 'F j, Y', 'yes'),
(24, 0, 'time_format', 'g:i a', 'yes'),
(25, 0, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 0, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 0, 'links_recently_updated_append', '</em>', 'yes'),
(28, 0, 'links_recently_updated_time', '120', 'yes'),
(29, 0, 'comment_moderation', '0', 'yes'),
(30, 0, 'moderation_notify', '1', 'yes'),
(31, 0, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(32, 0, 'gzipcompression', '0', 'yes'),
(33, 0, 'hack_file', '0', 'yes'),
(34, 0, 'blog_charset', 'UTF-8', 'yes'),
(35, 0, 'moderation_keys', '', 'no'),
(36, 0, 'active_plugins', 'a:2:{i:0;s:50:"multiple-post-thumbnails/multi-post-thumbnails.php";i:1;s:27:"wp-pagenavi/wp-pagenavi.php";}', 'yes'),
(37, 0, 'home', 'http://cdo.tv.localhost', 'yes'),
(38, 0, 'category_base', '', 'yes'),
(39, 0, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 0, 'advanced_edit', '0', 'yes'),
(41, 0, 'comment_max_links', '2', 'yes'),
(42, 0, 'gmt_offset', '0', 'yes'),
(43, 0, 'default_email_category', '1', 'yes'),
(44, 0, 'recently_edited', 'a:3:{i:0;s:54:"/var/www/cdo.tv/wp-content/plugins/akismet/akismet.php";i:1;s:49:"/var/www/cdo.tv/wp-content/themes/cdotv/style.css";i:2;s:0:"";}', 'no'),
(45, 0, 'template', 'cdotv', 'yes'),
(46, 0, 'stylesheet', 'cdotv', 'yes'),
(47, 0, 'comment_whitelist', '1', 'yes'),
(48, 0, 'blacklist_keys', '', 'no'),
(49, 0, 'comment_registration', '0', 'yes'),
(50, 0, 'rss_language', 'en', 'yes'),
(51, 0, 'html_type', 'text/html', 'yes'),
(52, 0, 'use_trackback', '0', 'yes'),
(53, 0, 'default_role', 'subscriber', 'yes'),
(54, 0, 'db_version', '17516', 'yes'),
(55, 0, 'uploads_use_yearmonth_folders', '1', 'yes'),
(56, 0, 'upload_path', '', 'yes'),
(57, 0, 'blog_public', '1', 'yes'),
(58, 0, 'default_link_category', '2', 'yes'),
(59, 0, 'show_on_front', 'posts', 'yes'),
(60, 0, 'tag_base', '', 'yes'),
(61, 0, 'show_avatars', '1', 'yes'),
(62, 0, 'avatar_rating', 'G', 'yes'),
(63, 0, 'upload_url_path', '', 'yes'),
(64, 0, 'thumbnail_size_w', '150', 'yes'),
(65, 0, 'thumbnail_size_h', '150', 'yes'),
(66, 0, 'thumbnail_crop', '1', 'yes'),
(67, 0, 'medium_size_w', '300', 'yes'),
(68, 0, 'medium_size_h', '300', 'yes'),
(69, 0, 'avatar_default', 'mystery', 'yes'),
(70, 0, 'enable_app', '0', 'yes'),
(71, 0, 'enable_xmlrpc', '0', 'yes'),
(72, 0, 'large_size_w', '1024', 'yes'),
(73, 0, 'large_size_h', '1024', 'yes'),
(74, 0, 'image_default_link_type', 'file', 'yes'),
(75, 0, 'image_default_size', '', 'yes'),
(76, 0, 'image_default_align', '', 'yes'),
(77, 0, 'close_comments_for_old_posts', '0', 'yes'),
(78, 0, 'close_comments_days_old', '14', 'yes'),
(79, 0, 'thread_comments', '1', 'yes'),
(80, 0, 'thread_comments_depth', '5', 'yes'),
(81, 0, 'page_comments', '0', 'yes'),
(82, 0, 'comments_per_page', '50', 'yes'),
(83, 0, 'default_comments_page', 'newest', 'yes'),
(84, 0, 'comment_order', 'asc', 'yes'),
(85, 0, 'sticky_posts', 'a:0:{}', 'yes'),
(86, 0, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(87, 0, 'widget_text', 'a:3:{i:2;a:0:{}i:3;a:3:{s:5:"title";s:0:"";s:4:"text";s:115:"<img src="/wp-content/themes/cdotv/images/logoFooter.gif"/>\n600.600.1000\nAv. Vicuña Maquena, 1000\nSantiago - Chile";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(88, 0, 'widget_rss', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(89, 0, 'timezone_string', '', 'yes'),
(90, 0, 'embed_autourls', '1', 'yes'),
(91, 0, 'embed_size_w', '', 'yes'),
(92, 0, 'embed_size_h', '600', 'yes'),
(93, 0, 'page_for_posts', '0', 'yes'),
(94, 0, 'page_on_front', '0', 'yes'),
(95, 0, 'default_post_format', '0', 'yes'),
(96, 0, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(97, 0, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 0, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 0, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 0, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 0, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 0, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:13:{i:0;s:7:"pages-2";i:1;s:10:"calendar-2";i:2;s:7:"links-2";i:3;s:6:"text-2";i:4;s:5:"rss-2";i:5;s:11:"tag_cloud-2";i:6;s:8:"search-2";i:7;s:14:"recent-posts-2";i:8;s:17:"recent-comments-2";i:9;s:10:"archives-2";i:10;s:10:"nav_menu-2";i:11;s:12:"categories-2";i:12;s:6:"meta-2";}s:19:"primary-widget-area";a:0:{}s:21:"secondary-widget-area";a:0:{}s:24:"first-footer-widget-area";a:2:{i:0;s:10:"nav_menu-3";i:1;s:10:"nav_menu-4";}s:25:"second-footer-widget-area";a:0:{}s:24:"third-footer-widget-area";a:0:{}s:25:"fourth-footer-widget-area";a:1:{i:0;s:6:"text-3";}s:13:"array_version";i:3;}', 'yes'),
(103, 0, 'cron', 'a:3:{i:1304311155;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1304354382;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(104, 0, '_transient_doing_cron', '1304268030', 'yes'),
(105, 0, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:1:{i:0;O:8:"stdClass":7:{s:8:"response";s:7:"upgrade";s:3:"url";s:30:"http://wordpress.org/download/";s:7:"package";s:40:"http://wordpress.org/wordpress-3.1.2.zip";s:7:"current";s:5:"3.1.2";s:6:"locale";s:5:"en_US";s:11:"php_version";s:3:"4.3";s:13:"mysql_version";s:5:"4.1.2";}}s:12:"last_checked";i:1304267971;s:15:"version_checked";s:5:"3.1.1";}', 'yes'),
(106, 0, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1304264043;s:7:"checked";a:2:{s:50:"multiple-post-thumbnails/multi-post-thumbnails.php";s:3:"0.5";s:27:"wp-pagenavi/wp-pagenavi.php";s:4:"2.74";}s:8:"response";a:0:{}}', 'yes'),
(324, 0, '_site_transient_timeout_theme_roots', '1304269167', 'yes'),
(325, 0, '_site_transient_theme_roots', 'a:2:{s:5:"cdotv";s:7:"/themes";s:9:"twentyten";s:7:"/themes";}', 'yes'),
(109, 0, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1304267972;}', 'yes'),
(110, 0, '_transient_random_seed', '883402e8aac4c0d2a3154004b645c3e8', 'yes'),
(111, 0, 'auth_salt', 't^[@+rGkw^2kz>#(!`y1)]2_!{,Z]YZfF@rqk1r!s&S>CGZj!tmN11C`N#!,9yuN', 'yes'),
(112, 0, 'logged_in_salt', '03<nSG)0mcLvY.E]1DLwvNW*pSh/0pC5/MT`%&9XKg@1zwLQwVA!x<B}gdjUVu$k', 'yes'),
(113, 0, 'widget_pages', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(114, 0, 'widget_calendar', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(115, 0, 'widget_links', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(116, 0, 'widget_tag_cloud', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(117, 0, 'widget_nav_menu', 'a:4:{i:2;a:0:{}i:3;a:2:{s:5:"title";s:13:"Entretención";s:8:"nav_menu";i:3;}i:4;a:2:{s:5:"title";s:14:"CDO por dentro";s:8:"nav_menu";i:4;}s:12:"_multiwidget";i:1;}', 'yes'),
(118, 0, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:23:"http://cdo.tv.localhost";s:4:"link";s:99:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://cdo.tv.localhost/";s:3:"url";s:132:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://cdo.tv.localhost/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(119, 0, 'nonce_salt', 'L>LLutJe?Q~mnzf`H6Kp+QcA{Vl5bq=h hE6lB*h{_x.YH0<#ei,%yp3Tj`tW/eW', 'yes'),
(150, 0, 'current_theme', 'cdotv', 'yes'),
(121, 0, 'can_compress_scripts', '0', 'yes'),
(327, 0, 'ct_fields_types', 'a:2:{s:9:"contenido";a:1:{s:13:"admin_columns";a:3:{i:0;s:2:"cb";i:1;s:5:"title";i:2;s:6:"author";}}s:7:"noticia";a:1:{s:13:"admin_columns";a:3:{i:0;s:2:"cb";i:1;s:5:"title";i:2;s:6:"author";}}}', 'yes'),
(328, 0, 'ct_categories_types', '', 'yes'),
(330, 0, 'rewrite_rules', 'a:122:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:37:"contenido/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"contenido/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"contenido/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"contenido/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"contenido/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"contenido/([^/]+)/trackback/?$";s:36:"index.php?contenido=$matches[1]&tb=1";s:50:"contenido/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?contenido=$matches[1]&feed=$matches[2]";s:45:"contenido/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?contenido=$matches[1]&feed=$matches[2]";s:38:"contenido/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?contenido=$matches[1]&paged=$matches[2]";s:45:"contenido/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?contenido=$matches[1]&cpage=$matches[2]";s:30:"contenido/([^/]+)(/[0-9]+)?/?$";s:48:"index.php?contenido=$matches[1]&page=$matches[2]";s:26:"contenido/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"contenido/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"contenido/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"contenido/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"contenido/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"federaciones/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"federaciones/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"federaciones/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"federaciones/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"federaciones/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"federaciones/([^/]+)/trackback/?$";s:39:"index.php?federaciones=$matches[1]&tb=1";s:53:"federaciones/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?federaciones=$matches[1]&feed=$matches[2]";s:48:"federaciones/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?federaciones=$matches[1]&feed=$matches[2]";s:41:"federaciones/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?federaciones=$matches[1]&paged=$matches[2]";s:48:"federaciones/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?federaciones=$matches[1]&cpage=$matches[2]";s:33:"federaciones/([^/]+)(/[0-9]+)?/?$";s:51:"index.php?federaciones=$matches[1]&page=$matches[2]";s:29:"federaciones/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"federaciones/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"federaciones/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"federaciones/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"federaciones/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"banner/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"banner/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"banner/([^/]+)/trackback/?$";s:33:"index.php?banner=$matches[1]&tb=1";s:47:"banner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?banner=$matches[1]&feed=$matches[2]";s:42:"banner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?banner=$matches[1]&feed=$matches[2]";s:35:"banner/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?banner=$matches[1]&paged=$matches[2]";s:42:"banner/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?banner=$matches[1]&cpage=$matches[2]";s:27:"banner/([^/]+)(/[0-9]+)?/?$";s:45:"index.php?banner=$matches[1]&page=$matches[2]";s:23:"banner/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"banner/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:14:".*wp-atom.php$";s:19:"index.php?feed=atom";s:13:".*wp-rdf.php$";s:18:"index.php?feed=rdf";s:13:".*wp-rss.php$";s:18:"index.php?feed=rss";s:14:".*wp-rss2.php$";s:19:"index.php?feed=rss2";s:14:".*wp-feed.php$";s:19:"index.php?feed=feed";s:22:".*wp-commentsrss2.php$";s:34:"index.php?feed=rss2&withcomments=1";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:29:"comments/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:47:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$";s:69:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1";s:64:"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:52:"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]";s:36:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:25:".+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:".+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:".+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:".+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:".+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:18:"(.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:18:"(.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(297, 0, '_transient_timeout_plugin_slugs', '1304350443', 'no'),
(298, 0, '_transient_plugin_slugs', 'a:3:{i:0;s:31:"easy-post-types/custom-type.php";i:1;s:50:"multiple-post-thumbnails/multi-post-thumbnails.php";i:2;s:27:"wp-pagenavi/wp-pagenavi.php";}', 'no'),
(148, 0, '_site_transient_timeout_wporg_theme_feature_list', '1302992397', 'yes'),
(149, 0, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:14:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:5:"green";i:4;s:6:"orange";i:5;s:4:"pink";i:6;s:6:"purple";i:7;s:3:"red";i:8;s:6:"silver";i:9;s:3:"tan";i:10;s:5:"white";i:11;s:6:"yellow";i:12;s:4:"dark";i:13;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:13:{i:0;s:13:"custom-colors";i:1;s:13:"custom-header";i:2;s:17:"custom-background";i:3;s:11:"custom-menu";i:4;s:12:"editor-style";i:5;s:13:"theme-options";i:6;s:17:"threaded-comments";i:7;s:11:"sticky-post";i:8;s:12:"microformats";i:9;s:20:"rtl-language-support";i:10;s:17:"translation-ready";i:11;s:20:"front-page-post-form";i:12;s:10:"buddypress";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(151, 0, 'theme_mods_cdotv', 'a:1:{i:0;b:0;}', 'yes'),
(153, 0, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(222, 0, 'category_children', 'a:0:{}', 'yes'),
(156, 0, 'recently_activated', 'a:1:{s:31:"easy-post-types/custom-type.php";i:1304264042;}', 'yes'),
(178, 0, 'uninstall_plugins', 'a:2:{i:0;b:0;s:27:"wp-pagenavi/wp-pagenavi.php";s:14:"__return_false";}', 'yes'),
(179, 0, 'pagenavi_options', 'a:15:{s:10:"pages_text";s:36:"Page %CURRENT_PAGE% of %TOTAL_PAGES%";s:12:"current_text";s:13:"%PAGE_NUMBER%";s:9:"page_text";s:13:"%PAGE_NUMBER%";s:10:"first_text";s:8:"« First";s:9:"last_text";s:7:"Last »";s:9:"prev_text";s:2:"«";s:9:"next_text";s:2:"»";s:12:"dotleft_text";s:3:"...";s:13:"dotright_text";s:3:"...";s:9:"num_pages";i:5;s:23:"num_larger_page_numbers";i:3;s:28:"larger_page_numbers_multiple";i:10;s:11:"always_show";b:0;s:16:"use_pagenavi_css";b:0;s:5:"style";i:1;}', 'yes'),
(180, 0, 'akismet_available_servers', 'a:4:{s:12:"72.233.69.88";b:1;s:12:"72.233.69.89";b:1;s:12:"66.135.58.61";b:1;s:12:"66.135.58.62";b:1;}', 'yes'),
(181, 0, 'akismet_connectivity_time', '1302993879', 'yes'),
(326, 0, 'ct_content_types', 'a:2:{s:9:"contenido";a:20:{s:5:"label";s:10:"Contenidos";s:14:"singular_label";s:9:"Contenido";s:5:"title";b:1;s:6:"editor";b:1;s:6:"author";b:0;s:9:"thumbnail";b:1;s:7:"excerpt";b:1;s:10:"trackbacks";b:0;s:13:"custom_fields";b:1;s:8:"comments";b:0;s:9:"revisions";b:0;s:26:"parent_child_relationships";b:1;s:15:"page_attributes";b:1;s:7:"created";i:1304263514;s:9:"createdby";s:5:"admin";s:7:"rewrite";b:1;s:7:"show_ui";b:1;s:6:"public";b:1;s:20:"register_meta_box_cb";a:2:{i:0;O:12:"CustomFields":11:{s:7:"ajaxUrl";s:47:"http://cdo.tv.localhost/wp-admin/admin-ajax.php";s:5:"types";a:4:{i:0;O:22:"CustomFields_TextField":3:{s:15:"mainContentType";r:22;s:4:"root";s:76:"/var/www/cdo.tv/wp-content/plugins/easy-post-types/classes/custom-textfield/";s:8:"httpRoot";s:84:"http://cdo.tv.localhost/wp-content/plugins/easy-post-types/classes/custom-textfield/";}i:1;O:24:"CustomFields_SelectField":3:{s:15:"mainContentType";r:22;s:4:"root";s:73:"/var/www/cdo.tv/wp-content/plugins/easy-post-types/classes/custom-select/";s:8:"httpRoot";s:81:"http://cdo.tv.localhost/wp-content/plugins/easy-post-types/classes/custom-select/";}i:2;O:21:"CustomFields_CheckBox":3:{s:15:"mainContentType";r:22;s:4:"root";s:75:"/var/www/cdo.tv/wp-content/plugins/easy-post-types/classes/custom-checkbox/";s:8:"httpRoot";s:83:"http://cdo.tv.localhost/wp-content/plugins/easy-post-types/classes/custom-checkbox/";}i:3;O:22:"CustomFields_DateField":4:{s:15:"mainContentType";r:22;s:4:"root";s:76:"/var/www/cdo.tv/wp-content/plugins/easy-post-types/classes/custom-datefield/";s:8:"httpRoot";s:84:"http://cdo.tv.localhost/wp-content/plugins/easy-post-types/classes/custom-datefield/";s:7:"formats";a:3:{s:4:"Long";s:9:"Y, F d, M";s:6:"Medium";s:8:"D, m d Y";s:5:"Short";s:5:"m/d/Y";}}}s:19:"registeredPostTypes";a:1:{i:0;s:9:"contenido";}s:11:"fields_info";a:2:{s:6:"fields";a:2:{s:9:"contenido";a:1:{s:13:"admin_columns";a:3:{i:0;s:2:"cb";i:1;s:5:"title";i:2;s:6:"author";}}s:7:"noticia";a:1:{s:13:"admin_columns";a:3:{i:0;s:2:"cb";i:1;s:5:"title";i:2;s:6:"author";}}}s:5:"types";a:2:{s:9:"contenido";a:20:{s:5:"label";s:10:"Contenidos";s:14:"singular_label";s:9:"Contenido";s:5:"title";b:1;s:6:"editor";b:1;s:6:"author";b:0;s:9:"thumbnail";b:1;s:7:"excerpt";b:1;s:10:"trackbacks";b:0;s:13:"custom_fields";b:1;s:8:"comments";b:0;s:9:"revisions";b:0;s:26:"parent_child_relationships";b:1;s:15:"page_attributes";b:1;s:7:"created";i:1304263514;s:9:"createdby";s:5:"admin";s:7:"rewrite";b:1;s:7:"show_ui";b:1;s:6:"public";b:1;s:20:"register_meta_box_cb";a:2:{i:0;r:22;i:1;s:36:"init_custom_meta_boxes_for_post_edit";}s:8:"supports";a:7:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";i:4;s:13:"custom_fields";i:5;s:26:"parent_child_relationships";i:6;s:15:"page_attributes";}}s:7:"noticia";a:18:{s:5:"label";s:8:"Noticias";s:14:"singular_label";s:7:"Noticia";s:5:"title";b:1;s:6:"editor";b:1;s:6:"author";b:1;s:9:"thumbnail";b:1;s:7:"excerpt";b:1;s:10:"trackbacks";b:1;s:13:"custom_fields";b:1;s:8:"comments";b:1;s:9:"revisions";b:1;s:26:"parent_child_relationships";b:1;s:15:"page_attributes";b:1;s:7:"created";i:1304263693;s:9:"createdby";s:5:"admin";s:7:"rewrite";b:1;s:7:"show_ui";b:1;s:6:"public";b:1;}}}s:10:"properties";a:11:{s:9:"fieldset1";a:3:{i:0;s:8:"fieldset";i:1;s:7:"group-1";i:2;s:4:"open";}s:5:"label";a:2:{i:0;s:9:"textfield";i:1;s:5:"Label";}s:14:"singular_label";a:2:{i:0;s:9:"textfield";i:1;s:14:"Singular Label";}s:6:"public";a:2:{i:0;s:8:"checkbox";i:1;s:6:"Public";}s:9:"fieldset2";a:3:{i:0;s:8:"fieldset";i:1;s:7:"group-1";i:2;s:5:"close";}s:7:"show_ui";a:2:{i:0;s:8:"checkbox";i:1;s:7:"Show UI";}s:7:"rewrite";a:2:{i:0;s:8:"checkbox";i:1;s:7:"Rewrite";}s:9:"query_var";a:2:{i:0;s:8:"checkbox";i:1;s:9:"Query Var";}s:12:"hierarchical";a:2:{i:0;s:8:"checkbox";i:1;s:12:"Hierarchical";}s:15:"capability_type";a:3:{i:0;s:6:"select";i:1;s:15:"Capability Type";i:2;a:2:{i:0;s:4:"post";i:1;s:4:"page";}}s:8:"supports";a:3:{i:0;s:11:"multiselect";i:1;s:8:"Supports";i:2;i:0;}}s:7:"dbclass";O:15:"CustomFields_db":0:{}s:7:"jsclass";N;s:6:"labels";a:13:{s:4:"name";a:3:{i:0;s:5:"Posts";i:1;s:5:"Pages";i:2;s:4:"Name";}s:13:"singular_name";a:3:{i:0;s:4:"Post";i:1;s:4:"Page";i:2;s:13:"Singular Name";}s:7:"add_new";a:3:{i:0;s:7:"Add New";i:1;s:7:"Add New";i:2;s:7:"Add New";}s:12:"add_new_item";a:3:{i:0;s:12:"Add New Post";i:1;s:12:"Add New Page";i:2;s:12:"Add new Item";}s:9:"edit_item";a:3:{i:0;s:9:"Edit Post";i:1;s:9:"Edit Page";i:2;s:9:"Edit Item";}s:4:"edit";a:3:{i:0;s:4:"Edit";i:1;s:4:"Edit";i:2;s:4:"Edit";}s:8:"new_item";a:3:{i:0;s:8:"New Post";i:1;s:8:"New Page";i:2;s:8:"New Item";}s:9:"view_item";a:3:{i:0;s:9:"View Post";i:1;s:9:"View Page";i:2;s:9:"View Item";}s:12:"search_items";a:3:{i:0;s:12:"Search Posts";i:1;s:12:"Search Pages";i:2;s:12:"Search Items";}s:9:"not_found";a:3:{i:0;s:14:"No posts found";i:1;s:14:"No pages found";i:2;s:9:"Not Found";}s:18:"not_found_in_trash";a:3:{i:0;s:23:"No posts found in Trash";i:1;s:23:"No pages found in Trash";i:2;s:18:"Not Found in Trash";}s:4:"view";a:3:{i:0;s:9:"View Post";i:1;s:9:"View Page";i:2;s:4:"View";}s:17:"parent_item_colon";a:3:{i:0;N;i:1;s:12:"Parent Page:";i:2;s:11:"Parent Item";}}s:11:"permissions";a:7:{i:0;s:22:"permission_edit_object";i:1;s:20:"permission_edit_type";i:2;s:30:"permission_edit_others_objects";i:3;s:26:"permission_publish_objects";i:4;s:22:"permission_read_object";i:5;s:30:"permission_read_private_object";i:6;s:24:"permission_delete_object";}s:8:"httpRoot";s:59:"http://cdo.tv.localhost/wp-content/plugins/easy-post-types/";s:8:"supports";a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:6:"author";i:3;s:9:"thumbnail";i:4;s:7:"excerpt";i:5;s:10:"trackbacks";i:6;s:13:"custom_fields";i:7;s:8:"comments";i:8;s:9:"revisions";i:9;s:26:"parent_child_relationships";i:10;s:15:"page_attributes";}}i:1;s:36:"init_custom_meta_boxes_for_post_edit";}s:8:"supports";a:7:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";i:4;s:13:"custom_fields";i:5;s:26:"parent_child_relationships";i:6;s:15:"page_attributes";}}s:7:"noticia";a:18:{s:5:"label";s:8:"Noticias";s:14:"singular_label";s:7:"Noticia";s:5:"title";b:1;s:6:"editor";b:1;s:6:"author";b:1;s:9:"thumbnail";b:1;s:7:"excerpt";b:1;s:10:"trackbacks";b:1;s:13:"custom_fields";b:1;s:8:"comments";b:1;s:9:"revisions";b:1;s:26:"parent_child_relationships";b:1;s:15:"page_attributes";b:1;s:7:"created";i:1304263693;s:9:"createdby";s:5:"admin";s:7:"rewrite";b:1;s:7:"show_ui";b:1;s:6:"public";b:1;}}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=336 ;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1302980435:1'),
(3, 4, '_menu_item_type', 'custom'),
(4, 4, '_menu_item_menu_item_parent', '0'),
(5, 4, '_menu_item_object_id', '4'),
(6, 4, '_menu_item_object', 'custom'),
(7, 4, '_menu_item_target', ''),
(8, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(9, 4, '_menu_item_xfn', ''),
(10, 4, '_menu_item_url', 'http://cdo.tv.localhost/programacion.html'),
(12, 5, '_menu_item_type', 'custom'),
(13, 5, '_menu_item_menu_item_parent', '0'),
(14, 5, '_menu_item_object_id', '5'),
(15, 5, '_menu_item_object', 'custom'),
(16, 5, '_menu_item_target', ''),
(17, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(18, 5, '_menu_item_xfn', ''),
(19, 5, '_menu_item_url', 'http://cdo.tv.localhost/programacion.html'),
(31, 7, '_menu_item_menu_item_parent', '0'),
(21, 6, '_menu_item_type', 'custom'),
(22, 6, '_menu_item_menu_item_parent', '0'),
(23, 6, '_menu_item_object_id', '6'),
(24, 6, '_menu_item_object', 'custom'),
(25, 6, '_menu_item_target', ''),
(26, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(27, 6, '_menu_item_xfn', ''),
(28, 6, '_menu_item_url', 'http://cdo.tv.localhost/programacion.html'),
(30, 7, '_menu_item_type', 'custom'),
(32, 7, '_menu_item_object_id', '7'),
(33, 7, '_menu_item_object', 'custom'),
(34, 7, '_menu_item_target', ''),
(35, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(36, 7, '_menu_item_xfn', ''),
(37, 7, '_menu_item_url', 'http://cdo.tv.localhost/programacion.html'),
(39, 8, '_menu_item_type', 'custom'),
(40, 8, '_menu_item_menu_item_parent', '0'),
(41, 8, '_menu_item_object_id', '8'),
(42, 8, '_menu_item_object', 'custom'),
(43, 8, '_menu_item_target', ''),
(44, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 8, '_menu_item_xfn', ''),
(46, 8, '_menu_item_url', 'http://cdo.tv.localhost/programacion.html'),
(48, 9, '_menu_item_type', 'custom'),
(49, 9, '_menu_item_menu_item_parent', '0'),
(50, 9, '_menu_item_object_id', '9'),
(51, 9, '_menu_item_object', 'custom'),
(52, 9, '_menu_item_target', ''),
(53, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 9, '_menu_item_xfn', ''),
(55, 9, '_menu_item_url', 'http://cdo.tv.localhost/programacion.html'),
(57, 10, '_menu_item_type', 'custom'),
(58, 10, '_menu_item_menu_item_parent', '0'),
(59, 10, '_menu_item_object_id', '10'),
(60, 10, '_menu_item_object', 'custom'),
(61, 10, '_menu_item_target', ''),
(62, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 10, '_menu_item_xfn', ''),
(64, 10, '_menu_item_url', 'http://cdo.tv.localhost/programacion.html'),
(66, 11, '_menu_item_type', 'custom'),
(67, 11, '_menu_item_menu_item_parent', '0'),
(68, 11, '_menu_item_object_id', '11'),
(69, 11, '_menu_item_object', 'custom'),
(70, 11, '_menu_item_target', ''),
(71, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 11, '_menu_item_xfn', ''),
(73, 11, '_menu_item_url', 'http://cdo.tv.localhost/'),
(75, 12, '_edit_last', '1'),
(76, 12, '_edit_lock', '1302987303:1'),
(77, 15, '_menu_item_type', 'post_type'),
(78, 15, '_menu_item_menu_item_parent', '0'),
(79, 15, '_menu_item_object_id', '12'),
(80, 15, '_menu_item_object', 'page'),
(81, 15, '_menu_item_target', ''),
(82, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 15, '_menu_item_xfn', ''),
(84, 15, '_menu_item_url', ''),
(86, 16, '_edit_last', '1'),
(87, 16, '_edit_lock', '1304215318:1'),
(88, 12, '_wp_page_template', 'programacion.php'),
(89, 21, '_menu_item_type', 'post_type'),
(90, 21, '_menu_item_menu_item_parent', '0'),
(91, 21, '_menu_item_object_id', '16'),
(92, 21, '_menu_item_object', 'page'),
(93, 21, '_menu_item_target', ''),
(94, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 21, '_menu_item_xfn', ''),
(96, 21, '_menu_item_url', ''),
(98, 16, '_wp_page_template', 'contenido.php'),
(99, 23, '_edit_last', '1'),
(100, 23, '_edit_lock', '1302988007:1'),
(101, 23, '_wp_page_template', 'multimedia.php'),
(102, 25, '_menu_item_type', 'post_type'),
(103, 25, '_menu_item_menu_item_parent', '0'),
(104, 25, '_menu_item_object_id', '23'),
(105, 25, '_menu_item_object', 'page'),
(106, 25, '_menu_item_target', ''),
(107, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 25, '_menu_item_xfn', ''),
(109, 25, '_menu_item_url', ''),
(111, 2, '_wp_trash_meta_status', 'publish'),
(112, 2, '_wp_trash_meta_time', '1302989040'),
(195, 86, '_wp_attached_file', '2011/04/tio-patinhas-690f812122.jpg'),
(196, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"100";s:6:"height";s:3:"120";s:14:"hwstring_small";s:22:"height=''96'' width=''80''";s:4:"file";s:35:"2011/04/tio-patinhas-690f812122.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(179, 68, '_edit_last', '1'),
(180, 68, '_edit_lock', '1303053196:1'),
(181, 69, '_wp_attached_file', '2011/04/tio-patinhas-690f81212.jpg'),
(182, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"100";s:6:"height";s:3:"120";s:14:"hwstring_small";s:22:"height=''96'' width=''80''";s:4:"file";s:34:"2011/04/tio-patinhas-690f81212.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(183, 68, '_thumbnail_id', '69'),
(184, 76, '_edit_last', '1'),
(185, 76, '_edit_lock', '1303056081:1'),
(186, 77, '_wp_attached_file', '2011/04/tio-patinhas-690f812121.jpg'),
(187, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"100";s:6:"height";s:3:"120";s:14:"hwstring_small";s:22:"height=''96'' width=''80''";s:4:"file";s:35:"2011/04/tio-patinhas-690f812121.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(188, 76, '_thumbnail_id', '78'),
(189, 78, '_wp_attached_file', '2011/04/tio-patinhas-690f82.jpg'),
(190, 78, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:31:"2011/04/tio-patinhas-690f82.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f82-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:31:"tio-patinhas-690f82-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:30:"tio-patinhas-690f82-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(191, 80, '_wp_attached_file', '2011/04/tio-patinhas-690f83.jpg'),
(192, 80, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:31:"2011/04/tio-patinhas-690f83.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f83-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:31:"tio-patinhas-690f83-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:30:"tio-patinhas-690f83-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(193, 85, '_wp_attached_file', '2011/04/tio-patinhas-690f84.jpg'),
(194, 85, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:31:"2011/04/tio-patinhas-690f84.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f84-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:31:"tio-patinhas-690f84-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:30:"tio-patinhas-690f84-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}s:35:"post-second-project-image-thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f84-714x535.jpg";s:5:"width";s:3:"714";s:6:"height";s:3:"535";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(161, 49, '_edit_last', '1'),
(162, 49, '_edit_lock', '1303000082:1'),
(163, 50, '_wp_attached_file', '2011/04/tio-patinhas-690f8.jpg'),
(164, 50, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:30:"2011/04/tio-patinhas-690f8.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:30:"tio-patinhas-690f8-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:30:"tio-patinhas-690f8-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(165, 51, '_edit_last', '1'),
(166, 51, '_edit_lock', '1303078945:1'),
(167, 52, '_wp_attached_file', '2011/04/tio-patinhas.png'),
(168, 52, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"373";s:6:"height";s:3:"295";s:14:"hwstring_small";s:23:"height=''96'' width=''121''";s:4:"file";s:24:"2011/04/tio-patinhas.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:24:"tio-patinhas-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:24:"tio-patinhas-300x237.png";s:5:"width";s:3:"300";s:6:"height";s:3:"237";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(169, 59, '_wp_attached_file', '2011/04/tio-patinhas1.png'),
(170, 59, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"373";s:6:"height";s:3:"295";s:14:"hwstring_small";s:23:"height=''96'' width=''121''";s:4:"file";s:25:"2011/04/tio-patinhas1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:25:"tio-patinhas1-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:25:"tio-patinhas1-300x237.png";s:5:"width";s:3:"300";s:6:"height";s:3:"237";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(171, 51, '_thumbnail_id', '59'),
(172, 61, '_wp_attached_file', '2011/04/tio-patinhas-690f81.jpg'),
(173, 61, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:31:"2011/04/tio-patinhas-690f81.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f81-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:31:"tio-patinhas-690f81-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:30:"tio-patinhas-690f81-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(174, 60, '_thumbnail_id', '61'),
(175, 60, '_edit_last', '1'),
(176, 60, '_edit_lock', '1303080644:1'),
(177, 49, '_wp_trash_meta_status', 'draft'),
(178, 49, '_wp_trash_meta_time', '1303051474'),
(328, 152, '_edit_lock', '1304215298:1'),
(198, 89, '_wp_attached_file', '2011/04/tio-patinhas-690f812123.jpg'),
(199, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"100";s:6:"height";s:3:"120";s:14:"hwstring_small";s:22:"height=''96'' width=''80''";s:4:"file";s:35:"2011/04/tio-patinhas-690f812123.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(206, 92, '_wp_attached_file', '2011/04/tio-patinhas-690f812124.jpg'),
(201, 90, '_wp_attached_file', '2011/04/tio-patinhas-690f85.jpg'),
(202, 90, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:31:"2011/04/tio-patinhas-690f85.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f85-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:31:"tio-patinhas-690f85-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:30:"tio-patinhas-690f85-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}s:35:"post-second-project-image-thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f85-714x535.jpg";s:5:"width";s:3:"714";s:6:"height";s:3:"535";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(203, 91, '_wp_attached_file', '2011/04/tio-patinhas-690f86.jpg'),
(204, 91, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:31:"2011/04/tio-patinhas-690f86.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f86-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:31:"tio-patinhas-690f86-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:30:"tio-patinhas-690f86-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}s:35:"post-second-project-image-thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f86-714x535.jpg";s:5:"width";s:3:"714";s:6:"height";s:3:"535";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(205, 88, 'contenido_second-featured-image_thumbnail_id', '91'),
(207, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"100";s:6:"height";s:3:"120";s:14:"hwstring_small";s:22:"height=''96'' width=''80''";s:4:"file";s:35:"2011/04/tio-patinhas-690f812124.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(208, 88, '_thumbnail_id', '92'),
(209, 88, '_edit_last', '1'),
(210, 88, '_edit_lock', '1303065558:1'),
(211, 93, '_edit_last', '1'),
(212, 93, '_edit_lock', '1304270633:1'),
(213, 94, '_wp_attached_file', '2011/04/tio-patinhas-690f812125.jpg'),
(214, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"100";s:6:"height";s:3:"120";s:14:"hwstring_small";s:22:"height=''96'' width=''80''";s:4:"file";s:35:"2011/04/tio-patinhas-690f812125.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(215, 93, '_thumbnail_id', '94'),
(216, 95, '_wp_attached_file', '2011/04/tio-patinhas-690f87.jpg'),
(217, 95, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:31:"2011/04/tio-patinhas-690f87.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f87-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:31:"tio-patinhas-690f87-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:30:"tio-patinhas-690f87-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f87-400x300.jpg";s:5:"width";s:3:"400";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(228, 104, '_wp_attached_file', '2011/04/103196bwwall6-e1303079330209.jpg'),
(219, 96, '_wp_attached_file', '2011/04/tio-patinhas-690f88.jpg'),
(220, 96, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:31:"2011/04/tio-patinhas-690f88.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f88-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:31:"tio-patinhas-690f88-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:30:"tio-patinhas-690f88-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:31:"tio-patinhas-690f88-400x300.jpg";s:5:"width";s:3:"400";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(221, 102, '_wp_attached_file', '2011/04/wp_pressblog.jpg'),
(222, 102, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"190";s:6:"height";s:3:"180";s:14:"hwstring_small";s:23:"height=''96'' width=''101''";s:4:"file";s:24:"2011/04/wp_pressblog.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:3:{s:4:"file";s:24:"wp_pressblog-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:14:"post-thumbnail";a:3:{s:4:"file";s:23:"wp_pressblog-100x94.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"94";}s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:22:"wp_pressblog-95x90.jpg";s:5:"width";s:2:"95";s:6:"height";s:2:"90";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(232, 105, '_wp_attached_file', '2011/04/ubuntu_black_brushed__metal_by_monkeymagico-e1303079426564.png'),
(224, 103, '_wp_attached_file', '2011/04/screenshot-e1303078827971.png'),
(225, 103, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"290";s:6:"height";s:3:"180";s:14:"hwstring_small";s:23:"height=''79'' width=''128''";s:4:"file";s:37:"2011/04/screenshot-e1303078827971.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:3:{s:4:"file";s:37:"screenshot-e1303078827971-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:14:"post-thumbnail";a:3:{s:4:"file";s:22:"screenshot-100x103.png";s:5:"width";s:3:"100";s:6:"height";s:3:"103";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:22:"screenshot-173x180.png";s:5:"width";s:3:"173";s:6:"height";s:3:"180";}s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:20:"screenshot-86x90.png";s:5:"width";s:2:"86";s:6:"height";s:2:"90";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(226, 103, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"311";s:4:"file";s:14:"screenshot.png";}s:11:"medium-orig";a:3:{s:4:"file";s:22:"screenshot-289x300.png";s:5:"width";s:3:"289";s:6:"height";s:3:"300";}s:14:"thumbnail-orig";a:3:{s:4:"file";s:22:"screenshot-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}'),
(227, 51, 'contenido_second-featured-image_thumbnail_id', '103'),
(229, 104, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"288";s:6:"height";s:3:"177";s:14:"hwstring_small";s:23:"height=''78'' width=''128''";s:4:"file";s:40:"2011/04/103196bwwall6-e1303079330209.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:40:"103196bwwall6-e1303079330209-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:14:"post-thumbnail";a:3:{s:4:"file";s:24:"103196bwwall6-100x56.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"56";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:25:"103196bwwall6-290x163.jpg";s:5:"width";s:3:"290";s:6:"height";s:3:"163";}s:29:"post-headline-image-thumbnail";a:3:{s:4:"file";s:25:"103196bwwall6-711x400.jpg";s:5:"width";s:3:"711";s:6:"height";s:3:"400";}s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:24:"103196bwwall6-160x90.jpg";s:5:"width";s:3:"160";s:6:"height";s:2:"90";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(230, 104, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";s:4:"1920";s:6:"height";s:4:"1080";s:4:"file";s:17:"103196bwwall6.jpg";}s:10:"large-orig";a:3:{s:4:"file";s:26:"103196bwwall6-1024x576.jpg";s:5:"width";s:4:"1024";s:6:"height";s:3:"576";}s:11:"medium-orig";a:3:{s:4:"file";s:25:"103196bwwall6-300x168.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"168";}s:14:"thumbnail-orig";a:3:{s:4:"file";s:25:"103196bwwall6-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}'),
(231, 93, 'contenido_second-featured-image_thumbnail_id', '104'),
(233, 105, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"289";s:6:"height";s:3:"180";s:14:"hwstring_small";s:23:"height=''79'' width=''128''";s:4:"file";s:70:"2011/04/ubuntu_black_brushed__metal_by_monkeymagico-e1303079426564.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:70:"ubuntu_black_brushed__metal_by_monkeymagico-e1303079426564-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:14:"post-thumbnail";a:3:{s:4:"file";s:54:"ubuntu_black_brushed__metal_by_monkeymagico-100x62.png";s:5:"width";s:3:"100";s:6:"height";s:2:"62";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:55:"ubuntu_black_brushed__metal_by_monkeymagico-288x180.png";s:5:"width";s:3:"288";s:6:"height";s:3:"180";}s:29:"post-headline-image-thumbnail";a:3:{s:4:"file";s:55:"ubuntu_black_brushed__metal_by_monkeymagico-640x400.png";s:5:"width";s:3:"640";s:6:"height";s:3:"400";}s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:54:"ubuntu_black_brushed__metal_by_monkeymagico-144x90.png";s:5:"width";s:3:"144";s:6:"height";s:2:"90";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(234, 105, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";s:4:"1680";s:6:"height";s:4:"1050";s:4:"file";s:47:"ubuntu_black_brushed__metal_by_monkeymagico.png";}s:10:"large-orig";a:3:{s:4:"file";s:56:"ubuntu_black_brushed__metal_by_monkeymagico-1024x640.png";s:5:"width";s:4:"1024";s:6:"height";s:3:"640";}s:11:"medium-orig";a:3:{s:4:"file";s:55:"ubuntu_black_brushed__metal_by_monkeymagico-300x187.png";s:5:"width";s:3:"300";s:6:"height";s:3:"187";}s:14:"thumbnail-orig";a:3:{s:4:"file";s:55:"ubuntu_black_brushed__metal_by_monkeymagico-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}'),
(235, 60, 'contenido_second-featured-image_thumbnail_id', '105'),
(236, 108, '_wp_attached_file', '2011/04/Screenshot.png'),
(237, 108, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1280";s:6:"height";s:3:"800";s:14:"hwstring_small";s:23:"height=''80'' width=''128''";s:4:"file";s:22:"2011/04/Screenshot.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:3:{s:4:"file";s:22:"Screenshot-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:22:"Screenshot-300x187.png";s:5:"width";s:3:"300";s:6:"height";s:3:"187";}s:5:"large";a:3:{s:4:"file";s:23:"Screenshot-1024x640.png";s:5:"width";s:4:"1024";s:6:"height";s:3:"640";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"Screenshot-100x62.png";s:5:"width";s:3:"100";s:6:"height";s:2:"62";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:22:"Screenshot-288x180.png";s:5:"width";s:3:"288";s:6:"height";s:3:"180";}s:29:"post-headline-image-thumbnail";a:3:{s:4:"file";s:22:"Screenshot-640x400.png";s:5:"width";s:3:"640";s:6:"height";s:3:"400";}s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:21:"Screenshot-144x90.png";s:5:"width";s:3:"144";s:6:"height";s:2:"90";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(238, 118, '_wp_attached_file', '2011/04/linux-044-e1303099641458.jpg'),
(239, 118, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"691";s:6:"height";s:2:"89";s:14:"hwstring_small";s:23:"height=''16'' width=''128''";s:4:"file";s:36:"2011/04/linux-044-e1303099641458.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:3:{s:4:"file";s:35:"linux-044-e1303099641458-150x89.jpg";s:5:"width";s:3:"150";s:6:"height";s:2:"89";}s:6:"medium";a:3:{s:4:"file";s:35:"linux-044-e1303099641458-300x38.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"38";}s:14:"post-thumbnail";a:3:{s:4:"file";s:20:"linux-044-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}s:27:"post-banner-image-thumbnail";a:3:{s:4:"file";s:21:"linux-044-240x180.jpg";s:5:"width";s:3:"240";s:6:"height";s:3:"180";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:21:"linux-044-240x180.jpg";s:5:"width";s:3:"240";s:6:"height";s:3:"180";}s:29:"post-headline-image-thumbnail";a:3:{s:4:"file";s:21:"linux-044-533x400.jpg";s:5:"width";s:3:"533";s:6:"height";s:3:"400";}s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:20:"linux-044-120x90.jpg";s:5:"width";s:3:"120";s:6:"height";s:2:"90";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(240, 118, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:4:"file";s:13:"linux-044.jpg";}s:11:"medium-orig";a:3:{s:4:"file";s:21:"linux-044-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"thumbnail-orig";a:3:{s:4:"file";s:21:"linux-044-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}'),
(241, 117, 'banner_banner-image_thumbnail_id', '118'),
(242, 117, '_edit_last', '1'),
(243, 117, '_edit_lock', '1303099663:1'),
(244, 119, '_edit_last', '1'),
(245, 119, '_edit_lock', '1303099924:1'),
(246, 120, '_wp_attached_file', '2011/04/tio-patinhas4-e1303099892798.png'),
(247, 120, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"373";s:6:"height";s:2:"90";s:14:"hwstring_small";s:23:"height=''30'' width=''128''";s:4:"file";s:40:"2011/04/tio-patinhas4-e1303099892798.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:39:"tio-patinhas4-e1303099892798-150x90.png";s:5:"width";s:3:"150";s:6:"height";s:2:"90";}s:6:"medium";a:3:{s:4:"file";s:39:"tio-patinhas4-e1303099892798-300x72.png";s:5:"width";s:3:"300";s:6:"height";s:2:"72";}s:14:"post-thumbnail";a:3:{s:4:"file";s:24:"tio-patinhas4-100x79.png";s:5:"width";s:3:"100";s:6:"height";s:2:"79";}s:27:"post-banner-image-thumbnail";a:3:{s:4:"file";s:25:"tio-patinhas4-227x180.png";s:5:"width";s:3:"227";s:6:"height";s:3:"180";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:25:"tio-patinhas4-227x180.png";s:5:"width";s:3:"227";s:6:"height";s:3:"180";}s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:24:"tio-patinhas4-113x90.png";s:5:"width";s:3:"113";s:6:"height";s:2:"90";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(248, 120, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";s:3:"373";s:6:"height";s:3:"295";s:4:"file";s:17:"tio-patinhas4.png";}s:11:"medium-orig";a:3:{s:4:"file";s:25:"tio-patinhas4-300x237.png";s:5:"width";s:3:"300";s:6:"height";s:3:"237";}s:14:"thumbnail-orig";a:3:{s:4:"file";s:25:"tio-patinhas4-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}'),
(249, 119, 'banner_banner-image_thumbnail_id', '120'),
(250, 121, '_edit_last', '1'),
(251, 121, '_edit_lock', '1303100469:1'),
(252, 122, '_wp_attached_file', '2011/04/Papel-de-Parede-Windows-Vidro-Quebrado-e1303100462395.jpg'),
(253, 122, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"691";s:6:"height";s:2:"89";s:14:"hwstring_small";s:23:"height=''16'' width=''128''";s:4:"file";s:65:"2011/04/Papel-de-Parede-Windows-Vidro-Quebrado-e1303100462395.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:3:{s:4:"file";s:64:"Papel-de-Parede-Windows-Vidro-Quebrado-e1303100462395-150x89.jpg";s:5:"width";s:3:"150";s:6:"height";s:2:"89";}s:6:"medium";a:3:{s:4:"file";s:64:"Papel-de-Parede-Windows-Vidro-Quebrado-e1303100462395-300x38.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"38";}s:14:"post-thumbnail";a:3:{s:4:"file";s:49:"Papel-de-Parede-Windows-Vidro-Quebrado-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}s:27:"post-banner-image-thumbnail";a:3:{s:4:"file";s:50:"Papel-de-Parede-Windows-Vidro-Quebrado-240x180.jpg";s:5:"width";s:3:"240";s:6:"height";s:3:"180";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:50:"Papel-de-Parede-Windows-Vidro-Quebrado-240x180.jpg";s:5:"width";s:3:"240";s:6:"height";s:3:"180";}s:29:"post-headline-image-thumbnail";a:3:{s:4:"file";s:50:"Papel-de-Parede-Windows-Vidro-Quebrado-533x400.jpg";s:5:"width";s:3:"533";s:6:"height";s:3:"400";}s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:49:"Papel-de-Parede-Windows-Vidro-Quebrado-120x90.jpg";s:5:"width";s:3:"120";s:6:"height";s:2:"90";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(254, 122, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:4:"file";s:42:"Papel-de-Parede-Windows-Vidro-Quebrado.jpg";}s:11:"medium-orig";a:3:{s:4:"file";s:50:"Papel-de-Parede-Windows-Vidro-Quebrado-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"thumbnail-orig";a:3:{s:4:"file";s:50:"Papel-de-Parede-Windows-Vidro-Quebrado-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}'),
(255, 121, 'banner_banner-image_thumbnail_id', '122'),
(256, 123, '_wp_attached_file', '2011/04/linux-045-e1303101242263.jpg'),
(257, 123, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"939";s:6:"height";s:3:"399";s:14:"hwstring_small";s:23:"height=''54'' width=''128''";s:4:"file";s:36:"2011/04/linux-045-e1303101242263.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:3:{s:4:"file";s:36:"linux-045-e1303101242263-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:36:"linux-045-e1303101242263-300x127.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"127";}s:14:"post-thumbnail";a:3:{s:4:"file";s:20:"linux-045-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}s:27:"post-banner-image-thumbnail";a:3:{s:4:"file";s:21:"linux-045-240x180.jpg";s:5:"width";s:3:"240";s:6:"height";s:3:"180";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:21:"linux-045-240x180.jpg";s:5:"width";s:3:"240";s:6:"height";s:3:"180";}s:29:"post-headline-image-thumbnail";a:3:{s:4:"file";s:21:"linux-045-533x400.jpg";s:5:"width";s:3:"533";s:6:"height";s:3:"400";}s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:20:"linux-045-120x90.jpg";s:5:"width";s:3:"120";s:6:"height";s:2:"90";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(258, 123, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:4:"file";s:13:"linux-045.jpg";}s:11:"medium-orig";a:3:{s:4:"file";s:21:"linux-045-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"thumbnail-orig";a:3:{s:4:"file";s:21:"linux-045-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}'),
(259, 93, 'contenido_headline-image_thumbnail_id', '123'),
(260, 124, '_wp_attached_file', '2011/04/linux-046-e1303101566875.jpg'),
(261, 124, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"573";s:6:"height";s:3:"294";s:14:"hwstring_small";s:23:"height=''65'' width=''128''";s:4:"file";s:36:"2011/04/linux-046-e1303101566875.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:3:{s:4:"file";s:36:"linux-046-e1303101566875-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:36:"linux-046-e1303101566875-300x153.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"153";}s:14:"post-thumbnail";a:3:{s:4:"file";s:20:"linux-046-100x75.jpg";s:5:"width";s:3:"100";s:6:"height";s:2:"75";}s:27:"post-banner-image-thumbnail";a:3:{s:4:"file";s:21:"linux-046-240x180.jpg";s:5:"width";s:3:"240";s:6:"height";s:3:"180";}s:36:"post-second-featured-image-thumbnail";a:3:{s:4:"file";s:21:"linux-046-240x180.jpg";s:5:"width";s:3:"240";s:6:"height";s:3:"180";}s:29:"post-headline-image-thumbnail";a:3:{s:4:"file";s:21:"linux-046-533x400.jpg";s:5:"width";s:3:"533";s:6:"height";s:3:"400";}s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:20:"linux-046-120x90.jpg";s:5:"width";s:3:"120";s:6:"height";s:2:"90";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(262, 124, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:4:"file";s:13:"linux-046.jpg";}s:11:"medium-orig";a:3:{s:4:"file";s:21:"linux-046-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"thumbnail-orig";a:3:{s:4:"file";s:21:"linux-046-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}'),
(263, 93, 'contenido_thumbnail-headline-image_thumbnail_id', '124'),
(327, 152, '_edit_last', '1'),
(265, 125, '_edit_last', '1'),
(266, 125, '_edit_lock', '1303104666:1'),
(267, 127, '_wp_attached_file', '2011/04/federaciones-12.png'),
(268, 127, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:27:"2011/04/federaciones-12.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:25:"federaciones-12-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:26:"federaciones-12-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(269, 128, '_wp_attached_file', '2011/04/federaciones-121.png'),
(270, 128, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:28:"2011/04/federaciones-121.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:26:"federaciones-121-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:27:"federaciones-121-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(271, 125, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '128'),
(272, 129, '_edit_last', '1'),
(273, 129, '_edit_lock', '1303104830:1'),
(274, 130, '_wp_attached_file', '2011/04/federaciones-02.png'),
(275, 130, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:27:"2011/04/federaciones-02.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:25:"federaciones-02-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:26:"federaciones-02-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(276, 129, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '130'),
(277, 131, '_edit_last', '1'),
(278, 131, '_edit_lock', '1303104917:1'),
(279, 132, '_wp_attached_file', '2011/04/federaciones-03.png'),
(280, 132, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"76";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''69''";s:4:"file";s:27:"2011/04/federaciones-03.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:25:"federaciones-03-65x90.png";s:5:"width";s:2:"65";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:26:"federaciones-03-72x100.png";s:5:"width";s:2:"72";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(281, 131, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '132'),
(282, 134, '_edit_last', '1'),
(283, 134, '_edit_lock', '1303105228:1'),
(284, 135, '_wp_attached_file', '2011/04/federaciones-111.png'),
(285, 135, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:28:"2011/04/federaciones-111.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:26:"federaciones-111-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:27:"federaciones-111-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(286, 134, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '135'),
(287, 136, '_edit_last', '1'),
(288, 136, '_edit_lock', '1303105284:1'),
(289, 137, '_wp_attached_file', '2011/04/federaciones-01.png'),
(290, 137, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:27:"2011/04/federaciones-01.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:25:"federaciones-01-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:26:"federaciones-01-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(291, 136, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '137'),
(292, 138, '_edit_last', '1'),
(293, 138, '_edit_lock', '1303105354:1'),
(294, 139, '_wp_attached_file', '2011/04/federaciones-112.png'),
(295, 139, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:28:"2011/04/federaciones-112.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:26:"federaciones-112-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:27:"federaciones-112-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(296, 138, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '139'),
(297, 140, '_edit_last', '1'),
(298, 140, '_edit_lock', '1303105401:1'),
(299, 141, '_wp_attached_file', '2011/04/federaciones-07.png'),
(300, 141, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:27:"2011/04/federaciones-07.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:25:"federaciones-07-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:26:"federaciones-07-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(301, 140, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '141'),
(302, 142, '_edit_last', '1'),
(303, 142, '_edit_lock', '1303105439:1'),
(304, 143, '_wp_attached_file', '2011/04/federaciones-113.png'),
(305, 143, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:28:"2011/04/federaciones-113.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:26:"federaciones-113-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:27:"federaciones-113-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(306, 142, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '143'),
(307, 144, '_edit_last', '1'),
(308, 144, '_edit_lock', '1303105497:1'),
(309, 145, '_wp_attached_file', '2011/04/federaciones-09.png'),
(310, 145, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"76";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''69''";s:4:"file";s:27:"2011/04/federaciones-09.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:25:"federaciones-09-65x90.png";s:5:"width";s:2:"65";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:26:"federaciones-09-72x100.png";s:5:"width";s:2:"72";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(311, 144, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '145'),
(312, 146, '_edit_last', '1'),
(313, 146, '_edit_lock', '1303105528:1'),
(314, 147, '_wp_attached_file', '2011/04/federaciones-10.png'),
(315, 147, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:27:"2011/04/federaciones-10.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:25:"federaciones-10-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:26:"federaciones-10-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(316, 146, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '147'),
(317, 148, '_edit_last', '1'),
(318, 148, '_edit_lock', '1303105565:1'),
(319, 149, '_wp_attached_file', '2011/04/federaciones-114.png'),
(320, 149, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:28:"2011/04/federaciones-114.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:26:"federaciones-114-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:27:"federaciones-114-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(321, 148, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '149'),
(322, 150, '_edit_last', '1'),
(323, 150, '_edit_lock', '1303105597:1'),
(324, 151, '_wp_attached_file', '2011/04/federaciones-122.png'),
(325, 151, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:2:"75";s:6:"height";s:3:"105";s:14:"hwstring_small";s:22:"height=''96'' width=''68''";s:4:"file";s:28:"2011/04/federaciones-122.png";s:5:"sizes";a:2:{s:39:"post-thumbnail-headlihe-image-thumbnail";a:3:{s:4:"file";s:26:"federaciones-122-64x90.png";s:5:"width";s:2:"64";s:6:"height";s:2:"90";}s:33:"post-thumbnail-federaciones-image";a:3:{s:4:"file";s:27:"federaciones-122-71x100.png";s:5:"width";s:2:"71";s:6:"height";s:3:"100";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(326, 150, 'federaciones_thumbnail-federaciones-image_thumbnail_id', '151'),
(329, 152, '_wp_page_template', 'default'),
(330, 152, '_wp_trash_meta_status', 'publish'),
(331, 152, '_wp_trash_meta_time', '1304215307'),
(332, 160, '_edit_last', '1'),
(333, 160, '_edit_lock', '1304263755:1'),
(334, 164, '_edit_last', '1'),
(335, 164, '_edit_lock', '1304264002:1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` text NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2011-04-16 16:39:09', '2011-04-16 16:39:09', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2011-04-16 16:39:09', '2011-04-16 16:39:09', '', 0, 'http://cdo.tv.localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2011-04-16 16:39:09', '2011-04-16 16:39:09', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickies to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://cdo.tv.localhost/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2011-04-16 21:24:00', '2011-04-16 21:24:00', '', 0, 'http://cdo.tv.localhost/?page_id=2', 0, 'page', '', 0),
(152, 1, '2011-04-30 23:18:54', '2011-04-30 23:18:54', '', 'Page to contenido', '', 'trash', 'open', 'open', '', 'page-to-contenido', '', '', '2011-05-01 02:01:47', '2011-05-01 02:01:47', '', 16, 'http://cdo.tv.localhost/?page_id=152', 0, 'page', '', 0),
(4, 1, '2011-04-16 19:03:12', '2011-04-16 19:03:12', '', 'Programación', '', 'publish', 'open', 'open', '', 'programacion', '', '', '2011-04-16 19:40:29', '2011-04-16 19:40:29', '', 0, 'http://cdo.tv.localhost/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2011-04-16 19:04:27', '2011-04-16 19:04:27', '', 'Contenido', '', 'publish', 'open', 'open', '', 'contenido', '', '', '2011-04-16 19:40:29', '2011-04-16 19:40:29', '', 0, 'http://cdo.tv.localhost/?p=5', 2, 'nav_menu_item', '', 0),
(6, 1, '2011-04-16 19:04:27', '2011-04-16 19:04:27', '', 'Multimedia', '', 'publish', 'open', 'open', '', 'multimedia', '', '', '2011-04-16 19:40:29', '2011-04-16 19:40:29', '', 0, 'http://cdo.tv.localhost/?p=6', 3, 'nav_menu_item', '', 0),
(7, 1, '2011-04-16 19:41:06', '2011-04-16 19:41:06', '', '¿Quienes somos?', '', 'publish', 'open', 'open', '', '%c2%bfquienes-somos', '', '', '2011-04-16 19:41:06', '2011-04-16 19:41:06', '', 0, 'http://cdo.tv.localhost/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2011-04-16 19:41:06', '2011-04-16 19:41:06', '', 'Misión', '', 'publish', 'open', 'open', '', 'mision', '', '', '2011-04-16 19:41:06', '2011-04-16 19:41:06', '', 0, 'http://cdo.tv.localhost/?p=8', 2, 'nav_menu_item', '', 0),
(9, 1, '2011-04-16 19:41:07', '2011-04-16 19:41:07', '', 'Equipo', '', 'publish', 'open', 'open', '', 'equipo', '', '', '2011-04-16 19:41:07', '2011-04-16 19:41:07', '', 0, 'http://cdo.tv.localhost/?p=9', 3, 'nav_menu_item', '', 0),
(10, 1, '2011-04-16 19:41:07', '2011-04-16 19:41:07', '', 'Contacto', '', 'publish', 'open', 'open', '', 'contacto', '', '', '2011-04-16 19:41:07', '2011-04-16 19:41:07', '', 0, 'http://cdo.tv.localhost/?p=10', 4, 'nav_menu_item', '', 0),
(11, 1, '2011-04-16 20:20:51', '2011-04-16 20:20:51', 'sdsdsd', 'Home', 'Home', 'publish', 'open', 'open', '', 'home', '', '', '2011-04-17 19:40:39', '2011-04-17 19:40:39', '', 0, 'http://cdo.tv.localhost/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2011-04-16 20:43:42', '2011-04-16 20:43:42', 'teste', 'Programación', '', 'publish', 'open', 'open', '', 'programacion', '', '', '2011-04-16 20:55:03', '2011-04-16 20:55:03', '', 0, 'http://cdo.tv.localhost/?page_id=12', 0, 'page', '', 0),
(13, 1, '2011-04-16 20:42:33', '2011-04-16 20:42:33', '', 'Programa', '', 'inherit', 'open', 'open', '', '12-revision', '', '', '2011-04-16 20:42:33', '2011-04-16 20:42:33', '', 12, 'http://cdo.tv.localhost/2011/04/12-revision/', 0, 'revision', '', 0),
(14, 1, '2011-04-16 20:43:42', '2011-04-16 20:43:42', '', 'Programación', '', 'inherit', 'open', 'open', '', '12-revision-2', '', '', '2011-04-16 20:43:42', '2011-04-16 20:43:42', '', 12, 'http://cdo.tv.localhost/2011/04/12-revision-2/', 0, 'revision', '', 0),
(15, 1, '2011-04-16 20:44:34', '2011-04-16 20:44:34', ' ', '', 'Programación', 'publish', 'open', 'open', '', '15', '', '', '2011-04-17 19:40:39', '2011-04-17 19:40:39', '', 0, 'http://cdo.tv.localhost/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2011-04-16 20:48:41', '2011-04-16 20:48:41', '', 'Contenido', '', 'publish', 'open', 'open', '', 'contenido', '', '', '2011-04-16 21:24:21', '2011-04-16 21:24:21', '', 0, 'http://cdo.tv.localhost/?page_id=16', 0, 'page', '', 0),
(17, 1, '2011-04-16 20:48:37', '2011-04-16 20:48:37', '', 'Contenido', '', 'inherit', 'open', 'open', '', '16-revision', '', '', '2011-04-16 20:48:37', '2011-04-16 20:48:37', '', 16, 'http://cdo.tv.localhost/2011/04/16-revision/', 0, 'revision', '', 0),
(18, 1, '2011-04-16 20:44:02', '2011-04-16 20:44:02', '', 'Programación', '', 'inherit', 'open', 'open', '', '12-revision-3', '', '', '2011-04-16 20:44:02', '2011-04-16 20:44:02', '', 12, 'http://cdo.tv.localhost/2011/04/12-revision-3/', 0, 'revision', '', 0),
(19, 1, '2011-04-16 20:54:26', '2011-04-16 20:54:26', '', 'Programación', '', 'inherit', 'open', 'open', '', '12-revision-4', '', '', '2011-04-16 20:54:26', '2011-04-16 20:54:26', '', 12, 'http://cdo.tv.localhost/2011/04/12-revision-4/', 0, 'revision', '', 0),
(20, 1, '2011-04-16 20:54:56', '2011-04-16 20:54:56', '', 'Programación', '', 'inherit', 'open', 'open', '', '12-revision-5', '', '', '2011-04-16 20:54:56', '2011-04-16 20:54:56', '', 12, 'http://cdo.tv.localhost/2011/04/12-revision-5/', 0, 'revision', '', 0),
(21, 1, '2011-04-16 21:03:40', '2011-04-16 21:03:40', ' ', '', 'Contenido', 'publish', 'open', 'open', '', '21', '', '', '2011-04-17 19:40:39', '2011-04-17 19:40:39', '', 0, 'http://cdo.tv.localhost/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2011-04-16 20:48:41', '2011-04-16 20:48:41', '', 'Contenido', '', 'inherit', 'open', 'open', '', '16-revision-2', '', '', '2011-04-16 20:48:41', '2011-04-16 20:48:41', '', 16, 'http://cdo.tv.localhost/2011/04/16/16-revision-2/', 0, 'revision', '', 0),
(23, 1, '2011-04-16 21:06:47', '2011-04-16 21:06:47', '', 'Multimedia', '', 'publish', 'open', 'open', '', 'multimedia', '', '', '2011-04-16 21:06:47', '2011-04-16 21:06:47', '', 0, 'http://cdo.tv.localhost/?page_id=23', 0, 'page', '', 0),
(24, 1, '2011-04-16 21:06:40', '2011-04-16 21:06:40', '', 'Multimedia', '', 'inherit', 'open', 'open', '', '23-revision', '', '', '2011-04-16 21:06:40', '2011-04-16 21:06:40', '', 23, 'http://cdo.tv.localhost/2011/04/16/23-revision/', 0, 'revision', '', 0),
(25, 1, '2011-04-16 21:07:06', '2011-04-16 21:07:06', ' ', '', 'Multimedia', 'publish', 'open', 'open', '', '25', '', '', '2011-04-17 19:40:39', '2011-04-17 19:40:39', '', 0, 'http://cdo.tv.localhost/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2011-04-16 16:39:09', '2011-04-16 16:39:09', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickies to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://cdo.tv.localhost/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2011-04-16 16:39:09', '2011-04-16 16:39:09', '', 2, 'http://cdo.tv.localhost/2011/04/16/2-revision/', 0, 'revision', '', 0),
(27, 1, '2011-04-16 21:04:59', '2011-04-16 21:04:59', '', 'Contenido', '', 'inherit', 'open', 'open', '', '16-revision-3', '', '', '2011-04-16 21:04:59', '2011-04-16 21:04:59', '', 16, 'http://cdo.tv.localhost/2011/04/16/16-revision-3/', 0, 'revision', '', 0),
(60, 1, '2011-04-17 14:20:00', '2011-04-17 14:20:00', 'asdkjfhasdkjfh  çsadjfçlaksjdfçlkajs dçlkasjdfvisdhjfjsdnf sdoifjlsdfkj sldkfjsldkfjgsldf lksdjfglsk dfglksdjf sldfkjsldfkgjsldf goisdjflksjdf lsdkfjglskdfjglsdf kjsdfhgklasjfghsdkfjghs ksjdfhgkjfd', 'have money? asdfasdfasdfasdfasdfasd asdfasdfasdfasd asdfasdf', '', 'publish', 'closed', 'closed', '', 'have-money', '', '', '2011-04-17 22:50:44', '2011-04-17 22:50:44', '', 0, 'http://cdo.tv.localhost/?post_type=contenido&p=60', 0, 'contenido', '', 0),
(61, 1, '2011-04-17 14:19:21', '2011-04-17 14:19:21', '', 'tio-patinhas-690f8', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f8-2', '', '', '2011-04-17 14:19:21', '2011-04-17 14:19:21', '', 60, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f81.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2011-04-30 23:18:44', '2011-04-30 23:18:44', '', 'Page to contenido', '', 'inherit', 'open', 'open', '', '152-revision', '', '', '2011-04-30 23:18:44', '2011-04-30 23:18:44', '', 152, 'http://cdo.tv.localhost/2011/04/30/152-revision/', 0, 'revision', '', 0),
(154, 1, '2011-04-30 23:18:54', '2011-04-30 23:18:54', '', 'Page to contenido', '', 'inherit', 'open', 'open', '', '152-revision-2', '', '', '2011-04-30 23:18:54', '2011-04-30 23:18:54', '', 152, 'http://cdo.tv.localhost/2011/04/30/152-revision-2/', 0, 'revision', '', 0),
(155, 1, '2011-05-01 00:33:45', '2011-05-01 00:33:45', '', 'Page to contenido', '', 'inherit', 'open', 'open', '', '152-revision-3', '', '', '2011-05-01 00:33:45', '2011-05-01 00:33:45', '', 152, 'http://cdo.tv.localhost/2011/05/01/152-revision-3/', 0, 'revision', '', 0),
(59, 1, '2011-04-17 01:24:39', '2011-04-17 01:24:39', '', 'tio-patinhas', '', 'inherit', 'open', 'open', '', 'tio-patinhas-2', '', '', '2011-04-17 01:24:39', '2011-04-17 01:24:39', '', 51, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas1.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2011-04-17 22:23:26', '2011-04-17 22:23:26', 'Carpen Dien<a href="http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg">http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg<img class="alignnone" title="http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg" src="http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg" alt="" width="1024" height="768" /><img class="alignnone" title="http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg" src="http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg" alt="" width="1024" height="768" /></a>', 'Carpen Dien', 'esse é um teste de descricao', 'inherit', 'open', 'open', '', '51-autosave', '', '', '2011-04-17 22:23:26', '2011-04-17 22:23:26', '', 51, 'http://cdo.tv.localhost/2011/04/17/51-autosave/', 0, 'revision', '', 0),
(49, 1, '2011-04-17 00:28:02', '2011-04-17 00:28:02', '', 'Carpen Dien', '', 'trash', 'closed', 'closed', '', 'carpen-dien-2', '', '', '2011-04-17 14:44:34', '2011-04-17 14:44:34', '', 0, 'http://cdo.tv.localhost/?post_type=contenido&p=49', 0, 'contenido', '', 0),
(50, 1, '2011-04-17 00:28:15', '2011-04-17 00:28:15', '', 'tio-patinhas-690f8', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f8', '', '', '2011-04-17 00:28:15', '2011-04-17 00:28:15', '', 49, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f8.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2011-04-17 00:30:00', '2011-04-17 00:30:00', 'Carpen Dien<a href="http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg">http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg<img class="alignnone" title="http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg" src="http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg" alt="" width="1024" height="768" /><img class="alignnone" title="http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg" src="http://downloads.open4group.com/wallpapers/tio-patinhas-690f8.jpg" alt="" width="1024" height="768" /></a>', 'Carpen Dien', 'esse é um teste de descricao', 'publish', 'closed', 'closed', '', 'carpen-dien', '', '', '2011-04-17 22:22:25', '2011-04-17 22:22:25', '', 0, 'http://cdo.tv.localhost/?post_type=contenido&p=51', 0, 'contenido', '', 0),
(52, 1, '2011-04-17 00:30:30', '2011-04-17 00:30:30', '', 'tio-patinhas', '', 'inherit', 'open', 'open', '', 'tio-patinhas', '', '', '2011-04-17 00:30:30', '2011-04-17 00:30:30', '', 51, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2011-04-17 15:13:15', '2011-04-17 15:13:15', '', 'Loren wherever', 'ahauhauah', 'publish', 'closed', 'closed', '', 'loren-wherever', '', '', '2011-04-17 15:13:15', '2011-04-17 15:13:15', '', 0, 'http://cdo.tv.localhost/?post_type=contenido&p=68', 0, 'contenido', '', 0),
(69, 1, '2011-04-17 15:13:06', '2011-04-17 15:13:06', '', 'tio-patinhas-690f81212', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f81212', '', '', '2011-04-17 15:13:06', '2011-04-17 15:13:06', '', 68, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f81212.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2011-04-17 16:01:20', '2011-04-17 16:01:20', 'teste', 'ahuahauahu', '', 'publish', 'closed', 'closed', '', 'ahuahauahu', '', '', '2011-04-17 16:01:20', '2011-04-17 16:01:20', '', 0, 'http://cdo.tv.localhost/?post_type=contenido&p=76', 0, 'contenido', '', 0),
(77, 1, '2011-04-17 15:58:50', '2011-04-17 15:58:50', '', 'tio-patinhas-690f81212', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f81212-2', '', '', '2011-04-17 15:58:50', '2011-04-17 15:58:50', '', 76, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f812121.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2011-04-17 15:59:00', '2011-04-17 15:59:00', '', 'tio-patinhas-690f8', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f8-3', '', '', '2011-04-17 15:59:00', '2011-04-17 15:59:00', '', 76, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f82.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2011-05-01 15:33:01', '2011-05-01 15:33:01', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '164-revision', '', '', '2011-05-01 15:33:01', '2011-05-01 15:33:01', '', 164, 'http://cdo.tv.localhost/2011/05/164-revision/', 0, 'revision', '', 0),
(80, 1, '2011-04-17 16:08:30', '2011-04-17 16:08:30', '', 'tio-patinhas-690f8', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f8-4', '', '', '2011-04-17 16:08:30', '2011-04-17 16:08:30', '', 0, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f83.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2011-05-01 15:33:21', '2011-05-01 15:33:21', '', 'lorem ipsolum', '', 'publish', 'open', 'open', '', 'lorem-ipsolum', '', '', '2011-05-01 15:33:21', '2011-05-01 15:33:21', '', 0, 'http://cdo.tv.localhost/?post_type=noticia&p=164', 0, 'noticia', '', 0),
(163, 1, '2011-05-01 15:30:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2011-05-01 15:30:18', '0000-00-00 00:00:00', '', 0, 'http://cdo.tv.localhost/?post_type=contenido&p=163', 0, 'contenido', '', 0),
(162, 1, '2011-05-01 15:28:46', '2011-05-01 15:28:46', 'sdsdfasdaafsdf', 'teste hahahahah', '', 'inherit', 'open', 'open', '', '160-revision-2', '', '', '2011-05-01 15:28:46', '2011-05-01 15:28:46', '', 160, 'http://cdo.tv.localhost/2011/05/160-revision-2/', 0, 'revision', '', 0),
(85, 1, '2011-04-17 16:46:12', '2011-04-17 16:46:12', '', 'tio-patinhas-690f8', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f8-5', '', '', '2011-04-17 16:46:12', '2011-04-17 16:46:12', '', 0, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f84.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2011-04-17 16:46:13', '2011-04-17 16:46:13', '', 'tio-patinhas-690f81212', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f81212-3', '', '', '2011-04-17 16:46:13', '2011-04-17 16:46:13', '', 0, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f812122.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2011-04-17 18:39:18', '2011-04-17 18:39:18', '', 'duas destaque', '', 'publish', 'closed', 'closed', '', 'duas-destaque', '', '', '2011-04-17 18:39:18', '2011-04-17 18:39:18', '', 0, 'http://cdo.tv.localhost/?post_type=contenido&p=88', 0, 'contenido', '', 0),
(89, 1, '2011-04-17 18:37:06', '2011-04-17 18:37:06', '', 'tio-patinhas-690f81212', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f81212-4', '', '', '2011-04-17 18:37:06', '2011-04-17 18:37:06', '', 88, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f812123.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2011-04-17 18:37:21', '2011-04-17 18:37:21', '', 'tio-patinhas-690f8', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f8-6', '', '', '2011-04-17 18:37:21', '2011-04-17 18:37:21', '', 88, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f85.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2011-04-17 18:38:16', '2011-04-17 18:38:16', '', 'tio-patinhas-690f8', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f8-7', '', '', '2011-04-17 18:38:16', '2011-04-17 18:38:16', '', 88, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f86.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2011-04-17 18:38:32', '2011-04-17 18:38:32', '', 'tio-patinhas-690f81212', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f81212-5', '', '', '2011-04-17 18:38:32', '2011-04-17 18:38:32', '', 88, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f812124.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2011-04-17 19:01:56', '2011-04-17 19:01:56', 'aauhauahuahauah', 'two images', '', 'publish', 'closed', 'closed', '', 'two-images', '', '', '2011-05-01 02:10:35', '2011-05-01 02:10:35', '', 0, 'http://cdo.tv.localhost/?post_type=contenido&p=93', 0, 'contenido', '', 0),
(94, 1, '2011-04-17 19:01:18', '2011-04-17 19:01:18', '', 'tio-patinhas-690f81212', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f81212-6', '', '', '2011-04-17 19:01:18', '2011-04-17 19:01:18', '', 93, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f812125.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2011-04-17 19:01:41', '2011-04-17 19:01:41', '', 'tio-patinhas-690f8', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f8-8', '', '', '2011-04-17 19:01:41', '2011-04-17 19:01:41', '', 93, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f87.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2011-04-17 19:11:33', '2011-04-17 19:11:33', '', 'tio-patinhas-690f8', '', 'inherit', 'open', 'open', '', 'tio-patinhas-690f8-9', '', '', '2011-04-17 19:11:33', '2011-04-17 19:11:33', '', 93, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas-690f88.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2011-05-01 15:28:43', '2011-05-01 15:28:43', '', 'teste hahahahah', '', 'inherit', 'open', 'open', '', '160-revision', '', '', '2011-05-01 15:28:43', '2011-05-01 15:28:43', '', 160, 'http://cdo.tv.localhost/2011/05/160-revision/', 0, 'revision', '', 0),
(160, 1, '2011-05-01 15:28:46', '2011-05-01 15:28:46', 'sdsdfasdaafsdf', 'teste hahahahah', '', 'publish', 'open', 'open', '', 'teste-hahahahah', '', '', '2011-05-01 15:29:14', '2011-05-01 15:29:14', '', 0, 'http://cdo.tv.localhost/?post_type=noticia&p=160', 0, 'noticia', '', 0),
(159, 1, '2011-05-01 15:23:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2011-05-01 15:23:25', '0000-00-00 00:00:00', '', 0, 'http://cdo.tv.localhost/?p=159', 0, 'post', '', 0),
(101, 1, '2011-04-17 23:16:47', '2011-04-17 23:16:47', 'aksjhdfkasjdf ksjdfhglkjsdhfg lkjsdfhlkjsdhfk sksdjhfkjdhfkjh kjhkjhkj dfkjhkj kjhasfkjghslkdfjh jhkjkd sfh çsdkjfhçslkdjfhglsd', 'have money? asdfasdfasdfasdfasdfasd asdfasdfasdfasd asdfasdf', '', 'inherit', 'open', 'open', '', '60-autosave', '', '', '2011-04-17 23:16:47', '2011-04-17 23:16:47', '', 60, 'http://cdo.tv.localhost/2011/04/17/60-autosave/', 0, 'revision', '', 0),
(102, 1, '2011-04-17 21:09:22', '2011-04-17 21:09:22', '', 'wp_pressblog', '', 'inherit', 'open', 'open', '', 'wp_pressblog', '', '', '2011-04-17 21:09:22', '2011-04-17 21:09:22', '', 60, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/wp_pressblog.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2011-04-17 22:19:22', '2011-04-17 22:19:22', '', 'screenshot', '', 'inherit', 'open', 'open', '', 'screenshot', '', '', '2011-04-17 22:19:22', '2011-04-17 22:19:22', '', 51, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/screenshot.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2011-04-17 22:28:15', '2011-04-17 22:28:15', '', '103196bwwall6', '', 'inherit', 'open', 'open', '', '103196bwwall6', '', '', '2011-04-17 22:28:15', '2011-04-17 22:28:15', '', 93, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/103196bwwall6.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2011-04-17 22:30:04', '2011-04-17 22:30:04', '', 'ubuntu_black_brushed__metal_by_monkeymagico', '', 'inherit', 'open', 'open', '', 'ubuntu_black_brushed__metal_by_monkeymagico', '', '', '2011-04-17 22:30:04', '2011-04-17 22:30:04', '', 60, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/ubuntu_black_brushed__metal_by_monkeymagico.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2011-04-18 03:36:29', '2011-04-18 03:36:29', '', 'Screenshot', '', 'inherit', 'open', 'open', '', 'screenshot-2', '', '', '2011-04-18 03:36:29', '2011-04-18 03:36:29', '', 0, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/Screenshot.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2011-05-01 00:34:25', '2011-05-01 00:34:25', '', 'Page to contenido', '', 'inherit', 'open', 'open', '', '152-revision-4', '', '', '2011-05-01 00:34:25', '2011-05-01 00:34:25', '', 152, 'http://cdo.tv.localhost/2011/05/01/152-revision-4/', 0, 'revision', '', 0),
(157, 1, '2011-05-01 01:09:12', '2011-05-01 01:09:12', '', 'Page to contenido', '', 'inherit', 'open', 'open', '', '152-revision-5', '', '', '2011-05-01 01:09:12', '2011-05-01 01:09:12', '', 152, 'http://cdo.tv.localhost/2011/05/152-revision-5/', 0, 'revision', '', 0),
(158, 1, '2011-05-01 17:24:54', '2011-05-01 17:24:54', 'aauhauahuahauah', 'two images', '', 'inherit', 'open', 'open', '', '93-autosave', '', '', '2011-05-01 17:24:54', '2011-05-01 17:24:54', '', 93, 'http://cdo.tv.localhost/2011/05/93-autosave/', 0, 'revision', '', 0),
(117, 1, '2011-04-18 04:07:43', '2011-04-18 04:07:43', '', 'http://www.gonow.com.br', '', 'publish', 'closed', 'closed', '', 'xuxa', '', '', '2011-04-18 04:07:43', '2011-04-18 04:07:43', '', 0, 'http://cdo.tv.localhost/?post_type=banner&p=117', 0, 'banner', '', 0),
(118, 1, '2011-04-18 04:06:56', '2011-04-18 04:06:56', '', 'linux-04', '', 'inherit', 'open', 'open', '', 'linux-04', '', '', '2011-04-18 04:06:56', '2011-04-18 04:06:56', '', 117, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/linux-044.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2011-04-18 04:12:04', '2011-04-18 04:12:04', '', 'http://www.google.com.br', '', 'publish', 'closed', 'closed', '', 'httpwww-google-com-br', '', '', '2011-04-18 04:12:04', '2011-04-18 04:12:04', '', 0, 'http://cdo.tv.localhost/?post_type=banner&p=119', 0, 'banner', '', 0),
(120, 1, '2011-04-18 04:11:12', '2011-04-18 04:11:12', '', 'tio-patinhas', '', 'inherit', 'open', 'open', '', 'tio-patinhas-3', '', '', '2011-04-18 04:11:12', '2011-04-18 04:11:12', '', 119, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/tio-patinhas4.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2011-04-18 04:21:09', '2011-04-18 04:21:09', '', 'www.ividal.net', '', 'publish', 'closed', 'closed', '', 'www-ividal-net', '', '', '2011-04-18 04:21:09', '2011-04-18 04:21:09', '', 0, 'http://cdo.tv.localhost/?post_type=banner&p=121', 0, 'banner', '', 0),
(122, 1, '2011-04-18 04:20:17', '2011-04-18 04:20:17', '', 'Papel de Parede - Windows Vidro Quebrado', '', 'inherit', 'open', 'open', '', 'papel-de-parede-windows-vidro-quebrado', '', '', '2011-04-18 04:20:17', '2011-04-18 04:20:17', '', 121, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/Papel-de-Parede-Windows-Vidro-Quebrado.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2011-04-18 04:33:45', '2011-04-18 04:33:45', '', 'linux-04', '', 'inherit', 'open', 'open', '', 'linux-04-2', '', '', '2011-04-18 04:33:45', '2011-04-18 04:33:45', '', 93, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/linux-045.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2011-04-18 04:38:58', '2011-04-18 04:38:58', '', 'linux-04', '', 'inherit', 'open', 'open', '', 'linux-04-3', '', '', '2011-04-18 04:38:58', '2011-04-18 04:38:58', '', 93, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/linux-046.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2011-04-18 05:25:35', '2011-04-18 05:25:35', 'teste 1', 'Federaciones - 1', '', 'publish', 'closed', 'closed', '', 'federaciones-1', '', '', '2011-04-18 05:31:06', '2011-04-18 05:31:06', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=125', 0, 'federaciones', '', 0),
(126, 1, '2011-04-18 05:32:07', '2011-04-18 05:32:07', 'teste 1', 'Federaciones - 1', '', 'inherit', 'open', 'open', '', '125-autosave', '', '', '2011-04-18 05:32:07', '2011-04-18 05:32:07', '', 125, 'http://cdo.tv.localhost/2011/04/18/125-autosave/', 0, 'revision', '', 0),
(127, 1, '2011-04-18 05:30:36', '2011-04-18 05:30:36', '', 'federaciones-12', '', 'inherit', 'open', 'open', '', 'federaciones-12', '', '', '2011-04-18 05:30:36', '2011-04-18 05:30:36', '', 125, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-12.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2011-04-18 05:30:50', '2011-04-18 05:30:50', '', 'federaciones-12', '', 'inherit', 'open', 'open', '', 'federaciones-12-2', '', '', '2011-04-18 05:30:50', '2011-04-18 05:30:50', '', 125, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-121.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2011-04-18 05:33:50', '2011-04-18 05:33:50', 'teste 2', 'Federaciones - 2', '', 'publish', 'closed', 'closed', '', 'federaciones-2', '', '', '2011-04-18 05:33:50', '2011-04-18 05:33:50', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=129', 0, 'federaciones', '', 0),
(130, 1, '2011-04-18 05:33:39', '2011-04-18 05:33:39', '', 'federaciones-02', '', 'inherit', 'open', 'open', '', 'federaciones-02', '', '', '2011-04-18 05:33:39', '2011-04-18 05:33:39', '', 129, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-02.png', 0, 'attachment', 'image/png', 0),
(131, 1, '2011-04-18 05:35:17', '2011-04-18 05:35:17', 'teste 3', 'Federaciones - 3', '', 'publish', 'closed', 'closed', '', 'federaciones-3', '', '', '2011-04-18 05:35:17', '2011-04-18 05:35:17', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=131', 0, 'federaciones', '', 0),
(132, 1, '2011-04-18 05:35:07', '2011-04-18 05:35:07', '', 'federaciones-03', '', 'inherit', 'open', 'open', '', 'federaciones-03', '', '', '2011-04-18 05:35:07', '2011-04-18 05:35:07', '', 131, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-03.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2011-04-18 05:36:18', '2011-04-18 05:36:18', 'teste 3', 'Federaciones - 3', '', 'inherit', 'open', 'open', '', '131-autosave', '', '', '2011-04-18 05:36:18', '2011-04-18 05:36:18', '', 131, 'http://cdo.tv.localhost/2011/04/18/131-autosave/', 0, 'revision', '', 0),
(134, 1, '2011-04-18 05:40:28', '2011-04-18 05:40:28', 'teste 4', 'Federaciones - 4', '', 'publish', 'closed', 'closed', '', 'federaciones-4', '', '', '2011-04-18 05:40:28', '2011-04-18 05:40:28', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=134', 0, 'federaciones', '', 0),
(135, 1, '2011-04-18 05:40:09', '2011-04-18 05:40:09', '', 'federaciones-11', '', 'inherit', 'open', 'open', '', 'federaciones-11', '', '', '2011-04-18 05:40:09', '2011-04-18 05:40:09', '', 134, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-111.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2011-04-18 05:41:24', '2011-04-18 05:41:24', 'teste 5', 'Federaciones - 5', '', 'publish', 'closed', 'closed', '', 'federaciones-5', '', '', '2011-04-18 05:41:24', '2011-04-18 05:41:24', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=136', 0, 'federaciones', '', 0),
(137, 1, '2011-04-18 05:41:07', '2011-04-18 05:41:07', '', 'federaciones-5', '', 'inherit', 'open', 'open', '', 'federaciones-01', '', '', '2011-04-18 05:41:07', '2011-04-18 05:41:07', '', 136, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-01.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2011-04-18 05:42:33', '2011-04-18 05:42:33', 'teste 6', 'Federaciones - 6', '', 'publish', 'closed', 'closed', '', 'federaciones-6', '', '', '2011-04-18 05:42:33', '2011-04-18 05:42:33', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=138', 0, 'federaciones', '', 0),
(139, 1, '2011-04-18 05:42:15', '2011-04-18 05:42:15', '', 'federaciones-6', '', 'inherit', 'open', 'open', '', 'federaciones-11-2', '', '', '2011-04-18 05:42:15', '2011-04-18 05:42:15', '', 138, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-112.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2011-04-18 05:43:21', '2011-04-18 05:43:21', 'teste 7', 'Federaciones - 7', '', 'publish', 'closed', 'closed', '', 'federaciones-7', '', '', '2011-04-18 05:43:21', '2011-04-18 05:43:21', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=140', 0, 'federaciones', '', 0),
(141, 1, '2011-04-18 05:43:04', '2011-04-18 05:43:04', '', 'federaciones-7', '', 'inherit', 'open', 'open', '', 'federaciones-07', '', '', '2011-04-18 05:43:04', '2011-04-18 05:43:04', '', 140, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-07.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2011-04-18 05:43:59', '2011-04-18 05:43:59', 'teste 8', 'Federaciones - 8', '', 'publish', 'closed', 'closed', '', 'federaciones-8', '', '', '2011-04-18 05:43:59', '2011-04-18 05:43:59', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=142', 0, 'federaciones', '', 0),
(143, 1, '2011-04-18 05:43:42', '2011-04-18 05:43:42', '', 'federaciones-8', '', 'inherit', 'open', 'open', '', 'federaciones-11-3', '', '', '2011-04-18 05:43:42', '2011-04-18 05:43:42', '', 142, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-113.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2011-04-18 05:44:57', '2011-04-18 05:44:57', 'teste 9', 'Federaciones - 9', '', 'publish', 'closed', 'closed', '', 'federaciones-9', '', '', '2011-04-18 05:44:57', '2011-04-18 05:44:57', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=144', 0, 'federaciones', '', 0),
(145, 1, '2011-04-18 05:44:41', '2011-04-18 05:44:41', '', 'federaciones-9', '', 'inherit', 'open', 'open', '', 'federaciones-09', '', '', '2011-04-18 05:44:41', '2011-04-18 05:44:41', '', 144, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-09.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2011-04-18 05:45:27', '2011-04-18 05:45:27', 'teste 10', 'Federaciones - 10', '', 'publish', 'closed', 'closed', '', 'federaciones-10', '', '', '2011-04-18 05:45:27', '2011-04-18 05:45:27', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=146', 0, 'federaciones', '', 0),
(147, 1, '2011-04-18 05:45:16', '2011-04-18 05:45:16', '', 'federaciones-10', '', 'inherit', 'open', 'open', '', 'federaciones-10', '', '', '2011-04-18 05:45:16', '2011-04-18 05:45:16', '', 146, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-10.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2011-04-18 05:46:04', '2011-04-18 05:46:04', 'teste 11', 'Federaciones - 11', '', 'publish', 'closed', 'closed', '', 'federaciones-11', '', '', '2011-04-18 05:46:04', '2011-04-18 05:46:04', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=148', 0, 'federaciones', '', 0),
(149, 1, '2011-04-18 05:45:52', '2011-04-18 05:45:52', '', 'federaciones-11', '', 'inherit', 'open', 'open', '', 'federaciones-11-4', '', '', '2011-04-18 05:45:52', '2011-04-18 05:45:52', '', 148, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-114.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2011-04-18 05:46:37', '2011-04-18 05:46:37', 'teste 12', 'Federaciones - 12', '', 'publish', 'closed', 'closed', '', 'federaciones-12', '', '', '2011-04-18 05:46:37', '2011-04-18 05:46:37', '', 0, 'http://cdo.tv.localhost/?post_type=federaciones&p=150', 0, 'federaciones', '', 0),
(151, 1, '2011-04-18 05:46:24', '2011-04-18 05:46:24', '', 'federaciones-12', '', 'inherit', 'open', 'open', '', 'federaciones-12-3', '', '', '2011-04-18 05:46:24', '2011-04-18 05:46:24', '', 150, 'http://cdo.tv.localhost/wp-content/uploads/2011/04/federaciones-122.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Headline', 'headline', 0),
(2, 'Blogroll', 'blogroll', 0),
(3, 'Entretención', 'entretencion', 0),
(4, 'CDO por dentro', 'cdo-por-dentro', 0),
(5, 'Menu header', 'menu-header', 0),
(8, 'General', 'general', 0),
(9, 'Featuared', 'featuared', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(1, 1, 0),
(4, 3, 0),
(5, 3, 0),
(6, 3, 0),
(7, 4, 0),
(8, 4, 0),
(9, 4, 0),
(10, 4, 0),
(11, 5, 0),
(15, 5, 0),
(21, 5, 0),
(25, 5, 0),
(76, 1, 0),
(93, 1, 0),
(93, 9, 0),
(60, 9, 0),
(51, 9, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', 'Content that appeared in "headline"', 0, 3),
(2, 2, 'link_category', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'nav_menu', '', 0, 4),
(8, 8, 'category', 'Content in general', 0, 0),
(9, 9, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'show_admin_bar_admin', 'false'),
(11, 1, 'aim', ''),
(12, 1, 'yim', ''),
(13, 1, 'jabber', ''),
(14, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(15, 1, 'wp_user_level', '10'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '159'),
(17, 1, 'wp_user-settings', 'm5=o&m9=c&m8=c&m4=c&m6=c&m3=c&m7=c&m2=c&m10=c&m1=c&uploader=1&editor=tinymce&m0=c&m12=c&m13=c&m14=o'),
(18, 1, 'wp_user-settings-time', '1304266878'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '5'),
(22, 1, 'closedpostboxes_nav-menus', 'a:1:{i:0;s:16:"add-custom-links";}'),
(23, 1, 'closedpostboxes_contenido', 'a:0:{}'),
(24, 1, 'metaboxhidden_contenido', 'a:1:{i:0;s:7:"slugdiv";}'),
(25, 1, 'meta-box-order_contenido', 'a:3:{s:4:"side";s:126:"submitdiv,postimagediv,contenido-second-featured-image,contenido-headline-image,contenido-thumbnail-headline-image,categorydiv";s:6:"normal";s:40:"slugdiv,authordiv,postexcerpt,postcustom";s:8:"advanced";s:0:"";}'),
(26, 1, 'screen_layout_contenido', '2'),
(27, 1, 'meta-box-order_banner', 'a:3:{s:4:"side";s:9:"submitdiv";s:6:"normal";s:27:"slugdiv,banner-banner-image";s:8:"advanced";s:0:"";}'),
(28, 1, 'screen_layout_banner', '2'),
(29, 1, 'closedpostboxes_banner', 'a:0:{}'),
(30, 1, 'metaboxhidden_banner', 'a:1:{i:0;s:7:"slugdiv";}'),
(31, 1, 'closedpostboxes_page', 'a:0:{}'),
(32, 1, 'metaboxhidden_page', 'a:6:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";i:5;s:12:"revisionsdiv";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bnbd1.0HIxOUNWVXI9IU2lhyNposa2.', 'admin', 'rafael.santos@gonow.com.br', '', '2011-04-16 16:39:09', '', 0, 'admin');

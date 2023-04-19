# Migração da Base de Dados MySQL do WordPress
#
# Gerado: Wednesday 19. April 2023 03:42 UTC
# Nome do Servidor: localhost
# Banco de Dados: `local`
# URL: //outsideco.com.br/site
# Path: D:\\Sites\\outside\\wp\\app\\public
# Tables: wp_actionscheduler_actions, wp_actionscheduler_claims, wp_actionscheduler_groups, wp_actionscheduler_logs, wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users, wp_wc_admin_note_actions, wp_wc_admin_notes, wp_wc_category_lookup, wp_wc_customer_lookup, wp_wc_download_log, wp_wc_order_coupon_lookup, wp_wc_order_product_lookup, wp_wc_order_stats, wp_wc_order_tax_lookup, wp_wc_product_attributes_lookup, wp_wc_product_download_directories, wp_wc_product_meta_lookup, wp_wc_rate_limits, wp_wc_reserved_stock, wp_wc_tax_rate_classes, wp_wc_webhooks, wp_woocommerce_api_keys, wp_woocommerce_attribute_taxonomies, wp_woocommerce_downloadable_product_permissions, wp_woocommerce_log, wp_woocommerce_order_itemmeta, wp_woocommerce_order_items, wp_woocommerce_payment_tokenmeta, wp_woocommerce_payment_tokens, wp_woocommerce_sessions, wp_woocommerce_shipping_zone_locations, wp_woocommerce_shipping_zone_methods, wp_woocommerce_shipping_zones, wp_woocommerce_tax_rate_locations, wp_woocommerce_tax_rates
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, attachment, nav_menu_item, page, post, product, wpcf7_contact_form
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Apagar qualquer tabela `wp_actionscheduler_actions` existente
#

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;


#
# Estrutura da tabela `wp_actionscheduler_actions`
#

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_actionscheduler_actions`
#
INSERT INTO `wp_actionscheduler_actions` ( `action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(386, 'action_scheduler/migration_hook', 'complete', '2023-04-19 02:31:40', '2023-04-18 23:31:40', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1681871500;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1681871500;s:19:"scheduled_timestamp";i:1681871500;s:9:"timestamp";i:1681871500;}', 1, 1, '2023-04-19 02:31:43', '2023-04-18 23:31:43', 0, NULL),
(387, 'action_scheduler/migration_hook', 'canceled', '2023-04-19 02:31:40', '2023-04-18 23:31:40', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1681871500;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1681871500;s:19:"scheduled_timestamp";i:1681871500;s:9:"timestamp";i:1681871500;}', 2, 0, '2023-04-19 02:31:43', '2023-04-18 23:31:43', 0, NULL),
(388, 'woocommerce_cleanup_draft_orders', 'complete', '2023-04-19 02:30:41', '2023-04-18 23:30:41', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1681871441;s:18:"\0*\0first_timestamp";i:1681871441;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1681871441;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1681871441;s:15:"first_timestamp";i:1681871441;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1681871441;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-04-19 02:31:43', '2023-04-18 23:31:43', 0, NULL),
(389, 'woocommerce_cleanup_draft_orders', 'pending', '2023-04-20 02:31:43', '2023-04-19 23:31:43', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1681957903;s:18:"\0*\0first_timestamp";i:1681871441;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1681957903;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1681957903;s:15:"first_timestamp";i:1681871441;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1681957903;s:19:"interval_in_seconds";i:86400;}', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(390, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'failed', '2023-04-19 02:35:58', '2023-04-19 02:35:58', '[]', 'O:28:"ActionScheduler_NullSchedule":0:{}', 0, 1, '2023-04-19 02:37:05', '2023-04-18 23:37:05', 0, NULL),
(391, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-19 02:35:59', '2023-04-18 23:35:59', '[391,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1681871759;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1681871759;s:19:"scheduled_timestamp";i:1681871759;s:9:"timestamp";i:1681871759;}', 3, 1, '2023-04-19 02:37:05', '2023-04-18 23:37:05', 0, NULL),
(392, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-19 03:02:33', '2023-04-19 00:02:33', '[391,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1681873353;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1681873353;s:19:"scheduled_timestamp";i:1681873353;s:9:"timestamp";i:1681873353;}', 3, 1, '2023-04-19 03:02:38', '2023-04-19 00:02:38', 0, NULL),
(393, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-19 03:20:54', '2023-04-19 00:20:54', '[391,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1681874454;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1681874454;s:19:"scheduled_timestamp";i:1681874454;s:9:"timestamp";i:1681874454;}', 3, 1, '2023-04-19 03:20:59', '2023-04-19 00:20:59', 0, NULL),
(394, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-19 03:21:15', '2023-04-19 00:21:15', '[391,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1681874475;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1681874475;s:19:"scheduled_timestamp";i:1681874475;s:9:"timestamp";i:1681874475;}', 3, 1, '2023-04-19 03:21:43', '2023-04-19 00:21:43', 0, NULL) ;

#
# Fim do conteúdo da tabela `wp_actionscheduler_actions`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_actionscheduler_claims` existente
#

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;


#
# Estrutura da tabela `wp_actionscheduler_claims`
#

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_actionscheduler_claims`
#

#
# Fim do conteúdo da tabela `wp_actionscheduler_claims`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_actionscheduler_groups` existente
#

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;


#
# Estrutura da tabela `wp_actionscheduler_groups`
#

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_actionscheduler_groups`
#
INSERT INTO `wp_actionscheduler_groups` ( `group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'action-scheduler-migration'),
(3, 'woocommerce-db-updates') ;

#
# Fim do conteúdo da tabela `wp_actionscheduler_groups`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_actionscheduler_logs` existente
#

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;


#
# Estrutura da tabela `wp_actionscheduler_logs`
#

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_actionscheduler_logs`
#
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 386, 'action created', '2023-04-19 02:30:40', '2023-04-18 23:30:40'),
(2, 387, 'action created', '2023-04-19 02:30:40', '2023-04-18 23:30:40'),
(3, 388, 'action created', '2023-04-19 02:30:41', '2023-04-18 23:30:41'),
(4, 388, 'action started via WP Cron', '2023-04-19 02:31:43', '2023-04-18 23:31:43'),
(5, 388, 'action complete via WP Cron', '2023-04-19 02:31:43', '2023-04-18 23:31:43'),
(6, 389, 'action created', '2023-04-19 02:31:43', '2023-04-18 23:31:43'),
(7, 386, 'action started via WP Cron', '2023-04-19 02:31:43', '2023-04-18 23:31:43'),
(8, 387, 'action canceled', '2023-04-19 02:31:43', '2023-04-18 23:31:43'),
(9, 386, 'action complete via WP Cron', '2023-04-19 02:31:43', '2023-04-18 23:31:43'),
(10, 387, 'action ignored via WP Cron', '2023-04-19 02:31:43', '2023-04-18 23:31:43'),
(11, 390, 'action created', '2023-04-19 02:35:58', '2023-04-18 23:35:58'),
(12, 391, 'action created', '2023-04-19 02:35:58', '2023-04-18 23:35:58'),
(13, 390, 'action started via WP Cron', '2023-04-19 02:37:05', '2023-04-18 23:37:05'),
(14, 390, 'action failed via WP Cron: Scheduled action for woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications will not be executed as no callbacks are registered.', '2023-04-19 02:37:05', '2023-04-18 23:37:05'),
(15, 391, 'action started via WP Cron', '2023-04-19 02:37:05', '2023-04-18 23:37:05'),
(16, 391, 'action complete via WP Cron', '2023-04-19 02:37:05', '2023-04-18 23:37:05'),
(17, 392, 'action created', '2023-04-19 03:02:32', '2023-04-19 00:02:32'),
(18, 392, 'action started via WP Cron', '2023-04-19 03:02:38', '2023-04-19 00:02:38'),
(19, 392, 'action complete via WP Cron', '2023-04-19 03:02:38', '2023-04-19 00:02:38'),
(20, 393, 'action created', '2023-04-19 03:20:53', '2023-04-19 00:20:53'),
(21, 393, 'action started via Async Request', '2023-04-19 03:20:58', '2023-04-19 00:20:58'),
(22, 393, 'action complete via Async Request', '2023-04-19 03:20:59', '2023-04-19 00:20:59'),
(23, 394, 'action created', '2023-04-19 03:21:14', '2023-04-19 00:21:14'),
(24, 394, 'action started via WP Cron', '2023-04-19 03:21:43', '2023-04-19 00:21:43'),
(25, 394, 'action complete via WP Cron', '2023-04-19 03:21:43', '2023-04-19 00:21:43') ;

#
# Fim do conteúdo da tabela `wp_actionscheduler_logs`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_commentmeta` existente
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Estrutura da tabela `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_commentmeta`
#
INSERT INTO `wp_commentmeta` ( `meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_trash_meta_status', '1'),
(2, 2, '_wp_trash_meta_time', '1681853650') ;

#
# Fim do conteúdo da tabela `wp_commentmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_comments` existente
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Estrutura da tabela `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 221, 'fsf', 'adenilsonm981@gmail.com', 'http://fsff', '127.0.0.1', '2023-04-18 18:13:05', '2023-04-18 21:13:05', 'vsdfvgfs', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'comment', 0, 0),
(3, 221, 'Nome do Usuário', 'adenilsonm981@gmail.com', 'http://fsff', '127.0.0.1', '2023-04-18 18:13:32', '2023-04-18 21:13:32', 'Proin ultricies convallis urna nec dignissim. Vestibulum accumsan\r\n                                                sem ut quam facilisis pretium. Quisque tristique laoreet fermentum.\r\n                                                Nullam a ipsum metus. Quisque non massa nec ante tristique viverra\r\n                                                at eget mauris. Etiam quis orci condimentum turpis malesuada\r\n                                                consectetur nec et ex.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'comment', 0, 0),
(4, 366, 'Nome do Usuário', 'adenilsonm981@gmail.com', 'http://Nome%20do%20Usuário', '127.0.0.1', '2023-04-18 23:13:48', '2023-04-19 02:13:48', 'Proin ultricies convallis urna nec dignissim. Vestibulum accumsan sem ut quam facilisis pretium. Quisque tristique laoreet fermentum. Nullam a ipsum metus. Quisque non massa nec ante tristique viverra at eget mauris. Etiam quis orci condimentum turpis malesuada consectetur nec et ex.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'comment', 0, 0),
(5, 366, 'Nome de outro usuário', 'adenilsonm981@gmail.com', 'http://...', '127.0.0.1', '2023-04-18 23:20:01', '2023-04-19 02:20:01', 'Proin ultricies convallis urna nec dignissim. Vestibulum accumsan sem ut quam facilisis pretium. Quisque tristique laoreet fermentum. Nullam a ipsum metus. Quisque non massa nec ante tristique viverra at eget mauris. Etiam quis orci condimentum turpis malesuada consectetur nec et ex.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'comment', 0, 0) ;

#
# Fim do conteúdo da tabela `wp_comments`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_links` existente
#

DROP TABLE IF EXISTS `wp_links`;


#
# Estrutura da tabela `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_links`
#

#
# Fim do conteúdo da tabela `wp_links`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_options` existente
#

DROP TABLE IF EXISTS `wp_options`;


#
# Estrutura da tabela `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=860 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://outsideco.com.br/site', 'yes'),
(2, 'home', 'http://outsideco.com.br/site', 'yes'),
(3, 'blogname', 'OUTSIDE.CO', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'suporte@123esite.com.br', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:161:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=9&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:33:"classic-editor/classic-editor.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:21:"safe-svg/safe-svg.php";i:4;s:27:"woocommerce/woocommerce.php";i:5;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'theme-outside', 'yes'),
(41, 'stylesheet', 'theme-outside', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '9', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1696900727', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}', 'yes'),
(105, 'cron', 'a:18:{i:1681875815;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"0d04ed39571b55704c122d726248bbac";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:1:{i:0;s:7:"WP Cron";}s:8:"interval";i:60;}}}i:1681877929;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1681878639;a:1:{s:33:"wc_admin_process_orders_milestone";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1681878646;a:1:{s:29:"wc_admin_unsnooze_admin_notes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1681878653;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1681882237;a:2:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:31:"woocommerce_cleanup_rate_limits";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1681893037;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1681910329;a:4:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1681910342;a:1:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1681953529;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1681953542;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1681953543;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1681957837;a:1:{s:14:"wc_admin_daily";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1681957847;a:2:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1681959600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1682039929;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1683167497;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:11:"fifteendays";s:4:"args";a:0:{}s:8:"interval";i:1296000;}}}s:7:"version";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'nonce_key', '@p>q/,N;wgdVQoH|Rb<t/E7:jxFGTXra|WrvMd1&x#V8%SdScQDVGKA6Mt%~}^2p', 'no'),
(116, 'nonce_salt', 'z1@=eM4cr1e$7fv2N|,`+~-$3[:mG~b42n8P815yxQ>NhZ{y)X6Qw+K;A{(DVnI2', 'no'),
(117, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1681349789;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'yes'),
(125, 'https_detection_errors', 'a:1:{s:23:"ssl_verification_failed";a:1:{i:0;s:25:"Verificação SSL falhou.";}}', 'yes'),
(132, 'auth_key', ')%0 qlGEEW~JlPt?%o7(NkQ!bd3`S9@GJ$RE9XCP/L H84Wbd&gzX:@/:O@r;WFR', 'no'),
(133, 'auth_salt', 's5 ZK@b%CVU9ZQ8B*e9:T!7//)leWl*:xBq20l.p<tNC_u -i(p U!^+~~(O*dH#', 'no'),
(134, 'logged_in_key', 'Y>qpn/tD ~%Gg:2AX&^lF-DaMw[*j#P|d_w1(IZ(l@L`m~;!Ay|8l&A4nIL;^D,v', 'no'),
(135, 'logged_in_salt', 'DdIKABgT98DQfl36Ak7U~~qOltW {0;Pe|baF[$OQ1`)VI`mWZDtuTJqC4c{MpT1', 'no'),
(154, 'can_compress_scripts', '1', 'no'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(162, 'wpcf7', 'a:2:{s:7:"version";s:7:"5.7.5.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1681348799;s:7:"version";s:7:"5.7.5.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(165, 'finished_updating_comment_type', '1', 'yes'),
(177, 'acf_version', '6.1.4', 'yes'),
(182, 'WPLANG', 'pt_BR', 'yes'),
(183, 'new_admin_email', 'suporte@123esite.com.br', 'yes'),
(199, 'current_theme', 'CALDAS', 'yes'),
(200, 'theme_mods_theme-outside', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:14:"menu-principal";i:6;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(201, 'theme_switched', '', 'yes'),
(223, 'options_telefone', '+55 11 99464-1443', 'no'),
(224, '_options_telefone', 'field_643815a92e128', 'no'),
(225, 'options_email', 'parcerias@outsideco.com.br', 'no'),
(226, '_options_email', 'field_643815be2e129', 'no'),
(227, 'options_endereco', 'São Paulo, Brasil', 'no'),
(228, '_options_endereco', 'field_643815d82e12a', 'no'),
(229, 'options_instagram', 'https://www.instagram.com/', 'no'),
(230, '_options_instagram', 'field_643815ee2e12b', 'no'),
(231, 'options_facebook', 'https://www.facebook.com/', 'no'),
(232, '_options_facebook', 'field_643815fc2e12c', 'no'),
(233, 'options_linkedin', 'https://www.linkedin.com/', 'no'),
(234, '_options_linkedin', 'field_6438160f2e12d', 'no'),
(235, 'options_pinterest', 'https://br.pinterest.com/', 'no'),
(236, '_options_pinterest', 'field_643816362e12e', 'no'),
(237, 'secure_auth_key', 'fwk:qL2xZNV~C-7Ii2w4PWduMR@5uZJ)Pri6opi[(1[y6RaEZ%v+/.TJEf}8_la~', 'no'),
(238, 'secure_auth_salt', 'K:&auXM]i<{-nLfjg:8AsCjJ;BQP777{BYKa1=;^ jxPQs;Jg ,{IhW/,5]tW>pC', 'no'),
(277, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(285, 'recovery_mode_email_last_sent', '1681740496', 'yes'),
(502, 'options_lista_menu_footer_0_titulo', 'TRAVEL TIME', 'no'),
(503, '_options_lista_menu_footer_0_titulo', 'field_643f015940ba3', 'no'),
(504, 'options_lista_menu_footer_0_link', 'http://outsideco.com.br/site/travel-time/', 'no'),
(505, '_options_lista_menu_footer_0_link', 'field_643f016340ba4', 'no'),
(506, 'options_lista_menu_footer_0_imagem', '336', 'no'),
(507, '_options_lista_menu_footer_0_imagem', 'field_643f017040ba5', 'no'),
(508, 'options_lista_menu_footer_1_titulo', 'NOTHING BASIC', 'no'),
(509, '_options_lista_menu_footer_1_titulo', 'field_643f015940ba3', 'no'),
(510, 'options_lista_menu_footer_1_link', 'http://outsideco.com.br/site/nothing-basic/', 'no'),
(511, '_options_lista_menu_footer_1_link', 'field_643f016340ba4', 'no'),
(512, 'options_lista_menu_footer_1_imagem', '337', 'no'),
(513, '_options_lista_menu_footer_1_imagem', 'field_643f017040ba5', 'no'),
(514, 'options_lista_menu_footer_2_titulo', 'HEY NUTRI', 'no'),
(515, '_options_lista_menu_footer_2_titulo', 'field_643f015940ba3', 'no'),
(516, 'options_lista_menu_footer_2_link', 'http://outsideco.com.br/site/hey-nutri/', 'no'),
(517, '_options_lista_menu_footer_2_link', 'field_643f016340ba4', 'no'),
(518, 'options_lista_menu_footer_2_imagem', '339', 'no'),
(519, '_options_lista_menu_footer_2_imagem', 'field_643f017040ba5', 'no'),
(520, 'options_lista_menu_footer_3_titulo', 'BRUNCH TIME', 'no'),
(521, '_options_lista_menu_footer_3_titulo', 'field_643f015940ba3', 'no'),
(522, 'options_lista_menu_footer_3_link', 'http://outsideco.com.br/site/brunch-time/', 'no'),
(523, '_options_lista_menu_footer_3_link', 'field_643f016340ba4', 'no'),
(524, 'options_lista_menu_footer_3_imagem', '342', 'no'),
(525, '_options_lista_menu_footer_3_imagem', 'field_643f017040ba5', 'no'),
(526, 'options_lista_menu_footer', '4', 'no'),
(527, '_options_lista_menu_footer', 'field_643f014940ba2', 'no'),
(530, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(545, 'category_children', 'a:0:{}', 'yes'),
(547, 'secret_key', '=-,fd$odCmPz5)y2vF)YP`pUHH|>Sub5LG^ZXarc&nbMKMyh=5Fl5|zeUC,?dg`:', 'no'),
(562, 'action_scheduler_hybrid_store_demarkation', '385', 'yes'),
(563, 'schema-ActionScheduler_StoreSchema', '6.0.1681871435', 'yes'),
(564, 'schema-ActionScheduler_LoggerSchema', '3.0.1681871435', 'yes'),
(567, 'woocommerce_schema_version', '430', 'yes'),
(568, 'woocommerce_store_address', '', 'yes'),
(569, 'woocommerce_store_address_2', '', 'yes'),
(570, 'woocommerce_store_city', '', 'yes'),
(571, 'woocommerce_default_country', 'BR:SP', 'yes'),
(572, 'woocommerce_store_postcode', '', 'yes'),
(573, 'woocommerce_allowed_countries', 'all', 'yes'),
(574, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(575, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(576, 'woocommerce_ship_to_countries', '', 'yes'),
(577, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(578, 'woocommerce_default_customer_address', 'base', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(579, 'woocommerce_calc_taxes', 'no', 'yes'),
(580, 'woocommerce_enable_coupons', 'yes', 'yes'),
(581, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(582, 'woocommerce_currency', 'BRL', 'yes'),
(583, 'woocommerce_currency_pos', 'left_space', 'yes'),
(584, 'woocommerce_price_thousand_sep', '.', 'yes'),
(585, 'woocommerce_price_decimal_sep', ',', 'yes'),
(586, 'woocommerce_price_num_decimals', '2', 'yes'),
(587, 'woocommerce_shop_page_id', '386', 'yes'),
(588, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(589, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(590, 'woocommerce_placeholder_image', '385', 'yes'),
(591, 'woocommerce_weight_unit', 'kg', 'yes'),
(592, 'woocommerce_dimension_unit', 'cm', 'yes'),
(593, 'woocommerce_enable_reviews', 'yes', 'yes'),
(594, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(595, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(596, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(597, 'woocommerce_review_rating_required', 'yes', 'no'),
(598, 'woocommerce_manage_stock', 'yes', 'yes'),
(599, 'woocommerce_hold_stock_minutes', '60', 'no'),
(600, 'woocommerce_notify_low_stock', 'yes', 'no'),
(601, 'woocommerce_notify_no_stock', 'yes', 'no'),
(602, 'woocommerce_stock_email_recipient', 'suporte@123esite.com.br', 'no'),
(603, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(604, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(605, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(606, 'woocommerce_stock_format', '', 'yes'),
(607, 'woocommerce_file_download_method', 'force', 'no'),
(608, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(609, 'woocommerce_downloads_require_login', 'no', 'no'),
(610, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(611, 'woocommerce_downloads_deliver_inline', '', 'no'),
(612, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(613, 'woocommerce_attribute_lookup_enabled', 'no', 'yes'),
(614, 'woocommerce_attribute_lookup_direct_updates', 'no', 'yes'),
(615, 'woocommerce_prices_include_tax', 'no', 'yes'),
(616, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(617, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(618, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(619, 'woocommerce_tax_classes', '', 'yes'),
(620, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(621, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(622, 'woocommerce_price_display_suffix', '', 'yes'),
(623, 'woocommerce_tax_total_display', 'itemized', 'no'),
(624, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(625, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(626, 'woocommerce_ship_to_destination', 'billing', 'no'),
(627, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(628, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(629, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(630, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(631, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(632, 'woocommerce_registration_generate_username', 'yes', 'no'),
(633, 'woocommerce_registration_generate_password', 'yes', 'no'),
(634, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(635, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(636, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(637, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(638, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(639, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(640, 'woocommerce_trash_pending_orders', '', 'no'),
(641, 'woocommerce_trash_failed_orders', '', 'no'),
(642, 'woocommerce_trash_cancelled_orders', '', 'no'),
(643, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(644, 'woocommerce_email_from_name', 'OUTSIDE.CO', 'no'),
(645, 'woocommerce_email_from_address', 'suporte@123esite.com.br', 'no'),
(646, 'woocommerce_email_header_image', '', 'no'),
(647, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(648, 'woocommerce_email_base_color', '#7f54b3', 'no'),
(649, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(650, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(651, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(652, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(653, 'woocommerce_cart_page_id', '387', 'no'),
(654, 'woocommerce_checkout_page_id', '388', 'no'),
(655, 'woocommerce_myaccount_page_id', '389', 'no'),
(656, 'woocommerce_terms_page_id', '', 'no'),
(657, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(658, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(659, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(660, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(661, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(662, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(663, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(664, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(665, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(666, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(667, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(668, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(669, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(670, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(671, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(672, 'woocommerce_api_enabled', 'no', 'yes'),
(673, 'woocommerce_allow_tracking', 'no', 'no'),
(674, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(675, 'woocommerce_analytics_enabled', 'yes', 'yes'),
(676, 'woocommerce_navigation_enabled', 'no', 'yes'),
(677, 'woocommerce_new_product_management_enabled', 'no', 'yes'),
(678, 'woocommerce_feature_custom_order_tables_enabled', 'no', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(679, 'woocommerce_single_image_width', '600', 'yes'),
(680, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(681, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(682, 'woocommerce_demo_store', 'no', 'no'),
(683, 'wc_downloads_approved_directories_mode', 'enabled', 'yes'),
(684, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:8:"/product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(685, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(686, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(688, 'product_cat_children', 'a:0:{}', 'yes'),
(689, 'default_product_cat', '21', 'yes'),
(692, 'woocommerce_refund_returns_page_id', '390', 'yes'),
(695, 'woocommerce_paypal_settings', 'a:23:{s:7:"enabled";s:2:"no";s:5:"title";s:6:"PayPal";s:11:"description";s:85:"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.";s:5:"email";s:23:"suporte@123esite.com.br";s:8:"advanced";s:0:"";s:8:"testmode";s:2:"no";s:5:"debug";s:2:"no";s:16:"ipn_notification";s:3:"yes";s:14:"receiver_email";s:23:"suporte@123esite.com.br";s:14:"identity_token";s:0:"";s:14:"invoice_prefix";s:3:"WC-";s:13:"send_shipping";s:3:"yes";s:16:"address_override";s:2:"no";s:13:"paymentaction";s:4:"sale";s:9:"image_url";s:0:"";s:11:"api_details";s:0:"";s:12:"api_username";s:0:"";s:12:"api_password";s:0:"";s:13:"api_signature";s:0:"";s:20:"sandbox_api_username";s:0:"";s:20:"sandbox_api_password";s:0:"";s:21:"sandbox_api_signature";s:0:"";s:12:"_should_load";s:2:"no";}', 'yes'),
(696, 'woocommerce_version', '7.6.0', 'yes'),
(697, 'woocommerce_db_version', '7.6.0', 'yes'),
(698, 'woocommerce_admin_install_timestamp', '1681871439', 'yes'),
(699, 'woocommerce_inbox_variant_assignment', '10', 'yes'),
(704, 'action_scheduler_lock_async-request-runner', '1681875773', 'yes'),
(705, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:"no_secure_connection";}', 'yes'),
(706, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:"database_prefix";s:32:"XrLWwQD5fQtVAlb5jk6V7AJJQcNf3tAH";}', 'yes'),
(708, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(709, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(710, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(711, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(712, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(713, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(714, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(715, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(716, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(717, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(718, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(719, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(733, 'wc_remote_inbox_notifications_stored_state', 'O:8:"stdClass":2:{s:22:"there_were_no_products";b:1;s:22:"there_are_now_products";b:1;}', 'no'),
(739, 'wc_blocks_db_schema_version', '260', 'yes'),
(753, 'woocommerce_task_list_tracked_completed_tasks', 'a:2:{i:0;s:8:"purchase";i:1;s:8:"products";}', 'yes'),
(761, 'woocommerce_onboarding_profile', 'a:11:{s:18:"is_agree_marketing";b:0;s:11:"store_email";s:23:"suporte@123esite.com.br";s:20:"is_store_country_set";b:1;s:8:"industry";a:1:{i:0;a:1:{s:4:"slug";s:27:"fashion-apparel-accessories";}}s:13:"product_types";a:1:{i:0;s:8:"physical";}s:13:"product_count";s:4:"1-10";s:14:"selling_venues";s:2:"no";s:12:"setup_client";b:1;s:19:"business_extensions";a:0:{}s:5:"theme";s:13:"theme-outside";s:9:"completed";b:1;}', 'yes'),
(763, 'action_scheduler_migration_status', 'complete', 'yes'),
(764, 'woocommerce_task_list_dismissed_tasks', 'a:0:{}', 'yes'),
(765, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
(859, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1681875766;}', 'no') ;

#
# Fim do conteúdo da tabela `wp_options`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_postmeta` existente
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Estrutura da tabela `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2725 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(19, 9, '_edit_last', '1'),
(20, 9, '_edit_lock', '1681874243:1'),
(21, 11, '_edit_last', '1'),
(22, 11, '_edit_lock', '1681851657:1'),
(23, 20, '_edit_last', '1'),
(24, 20, '_edit_lock', '1681408210:1'),
(25, 48, '_wp_attached_file', '2023/04/slider2.jpg'),
(26, 48, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:794;s:4:"file";s:19:"2023/04/slider2.jpg";s:8:"filesize";i:266093;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:19:"slider2-300x124.jpg";s:5:"width";i:300;s:6:"height";i:124;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9085;}s:5:"large";a:5:{s:4:"file";s:20:"slider2-1024x423.jpg";s:5:"width";i:1024;s:6:"height";i:423;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:80524;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"slider2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6449;}s:12:"medium_large";a:5:{s:4:"file";s:19:"slider2-768x318.jpg";s:5:"width";i:768;s:6:"height";i:318;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:45679;}s:9:"1536x1536";a:5:{s:4:"file";s:20:"slider2-1536x635.jpg";s:5:"width";i:1536;s:6:"height";i:635;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:166169;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:19:"slider2-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35364;}s:10:"capa-viaje";a:5:{s:4:"file";s:19:"slider2-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30301;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(27, 49, '_wp_attached_file', '2023/04/blog1.jpg'),
(28, 49, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:17:"2023/04/blog1.jpg";s:8:"filesize";i:45832;s:5:"sizes";a:3:{s:6:"medium";a:5:{s:4:"file";s:17:"blog1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16979;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"blog1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7627;}s:10:"capa-viaje";a:5:{s:4:"file";s:17:"blog1-500x288.jpg";s:5:"width";i:500;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40200;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"Copyright 2022 Beatriz Karam. All rights reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(29, 50, '_wp_attached_file', '2023/04/blog2.jpg'),
(30, 50, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:769;s:6:"height";i:1025;s:4:"file";s:17:"2023/04/blog2.jpg";s:8:"filesize";i:591737;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:17:"blog2-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31837;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"blog2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11625;}s:9:"carrossel";a:5:{s:4:"file";s:17:"blog2-769x794.jpg";s:5:"width";i:769;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:232077;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:17:"blog2-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:64920;}s:10:"capa-viaje";a:5:{s:4:"file";s:17:"blog2-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:58068;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 51, '_wp_attached_file', '2023/04/blog3.jpg'),
(32, 51, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:17:"2023/04/blog3.jpg";s:8:"filesize";i:50252;s:5:"sizes";a:3:{s:6:"medium";a:5:{s:4:"file";s:17:"blog3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17442;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"blog3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8077;}s:10:"capa-viaje";a:5:{s:4:"file";s:17:"blog3-500x288.jpg";s:5:"width";i:500;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:42403;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"Copyright 2022 Beatriz Karam. All rights reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 52, '_wp_attached_file', '2023/04/time-to-travel.jpg'),
(34, 52, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2074;s:6:"height";i:1383;s:4:"file";s:26:"2023/04/time-to-travel.jpg";s:8:"filesize";i:1219298;s:5:"sizes";a:9:{s:6:"medium";a:5:{s:4:"file";s:26:"time-to-travel-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15717;}s:5:"large";a:5:{s:4:"file";s:27:"time-to-travel-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:143581;}s:9:"thumbnail";a:5:{s:4:"file";s:26:"time-to-travel-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6663;}s:12:"medium_large";a:5:{s:4:"file";s:26:"time-to-travel-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:83483;}s:9:"1536x1536";a:5:{s:4:"file";s:28:"time-to-travel-1536x1024.jpg";s:5:"width";i:1536;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:300263;}s:9:"2048x2048";a:5:{s:4:"file";s:28:"time-to-travel-2048x1366.jpg";s:5:"width";i:2048;s:6:"height";i:1366;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:506348;}s:9:"carrossel";a:5:{s:4:"file";s:27:"time-to-travel-1920x794.jpg";s:5:"width";i:1920;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:286855;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:26:"time-to-travel-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:39177;}s:10:"capa-viaje";a:5:{s:4:"file";s:26:"time-to-travel-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35014;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 53, '_wp_attached_file', '2023/04/slider1.jpg'),
(36, 53, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1537;s:6:"height";i:2049;s:4:"file";s:19:"2023/04/slider1.jpg";s:8:"filesize";i:1231515;s:5:"sizes";a:8:{s:6:"medium";a:5:{s:4:"file";s:19:"slider1-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15573;}s:5:"large";a:5:{s:4:"file";s:20:"slider1-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136877;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"slider1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6583;}s:12:"medium_large";a:5:{s:4:"file";s:20:"slider1-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136877;}s:9:"1536x1536";a:5:{s:4:"file";s:21:"slider1-1152x1536.jpg";s:5:"width";i:1152;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:300755;}s:9:"carrossel";a:5:{s:4:"file";s:20:"slider1-1537x794.jpg";s:5:"width";i:1537;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:279105;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:19:"slider1-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30949;}s:10:"capa-viaje";a:5:{s:4:"file";s:19:"slider1-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28431;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(37, 54, '_wp_attached_file', '2023/04/miado1.jpg'),
(38, 54, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:908;s:6:"height";i:1210;s:4:"file";s:18:"2023/04/miado1.jpg";s:8:"filesize";i:639642;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:18:"miado1-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23740;}s:5:"large";a:5:{s:4:"file";s:19:"miado1-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:209572;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"miado1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8747;}s:12:"medium_large";a:5:{s:4:"file";s:19:"miado1-768x1023.jpg";s:5:"width";i:768;s:6:"height";i:1023;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:209670;}s:9:"carrossel";a:5:{s:4:"file";s:18:"miado1-908x794.jpg";s:5:"width";i:908;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:199132;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:18:"miado1-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:45590;}s:10:"capa-viaje";a:5:{s:4:"file";s:18:"miado1-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40675;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 55, '_wp_attached_file', '2023/04/nutri.png'),
(40, 55, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:557;s:6:"height";i:621;s:4:"file";s:17:"2023/04/nutri.png";s:8:"filesize";i:481417;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:17:"nutri-269x300.png";s:5:"width";i:269;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:112018;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"nutri-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:35855;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:17:"nutri-500x333.png";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:209810;}s:10:"capa-viaje";a:5:{s:4:"file";s:17:"nutri-527x288.png";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:192935;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(41, 9, 'imagem_banner', '48'),
(42, 9, '_imagem_banner', 'field_6438357e1ae3b'),
(43, 9, 'subtitulo_sobre', 'ABOUT ME'),
(44, 9, '_subtitulo_sobre', 'field_643835ef1ae3d'),
(45, 9, 'titulo_1_sobre', 'HEY OUTSIDERS,'),
(46, 9, '_titulo_1_sobre', 'field_643836061ae3e'),
(47, 9, 'logo_sobre', '379'),
(48, 9, '_logo_sobre', 'field_6438361e1ae40'),
(49, 9, 'titulo_2_sobre', 'HERE!'),
(50, 9, '_titulo_2_sobre', 'field_643836111ae3f'),
(51, 9, 'texto_sobre', 'Welcome to my world, sou mais do que uma marca, sou um lifestyle cheio ​de experiências, uma nova forma de expressão trazendo um novo olhar e ​perspectiva para o mundo digital.'),
(52, 9, '_texto_sobre', 'field_6438362f1ae41'),
(53, 9, 'titulo_noticias', 'LATEST CONTENTS'),
(54, 9, '_titulo_noticias', 'field_6438365b1ae43'),
(55, 9, 'lista_noticias_0_data', 'Fevereiro, 2023.'),
(56, 9, '_lista_noticias_0_data', 'field_643836de1ae45'),
(57, 9, 'lista_noticias_0_titulo', 'PATAGÔNIA'),
(58, 9, '_lista_noticias_0_titulo', 'field_643836e61ae46'),
(59, 9, 'lista_noticias_0_resumo', 'A Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma). (..).'),
(60, 9, '_lista_noticias_0_resumo', 'field_643836f01ae47'),
(61, 9, 'lista_noticias_0_link', 'https://www.google.com/'),
(62, 9, '_lista_noticias_0_link', 'field_643836fc1ae48'),
(63, 9, 'lista_noticias_0_imagem', '49'),
(64, 9, '_lista_noticias_0_imagem', 'field_643838691ae56'),
(65, 9, 'lista_noticias_1_data', 'Janeiro, 2023.'),
(66, 9, '_lista_noticias_1_data', 'field_643836de1ae45'),
(67, 9, 'lista_noticias_1_titulo', 'MILA SP'),
(68, 9, '_lista_noticias_1_titulo', 'field_643836e61ae46'),
(69, 9, 'lista_noticias_1_resumo', 'O restaurante Mila é um italiano descolado e diferenciado localizado no Itaim, sou suspeita para falar porque italiano é meu top 3, e o Mila ganhou meu coração! (...).'),
(70, 9, '_lista_noticias_1_resumo', 'field_643836f01ae47'),
(71, 9, 'lista_noticias_1_link', 'https://www.google.com/'),
(72, 9, '_lista_noticias_1_link', 'field_643836fc1ae48'),
(73, 9, 'lista_noticias_1_imagem', '50'),
(74, 9, '_lista_noticias_1_imagem', 'field_643838691ae56'),
(75, 9, 'lista_noticias_2_data', 'Dezembro, 2022.'),
(76, 9, '_lista_noticias_2_data', 'field_643836de1ae45'),
(77, 9, 'lista_noticias_2_titulo', 'DROP/0001'),
(78, 9, '_lista_noticias_2_titulo', 'field_643836e61ae46'),
(79, 9, 'lista_noticias_2_resumo', 'Um dos meus pilares principais é a sustentabilidade e a preocupação com o meio ambiente, aqui vou contar para vocês algumas curiosidades sobre meus drops e como você pode adquiri-los 😉 (...)'),
(80, 9, '_lista_noticias_2_resumo', 'field_643836f01ae47'),
(81, 9, 'lista_noticias_2_link', 'https://www.google.com/'),
(82, 9, '_lista_noticias_2_link', 'field_643836fc1ae48'),
(83, 9, 'lista_noticias_2_imagem', '51'),
(84, 9, '_lista_noticias_2_imagem', 'field_643838691ae56'),
(85, 9, 'lista_noticias', '3'),
(86, 9, '_lista_noticias', 'field_643836bc1ae44'),
(87, 9, 'lista_destaques_0_titulo_chamada', 'Time to travel!'),
(88, 9, '_lista_destaques_0_titulo_chamada', 'field_6438379c1ae4d'),
(89, 9, 'lista_destaques_0_texto_chamada', 'Viagens com aventura, natureza, entretenimento, gastronomia, cultura e muito mais.'),
(90, 9, '_lista_destaques_0_texto_chamada', 'field_643837bd1ae4e'),
(91, 9, 'lista_destaques_0_data', 'Novembro, 2022.'),
(92, 9, '_lista_destaques_0_data', 'field_643837e11ae4f'),
(93, 9, 'lista_destaques_0_titulo', 'PATAGÔNIA'),
(94, 9, '_lista_destaques_0_titulo', 'field_643837ed1ae50'),
(95, 9, 'lista_destaques_0_resumo', 'Um dos meus pilares principais é viagem, seja para o Brasil ou ao redor do 🌎... Produções de conteúdos, marcas parceiras, outsiders aventureiros e muito mais.\r\n\r\nMinha última viagem foi para Patagônia, um lugar maravilhoso, com marcas incríveis, muita aventura e cultura. Quer saber mais do meu roteiro, dos perrengues e dicas?'),
(96, 9, '_lista_destaques_0_resumo', 'field_643837f61ae51'),
(97, 9, 'lista_destaques_0_titulo_botao', 'read more'),
(98, 9, '_lista_destaques_0_titulo_botao', 'field_643838011ae52'),
(99, 9, 'lista_destaques_0_link_botao', 'https://www.google.com/'),
(100, 9, '_lista_destaques_0_link_botao', 'field_6438380f1ae53'),
(101, 9, 'lista_destaques_0_letra_imagem', 't'),
(102, 9, '_lista_destaques_0_letra_imagem', 'field_643838241ae54'),
(103, 9, 'lista_destaques_0_imagem', '52'),
(104, 9, '_lista_destaques_0_imagem', 'field_6438383e1ae55'),
(105, 9, 'lista_destaques_1_titulo_chamada', 'Nothing Basic'),
(106, 9, '_lista_destaques_1_titulo_chamada', 'field_6438379c1ae4d'),
(107, 9, 'lista_destaques_1_texto_chamada', 'O slow fashion e o consumo consciente é algo que quero transmitir com peças atemporais, sustentáveis, exclusivas e para qualquer ocasião'),
(108, 9, '_lista_destaques_1_texto_chamada', 'field_643837bd1ae4e'),
(109, 9, 'lista_destaques_1_data', 'Março, 2023.'),
(110, 9, '_lista_destaques_1_data', 'field_643837e11ae4f'),
(111, 9, 'lista_destaques_1_titulo', 'DROP/0001'),
(112, 9, '_lista_destaques_1_titulo', 'field_643837ed1ae50'),
(113, 9, 'lista_destaques_1_resumo', 'A sustentabilidade e a preocupação com o meio ambiente, é algo que faz parte dos meus valores, com isso trarei para vocês coleções cápsulas (famosos drops), com peças exclusivas e de uso infinito.\r\n\r\nNão é sempre que terei drops, então fiquem sempre de olho! Seja uma outsider e me mande sua fotinho usando o look e apareça nas minhas redes sociais 😃.'),
(114, 9, '_lista_destaques_1_resumo', 'field_643837f61ae51'),
(115, 9, 'lista_destaques_1_titulo_botao', 'shop now'),
(116, 9, '_lista_destaques_1_titulo_botao', 'field_643838011ae52'),
(117, 9, 'lista_destaques_1_link_botao', 'https://www.google.com/'),
(118, 9, '_lista_destaques_1_link_botao', 'field_6438380f1ae53') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(119, 9, 'lista_destaques_1_letra_imagem', 'n'),
(120, 9, '_lista_destaques_1_letra_imagem', 'field_643838241ae54'),
(121, 9, 'lista_destaques_1_imagem', '53'),
(122, 9, '_lista_destaques_1_imagem', 'field_6438383e1ae55'),
(123, 9, 'lista_destaques_2_titulo_chamada', 'Lunch Time'),
(124, 9, '_lista_destaques_2_titulo_chamada', 'field_6438379c1ae4d'),
(125, 9, 'lista_destaques_2_texto_chamada', 'Gastronomia faz parte do meu dia a dia e vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(126, 9, '_lista_destaques_2_texto_chamada', 'field_643837bd1ae4e'),
(127, 9, 'lista_destaques_2_data', 'Dezembro, 2022.'),
(128, 9, '_lista_destaques_2_data', 'field_643837e11ae4f'),
(129, 9, 'lista_destaques_2_titulo', 'MIADO'),
(130, 9, '_lista_destaques_2_titulo', 'field_643837ed1ae50'),
(131, 9, 'lista_destaques_2_resumo', 'Através de produções de conteúdo originais, personalizadas e em tempo real vou contar para vocês, meus reviews dos restaurantes, pratos preferidos, ambiente, atendimento e sugestões, com uma abordagem descontraída e divertida.'),
(132, 9, '_lista_destaques_2_resumo', 'field_643837f61ae51'),
(133, 9, 'lista_destaques_2_titulo_botao', 'read more'),
(134, 9, '_lista_destaques_2_titulo_botao', 'field_643838011ae52'),
(135, 9, 'lista_destaques_2_link_botao', 'https://www.google.com/'),
(136, 9, '_lista_destaques_2_link_botao', 'field_6438380f1ae53'),
(137, 9, 'lista_destaques_2_letra_imagem', 'I'),
(138, 9, '_lista_destaques_2_letra_imagem', 'field_643838241ae54'),
(139, 9, 'lista_destaques_2_imagem', '54'),
(140, 9, '_lista_destaques_2_imagem', 'field_6438383e1ae55'),
(141, 9, 'lista_destaques_3_titulo_chamada', 'Canal da Nutric'),
(142, 9, '_lista_destaques_3_titulo_chamada', 'field_6438379c1ae4d'),
(143, 9, 'lista_destaques_3_texto_chamada', 'Página de receitas saudáveis, bate papo sobre diversos assuntos, perguntas e respostas, work out e muito mais.'),
(144, 9, '_lista_destaques_3_texto_chamada', 'field_643837bd1ae4e'),
(145, 9, 'lista_destaques_3_data', 'Março, 2023.'),
(146, 9, '_lista_destaques_3_data', 'field_643837e11ae4f'),
(147, 9, 'lista_destaques_3_titulo', 'DROP/0001'),
(148, 9, '_lista_destaques_3_titulo', 'field_643837ed1ae50'),
(149, 9, 'lista_destaques_3_resumo', 'Um dos pilares principais da Outside.co é saúde e bem estar e eu gostaria de me apresentar para vocês! Prazer, sou Camila, nutri da Outside :)\r\n\r\nSe interessa por esse universo de saúde, seja na alimentação ou prática de exercícios físicos? Aqui é seu lugar! Vem conversar comigo 😍'),
(150, 9, '_lista_destaques_3_resumo', 'field_643837f61ae51'),
(151, 9, 'lista_destaques_3_titulo_botao', 'read more'),
(152, 9, '_lista_destaques_3_titulo_botao', 'field_643838011ae52'),
(153, 9, 'lista_destaques_3_link_botao', 'https://www.google.com/'),
(154, 9, '_lista_destaques_3_link_botao', 'field_6438380f1ae53'),
(155, 9, 'lista_destaques_3_letra_imagem', 'n'),
(156, 9, '_lista_destaques_3_letra_imagem', 'field_643838241ae54'),
(157, 9, 'lista_destaques_3_imagem', '55'),
(158, 9, '_lista_destaques_3_imagem', 'field_6438383e1ae55'),
(159, 9, 'lista_destaques', '4'),
(160, 9, '_lista_destaques', 'field_6438378b1ae4c'),
(161, 56, 'imagem_banner', '48'),
(162, 56, '_imagem_banner', 'field_6438357e1ae3b'),
(163, 56, 'subtitulo_sobre', 'ABOUT ME'),
(164, 56, '_subtitulo_sobre', 'field_643835ef1ae3d'),
(165, 56, 'titulo_1_sobre', 'HEY OUTSIDERS,'),
(166, 56, '_titulo_1_sobre', 'field_643836061ae3e'),
(167, 56, 'logo_sobre', '48'),
(168, 56, '_logo_sobre', 'field_6438361e1ae40'),
(169, 56, 'titulo_2_sobre', 'HERE!'),
(170, 56, '_titulo_2_sobre', 'field_643836111ae3f'),
(171, 56, 'texto_sobre', 'Welcome to my world, sou mais do que uma marca, sou um lifestyle cheio ​de experiências, uma nova forma de expressão trazendo um novo olhar e ​perspectiva para o mundo digital.'),
(172, 56, '_texto_sobre', 'field_6438362f1ae41'),
(173, 56, 'titulo_noticias', 'LATEST CONTENTS'),
(174, 56, '_titulo_noticias', 'field_6438365b1ae43'),
(175, 56, 'lista_noticias_0_data', 'Fevereiro, 2023.'),
(176, 56, '_lista_noticias_0_data', 'field_643836de1ae45'),
(177, 56, 'lista_noticias_0_titulo', 'PATAGÔNIA'),
(178, 56, '_lista_noticias_0_titulo', 'field_643836e61ae46'),
(179, 56, 'lista_noticias_0_resumo', 'A Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma). (..).'),
(180, 56, '_lista_noticias_0_resumo', 'field_643836f01ae47'),
(181, 56, 'lista_noticias_0_link', 'https://www.google.com/'),
(182, 56, '_lista_noticias_0_link', 'field_643836fc1ae48'),
(183, 56, 'lista_noticias_0_imagem', '49'),
(184, 56, '_lista_noticias_0_imagem', 'field_643838691ae56'),
(185, 56, 'lista_noticias_1_data', 'Janeiro, 2023.'),
(186, 56, '_lista_noticias_1_data', 'field_643836de1ae45'),
(187, 56, 'lista_noticias_1_titulo', 'MILA SP'),
(188, 56, '_lista_noticias_1_titulo', 'field_643836e61ae46'),
(189, 56, 'lista_noticias_1_resumo', 'O restaurante Mila é um italiano descolado e diferenciado localizado no Itaim, sou suspeita para falar porque italiano é meu top 3, e o Mila ganhou meu coração! (...).'),
(190, 56, '_lista_noticias_1_resumo', 'field_643836f01ae47'),
(191, 56, 'lista_noticias_1_link', 'https://www.google.com/'),
(192, 56, '_lista_noticias_1_link', 'field_643836fc1ae48'),
(193, 56, 'lista_noticias_1_imagem', '50'),
(194, 56, '_lista_noticias_1_imagem', 'field_643838691ae56'),
(195, 56, 'lista_noticias_2_data', 'Dezembro, 2022.'),
(196, 56, '_lista_noticias_2_data', 'field_643836de1ae45'),
(197, 56, 'lista_noticias_2_titulo', 'DROP/0001'),
(198, 56, '_lista_noticias_2_titulo', 'field_643836e61ae46'),
(199, 56, 'lista_noticias_2_resumo', 'Um dos meus pilares principais é a sustentabilidade e a preocupação com o meio ambiente, aqui vou contar para vocês algumas curiosidades sobre meus drops e como você pode adquiri-los 😉 (...)'),
(200, 56, '_lista_noticias_2_resumo', 'field_643836f01ae47'),
(201, 56, 'lista_noticias_2_link', 'https://www.google.com/'),
(202, 56, '_lista_noticias_2_link', 'field_643836fc1ae48'),
(203, 56, 'lista_noticias_2_imagem', '51'),
(204, 56, '_lista_noticias_2_imagem', 'field_643838691ae56'),
(205, 56, 'lista_noticias', '3'),
(206, 56, '_lista_noticias', 'field_643836bc1ae44'),
(207, 56, 'lista_destaques_0_titulo_chamada', 'Time to travel!'),
(208, 56, '_lista_destaques_0_titulo_chamada', 'field_6438379c1ae4d'),
(209, 56, 'lista_destaques_0_texto_chamada', 'Viagens com aventura, natureza, entretenimento, gastronomia, cultura e muito mais.'),
(210, 56, '_lista_destaques_0_texto_chamada', 'field_643837bd1ae4e'),
(211, 56, 'lista_destaques_0_data', 'Novembro, 2022.'),
(212, 56, '_lista_destaques_0_data', 'field_643837e11ae4f'),
(213, 56, 'lista_destaques_0_titulo', 'PATAGÔNIA'),
(214, 56, '_lista_destaques_0_titulo', 'field_643837ed1ae50'),
(215, 56, 'lista_destaques_0_resumo', 'Um dos meus pilares principais é viagem, seja para o Brasil ou ao redor do 🌎... Produções de conteúdos, marcas parceiras, outsiders aventureiros e muito mais.\r\n\r\nMinha última viagem foi para Patagônia, um lugar maravilhoso, com marcas incríveis, muita aventura e cultura. Quer saber mais do meu roteiro, dos perrengues e dicas?'),
(216, 56, '_lista_destaques_0_resumo', 'field_643837f61ae51'),
(217, 56, 'lista_destaques_0_titulo_botao', 'read more'),
(218, 56, '_lista_destaques_0_titulo_botao', 'field_643838011ae52') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(219, 56, 'lista_destaques_0_link_botao', 'https://www.google.com/'),
(220, 56, '_lista_destaques_0_link_botao', 'field_6438380f1ae53'),
(221, 56, 'lista_destaques_0_letra_imagem', 't'),
(222, 56, '_lista_destaques_0_letra_imagem', 'field_643838241ae54'),
(223, 56, 'lista_destaques_0_imagem', '52'),
(224, 56, '_lista_destaques_0_imagem', 'field_6438383e1ae55'),
(225, 56, 'lista_destaques_1_titulo_chamada', 'Nothing Basic'),
(226, 56, '_lista_destaques_1_titulo_chamada', 'field_6438379c1ae4d'),
(227, 56, 'lista_destaques_1_texto_chamada', 'O slow fashion e o consumo consciente é algo que quero transmitir com peças atemporais, sustentáveis, exclusivas e para qualquer ocasião'),
(228, 56, '_lista_destaques_1_texto_chamada', 'field_643837bd1ae4e'),
(229, 56, 'lista_destaques_1_data', 'Março, 2023.'),
(230, 56, '_lista_destaques_1_data', 'field_643837e11ae4f'),
(231, 56, 'lista_destaques_1_titulo', 'DROP/0001'),
(232, 56, '_lista_destaques_1_titulo', 'field_643837ed1ae50'),
(233, 56, 'lista_destaques_1_resumo', 'A sustentabilidade e a preocupação com o meio ambiente, é algo que faz parte dos meus valores, com isso trarei para vocês coleções cápsulas (famosos drops), com peças exclusivas e de uso infinito.\r\n\r\nNão é sempre que terei drops, então fiquem sempre de olho! Seja uma outsider e me mande sua fotinho usando o look e apareça nas minhas redes sociais 😃.'),
(234, 56, '_lista_destaques_1_resumo', 'field_643837f61ae51'),
(235, 56, 'lista_destaques_1_titulo_botao', 'shop now'),
(236, 56, '_lista_destaques_1_titulo_botao', 'field_643838011ae52'),
(237, 56, 'lista_destaques_1_link_botao', 'https://www.google.com/'),
(238, 56, '_lista_destaques_1_link_botao', 'field_6438380f1ae53'),
(239, 56, 'lista_destaques_1_letra_imagem', 'n'),
(240, 56, '_lista_destaques_1_letra_imagem', 'field_643838241ae54'),
(241, 56, 'lista_destaques_1_imagem', '53'),
(242, 56, '_lista_destaques_1_imagem', 'field_6438383e1ae55'),
(243, 56, 'lista_destaques_2_titulo_chamada', 'Lunch Time'),
(244, 56, '_lista_destaques_2_titulo_chamada', 'field_6438379c1ae4d'),
(245, 56, 'lista_destaques_2_texto_chamada', 'Gastronomia faz parte do meu dia a dia e vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(246, 56, '_lista_destaques_2_texto_chamada', 'field_643837bd1ae4e'),
(247, 56, 'lista_destaques_2_data', 'Dezembro, 2022.'),
(248, 56, '_lista_destaques_2_data', 'field_643837e11ae4f'),
(249, 56, 'lista_destaques_2_titulo', 'MIADO'),
(250, 56, '_lista_destaques_2_titulo', 'field_643837ed1ae50'),
(251, 56, 'lista_destaques_2_resumo', 'Através de produções de conteúdo originais, personalizadas e em tempo real vou contar para vocês, meus reviews dos restaurantes, pratos preferidos, ambiente, atendimento e sugestões, com uma abordagem descontraída e divertida.'),
(252, 56, '_lista_destaques_2_resumo', 'field_643837f61ae51'),
(253, 56, 'lista_destaques_2_titulo_botao', 'read more'),
(254, 56, '_lista_destaques_2_titulo_botao', 'field_643838011ae52'),
(255, 56, 'lista_destaques_2_link_botao', 'https://www.google.com/'),
(256, 56, '_lista_destaques_2_link_botao', 'field_6438380f1ae53'),
(257, 56, 'lista_destaques_2_letra_imagem', 'I'),
(258, 56, '_lista_destaques_2_letra_imagem', 'field_643838241ae54'),
(259, 56, 'lista_destaques_2_imagem', '54'),
(260, 56, '_lista_destaques_2_imagem', 'field_6438383e1ae55'),
(261, 56, 'lista_destaques_3_titulo_chamada', 'Canal da Nutric'),
(262, 56, '_lista_destaques_3_titulo_chamada', 'field_6438379c1ae4d'),
(263, 56, 'lista_destaques_3_texto_chamada', 'Página de receitas saudáveis, bate papo sobre diversos assuntos, perguntas e respostas, work out e muito mais.'),
(264, 56, '_lista_destaques_3_texto_chamada', 'field_643837bd1ae4e'),
(265, 56, 'lista_destaques_3_data', 'Março, 2023.'),
(266, 56, '_lista_destaques_3_data', 'field_643837e11ae4f'),
(267, 56, 'lista_destaques_3_titulo', 'DROP/0001'),
(268, 56, '_lista_destaques_3_titulo', 'field_643837ed1ae50'),
(269, 56, 'lista_destaques_3_resumo', 'Um dos pilares principais da Outside.co é saúde e bem estar e eu gostaria de me apresentar para vocês! Prazer, sou Camila, nutri da Outside :)\r\n\r\nSe interessa por esse universo de saúde, seja na alimentação ou prática de exercícios físicos? Aqui é seu lugar! Vem conversar comigo 😍'),
(270, 56, '_lista_destaques_3_resumo', 'field_643837f61ae51'),
(271, 56, 'lista_destaques_3_titulo_botao', 'read more'),
(272, 56, '_lista_destaques_3_titulo_botao', 'field_643838011ae52'),
(273, 56, 'lista_destaques_3_link_botao', 'https://www.google.com/'),
(274, 56, '_lista_destaques_3_link_botao', 'field_6438380f1ae53'),
(275, 56, 'lista_destaques_3_letra_imagem', 'n'),
(276, 56, '_lista_destaques_3_letra_imagem', 'field_643838241ae54'),
(277, 56, 'lista_destaques_3_imagem', '55'),
(278, 56, '_lista_destaques_3_imagem', 'field_6438383e1ae55'),
(279, 56, 'lista_destaques', '4'),
(280, 56, '_lista_destaques', 'field_6438378b1ae4c'),
(281, 57, '_edit_last', '1'),
(282, 57, '_edit_lock', '1681779436:1'),
(283, 60, '_edit_last', '1'),
(284, 60, '_edit_lock', '1681738348:1'),
(299, 68, '_edit_last', '1'),
(300, 68, '_edit_lock', '1681505187:1'),
(301, 70, '_edit_last', '1'),
(302, 70, '_edit_lock', '1681738375:1'),
(303, 72, '_edit_last', '1'),
(304, 72, '_edit_lock', '1681505571:1'),
(305, 84, '_wp_attached_file', '2023/04/galeria-travel1.jpg'),
(306, 84, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1037;s:6:"height";i:692;s:4:"file";s:27:"2023/04/galeria-travel1.jpg";s:8:"filesize";i:194098;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:27:"galeria-travel1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7814;}s:5:"large";a:5:{s:4:"file";s:28:"galeria-travel1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:62557;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"galeria-travel1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3775;}s:12:"medium_large";a:5:{s:4:"file";s:27:"galeria-travel1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36792;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:27:"galeria-travel1-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18148;}s:10:"capa-viaje";a:5:{s:4:"file";s:27:"galeria-travel1-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13879;}s:11:"capa-padrao";a:5:{s:4:"file";s:27:"galeria-travel1-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18734;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(307, 85, '_wp_attached_file', '2023/04/galeria-travel2.jpg'),
(308, 85, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1037;s:6:"height";i:692;s:4:"file";s:27:"2023/04/galeria-travel2.jpg";s:8:"filesize";i:291605;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:27:"galeria-travel2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14617;}s:5:"large";a:5:{s:4:"file";s:28:"galeria-travel2-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:123834;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"galeria-travel2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6184;}s:12:"medium_large";a:5:{s:4:"file";s:27:"galeria-travel2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:75279;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:27:"galeria-travel2-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36339;}s:10:"capa-viaje";a:5:{s:4:"file";s:27:"galeria-travel2-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33588;}s:11:"capa-padrao";a:5:{s:4:"file";s:27:"galeria-travel2-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38953;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(313, 88, '_wp_attached_file', '2023/04/galeria-travel3.jpg'),
(314, 88, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1037;s:6:"height";i:692;s:4:"file";s:27:"2023/04/galeria-travel3.jpg";s:8:"filesize";i:292980;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:27:"galeria-travel3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11947;}s:5:"large";a:5:{s:4:"file";s:28:"galeria-travel3-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:112027;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"galeria-travel3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5142;}s:12:"medium_large";a:5:{s:4:"file";s:27:"galeria-travel3-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:66035;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:27:"galeria-travel3-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30365;}s:10:"capa-viaje";a:5:{s:4:"file";s:27:"galeria-travel3-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30639;}s:11:"capa-padrao";a:5:{s:4:"file";s:27:"galeria-travel3-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:32878;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(315, 89, '_wp_attached_file', '2023/04/time-to-travel2.jpg'),
(316, 89, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1037;s:6:"height";i:1556;s:4:"file";s:27:"2023/04/time-to-travel2.jpg";s:8:"filesize";i:619105;s:5:"sizes";a:10:{s:6:"medium";a:5:{s:4:"file";s:27:"time-to-travel2-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13672;}s:5:"large";a:5:{s:4:"file";s:28:"time-to-travel2-682x1024.jpg";s:5:"width";i:682;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:116238;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"time-to-travel2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6961;}s:12:"medium_large";a:5:{s:4:"file";s:28:"time-to-travel2-768x1152.jpg";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:142763;}s:9:"1536x1536";a:5:{s:4:"file";s:29:"time-to-travel2-1024x1536.jpg";s:5:"width";i:1024;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:238671;}s:9:"carrossel";a:5:{s:4:"file";s:28:"time-to-travel2-1037x794.jpg";s:5:"width";i:1037;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:175286;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:27:"time-to-travel2-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38242;}s:10:"capa-viaje";a:5:{s:4:"file";s:27:"time-to-travel2-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34439;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:28:"time-to-travel2-1037x692.jpg";s:5:"width";i:1037;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:159463;}s:11:"capa-padrao";a:5:{s:4:"file";s:27:"time-to-travel2-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40995;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(317, 57, 'lista_carrossel_0_imagem', '84'),
(318, 57, '_lista_carrossel_0_imagem', 'field_643845c98c3b8'),
(319, 57, 'lista_carrossel_1_imagem', '85'),
(320, 57, '_lista_carrossel_1_imagem', 'field_643845c98c3b8'),
(321, 57, 'lista_carrossel_2_imagem', '88'),
(322, 57, '_lista_carrossel_2_imagem', 'field_643845c98c3b8'),
(323, 57, 'lista_carrossel', '3'),
(324, 57, '_lista_carrossel', 'field_643845b78c3b7'),
(325, 57, 'subtitulo_tema', 'TRAVEL'),
(326, 57, '_subtitulo_tema', 'field_6439b9d8afabb'),
(327, 57, 'titulo_tema', 'Time to\r\ntravel!'),
(328, 57, '_titulo_tema', 'field_6439b9fdafabc'),
(329, 57, 'chamada_tema', 'HEY OUTSIDERS, OUTSIDE.CO HERE!'),
(330, 57, '_chamada_tema', 'field_6439ba23afabd'),
(331, 57, 'texto_tema', 'Um dos meus pilares principais é viagem, seja para o Brasil ou ao redor do 🌎. Com produções de conteúdos originais e personalizados, em tempo real para trazer para vocês Outsides, uma imersão comigo, gerando conhecimento cultural e muito entretenimento com uma abordagem descontraída e divertida.'),
(332, 57, '_texto_tema', 'field_6439ba33afabe'),
(333, 57, 'letra_imagem_tema', 't'),
(334, 57, '_letra_imagem_tema', 'field_6439ba4dafabf'),
(335, 57, 'imagem_tema', '89'),
(336, 57, '_imagem_tema', 'field_6439ba63afac0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(337, 57, 'subtitulo_sobre', 'ABOUT'),
(338, 57, '_subtitulo_sobre', 'field_6439ba96afac2'),
(339, 57, 'titulo_sobre', 'Viagens com aventura, natureza, entretenimento, gastronomia, cultura e muito mais.'),
(340, 57, '_titulo_sobre', 'field_6439bac4afac3'),
(341, 90, 'lista_carrossel_0_imagem', '84'),
(342, 90, '_lista_carrossel_0_imagem', 'field_643845c98c3b8'),
(343, 90, 'lista_carrossel_1_imagem', '85'),
(344, 90, '_lista_carrossel_1_imagem', 'field_643845c98c3b8'),
(345, 90, 'lista_carrossel_2_imagem', '88'),
(346, 90, '_lista_carrossel_2_imagem', 'field_643845c98c3b8'),
(347, 90, 'lista_carrossel', '3'),
(348, 90, '_lista_carrossel', 'field_643845b78c3b7'),
(349, 90, 'subtitulo_tema', 'TRAVEL'),
(350, 90, '_subtitulo_tema', 'field_6439b9d8afabb'),
(351, 90, 'titulo_tema', 'Time to\r\ntravel!'),
(352, 90, '_titulo_tema', 'field_6439b9fdafabc'),
(353, 90, 'chamada_tema', 'HEY OUTSIDERS, OUTSIDE.CO HERE!'),
(354, 90, '_chamada_tema', 'field_6439ba23afabd'),
(355, 90, 'texto_tema', 'Um dos meus pilares principais é viagem, seja para o Brasil ou ao redor do 🌎. Com produções de conteúdos originais e personalizados, em tempo real para trazer para vocês Outsides, uma imersão comigo, gerando conhecimento cultural e muito entretenimento com uma abordagem descontraída e divertida.'),
(356, 90, '_texto_tema', 'field_6439ba33afabe'),
(357, 90, 'letra_imagem_tema', 't'),
(358, 90, '_letra_imagem_tema', 'field_6439ba4dafabf'),
(359, 90, 'imagem_tema', '89'),
(360, 90, '_imagem_tema', 'field_6439ba63afac0'),
(361, 90, 'subtitulo_sobre', 'ABOUT'),
(362, 90, '_subtitulo_sobre', 'field_6439ba96afac2'),
(363, 90, 'titulo_sobre', 'Viagens com aventura, natureza, entretenimento, gastronomia, cultura e muito mais.'),
(364, 90, '_titulo_sobre', 'field_6439bac4afac3'),
(365, 91, '_wp_attached_file', '2023/04/fashion7.jpg'),
(366, 91, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:769;s:6:"height";i:1025;s:4:"file";s:20:"2023/04/fashion7.jpg";s:8:"filesize";i:248434;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:20:"fashion7-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14400;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"fashion7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6253;}s:9:"carrossel";a:5:{s:4:"file";s:20:"fashion7-769x794.jpg";s:5:"width";i:769;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:96699;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"fashion7-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33276;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"fashion7-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30707;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:20:"fashion7-769x692.jpg";s:5:"width";i:769;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:88858;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"fashion7-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35246;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(367, 92, '_wp_attached_file', '2023/04/fashion5.jpg'),
(368, 92, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:900;s:4:"file";s:20:"2023/04/fashion5.jpg";s:8:"filesize";i:254542;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:20:"fashion5-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17906;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"fashion5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6980;}s:9:"carrossel";a:5:{s:4:"file";s:20:"fashion5-720x794.jpg";s:5:"width";i:720;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:127950;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"fashion5-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:37149;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"fashion5-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34655;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:20:"fashion5-720x692.jpg";s:5:"width";i:720;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:114138;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"fashion5-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40154;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(369, 93, '_wp_attached_file', '2023/04/fashion6.jpg'),
(370, 93, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1537;s:6:"height";i:2049;s:4:"file";s:20:"2023/04/fashion6.jpg";s:8:"filesize";i:1231515;s:5:"sizes";a:10:{s:6:"medium";a:5:{s:4:"file";s:20:"fashion6-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15573;}s:5:"large";a:5:{s:4:"file";s:21:"fashion6-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136877;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"fashion6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6583;}s:12:"medium_large";a:5:{s:4:"file";s:21:"fashion6-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136877;}s:9:"1536x1536";a:5:{s:4:"file";s:22:"fashion6-1152x1536.jpg";s:5:"width";i:1152;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:300755;}s:9:"carrossel";a:5:{s:4:"file";s:21:"fashion6-1537x794.jpg";s:5:"width";i:1537;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:279105;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"fashion6-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30949;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"fashion6-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28431;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:21:"fashion6-1037x692.jpg";s:5:"width";i:1037;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:139542;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"fashion6-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33304;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(371, 94, '_wp_attached_file', '2023/04/fashion.jpg'),
(372, 94, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:344;s:6:"height";i:389;s:4:"file";s:19:"2023/04/fashion.jpg";s:8:"filesize";i:24408;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:19:"fashion-265x300.jpg";s:5:"width";i:265;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16848;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"fashion-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7213;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:19:"fashion-344x333.jpg";s:5:"width";i:344;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22925;}s:10:"capa-viaje";a:5:{s:4:"file";s:19:"fashion-344x288.jpg";s:5:"width";i:344;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19775;}s:11:"capa-padrao";a:5:{s:4:"file";s:19:"fashion-344x340.jpg";s:5:"width";i:344;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22810;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(373, 68, 'lista_carrossel_0_imagem', '91'),
(374, 68, '_lista_carrossel_0_imagem', 'field_643845c98c3b8'),
(375, 68, 'lista_carrossel_1_imagem', '92'),
(376, 68, '_lista_carrossel_1_imagem', 'field_643845c98c3b8'),
(377, 68, 'lista_carrossel_2_imagem', '93'),
(378, 68, '_lista_carrossel_2_imagem', 'field_643845c98c3b8'),
(379, 68, 'lista_carrossel', '3'),
(380, 68, '_lista_carrossel', 'field_643845b78c3b7'),
(381, 68, 'subtitulo_tema', 'FASHION'),
(382, 68, '_subtitulo_tema', 'field_6439b9d8afabb'),
(383, 68, 'titulo_tema', 'Nothing\r\nBasic'),
(384, 68, '_titulo_tema', 'field_6439b9fdafabc'),
(385, 68, 'chamada_tema', 'HEY OUTSIDERS, OUTSIDE.CO HERE!'),
(386, 68, '_chamada_tema', 'field_6439ba23afabd'),
(387, 68, 'texto_tema', 'Um dos meus pilares principais é a sustentabilidade e a preocupação com o meio ambiente, aqui vou contar para vocês algumas curiosidades sobre meus drops e como você pode adquiri-los :).\r\n\r\nQuem está acompanhando minhas plataformas já entendeu que não sou apenas uma marca, sou um lifestyle. Espero que gostem dos meus drops, pois não será sempre que terá, então fiquem de olho! 2023 vem cheio de novidades &lt;3!!!'),
(388, 68, '_texto_tema', 'field_6439ba33afabe'),
(389, 68, 'letra_imagem_tema', 'n'),
(390, 68, '_letra_imagem_tema', 'field_6439ba4dafabf'),
(391, 68, 'imagem_tema', '94'),
(392, 68, '_imagem_tema', 'field_6439ba63afac0'),
(393, 68, 'subtitulo_sobre', 'ABOUT'),
(394, 68, '_subtitulo_sobre', 'field_6439ba96afac2'),
(395, 68, 'titulo_sobre', 'O slow fashion e o consumo consciente é algo que quero transmitir com peças atemporais, sustentáveis, exclusivas e para qualquer ocasião'),
(396, 68, '_titulo_sobre', 'field_6439bac4afac3'),
(397, 95, 'lista_carrossel_0_imagem', '91'),
(398, 95, '_lista_carrossel_0_imagem', 'field_643845c98c3b8'),
(399, 95, 'lista_carrossel_1_imagem', '92'),
(400, 95, '_lista_carrossel_1_imagem', 'field_643845c98c3b8'),
(401, 95, 'lista_carrossel_2_imagem', '93'),
(402, 95, '_lista_carrossel_2_imagem', 'field_643845c98c3b8'),
(403, 95, 'lista_carrossel', '3'),
(404, 95, '_lista_carrossel', 'field_643845b78c3b7'),
(405, 95, 'subtitulo_tema', 'FASHION'),
(406, 95, '_subtitulo_tema', 'field_6439b9d8afabb'),
(407, 95, 'titulo_tema', 'Nothing\r\nBasic'),
(408, 95, '_titulo_tema', 'field_6439b9fdafabc'),
(409, 95, 'chamada_tema', 'HEY OUTSIDERS, OUTSIDE.CO HERE!'),
(410, 95, '_chamada_tema', 'field_6439ba23afabd'),
(411, 95, 'texto_tema', 'Um dos meus pilares principais é a sustentabilidade e a preocupação com o meio ambiente, aqui vou contar para vocês algumas curiosidades sobre meus drops e como você pode adquiri-los :).\r\n\r\nQuem está acompanhando minhas plataformas já entendeu que não sou apenas uma marca, sou um lifestyle. Espero que gostem dos meus drops, pois não será sempre que terá, então fiquem de olho! 2023 vem cheio de novidades &lt;3!!!'),
(412, 95, '_texto_tema', 'field_6439ba33afabe'),
(413, 95, 'letra_imagem_tema', 'n'),
(414, 95, '_letra_imagem_tema', 'field_6439ba4dafabf'),
(415, 95, 'imagem_tema', '94'),
(416, 95, '_imagem_tema', 'field_6439ba63afac0'),
(417, 95, 'subtitulo_sobre', 'ABOUT'),
(418, 95, '_subtitulo_sobre', 'field_6439ba96afac2'),
(419, 95, 'titulo_sobre', 'O slow fashion e o consumo consciente é algo que quero transmitir com peças atemporais, sustentáveis, exclusivas e para qualquer ocasião'),
(420, 95, '_titulo_sobre', 'field_6439bac4afac3'),
(421, 96, '_wp_attached_file', '2023/04/nutri2.jpg'),
(422, 96, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:908;s:6:"height";i:1210;s:4:"file";s:18:"2023/04/nutri2.jpg";s:8:"filesize";i:539956;s:5:"sizes";a:9:{s:6:"medium";a:5:{s:4:"file";s:18:"nutri2-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22842;}s:5:"large";a:5:{s:4:"file";s:19:"nutri2-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:173853;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"nutri2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8992;}s:12:"medium_large";a:5:{s:4:"file";s:19:"nutri2-768x1023.jpg";s:5:"width";i:768;s:6:"height";i:1023;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:173842;}s:9:"carrossel";a:5:{s:4:"file";s:18:"nutri2-908x794.jpg";s:5:"width";i:908;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:176729;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:18:"nutri2-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:45717;}s:10:"capa-viaje";a:5:{s:4:"file";s:18:"nutri2-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41270;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:18:"nutri2-908x692.jpg";s:5:"width";i:908;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:156621;}s:11:"capa-padrao";a:5:{s:4:"file";s:18:"nutri2-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:48532;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(423, 97, '_wp_attached_file', '2023/04/nutri3.jpg'),
(424, 97, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:564;s:6:"height";i:704;s:4:"file";s:18:"2023/04/nutri3.jpg";s:8:"filesize";i:106923;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:18:"nutri3-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14210;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"nutri3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6165;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:18:"nutri3-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30139;}s:10:"capa-viaje";a:5:{s:4:"file";s:18:"nutri3-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28785;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:18:"nutri3-564x692.jpg";s:5:"width";i:564;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:61433;}s:11:"capa-padrao";a:5:{s:4:"file";s:18:"nutri3-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:32265;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(425, 98, '_wp_attached_file', '2023/04/nutri4.jpg'),
(426, 98, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:508;s:6:"height";i:833;s:4:"file";s:18:"2023/04/nutri4.jpg";s:8:"filesize";i:132730;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:18:"nutri4-183x300.jpg";s:5:"width";i:183;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11209;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"nutri4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5536;}s:9:"carrossel";a:5:{s:4:"file";s:18:"nutri4-508x794.jpg";s:5:"width";i:508;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:62079;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:18:"nutri4-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24187;}s:10:"capa-viaje";a:5:{s:4:"file";s:18:"nutri4-508x288.jpg";s:5:"width";i:508;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22182;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:18:"nutri4-508x692.jpg";s:5:"width";i:508;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55173;}s:11:"capa-padrao";a:5:{s:4:"file";s:18:"nutri4-508x340.jpg";s:5:"width";i:508;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26654;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(427, 99, '_wp_attached_file', '2023/04/nutri5.png'),
(428, 99, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:557;s:6:"height";i:621;s:4:"file";s:18:"2023/04/nutri5.png";s:8:"filesize";i:481417;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:18:"nutri5-269x300.png";s:5:"width";i:269;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:112018;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"nutri5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:35855;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:18:"nutri5-500x333.png";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:209810;}s:10:"capa-viaje";a:5:{s:4:"file";s:18:"nutri5-527x288.png";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:192935;}s:11:"capa-padrao";a:5:{s:4:"file";s:18:"nutri5-527x340.png";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:223389;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(429, 70, 'lista_carrossel_0_imagem', '96'),
(430, 70, '_lista_carrossel_0_imagem', 'field_643845c98c3b8'),
(431, 70, 'lista_carrossel_1_imagem', '97'),
(432, 70, '_lista_carrossel_1_imagem', 'field_643845c98c3b8'),
(433, 70, 'lista_carrossel_2_imagem', '98'),
(434, 70, '_lista_carrossel_2_imagem', 'field_643845c98c3b8'),
(435, 70, 'lista_carrossel', '3'),
(436, 70, '_lista_carrossel', 'field_643845b78c3b7') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(437, 70, 'subtitulo_tema', 'HEALTHY'),
(438, 70, '_subtitulo_tema', 'field_6439b9d8afabb'),
(439, 70, 'titulo_tema', 'Canal\r\nda Nutri'),
(440, 70, '_titulo_tema', 'field_6439b9fdafabc'),
(441, 70, 'chamada_tema', 'HEY OUTSIDERS, OUTSIDE.CO HERE!'),
(442, 70, '_chamada_tema', 'field_6439ba23afabd'),
(443, 70, 'texto_tema', 'Um dos pilares principais da Outside.co é saúde e bem estar e eu gostaria de me apresentar para vocês! Prazer, sou Camila, nutri da Outside :)\r\n\r\nEssa página será dedicada inteiramente a pessoas que se interessam por esse universo de saúde, seja na alimentação ou prática de exercícios físicos.'),
(444, 70, '_texto_tema', 'field_6439ba33afabe'),
(445, 70, 'letra_imagem_tema', 't'),
(446, 70, '_letra_imagem_tema', 'field_6439ba4dafabf'),
(447, 70, 'imagem_tema', '99'),
(448, 70, '_imagem_tema', 'field_6439ba63afac0'),
(449, 70, 'subtitulo_sobre', 'ABOUT'),
(450, 70, '_subtitulo_sobre', 'field_6439ba96afac2'),
(451, 70, 'titulo_sobre', 'Página de receitas saudáveis, bate papo sobre diversos assuntos, perguntas e respostas, work out e muito mais.'),
(452, 70, '_titulo_sobre', 'field_6439bac4afac3'),
(453, 100, 'lista_carrossel_0_imagem', '96'),
(454, 100, '_lista_carrossel_0_imagem', 'field_643845c98c3b8'),
(455, 100, 'lista_carrossel_1_imagem', '97'),
(456, 100, '_lista_carrossel_1_imagem', 'field_643845c98c3b8'),
(457, 100, 'lista_carrossel_2_imagem', '98'),
(458, 100, '_lista_carrossel_2_imagem', 'field_643845c98c3b8'),
(459, 100, 'lista_carrossel', '3'),
(460, 100, '_lista_carrossel', 'field_643845b78c3b7'),
(461, 100, 'subtitulo_tema', 'HEALTHY'),
(462, 100, '_subtitulo_tema', 'field_6439b9d8afabb'),
(463, 100, 'titulo_tema', 'Canal\r\nda Nutri'),
(464, 100, '_titulo_tema', 'field_6439b9fdafabc'),
(465, 100, 'chamada_tema', 'HEY OUTSIDERS, OUTSIDE.CO HERE!'),
(466, 100, '_chamada_tema', 'field_6439ba23afabd'),
(467, 100, 'texto_tema', 'Um dos pilares principais da Outside.co é saúde e bem estar e eu gostaria de me apresentar para vocês! Prazer, sou Camila, nutri da Outside :)\r\n\r\nEssa página será dedicada inteiramente a pessoas que se interessam por esse universo de saúde, seja na alimentação ou prática de exercícios físicos.'),
(468, 100, '_texto_tema', 'field_6439ba33afabe'),
(469, 100, 'letra_imagem_tema', 't'),
(470, 100, '_letra_imagem_tema', 'field_6439ba4dafabf'),
(471, 100, 'imagem_tema', '99'),
(472, 100, '_imagem_tema', 'field_6439ba63afac0'),
(473, 100, 'subtitulo_sobre', 'ABOUT'),
(474, 100, '_subtitulo_sobre', 'field_6439ba96afac2'),
(475, 100, 'titulo_sobre', 'Página de receitas saudáveis, bate papo sobre diversos assuntos, perguntas e respostas, work out e muito mais.'),
(476, 100, '_titulo_sobre', 'field_6439bac4afac3'),
(477, 101, '_wp_attached_file', '2023/04/lunch1.jpg'),
(478, 101, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:507;s:6:"height";i:623;s:4:"file";s:18:"2023/04/lunch1.jpg";s:8:"filesize";i:158540;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:18:"lunch1-244x300.jpg";s:5:"width";i:244;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21652;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"lunch1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8331;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:18:"lunch1-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:42792;}s:10:"capa-viaje";a:5:{s:4:"file";s:18:"lunch1-507x288.jpg";s:5:"width";i:507;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41584;}s:11:"capa-padrao";a:5:{s:4:"file";s:18:"lunch1-507x340.jpg";s:5:"width";i:507;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:49109;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(479, 102, '_wp_attached_file', '2023/04/lunch2.jpg'),
(480, 102, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:564;s:6:"height";i:993;s:4:"file";s:18:"2023/04/lunch2.jpg";s:8:"filesize";i:175183;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:18:"lunch2-170x300.jpg";s:5:"width";i:170;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15965;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"lunch2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8088;}s:9:"carrossel";a:5:{s:4:"file";s:18:"lunch2-564x794.jpg";s:5:"width";i:564;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:84104;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:18:"lunch2-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33419;}s:10:"capa-viaje";a:5:{s:4:"file";s:18:"lunch2-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28461;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:18:"lunch2-564x692.jpg";s:5:"width";i:564;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:74544;}s:11:"capa-padrao";a:5:{s:4:"file";s:18:"lunch2-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34778;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(481, 103, '_wp_attached_file', '2023/04/lunch3.jpg'),
(482, 103, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:474;s:6:"height";i:592;s:4:"file";s:18:"2023/04/lunch3.jpg";s:8:"filesize";i:184750;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:18:"lunch3-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28295;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"lunch3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10113;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:18:"lunch3-474x333.jpg";s:5:"width";i:474;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:57973;}s:10:"capa-viaje";a:5:{s:4:"file";s:18:"lunch3-474x288.jpg";s:5:"width";i:474;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:47067;}s:11:"capa-padrao";a:5:{s:4:"file";s:18:"lunch3-474x340.jpg";s:5:"width";i:474;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:59685;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(483, 104, '_wp_attached_file', '2023/04/lunch4.jpg'),
(484, 104, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:615;s:6:"height";i:820;s:4:"file";s:18:"2023/04/lunch4.jpg";s:8:"filesize";i:273173;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:18:"lunch4-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23116;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"lunch4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9226;}s:9:"carrossel";a:5:{s:4:"file";s:18:"lunch4-615x794.jpg";s:5:"width";i:615;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:132468;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:18:"lunch4-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:42266;}s:10:"capa-viaje";a:5:{s:4:"file";s:18:"lunch4-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:39404;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:18:"lunch4-615x692.jpg";s:5:"width";i:615;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:119879;}s:11:"capa-padrao";a:5:{s:4:"file";s:18:"lunch4-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44394;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(485, 72, 'lista_carrossel_0_imagem', '101'),
(486, 72, '_lista_carrossel_0_imagem', 'field_643845c98c3b8'),
(487, 72, 'lista_carrossel_1_imagem', '102'),
(488, 72, '_lista_carrossel_1_imagem', 'field_643845c98c3b8'),
(489, 72, 'lista_carrossel_2_imagem', '103'),
(490, 72, '_lista_carrossel_2_imagem', 'field_643845c98c3b8'),
(491, 72, 'lista_carrossel', '3'),
(492, 72, '_lista_carrossel', 'field_643845b78c3b7'),
(493, 72, 'subtitulo_tema', 'GASTRONOMY'),
(494, 72, '_subtitulo_tema', 'field_6439b9d8afabb'),
(495, 72, 'titulo_tema', 'Lunch\r\nTime'),
(496, 72, '_titulo_tema', 'field_6439b9fdafabc'),
(497, 72, 'chamada_tema', 'HEY OUTSIDERS, OUTSIDE.CO HERE!'),
(498, 72, '_chamada_tema', 'field_6439ba23afabd'),
(499, 72, 'texto_tema', 'Um dos meus pilares principais é gastronomia, ela está presente no meu dia a dia sempre! 🍣 E através de produções de conteúdo originais, personalizadas e em tempo real vou contar para vocês, meus reviews dos restaurantes, pratos preferidos, ambiente, atendimento e sugestões, com uma abordagem descontraída e divertida.'),
(500, 72, '_texto_tema', 'field_6439ba33afabe'),
(501, 72, 'letra_imagem_tema', 'I'),
(502, 72, '_letra_imagem_tema', 'field_6439ba4dafabf'),
(503, 72, 'imagem_tema', '104'),
(504, 72, '_imagem_tema', 'field_6439ba63afac0'),
(505, 72, 'subtitulo_sobre', 'ABOUT'),
(506, 72, '_subtitulo_sobre', 'field_6439ba96afac2'),
(507, 72, 'titulo_sobre', 'Gastronomia é um dos meus pilares principais e por isso vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(508, 72, '_titulo_sobre', 'field_6439bac4afac3'),
(509, 105, 'lista_carrossel_0_imagem', '101'),
(510, 105, '_lista_carrossel_0_imagem', 'field_643845c98c3b8'),
(511, 105, 'lista_carrossel_1_imagem', '102'),
(512, 105, '_lista_carrossel_1_imagem', 'field_643845c98c3b8'),
(513, 105, 'lista_carrossel_2_imagem', '103'),
(514, 105, '_lista_carrossel_2_imagem', 'field_643845c98c3b8'),
(515, 105, 'lista_carrossel', '3'),
(516, 105, '_lista_carrossel', 'field_643845b78c3b7'),
(517, 105, 'subtitulo_tema', 'GASTRONOMY'),
(518, 105, '_subtitulo_tema', 'field_6439b9d8afabb'),
(519, 105, 'titulo_tema', 'Lunch\r\nTime'),
(520, 105, '_titulo_tema', 'field_6439b9fdafabc'),
(521, 105, 'chamada_tema', 'HEY OUTSIDERS, OUTSIDE.CO HERE!'),
(522, 105, '_chamada_tema', 'field_6439ba23afabd'),
(523, 105, 'texto_tema', 'Um dos meus pilares principais é gastronomia, ela está presente no meu dia a dia sempre! 🍣 E através de produções de conteúdo originais, personalizadas e em tempo real vou contar para vocês, meus reviews dos restaurantes, pratos preferidos, ambiente, atendimento e sugestões, com uma abordagem descontraída e divertida.'),
(524, 105, '_texto_tema', 'field_6439ba33afabe'),
(525, 105, 'letra_imagem_tema', 'I'),
(526, 105, '_letra_imagem_tema', 'field_6439ba4dafabf'),
(527, 105, 'imagem_tema', '104'),
(528, 105, '_imagem_tema', 'field_6439ba63afac0'),
(529, 105, 'subtitulo_sobre', 'ABOUT'),
(530, 105, '_subtitulo_sobre', 'field_6439ba96afac2'),
(531, 105, 'titulo_sobre', 'Gastronomia é um dos meus pilares principais e por isso vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(532, 105, '_titulo_sobre', 'field_6439bac4afac3'),
(587, 141, '_edit_last', '1'),
(588, 141, '_edit_lock', '1681837842:1'),
(589, 141, '_wp_page_template', 'template-to-travel.php'),
(592, 143, '_edit_last', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(593, 143, '_edit_lock', '1681839154:1'),
(594, 143, '_wp_page_template', 'template-to-travel.php'),
(597, 145, '_edit_last', '1'),
(598, 145, '_edit_lock', '1681837951:1'),
(599, 145, '_wp_page_template', 'template-to-travel.php'),
(602, 148, '_edit_last', '1'),
(603, 148, '_edit_lock', '1681874340:1'),
(604, 148, '_wp_page_template', 'template-fashion.php'),
(607, 150, '_edit_last', '1'),
(608, 150, '_edit_lock', '1681874312:1'),
(609, 150, '_wp_page_template', 'template-fashion.php'),
(612, 152, '_edit_last', '1'),
(613, 152, '_wp_page_template', 'template-fashion.php'),
(616, 152, '_edit_lock', '1681874432:1'),
(621, 155, '_edit_last', '1'),
(622, 155, '_edit_lock', '1681858542:1'),
(623, 155, '_wp_page_template', 'template-nutri.php'),
(626, 157, '_edit_last', '1'),
(627, 157, '_edit_lock', '1681858563:1'),
(628, 157, '_wp_page_template', 'template-nutri.php'),
(631, 159, '_edit_last', '1'),
(632, 159, '_edit_lock', '1681755723:1'),
(633, 159, '_wp_page_template', 'template-nutri.php'),
(643, 164, '_edit_last', '1'),
(644, 164, '_edit_lock', '1681857566:1'),
(645, 164, '_wp_page_template', 'default'),
(652, 166, '_edit_last', '1'),
(653, 166, '_edit_lock', '1681857458:1'),
(654, 166, '_wp_page_template', 'post-template-lunch-time-restaurantes.php'),
(674, 175, '_edit_last', '1'),
(675, 175, '_edit_lock', '1681742716:1'),
(714, 175, '_wp_trash_meta_status', 'publish'),
(715, 175, '_wp_trash_meta_time', '1681742920'),
(716, 175, '_wp_desired_post_slug', 'group_643d49218cd68'),
(717, 176, '_wp_trash_meta_status', 'publish'),
(718, 176, '_wp_trash_meta_time', '1681742920'),
(719, 176, '_wp_desired_post_slug', 'field_643d49219175c'),
(720, 186, '_edit_last', '1'),
(721, 186, '_edit_lock', '1681855571:1'),
(745, 207, '_edit_last', '1'),
(746, 207, '_edit_lock', '1681847752:1'),
(747, 216, '_wp_attached_file', '2023/04/banner-patagonia.jpg'),
(748, 216, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:581;s:4:"file";s:28:"2023/04/banner-patagonia.jpg";s:8:"filesize";i:265718;s:5:"sizes";a:10:{s:6:"medium";a:5:{s:4:"file";s:27:"banner-patagonia-300x91.jpg";s:5:"width";i:300;s:6:"height";i:91;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8981;}s:5:"large";a:5:{s:4:"file";s:29:"banner-patagonia-1024x310.jpg";s:5:"width";i:1024;s:6:"height";i:310;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:77110;}s:9:"thumbnail";a:5:{s:4:"file";s:28:"banner-patagonia-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6687;}s:12:"medium_large";a:5:{s:4:"file";s:28:"banner-patagonia-768x232.jpg";s:5:"width";i:768;s:6:"height";i:232;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44334;}s:9:"1536x1536";a:5:{s:4:"file";s:29:"banner-patagonia-1536x465.jpg";s:5:"width";i:1536;s:6:"height";i:465;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:162140;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:28:"banner-patagonia-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38982;}s:10:"capa-viaje";a:5:{s:4:"file";s:28:"banner-patagonia-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36414;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:29:"banner-patagonia-1037x581.jpg";s:5:"width";i:1037;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136063;}s:11:"capa-padrao";a:5:{s:4:"file";s:28:"banner-patagonia-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41977;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:28:"banner-patagonia-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28602;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(751, 143, 'imagem_banner_topo', '216'),
(752, 143, '_imagem_banner_topo', 'field_643de39c71709'),
(753, 143, 'subtitulo_publicacoes', 'CONTENT'),
(754, 143, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(755, 143, 'titulo_publicacoes', 'Patagônia'),
(756, 143, '_titulo_publicacoes', 'field_643de3f17170c'),
(757, 143, 'lista_publicacoes_0_titulo', 'Título do post'),
(758, 143, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(759, 143, 'lista_publicacoes_0_imagem', '228'),
(760, 143, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(761, 143, 'lista_publicacoes_1_titulo', 'Título do post'),
(762, 143, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(763, 143, 'lista_publicacoes_1_imagem', '229'),
(764, 143, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(765, 143, 'lista_publicacoes_2_titulo', 'Título do post'),
(766, 143, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(767, 143, 'lista_publicacoes_2_imagem', '230'),
(768, 143, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(769, 143, 'lista_publicacoes_3_titulo', 'Título do post'),
(770, 143, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(771, 143, 'lista_publicacoes_3_imagem', '231'),
(772, 143, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(773, 143, 'lista_publicacoes_4_titulo', 'Título do post'),
(774, 143, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(775, 143, 'lista_publicacoes_4_imagem', '232'),
(776, 143, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(777, 143, 'lista_publicacoes_5_titulo', 'Título do post'),
(778, 143, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(779, 143, 'lista_publicacoes_5_imagem', '240'),
(780, 143, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(781, 143, 'lista_publicacoes_6_titulo', 'Título do post'),
(782, 143, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(783, 143, 'lista_publicacoes_6_imagem', '234'),
(784, 143, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(785, 143, 'lista_publicacoes_7_titulo', 'Título do post'),
(786, 143, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(787, 143, 'lista_publicacoes_7_imagem', '235'),
(788, 143, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(789, 143, 'lista_publicacoes', '8'),
(790, 143, '_lista_publicacoes', 'field_643de4037170d'),
(791, 217, 'imagem_banner_topo', '216'),
(792, 217, '_imagem_banner_topo', 'field_643de39c71709'),
(793, 217, 'subtitulo_publicacoes', 'CONTENT'),
(794, 217, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(795, 217, 'titulo_publicacoes', 'Patagônia'),
(796, 217, '_titulo_publicacoes', 'field_643de3f17170c'),
(797, 217, 'lista_publicacoes_0_titulo', 'Título do post'),
(798, 217, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(799, 217, 'lista_publicacoes_0_imagem', 'Título do post'),
(800, 217, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(801, 217, 'lista_publicacoes_1_titulo', 'Título do post'),
(802, 217, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(803, 217, 'lista_publicacoes_1_imagem', 'Título do post'),
(804, 217, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(805, 217, 'lista_publicacoes_2_titulo', 'Título do post'),
(806, 217, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(807, 217, 'lista_publicacoes_2_imagem', 'Título do post') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(808, 217, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(809, 217, 'lista_publicacoes_3_titulo', 'Título do post'),
(810, 217, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(811, 217, 'lista_publicacoes_3_imagem', 'Título do post'),
(812, 217, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(813, 217, 'lista_publicacoes_4_titulo', 'Título do post'),
(814, 217, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(815, 217, 'lista_publicacoes_4_imagem', 'Título do post'),
(816, 217, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(817, 217, 'lista_publicacoes_5_titulo', 'Título do post'),
(818, 217, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(819, 217, 'lista_publicacoes_5_imagem', 'Título do post'),
(820, 217, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(821, 217, 'lista_publicacoes_6_titulo', 'Título do post'),
(822, 217, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(823, 217, 'lista_publicacoes_6_imagem', 'Título do post'),
(824, 217, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(825, 217, 'lista_publicacoes_7_titulo', 'Título do post'),
(826, 217, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(827, 217, 'lista_publicacoes_7_imagem', 'Título do post'),
(828, 217, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(829, 217, 'lista_publicacoes', '8'),
(830, 217, '_lista_publicacoes', 'field_643de4037170d'),
(835, 221, '_edit_last', '1'),
(836, 221, '_edit_lock', '1681855644:1'),
(837, 222, '_wp_attached_file', '2023/04/blog1-1.jpg'),
(838, 222, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:19:"2023/04/blog1-1.jpg";s:8:"filesize";i:45832;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:19:"blog1-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16979;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"blog1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7627;}s:10:"capa-viaje";a:5:{s:4:"file";s:19:"blog1-1-500x288.jpg";s:5:"width";i:500;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40200;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:19:"blog1-1-350x333.jpg";s:5:"width";i:350;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:32013;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"Copyright 2022 Beatriz Karam. All rights reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(839, 223, '_wp_attached_file', '2023/04/blog3-1.jpg'),
(840, 223, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:19:"2023/04/blog3-1.jpg";s:8:"filesize";i:50252;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:19:"blog3-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17442;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"blog3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8077;}s:10:"capa-viaje";a:5:{s:4:"file";s:19:"blog3-1-500x288.jpg";s:5:"width";i:500;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:42403;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:19:"blog3-1-350x333.jpg";s:5:"width";i:350;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36061;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"Copyright 2022 Beatriz Karam. All rights reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(841, 221, '_wp_page_template', 'default'),
(844, 221, 'titulo', 'ABOUT'),
(845, 221, '_titulo', 'field_643d5c5478992'),
(846, 224, 'titulo', 'ABOUT'),
(847, 224, '_titulo', 'field_643d5c5478992'),
(850, 221, '_wp_old_slug', '221-2'),
(851, 225, 'titulo', 'ABOUT'),
(852, 225, '_titulo', 'field_643d5c5478992'),
(858, 143, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(859, 143, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(860, 143, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(861, 143, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(862, 143, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(863, 143, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(864, 143, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(865, 143, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(866, 143, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/'),
(867, 143, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(868, 143, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(869, 143, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(870, 143, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(871, 143, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(872, 143, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(873, 143, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(874, 227, 'imagem_banner_topo', '216'),
(875, 227, '_imagem_banner_topo', 'field_643de39c71709'),
(876, 227, 'subtitulo_publicacoes', 'CONTENT'),
(877, 227, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(878, 227, 'titulo_publicacoes', 'Patagônia'),
(879, 227, '_titulo_publicacoes', 'field_643de3f17170c'),
(880, 227, 'lista_publicacoes_0_titulo', 'Título do post'),
(881, 227, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(882, 227, 'lista_publicacoes_0_imagem', ''),
(883, 227, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(884, 227, 'lista_publicacoes_1_titulo', 'Título do post'),
(885, 227, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(886, 227, 'lista_publicacoes_1_imagem', ''),
(887, 227, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(888, 227, 'lista_publicacoes_2_titulo', 'Título do post'),
(889, 227, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(890, 227, 'lista_publicacoes_2_imagem', ''),
(891, 227, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(892, 227, 'lista_publicacoes_3_titulo', 'Título do post'),
(893, 227, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(894, 227, 'lista_publicacoes_3_imagem', ''),
(895, 227, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(896, 227, 'lista_publicacoes_4_titulo', 'Título do post'),
(897, 227, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(898, 227, 'lista_publicacoes_4_imagem', ''),
(899, 227, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(900, 227, 'lista_publicacoes_5_titulo', 'Título do post'),
(901, 227, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(902, 227, 'lista_publicacoes_5_imagem', ''),
(903, 227, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(904, 227, 'lista_publicacoes_6_titulo', 'Título do post'),
(905, 227, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(906, 227, 'lista_publicacoes_6_imagem', ''),
(907, 227, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(908, 227, 'lista_publicacoes_7_titulo', 'Título do post'),
(909, 227, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(910, 227, 'lista_publicacoes_7_imagem', ''),
(911, 227, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(912, 227, 'lista_publicacoes', '8'),
(913, 227, '_lista_publicacoes', 'field_643de4037170d'),
(914, 227, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(915, 227, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(916, 227, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(917, 227, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(918, 227, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(919, 227, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(920, 227, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(921, 227, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(922, 227, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/'),
(923, 227, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(924, 227, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(925, 227, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(926, 227, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(927, 227, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(928, 227, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(929, 227, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(930, 228, '_wp_attached_file', '2023/04/patagonia1.jpg'),
(931, 228, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:350;s:6:"height";i:230;s:4:"file";s:22:"2023/04/patagonia1.jpg";s:8:"filesize";i:25291;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"patagonia1-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17691;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"patagonia1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7922;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(932, 229, '_wp_attached_file', '2023/04/patagonia2.jpg'),
(933, 229, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:350;s:6:"height";i:230;s:4:"file";s:22:"2023/04/patagonia2.jpg";s:8:"filesize";i:23904;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"patagonia2-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16964;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"patagonia2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7524;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(934, 230, '_wp_attached_file', '2023/04/patagonia3.jpg'),
(935, 230, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:350;s:6:"height";i:360;s:4:"file";s:22:"2023/04/patagonia3.jpg";s:8:"filesize";i:32719;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:22:"patagonia3-292x300.jpg";s:5:"width";i:292;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23306;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"patagonia3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8059;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:22:"patagonia3-350x333.jpg";s:5:"width";i:350;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31412;}s:10:"capa-viaje";a:5:{s:4:"file";s:22:"patagonia3-350x288.jpg";s:5:"width";i:350;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28365;}s:11:"capa-padrao";a:5:{s:4:"file";s:22:"patagonia3-350x340.jpg";s:5:"width";i:350;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31716;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(936, 231, '_wp_attached_file', '2023/04/patagonia4.jpg'),
(937, 231, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:350;s:6:"height";i:230;s:4:"file";s:22:"2023/04/patagonia4.jpg";s:8:"filesize";i:31129;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"patagonia4-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21502;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"patagonia4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9918;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(938, 232, '_wp_attached_file', '2023/04/patagonia5.jpg'),
(939, 232, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:350;s:6:"height";i:230;s:4:"file";s:22:"2023/04/patagonia5.jpg";s:8:"filesize";i:21227;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"patagonia5-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15469;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"patagonia5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7330;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(940, 233, '_wp_attached_file', '2023/04/patagonia6.jpg'),
(941, 233, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:605;s:6:"height";i:807;s:4:"file";s:22:"2023/04/patagonia6.jpg";s:8:"filesize";i:216986;s:5:"sizes";a:9:{s:6:"medium";a:5:{s:4:"file";s:22:"patagonia6-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21259;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"patagonia6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8794;}s:9:"carrossel";a:5:{s:4:"file";s:22:"patagonia6-605x794.jpg";s:5:"width";i:605;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:103148;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:22:"patagonia6-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:43236;}s:10:"capa-viaje";a:5:{s:4:"file";s:22:"patagonia6-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38983;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:22:"patagonia6-605x692.jpg";s:5:"width";i:605;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:93555;}s:11:"capa-padrao";a:5:{s:4:"file";s:22:"patagonia6-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:45450;}s:16:"banner-to-travel";a:5:{s:4:"file";s:22:"patagonia6-605x581.jpg";s:5:"width";i:605;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:81434;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:22:"patagonia6-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34202;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(942, 234, '_wp_attached_file', '2023/04/patagonia7.jpg'),
(943, 234, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:350;s:6:"height";i:230;s:4:"file";s:22:"2023/04/patagonia7.jpg";s:8:"filesize";i:24032;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"patagonia7-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16647;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"patagonia7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7394;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(944, 235, '_wp_attached_file', '2023/04/patagonia8.jpg'),
(945, 235, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:350;s:6:"height";i:230;s:4:"file";s:22:"2023/04/patagonia8.jpg";s:8:"filesize";i:28631;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"patagonia8-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20645;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"patagonia8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9096;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(948, 236, 'imagem_banner_topo', '216'),
(949, 236, '_imagem_banner_topo', 'field_643de39c71709'),
(950, 236, 'subtitulo_publicacoes', 'CONTENT'),
(951, 236, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(952, 236, 'titulo_publicacoes', 'Patagônia'),
(953, 236, '_titulo_publicacoes', 'field_643de3f17170c'),
(954, 236, 'lista_publicacoes_0_titulo', 'Título do post'),
(955, 236, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(956, 236, 'lista_publicacoes_0_imagem', '228'),
(957, 236, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(958, 236, 'lista_publicacoes_1_titulo', 'Título do post'),
(959, 236, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(960, 236, 'lista_publicacoes_1_imagem', '229'),
(961, 236, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(962, 236, 'lista_publicacoes_2_titulo', 'Título do post'),
(963, 236, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(964, 236, 'lista_publicacoes_2_imagem', '230'),
(965, 236, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(966, 236, 'lista_publicacoes_3_titulo', 'Título do post'),
(967, 236, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(968, 236, 'lista_publicacoes_3_imagem', '231'),
(969, 236, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(970, 236, 'lista_publicacoes_4_titulo', 'Título do post'),
(971, 236, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(972, 236, 'lista_publicacoes_4_imagem', '232'),
(973, 236, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(974, 236, 'lista_publicacoes_5_titulo', 'Título do post'),
(975, 236, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(976, 236, 'lista_publicacoes_5_imagem', '233'),
(977, 236, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(978, 236, 'lista_publicacoes_6_titulo', 'Título do post'),
(979, 236, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(980, 236, 'lista_publicacoes_6_imagem', '234'),
(981, 236, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(982, 236, 'lista_publicacoes_7_titulo', 'Título do post'),
(983, 236, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(984, 236, 'lista_publicacoes_7_imagem', '235'),
(985, 236, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(986, 236, 'lista_publicacoes', '8'),
(987, 236, '_lista_publicacoes', 'field_643de4037170d'),
(988, 236, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(989, 236, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(990, 236, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(991, 236, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(992, 236, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(993, 236, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(994, 236, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(995, 236, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(996, 236, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/'),
(997, 236, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(998, 236, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(999, 236, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(1000, 236, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(1001, 236, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(1002, 236, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(1003, 236, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(1006, 237, 'imagem_banner_topo', '216'),
(1007, 237, '_imagem_banner_topo', 'field_643de39c71709'),
(1008, 237, 'subtitulo_publicacoes', 'CONTENT'),
(1009, 237, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(1010, 237, 'titulo_publicacoes', 'Patagônia'),
(1011, 237, '_titulo_publicacoes', 'field_643de3f17170c'),
(1012, 237, 'lista_publicacoes_0_titulo', 'Título do post'),
(1013, 237, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(1014, 237, 'lista_publicacoes_0_imagem', '228'),
(1015, 237, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(1016, 237, 'lista_publicacoes_1_titulo', 'Título do post'),
(1017, 237, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(1018, 237, 'lista_publicacoes_1_imagem', '230'),
(1019, 237, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(1020, 237, 'lista_publicacoes_2_titulo', 'Título do post'),
(1021, 237, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(1022, 237, 'lista_publicacoes_2_imagem', '229'),
(1023, 237, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(1024, 237, 'lista_publicacoes_3_titulo', 'Título do post') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1025, 237, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(1026, 237, 'lista_publicacoes_3_imagem', '231'),
(1027, 237, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(1028, 237, 'lista_publicacoes_4_titulo', 'Título do post'),
(1029, 237, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(1030, 237, 'lista_publicacoes_4_imagem', '232'),
(1031, 237, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(1032, 237, 'lista_publicacoes_5_titulo', 'Título do post'),
(1033, 237, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(1034, 237, 'lista_publicacoes_5_imagem', '233'),
(1035, 237, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(1036, 237, 'lista_publicacoes_6_titulo', 'Título do post'),
(1037, 237, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(1038, 237, 'lista_publicacoes_6_imagem', '234'),
(1039, 237, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(1040, 237, 'lista_publicacoes_7_titulo', 'Título do post'),
(1041, 237, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(1042, 237, 'lista_publicacoes_7_imagem', '235'),
(1043, 237, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(1044, 237, 'lista_publicacoes', '8'),
(1045, 237, '_lista_publicacoes', 'field_643de4037170d'),
(1046, 237, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(1047, 237, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(1048, 237, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(1049, 237, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(1050, 237, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(1051, 237, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(1052, 237, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(1053, 237, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(1054, 237, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/'),
(1055, 237, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(1056, 237, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(1057, 237, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(1058, 237, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(1059, 237, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(1060, 237, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(1061, 237, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(1064, 238, 'imagem_banner_topo', '216'),
(1065, 238, '_imagem_banner_topo', 'field_643de39c71709'),
(1066, 238, 'subtitulo_publicacoes', 'CONTENT'),
(1067, 238, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(1068, 238, 'titulo_publicacoes', 'Patagônia'),
(1069, 238, '_titulo_publicacoes', 'field_643de3f17170c'),
(1070, 238, 'lista_publicacoes_0_titulo', 'Título do post'),
(1071, 238, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(1072, 238, 'lista_publicacoes_0_imagem', '228'),
(1073, 238, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(1074, 238, 'lista_publicacoes_1_titulo', 'Título do post'),
(1075, 238, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(1076, 238, 'lista_publicacoes_1_imagem', '229'),
(1077, 238, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(1078, 238, 'lista_publicacoes_2_titulo', 'Título do post'),
(1079, 238, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(1080, 238, 'lista_publicacoes_2_imagem', '231'),
(1081, 238, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(1082, 238, 'lista_publicacoes_3_titulo', 'Título do post'),
(1083, 238, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(1084, 238, 'lista_publicacoes_3_imagem', '230'),
(1085, 238, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(1086, 238, 'lista_publicacoes_4_titulo', 'Título do post'),
(1087, 238, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(1088, 238, 'lista_publicacoes_4_imagem', '232'),
(1089, 238, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(1090, 238, 'lista_publicacoes_5_titulo', 'Título do post'),
(1091, 238, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(1092, 238, 'lista_publicacoes_5_imagem', '233'),
(1093, 238, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(1094, 238, 'lista_publicacoes_6_titulo', 'Título do post'),
(1095, 238, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(1096, 238, 'lista_publicacoes_6_imagem', '234'),
(1097, 238, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(1098, 238, 'lista_publicacoes_7_titulo', 'Título do post'),
(1099, 238, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(1100, 238, 'lista_publicacoes_7_imagem', '235'),
(1101, 238, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(1102, 238, 'lista_publicacoes', '8'),
(1103, 238, '_lista_publicacoes', 'field_643de4037170d'),
(1104, 238, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(1105, 238, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(1106, 238, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(1107, 238, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(1108, 238, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(1109, 238, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(1110, 238, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(1111, 238, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(1112, 238, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/'),
(1113, 238, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(1114, 238, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(1115, 238, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(1116, 238, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(1117, 238, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(1118, 238, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(1119, 238, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(1122, 239, 'imagem_banner_topo', '216'),
(1123, 239, '_imagem_banner_topo', 'field_643de39c71709'),
(1124, 239, 'subtitulo_publicacoes', 'CONTENT'),
(1125, 239, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(1126, 239, 'titulo_publicacoes', 'Patagônia'),
(1127, 239, '_titulo_publicacoes', 'field_643de3f17170c'),
(1128, 239, 'lista_publicacoes_0_titulo', 'Título do post') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1129, 239, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(1130, 239, 'lista_publicacoes_0_imagem', '228'),
(1131, 239, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(1132, 239, 'lista_publicacoes_1_titulo', 'Título do post'),
(1133, 239, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(1134, 239, 'lista_publicacoes_1_imagem', '229'),
(1135, 239, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(1136, 239, 'lista_publicacoes_2_titulo', 'Título do post'),
(1137, 239, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(1138, 239, 'lista_publicacoes_2_imagem', '230'),
(1139, 239, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(1140, 239, 'lista_publicacoes_3_titulo', 'Título do post'),
(1141, 239, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(1142, 239, 'lista_publicacoes_3_imagem', '231'),
(1143, 239, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(1144, 239, 'lista_publicacoes_4_titulo', 'Título do post'),
(1145, 239, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(1146, 239, 'lista_publicacoes_4_imagem', '232'),
(1147, 239, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(1148, 239, 'lista_publicacoes_5_titulo', 'Título do post'),
(1149, 239, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(1150, 239, 'lista_publicacoes_5_imagem', '233'),
(1151, 239, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(1152, 239, 'lista_publicacoes_6_titulo', 'Título do post'),
(1153, 239, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(1154, 239, 'lista_publicacoes_6_imagem', '234'),
(1155, 239, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(1156, 239, 'lista_publicacoes_7_titulo', 'Título do post'),
(1157, 239, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(1158, 239, 'lista_publicacoes_7_imagem', '235'),
(1159, 239, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(1160, 239, 'lista_publicacoes', '8'),
(1161, 239, '_lista_publicacoes', 'field_643de4037170d'),
(1162, 239, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(1163, 239, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(1164, 239, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(1165, 239, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(1166, 239, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(1167, 239, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(1168, 239, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(1169, 239, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(1170, 239, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/'),
(1171, 239, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(1172, 239, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(1173, 239, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(1174, 239, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(1175, 239, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(1176, 239, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(1177, 239, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(1178, 240, '_wp_attached_file', '2023/04/patagonia6-1.jpg'),
(1179, 240, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:605;s:6:"height";i:807;s:4:"file";s:24:"2023/04/patagonia6-1.jpg";s:8:"filesize";i:216986;s:5:"sizes";a:10:{s:6:"medium";a:5:{s:4:"file";s:24:"patagonia6-1-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21259;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"patagonia6-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8794;}s:9:"carrossel";a:5:{s:4:"file";s:24:"patagonia6-1-605x794.jpg";s:5:"width";i:605;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:103148;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:24:"patagonia6-1-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:43236;}s:10:"capa-viaje";a:5:{s:4:"file";s:24:"patagonia6-1-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38983;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:24:"patagonia6-1-605x692.jpg";s:5:"width";i:605;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:93555;}s:11:"capa-padrao";a:5:{s:4:"file";s:24:"patagonia6-1-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:45450;}s:16:"banner-to-travel";a:5:{s:4:"file";s:24:"patagonia6-1-605x581.jpg";s:5:"width";i:605;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:81434;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:24:"patagonia6-1-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24732;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:24:"patagonia6-1-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34202;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1182, 241, 'imagem_banner_topo', '216'),
(1183, 241, '_imagem_banner_topo', 'field_643de39c71709'),
(1184, 241, 'subtitulo_publicacoes', 'CONTENT'),
(1185, 241, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(1186, 241, 'titulo_publicacoes', 'Patagônia'),
(1187, 241, '_titulo_publicacoes', 'field_643de3f17170c'),
(1188, 241, 'lista_publicacoes_0_titulo', 'Título do post'),
(1189, 241, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(1190, 241, 'lista_publicacoes_0_imagem', '228'),
(1191, 241, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(1192, 241, 'lista_publicacoes_1_titulo', 'Título do post'),
(1193, 241, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(1194, 241, 'lista_publicacoes_1_imagem', '229'),
(1195, 241, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(1196, 241, 'lista_publicacoes_2_titulo', 'Título do post'),
(1197, 241, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(1198, 241, 'lista_publicacoes_2_imagem', '230'),
(1199, 241, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(1200, 241, 'lista_publicacoes_3_titulo', 'Título do post'),
(1201, 241, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(1202, 241, 'lista_publicacoes_3_imagem', '231'),
(1203, 241, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(1204, 241, 'lista_publicacoes_4_titulo', 'Título do post'),
(1205, 241, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(1206, 241, 'lista_publicacoes_4_imagem', '232'),
(1207, 241, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(1208, 241, 'lista_publicacoes_5_titulo', 'Título do post'),
(1209, 241, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(1210, 241, 'lista_publicacoes_5_imagem', '240'),
(1211, 241, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(1212, 241, 'lista_publicacoes_6_titulo', 'Título do post'),
(1213, 241, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(1214, 241, 'lista_publicacoes_6_imagem', '234'),
(1215, 241, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(1216, 241, 'lista_publicacoes_7_titulo', 'Título do post'),
(1217, 241, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(1218, 241, 'lista_publicacoes_7_imagem', '235'),
(1219, 241, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(1220, 241, 'lista_publicacoes', '8'),
(1221, 241, '_lista_publicacoes', 'field_643de4037170d'),
(1222, 241, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(1223, 241, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(1224, 241, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(1225, 241, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(1226, 241, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(1227, 241, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(1228, 241, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(1229, 241, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(1230, 241, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1231, 241, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(1232, 241, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(1233, 241, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(1234, 241, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(1235, 241, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(1236, 241, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(1237, 241, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(1245, 141, 'imagem_banner_topo', '216'),
(1246, 141, '_imagem_banner_topo', 'field_643de39c71709'),
(1247, 141, 'subtitulo_publicacoes', 'CONTENT'),
(1248, 141, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(1249, 141, 'titulo_publicacoes', 'Patagônia'),
(1250, 141, '_titulo_publicacoes', 'field_643de3f17170c'),
(1251, 141, 'lista_publicacoes_0_titulo', 'Título do post'),
(1252, 141, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(1253, 141, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(1254, 141, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(1255, 141, 'lista_publicacoes_0_imagem', '228'),
(1256, 141, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(1257, 141, 'lista_publicacoes_1_titulo', 'Título do post'),
(1258, 141, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(1259, 141, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(1260, 141, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(1261, 141, 'lista_publicacoes_1_imagem', '229'),
(1262, 141, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(1263, 141, 'lista_publicacoes_2_titulo', 'Título do post'),
(1264, 141, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(1265, 141, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(1266, 141, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(1267, 141, 'lista_publicacoes_2_imagem', '230'),
(1268, 141, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(1269, 141, 'lista_publicacoes_3_titulo', 'Título do post'),
(1270, 141, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(1271, 141, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(1272, 141, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(1273, 141, 'lista_publicacoes_3_imagem', '231'),
(1274, 141, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(1275, 141, 'lista_publicacoes_4_titulo', 'Título do post'),
(1276, 141, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(1277, 141, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/'),
(1278, 141, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(1279, 141, 'lista_publicacoes_4_imagem', '232'),
(1280, 141, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(1281, 141, 'lista_publicacoes_5_titulo', 'Título do post'),
(1282, 141, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(1283, 141, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(1284, 141, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(1285, 141, 'lista_publicacoes_5_imagem', '240'),
(1286, 141, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(1287, 141, 'lista_publicacoes_6_titulo', 'Título do post'),
(1288, 141, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(1289, 141, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(1290, 141, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(1291, 141, 'lista_publicacoes_6_imagem', '234'),
(1292, 141, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(1293, 141, 'lista_publicacoes_7_titulo', 'Título do post'),
(1294, 141, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(1295, 141, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(1296, 141, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(1297, 141, 'lista_publicacoes_7_imagem', '235'),
(1298, 141, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(1299, 141, 'lista_publicacoes', '8'),
(1300, 141, '_lista_publicacoes', 'field_643de4037170d'),
(1301, 242, 'imagem_banner_topo', '216'),
(1302, 242, '_imagem_banner_topo', 'field_643de39c71709'),
(1303, 242, 'subtitulo_publicacoes', 'CONTENT'),
(1304, 242, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(1305, 242, 'titulo_publicacoes', 'Patagônia'),
(1306, 242, '_titulo_publicacoes', 'field_643de3f17170c'),
(1307, 242, 'lista_publicacoes_0_titulo', 'Título do post'),
(1308, 242, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(1309, 242, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(1310, 242, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(1311, 242, 'lista_publicacoes_0_imagem', '228'),
(1312, 242, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(1313, 242, 'lista_publicacoes_1_titulo', 'Título do post'),
(1314, 242, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(1315, 242, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(1316, 242, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(1317, 242, 'lista_publicacoes_1_imagem', '229'),
(1318, 242, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(1319, 242, 'lista_publicacoes_2_titulo', 'Título do post'),
(1320, 242, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(1321, 242, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(1322, 242, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(1323, 242, 'lista_publicacoes_2_imagem', '230'),
(1324, 242, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(1325, 242, 'lista_publicacoes_3_titulo', 'Título do post'),
(1326, 242, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(1327, 242, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(1328, 242, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(1329, 242, 'lista_publicacoes_3_imagem', '231'),
(1330, 242, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(1331, 242, 'lista_publicacoes_4_titulo', 'Título do post'),
(1332, 242, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(1333, 242, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/'),
(1334, 242, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(1335, 242, 'lista_publicacoes_4_imagem', '232'),
(1336, 242, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(1337, 242, 'lista_publicacoes_5_titulo', 'Título do post') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1338, 242, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(1339, 242, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(1340, 242, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(1341, 242, 'lista_publicacoes_5_imagem', '240'),
(1342, 242, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(1343, 242, 'lista_publicacoes_6_titulo', 'Título do post'),
(1344, 242, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(1345, 242, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(1346, 242, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(1347, 242, 'lista_publicacoes_6_imagem', '234'),
(1348, 242, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(1349, 242, 'lista_publicacoes_7_titulo', 'Título do post'),
(1350, 242, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(1351, 242, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(1352, 242, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(1353, 242, 'lista_publicacoes_7_imagem', '235'),
(1354, 242, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(1355, 242, 'lista_publicacoes', '8'),
(1356, 242, '_lista_publicacoes', 'field_643de4037170d'),
(1359, 145, 'imagem_banner_topo', '216'),
(1360, 145, '_imagem_banner_topo', 'field_643de39c71709'),
(1361, 145, 'subtitulo_publicacoes', 'CONTENT'),
(1362, 145, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(1363, 145, 'titulo_publicacoes', 'Havaí'),
(1364, 145, '_titulo_publicacoes', 'field_643de3f17170c'),
(1365, 145, 'lista_publicacoes_0_titulo', 'Título do post'),
(1366, 145, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(1367, 145, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(1368, 145, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(1369, 145, 'lista_publicacoes_0_imagem', '228'),
(1370, 145, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(1371, 145, 'lista_publicacoes_1_titulo', 'Título do post'),
(1372, 145, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(1373, 145, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(1374, 145, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(1375, 145, 'lista_publicacoes_1_imagem', '229'),
(1376, 145, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(1377, 145, 'lista_publicacoes_2_titulo', 'Título do post'),
(1378, 145, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(1379, 145, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(1380, 145, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(1381, 145, 'lista_publicacoes_2_imagem', '230'),
(1382, 145, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(1383, 145, 'lista_publicacoes_3_titulo', 'Título do post'),
(1384, 145, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(1385, 145, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(1386, 145, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(1387, 145, 'lista_publicacoes_3_imagem', '231'),
(1388, 145, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(1389, 145, 'lista_publicacoes_4_titulo', 'Título do post'),
(1390, 145, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(1391, 145, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/'),
(1392, 145, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(1393, 145, 'lista_publicacoes_4_imagem', '232'),
(1394, 145, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(1395, 145, 'lista_publicacoes_5_titulo', 'Título do post'),
(1396, 145, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(1397, 145, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(1398, 145, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(1399, 145, 'lista_publicacoes_5_imagem', '240'),
(1400, 145, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(1401, 145, 'lista_publicacoes_6_titulo', 'Título do post'),
(1402, 145, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(1403, 145, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(1404, 145, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(1405, 145, 'lista_publicacoes_6_imagem', '234'),
(1406, 145, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(1407, 145, 'lista_publicacoes_7_titulo', 'Título do post'),
(1408, 145, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(1409, 145, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(1410, 145, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(1411, 145, 'lista_publicacoes_7_imagem', '235'),
(1412, 145, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(1413, 145, 'lista_publicacoes', '8'),
(1414, 145, '_lista_publicacoes', 'field_643de4037170d'),
(1415, 243, 'imagem_banner_topo', '216'),
(1416, 243, '_imagem_banner_topo', 'field_643de39c71709'),
(1417, 243, 'subtitulo_publicacoes', 'CONTENT'),
(1418, 243, '_subtitulo_publicacoes', 'field_643de3db7170b'),
(1419, 243, 'titulo_publicacoes', 'Havaí'),
(1420, 243, '_titulo_publicacoes', 'field_643de3f17170c'),
(1421, 243, 'lista_publicacoes_0_titulo', 'Título do post'),
(1422, 243, '_lista_publicacoes_0_titulo', 'field_643de4147170e'),
(1423, 243, 'lista_publicacoes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(1424, 243, '_lista_publicacoes_0_link', 'field_643de74cfd48e'),
(1425, 243, 'lista_publicacoes_0_imagem', '228'),
(1426, 243, '_lista_publicacoes_0_imagem', 'field_643de4287170f'),
(1427, 243, 'lista_publicacoes_1_titulo', 'Título do post'),
(1428, 243, '_lista_publicacoes_1_titulo', 'field_643de4147170e'),
(1429, 243, 'lista_publicacoes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(1430, 243, '_lista_publicacoes_1_link', 'field_643de74cfd48e'),
(1431, 243, 'lista_publicacoes_1_imagem', '229'),
(1432, 243, '_lista_publicacoes_1_imagem', 'field_643de4287170f'),
(1433, 243, 'lista_publicacoes_2_titulo', 'Título do post'),
(1434, 243, '_lista_publicacoes_2_titulo', 'field_643de4147170e'),
(1435, 243, 'lista_publicacoes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(1436, 243, '_lista_publicacoes_2_link', 'field_643de74cfd48e'),
(1437, 243, 'lista_publicacoes_2_imagem', '230'),
(1438, 243, '_lista_publicacoes_2_imagem', 'field_643de4287170f'),
(1439, 243, 'lista_publicacoes_3_titulo', 'Título do post') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1440, 243, '_lista_publicacoes_3_titulo', 'field_643de4147170e'),
(1441, 243, 'lista_publicacoes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(1442, 243, '_lista_publicacoes_3_link', 'field_643de74cfd48e'),
(1443, 243, 'lista_publicacoes_3_imagem', '231'),
(1444, 243, '_lista_publicacoes_3_imagem', 'field_643de4287170f'),
(1445, 243, 'lista_publicacoes_4_titulo', 'Título do post'),
(1446, 243, '_lista_publicacoes_4_titulo', 'field_643de4147170e'),
(1447, 243, 'lista_publicacoes_4_link', 'http://outsideco.com.br/site/post-padrao/'),
(1448, 243, '_lista_publicacoes_4_link', 'field_643de74cfd48e'),
(1449, 243, 'lista_publicacoes_4_imagem', '232'),
(1450, 243, '_lista_publicacoes_4_imagem', 'field_643de4287170f'),
(1451, 243, 'lista_publicacoes_5_titulo', 'Título do post'),
(1452, 243, '_lista_publicacoes_5_titulo', 'field_643de4147170e'),
(1453, 243, 'lista_publicacoes_5_link', 'http://outsideco.com.br/site/post-padrao/'),
(1454, 243, '_lista_publicacoes_5_link', 'field_643de74cfd48e'),
(1455, 243, 'lista_publicacoes_5_imagem', '240'),
(1456, 243, '_lista_publicacoes_5_imagem', 'field_643de4287170f'),
(1457, 243, 'lista_publicacoes_6_titulo', 'Título do post'),
(1458, 243, '_lista_publicacoes_6_titulo', 'field_643de4147170e'),
(1459, 243, 'lista_publicacoes_6_link', 'http://outsideco.com.br/site/post-padrao/'),
(1460, 243, '_lista_publicacoes_6_link', 'field_643de74cfd48e'),
(1461, 243, 'lista_publicacoes_6_imagem', '234'),
(1462, 243, '_lista_publicacoes_6_imagem', 'field_643de4287170f'),
(1463, 243, 'lista_publicacoes_7_titulo', 'Título do post'),
(1464, 243, '_lista_publicacoes_7_titulo', 'field_643de4147170e'),
(1465, 243, 'lista_publicacoes_7_link', 'http://outsideco.com.br/site/post-padrao/'),
(1466, 243, '_lista_publicacoes_7_link', 'field_643de74cfd48e'),
(1467, 243, 'lista_publicacoes_7_imagem', '235'),
(1468, 243, '_lista_publicacoes_7_imagem', 'field_643de4287170f'),
(1469, 243, 'lista_publicacoes', '8'),
(1470, 243, '_lista_publicacoes', 'field_643de4037170d'),
(1477, 244, '_edit_lock', '1681842032:1'),
(1478, 244, '_edit_last', '1'),
(1479, 258, '_wp_attached_file', '2023/04/banner-fashion.jpg'),
(1480, 258, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:581;s:4:"file";s:26:"2023/04/banner-fashion.jpg";s:8:"filesize";i:187731;s:5:"sizes";a:15:{s:6:"medium";a:5:{s:4:"file";s:25:"banner-fashion-300x91.jpg";s:5:"width";i:300;s:6:"height";i:91;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7105;}s:5:"large";a:5:{s:4:"file";s:27:"banner-fashion-1024x310.jpg";s:5:"width";i:1024;s:6:"height";i:310;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:58113;}s:9:"thumbnail";a:5:{s:4:"file";s:26:"banner-fashion-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6390;}s:12:"medium_large";a:5:{s:4:"file";s:26:"banner-fashion-768x232.jpg";s:5:"width";i:768;s:6:"height";i:232;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:32982;}s:9:"1536x1536";a:5:{s:4:"file";s:27:"banner-fashion-1536x465.jpg";s:5:"width";i:1536;s:6:"height";i:465;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:118749;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:26:"banner-fashion-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34950;}s:10:"capa-viaje";a:5:{s:4:"file";s:26:"banner-fashion-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31741;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:27:"banner-fashion-1037x581.jpg";s:5:"width";i:1037;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:108563;}s:11:"capa-padrao";a:5:{s:4:"file";s:26:"banner-fashion-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:37174;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:26:"banner-fashion-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18056;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:26:"banner-fashion-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25848;}s:9:"fashion-1";a:5:{s:4:"file";s:26:"banner-fashion-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31427;}s:9:"fashion-2";a:5:{s:4:"file";s:26:"banner-fashion-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:32800;}s:9:"fashion-3";a:5:{s:4:"file";s:26:"banner-fashion-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20308;}s:9:"fashion-4";a:5:{s:4:"file";s:26:"banner-fashion-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21222;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1481, 259, '_wp_attached_file', '2023/04/fashion1.jpg'),
(1482, 259, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:396;s:6:"height";i:399;s:4:"file";s:20:"2023/04/fashion1.jpg";s:8:"filesize";i:24917;s:5:"sizes";a:9:{s:6:"medium";a:5:{s:4:"file";s:20:"fashion1-298x300.jpg";s:5:"width";i:298;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15529;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"fashion1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6081;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"fashion1-396x333.jpg";s:5:"width";i:396;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21031;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"fashion1-396x288.jpg";s:5:"width";i:396;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18148;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"fashion1-396x340.jpg";s:5:"width";i:396;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22157;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:20:"fashion1-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12876;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:20:"fashion1-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19622;}s:9:"fashion-3";a:5:{s:4:"file";s:20:"fashion1-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16780;}s:9:"fashion-4";a:5:{s:4:"file";s:20:"fashion1-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18209;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1483, 260, '_wp_attached_file', '2023/04/fashion2.jpg'),
(1484, 260, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:280;s:6:"height";i:346;s:4:"file";s:20:"2023/04/fashion2.jpg";s:8:"filesize";i:19169;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:20:"fashion2-243x300.jpg";s:5:"width";i:243;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14401;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"fashion2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6152;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"fashion2-280x333.jpg";s:5:"width";i:280;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17823;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"fashion2-280x288.jpg";s:5:"width";i:280;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15760;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"fashion2-280x340.jpg";s:5:"width";i:280;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18647;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:20:"fashion2-280x230.jpg";s:5:"width";i:280;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13022;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1485, 261, '_wp_attached_file', '2023/04/fashion3.jpg'),
(1486, 261, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:402;s:6:"height";i:409;s:4:"file";s:20:"2023/04/fashion3.jpg";s:8:"filesize";i:38155;s:5:"sizes";a:10:{s:6:"medium";a:5:{s:4:"file";s:20:"fashion3-295x300.jpg";s:5:"width";i:295;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21841;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"fashion3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8264;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"fashion3-402x333.jpg";s:5:"width";i:402;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33716;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"fashion3-402x288.jpg";s:5:"width";i:402;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31043;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"fashion3-402x340.jpg";s:5:"width";i:402;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34116;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:20:"fashion3-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21764;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:20:"fashion3-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28238;}s:9:"fashion-1";a:5:{s:4:"file";s:20:"fashion3-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34111;}s:9:"fashion-3";a:5:{s:4:"file";s:20:"fashion3-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22628;}s:9:"fashion-4";a:5:{s:4:"file";s:20:"fashion3-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23276;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1487, 262, '_wp_attached_file', '2023/04/fashion4.jpg'),
(1488, 262, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:279;s:6:"height";i:376;s:4:"file";s:20:"2023/04/fashion4.jpg";s:8:"filesize";i:22993;s:5:"sizes";a:8:{s:6:"medium";a:5:{s:4:"file";s:20:"fashion4-223x300.jpg";s:5:"width";i:223;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16047;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"fashion4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7497;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"fashion4-279x333.jpg";s:5:"width";i:279;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20898;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"fashion4-279x288.jpg";s:5:"width";i:279;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18543;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"fashion4-279x340.jpg";s:5:"width";i:279;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21214;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:20:"fashion4-279x230.jpg";s:5:"width";i:279;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14864;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:20:"fashion4-279x360.jpg";s:5:"width";i:279;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22297;}s:9:"fashion-3";a:5:{s:4:"file";s:20:"fashion4-279x346.jpg";s:5:"width";i:279;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21282;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1491, 148, 'imagem_banner_topo', '258'),
(1492, 148, '_imagem_banner_topo', 'field_643ed6621aedd'),
(1493, 148, 'titulo_publicacao', 'Conjunto \r\nLinho'),
(1494, 148, '_titulo_publicacao', 'field_643ed66225ecd'),
(1495, 148, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(1496, 148, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(1497, 148, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(1498, 148, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(1499, 148, 'titulo_botao_publicacao', 'shop now'),
(1500, 148, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(1501, 148, 'link_botao_publicacao', 'http://outsideco.com.br/site/product/camisa-linho/'),
(1502, 148, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(1503, 148, 'lista_publicacao_0_imagem', '259'),
(1504, 148, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(1505, 148, 'lista_publicacao_1_imagem', '261'),
(1506, 148, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(1507, 148, 'lista_publicacao_2_imagem', '260'),
(1508, 148, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(1509, 148, 'lista_publicacao_3_imagem', '262'),
(1510, 148, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(1511, 148, 'lista_publicacao', '4'),
(1512, 148, '_lista_publicacao', 'field_643ed66229953'),
(1513, 263, 'imagem_banner_topo', '258'),
(1514, 263, '_imagem_banner_topo', 'field_643ed6621aedd'),
(1515, 263, 'titulo_publicacao', 'Conjunto Linho'),
(1516, 263, '_titulo_publicacao', 'field_643ed66225ecd'),
(1517, 263, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(1518, 263, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(1519, 263, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(1520, 263, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(1521, 263, 'titulo_botao_publicacao', 'shop now'),
(1522, 263, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(1523, 263, 'link_botao_publicacao', 'https://www.google.com/'),
(1524, 263, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(1525, 263, 'lista_publicacao_0_imagem', '259'),
(1526, 263, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(1527, 263, 'lista_publicacao_1_imagem', '260'),
(1528, 263, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(1529, 263, 'lista_publicacao_2_imagem', '261'),
(1530, 263, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(1531, 263, 'lista_publicacao_3_imagem', '262'),
(1532, 263, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(1533, 263, 'lista_publicacao', '4'),
(1534, 263, '_lista_publicacao', 'field_643ed66229953'),
(1537, 148, 'subtitulo_publicacao', 'DROP/0001'),
(1538, 148, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(1539, 265, 'imagem_banner_topo', '258'),
(1540, 265, '_imagem_banner_topo', 'field_643ed6621aedd'),
(1541, 265, 'titulo_publicacao', 'Conjunto Linho'),
(1542, 265, '_titulo_publicacao', 'field_643ed66225ecd'),
(1543, 265, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(1544, 265, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(1545, 265, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(1546, 265, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(1547, 265, 'titulo_botao_publicacao', 'shop now'),
(1548, 265, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(1549, 265, 'link_botao_publicacao', 'https://www.google.com/') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1550, 265, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(1551, 265, 'lista_publicacao_0_imagem', '259'),
(1552, 265, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(1553, 265, 'lista_publicacao_1_imagem', '260'),
(1554, 265, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(1555, 265, 'lista_publicacao_2_imagem', '261'),
(1556, 265, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(1557, 265, 'lista_publicacao_3_imagem', '262'),
(1558, 265, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(1559, 265, 'lista_publicacao', '4'),
(1560, 265, '_lista_publicacao', 'field_643ed66229953'),
(1561, 265, 'subtitulo_publicacao', 'DROP/0001'),
(1562, 265, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(1563, 266, '_wp_attached_file', '2023/04/time-to-travel-1.jpg'),
(1564, 266, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2074;s:6:"height";i:1383;s:4:"file";s:28:"2023/04/time-to-travel-1.jpg";s:8:"filesize";i:1219298;s:5:"sizes";a:18:{s:6:"medium";a:5:{s:4:"file";s:28:"time-to-travel-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15717;}s:5:"large";a:5:{s:4:"file";s:29:"time-to-travel-1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:143581;}s:9:"thumbnail";a:5:{s:4:"file";s:28:"time-to-travel-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6663;}s:12:"medium_large";a:5:{s:4:"file";s:28:"time-to-travel-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:83483;}s:9:"1536x1536";a:5:{s:4:"file";s:30:"time-to-travel-1-1536x1024.jpg";s:5:"width";i:1536;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:300263;}s:9:"2048x2048";a:5:{s:4:"file";s:30:"time-to-travel-1-2048x1366.jpg";s:5:"width";i:2048;s:6:"height";i:1366;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:506348;}s:9:"carrossel";a:5:{s:4:"file";s:29:"time-to-travel-1-1920x794.jpg";s:5:"width";i:1920;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:286855;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:28:"time-to-travel-1-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:39177;}s:10:"capa-viaje";a:5:{s:4:"file";s:28:"time-to-travel-1-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35014;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:29:"time-to-travel-1-1037x692.jpg";s:5:"width";i:1037;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:147084;}s:11:"capa-padrao";a:5:{s:4:"file";s:28:"time-to-travel-1-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41612;}s:16:"banner-to-travel";a:5:{s:4:"file";s:29:"time-to-travel-1-1920x581.jpg";s:5:"width";i:1920;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:207861;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:28:"time-to-travel-1-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20354;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:28:"time-to-travel-1-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29290;}s:9:"fashion-1";a:5:{s:4:"file";s:28:"time-to-travel-1-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36122;}s:9:"fashion-2";a:5:{s:4:"file";s:28:"time-to-travel-1-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:37625;}s:9:"fashion-3";a:5:{s:4:"file";s:28:"time-to-travel-1-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23076;}s:9:"fashion-4";a:5:{s:4:"file";s:28:"time-to-travel-1-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24012;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1567, 150, 'imagem_banner_topo', '258'),
(1568, 150, '_imagem_banner_topo', 'field_643ed6621aedd'),
(1569, 150, 'subtitulo_publicacao', 'DROP/0002'),
(1570, 150, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(1571, 150, 'titulo_publicacao', 'Conjunto \r\nLinho'),
(1572, 150, '_titulo_publicacao', 'field_643ed66225ecd'),
(1573, 150, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(1574, 150, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(1575, 150, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(1576, 150, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(1577, 150, 'titulo_botao_publicacao', 'shop now'),
(1578, 150, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(1579, 150, 'link_botao_publicacao', 'http://outsideco.com.br/site/product/camisa-linho/'),
(1580, 150, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(1581, 150, 'lista_publicacao_0_imagem', '266'),
(1582, 150, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(1583, 150, 'lista_publicacao_1_imagem', '266'),
(1584, 150, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(1585, 150, 'lista_publicacao_2_imagem', '266'),
(1586, 150, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(1587, 150, 'lista_publicacao_3_imagem', '266'),
(1588, 150, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(1589, 150, 'lista_publicacao', '4'),
(1590, 150, '_lista_publicacao', 'field_643ed66229953'),
(1591, 267, 'imagem_banner_topo', '258'),
(1592, 267, '_imagem_banner_topo', 'field_643ed6621aedd'),
(1593, 267, 'subtitulo_publicacao', 'DROP/0002'),
(1594, 267, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(1595, 267, 'titulo_publicacao', 'Conjunto Linho'),
(1596, 267, '_titulo_publicacao', 'field_643ed66225ecd'),
(1597, 267, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(1598, 267, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(1599, 267, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(1600, 267, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(1601, 267, 'titulo_botao_publicacao', 'shop now'),
(1602, 267, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(1603, 267, 'link_botao_publicacao', 'https://www.google.com/'),
(1604, 267, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(1605, 267, 'lista_publicacao_0_imagem', '266'),
(1606, 267, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(1607, 267, 'lista_publicacao_1_imagem', '266'),
(1608, 267, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(1609, 267, 'lista_publicacao_2_imagem', '266'),
(1610, 267, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(1611, 267, 'lista_publicacao_3_imagem', '266'),
(1612, 267, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(1613, 267, 'lista_publicacao', '4'),
(1614, 267, '_lista_publicacao', 'field_643ed66229953'),
(1617, 268, 'imagem_banner_topo', '258'),
(1618, 268, '_imagem_banner_topo', 'field_643ed6621aedd'),
(1619, 268, 'titulo_publicacao', 'Conjunto Linho'),
(1620, 268, '_titulo_publicacao', 'field_643ed66225ecd'),
(1621, 268, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(1622, 268, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(1623, 268, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(1624, 268, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(1625, 268, 'titulo_botao_publicacao', 'shop now'),
(1626, 268, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(1627, 268, 'link_botao_publicacao', 'https://www.google.com/'),
(1628, 268, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(1629, 268, 'lista_publicacao_0_imagem', '259'),
(1630, 268, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(1631, 268, 'lista_publicacao_1_imagem', '261'),
(1632, 268, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(1633, 268, 'lista_publicacao_2_imagem', '260'),
(1634, 268, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(1635, 268, 'lista_publicacao_3_imagem', '262'),
(1636, 268, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(1637, 268, 'lista_publicacao', '4'),
(1638, 268, '_lista_publicacao', 'field_643ed66229953'),
(1639, 268, 'subtitulo_publicacao', 'DROP/0001'),
(1640, 268, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(1643, 269, 'imagem_banner_topo', '258'),
(1644, 269, '_imagem_banner_topo', 'field_643ed6621aedd'),
(1645, 269, 'titulo_publicacao', 'Conjunto \r\nLinho'),
(1646, 269, '_titulo_publicacao', 'field_643ed66225ecd'),
(1647, 269, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(1648, 269, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(1649, 269, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(1650, 269, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(1651, 269, 'titulo_botao_publicacao', 'shop now'),
(1652, 269, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(1653, 269, 'link_botao_publicacao', 'https://www.google.com/'),
(1654, 269, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(1655, 269, 'lista_publicacao_0_imagem', '259') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1656, 269, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(1657, 269, 'lista_publicacao_1_imagem', '261'),
(1658, 269, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(1659, 269, 'lista_publicacao_2_imagem', '260'),
(1660, 269, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(1661, 269, 'lista_publicacao_3_imagem', '262'),
(1662, 269, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(1663, 269, 'lista_publicacao', '4'),
(1664, 269, '_lista_publicacao', 'field_643ed66229953'),
(1665, 269, 'subtitulo_publicacao', 'DROP/0001'),
(1666, 269, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(1669, 270, 'imagem_banner_topo', '258'),
(1670, 270, '_imagem_banner_topo', 'field_643ed6621aedd'),
(1671, 270, 'subtitulo_publicacao', 'DROP/0002'),
(1672, 270, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(1673, 270, 'titulo_publicacao', 'Conjunto \r\nLinho'),
(1674, 270, '_titulo_publicacao', 'field_643ed66225ecd'),
(1675, 270, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(1676, 270, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(1677, 270, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(1678, 270, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(1679, 270, 'titulo_botao_publicacao', 'shop now'),
(1680, 270, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(1681, 270, 'link_botao_publicacao', 'https://www.google.com/'),
(1682, 270, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(1683, 270, 'lista_publicacao_0_imagem', '266'),
(1684, 270, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(1685, 270, 'lista_publicacao_1_imagem', '266'),
(1686, 270, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(1687, 270, 'lista_publicacao_2_imagem', '266'),
(1688, 270, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(1689, 270, 'lista_publicacao_3_imagem', '266'),
(1690, 270, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(1691, 270, 'lista_publicacao', '4'),
(1692, 270, '_lista_publicacao', 'field_643ed66229953'),
(1695, 152, 'imagem_banner_topo', '258'),
(1696, 152, '_imagem_banner_topo', 'field_643ed6621aedd'),
(1697, 152, 'subtitulo_publicacao', 'DROP/0003'),
(1698, 152, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(1699, 152, 'titulo_publicacao', 'Conjunto\r\nLinho'),
(1700, 152, '_titulo_publicacao', 'field_643ed66225ecd'),
(1701, 152, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(1702, 152, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(1703, 152, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(1704, 152, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(1705, 152, 'titulo_botao_publicacao', 'shop now'),
(1706, 152, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(1707, 152, 'link_botao_publicacao', 'http://outsideco.com.br/site/product/camisa-linho/'),
(1708, 152, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(1709, 152, 'lista_publicacao_0_imagem', '259'),
(1710, 152, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(1711, 152, 'lista_publicacao_1_imagem', '261'),
(1712, 152, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(1713, 152, 'lista_publicacao_2_imagem', '260'),
(1714, 152, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(1715, 152, 'lista_publicacao_3_imagem', '262'),
(1716, 152, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(1717, 152, 'lista_publicacao', '4'),
(1718, 152, '_lista_publicacao', 'field_643ed66229953'),
(1719, 271, 'imagem_banner_topo', '258'),
(1720, 271, '_imagem_banner_topo', 'field_643ed6621aedd'),
(1721, 271, 'subtitulo_publicacao', 'DROP/0003'),
(1722, 271, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(1723, 271, 'titulo_publicacao', 'Conjunto\r\nLinho'),
(1724, 271, '_titulo_publicacao', 'field_643ed66225ecd'),
(1725, 271, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(1726, 271, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(1727, 271, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(1728, 271, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(1729, 271, 'titulo_botao_publicacao', ''),
(1730, 271, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(1731, 271, 'link_botao_publicacao', ''),
(1732, 271, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(1733, 271, 'lista_publicacao_0_imagem', '259'),
(1734, 271, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(1735, 271, 'lista_publicacao_1_imagem', '261'),
(1736, 271, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(1737, 271, 'lista_publicacao_2_imagem', '260'),
(1738, 271, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(1739, 271, 'lista_publicacao_3_imagem', '262'),
(1740, 271, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(1741, 271, 'lista_publicacao', '4'),
(1742, 271, '_lista_publicacao', 'field_643ed66229953'),
(1743, 273, '_edit_last', '1'),
(1744, 273, '_edit_lock', '1681860228:1'),
(1745, 279, '_edit_last', '1'),
(1746, 279, '_edit_lock', '1681870910:1'),
(1747, 280, '_wp_attached_file', '2023/04/galeria1.jpg'),
(1748, 280, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:376;s:6:"height";i:564;s:4:"file";s:20:"2023/04/galeria1.jpg";s:8:"filesize";i:46447;s:5:"sizes";a:11:{s:6:"medium";a:5:{s:4:"file";s:20:"galeria1-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15431;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"galeria1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7287;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"galeria1-376x333.jpg";s:5:"width";i:376;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30519;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"galeria1-376x288.jpg";s:5:"width";i:376;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26662;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"galeria1-376x340.jpg";s:5:"width";i:376;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30893;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:20:"galeria1-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19709;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:20:"galeria1-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28149;}s:9:"fashion-1";a:5:{s:4:"file";s:20:"galeria1-376x399.jpg";s:5:"width";i:376;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34833;}s:9:"fashion-2";a:5:{s:4:"file";s:20:"galeria1-376x409.jpg";s:5:"width";i:376;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35960;}s:9:"fashion-3";a:5:{s:4:"file";s:20:"galeria1-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22823;}s:9:"fashion-4";a:5:{s:4:"file";s:20:"galeria1-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24410;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1749, 281, '_wp_attached_file', '2023/04/galeria2.jpg'),
(1750, 281, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:376;s:6:"height";i:564;s:4:"file";s:20:"2023/04/galeria2.jpg";s:8:"filesize";i:48203;s:5:"sizes";a:11:{s:6:"medium";a:5:{s:4:"file";s:20:"galeria2-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15728;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"galeria2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7255;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"galeria2-376x333.jpg";s:5:"width";i:376;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28413;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"galeria2-376x288.jpg";s:5:"width";i:376;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23930;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"galeria2-376x340.jpg";s:5:"width";i:376;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29196;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:20:"galeria2-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16286;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:20:"galeria2-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26845;}s:9:"fashion-1";a:5:{s:4:"file";s:20:"galeria2-376x399.jpg";s:5:"width";i:376;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33597;}s:9:"fashion-2";a:5:{s:4:"file";s:20:"galeria2-376x409.jpg";s:5:"width";i:376;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34960;}s:9:"fashion-3";a:5:{s:4:"file";s:20:"galeria2-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22417;}s:9:"fashion-4";a:5:{s:4:"file";s:20:"galeria2-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24062;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1751, 282, '_wp_attached_file', '2023/04/galeria3.jpg'),
(1752, 282, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:376;s:6:"height";i:564;s:4:"file";s:20:"2023/04/galeria3.jpg";s:8:"filesize";i:41995;s:5:"sizes";a:11:{s:6:"medium";a:5:{s:4:"file";s:20:"galeria3-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13823;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"galeria3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7264;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"galeria3-376x333.jpg";s:5:"width";i:376;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30512;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"galeria3-376x288.jpg";s:5:"width";i:376;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27205;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"galeria3-376x340.jpg";s:5:"width";i:376;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31068;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:20:"galeria3-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20406;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:20:"galeria3-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27329;}s:9:"fashion-1";a:5:{s:4:"file";s:20:"galeria3-376x399.jpg";s:5:"width";i:376;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33888;}s:9:"fashion-2";a:5:{s:4:"file";s:20:"galeria3-376x409.jpg";s:5:"width";i:376;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34611;}s:9:"fashion-3";a:5:{s:4:"file";s:20:"galeria3-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21149;}s:9:"fashion-4";a:5:{s:4:"file";s:20:"galeria3-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21847;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1753, 283, '_wp_attached_file', '2023/04/astral1.jpg'),
(1754, 283, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:500;s:6:"height";i:334;s:4:"file";s:19:"2023/04/astral1.jpg";s:8:"filesize";i:42787;s:5:"sizes";a:10:{s:6:"medium";a:5:{s:4:"file";s:19:"astral1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17734;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"astral1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8054;}s:10:"capa-viaje";a:5:{s:4:"file";s:19:"astral1-500x288.jpg";s:5:"width";i:500;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:37819;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:19:"astral1-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22531;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:19:"astral1-350x334.jpg";s:5:"width";i:350;s:6:"height";i:334;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31282;}s:9:"fashion-1";a:5:{s:4:"file";s:19:"astral1-396x334.jpg";s:5:"width";i:396;s:6:"height";i:334;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35544;}s:9:"fashion-2";a:5:{s:4:"file";s:19:"astral1-402x334.jpg";s:5:"width";i:402;s:6:"height";i:334;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35038;}s:9:"fashion-3";a:5:{s:4:"file";s:19:"astral1-280x334.jpg";s:5:"width";i:280;s:6:"height";i:334;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25463;}s:9:"fashion-4";a:5:{s:4:"file";s:19:"astral1-279x334.jpg";s:5:"width";i:279;s:6:"height";i:334;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25442;}s:13:"imagem-astral";a:5:{s:4:"file";s:19:"astral1-376x334.jpg";s:5:"width";i:376;s:6:"height";i:334;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33441;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1755, 284, '_wp_attached_file', '2023/04/astral2.jpg'),
(1756, 284, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:19:"2023/04/astral2.jpg";s:8:"filesize";i:64139;s:5:"sizes";a:12:{s:6:"medium";a:5:{s:4:"file";s:19:"astral2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23608;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"astral2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7294;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:19:"astral2-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:42459;}s:10:"capa-viaje";a:5:{s:4:"file";s:19:"astral2-500x288.jpg";s:5:"width";i:500;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:37412;}s:11:"capa-padrao";a:5:{s:4:"file";s:19:"astral2-500x340.jpg";s:5:"width";i:500;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:43685;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:19:"astral2-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20053;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:19:"astral2-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31019;}s:9:"fashion-1";a:5:{s:4:"file";s:19:"astral2-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38377;}s:9:"fashion-2";a:5:{s:4:"file";s:19:"astral2-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40013;}s:9:"fashion-3";a:5:{s:4:"file";s:19:"astral2-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23796;}s:9:"fashion-4";a:5:{s:4:"file";s:19:"astral2-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25098;}s:13:"imagem-astral";a:5:{s:4:"file";s:19:"astral2-376x500.jpg";s:5:"width";i:376;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:46305;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1757, 279, '_wp_page_template', 'post-template-austral.php'),
(1760, 279, 'subtitulo_austral', 'AUSTRAL'),
(1761, 279, '_subtitulo_austral', 'field_643ef03880740') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1762, 279, 'titulo_austral', 'Uma boa mala planejada te salvará em uma viagem de trilha, montanha e natureza. Seguem algumas Outside Tips:'),
(1763, 279, '_titulo_austral', 'field_643ef06080741'),
(1764, 279, 'lista_austral_0_imagem', '280'),
(1765, 279, '_lista_austral_0_imagem', 'field_643ef0c280743'),
(1766, 279, 'lista_austral_1_imagem', '281'),
(1767, 279, '_lista_austral_1_imagem', 'field_643ef0c280743'),
(1768, 279, 'lista_austral_2_imagem', '282'),
(1769, 279, '_lista_austral_2_imagem', 'field_643ef0c280743'),
(1770, 279, 'lista_austral', '3'),
(1771, 279, '_lista_austral', 'field_643ef06c80742'),
(1772, 279, 'texto_austral', '<img class="class= alignright" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral1-300x200.jpg" alt="" width="400" />\r\n<h2>AUSTRAL</h2>\r\nA Austral é uma marca de vestuário masculina com uma pegada outdoor, praia, surf, natureza, montanha e aventura com peças de matéria prima sustentável e de extrema qualidade! Além de tudo é brasileira e faz do Brasil uma de suas maiores inspirações. Sou fã, e é claro que levei eles para a Patagônia, afinal, falou em natureza, montanha e aventura? Patagônia na certa.\r\n\r\nAustral foi com certeza 80% da minha mala e esteve presente todos os dias na minha viagem! As peças foram perfeitas para o estilo de viagem que fizemos, eles possuem desde calças (de qualidade absurda) até corta ventos (super necessário), até camisetas, bermudas e moletons.\r\n\r\n<img class="size-medium wp-image-284 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral2-300x300.jpg" alt="" width="400" />\r\n\r\nSe você for para a Patagônia aqui vai um check list de itens para você levar que com certeza encontrará na Austral:\r\n<h3>CHECK LIST</h3>\r\n[ ] Camisetas\r\n[ ] Calças\r\n[ ] Bermuda\r\n[ ] Camiseta manga cumprida\r\n[ ] Moletom\r\n[ ] Corta-vento\r\n[ ] Camisas\r\n\r\nA primeira camada de roupa (se você pegar temperaturas baixas) é a segunda pele, após vem a segunda camada, calça e camiseta. Durante a trilha você acaba se sujando e transpirando então algumas opções de calça e camiseta são muito necessárias.'),
(1773, 279, '_texto_austral', 'field_643ef0eb80744'),
(1774, 285, 'subtitulo_austral', 'AUSTRAL'),
(1775, 285, '_subtitulo_austral', 'field_643ef03880740'),
(1776, 285, 'titulo_austral', 'Uma boa mala planejada te salvará em uma viagem de trilha, montanha e natureza. Seguem algumas Outside Tips:'),
(1777, 285, '_titulo_austral', 'field_643ef06080741'),
(1778, 285, 'lista_austral_0_imagem', '280'),
(1779, 285, '_lista_austral_0_imagem', 'field_643ef0c280743'),
(1780, 285, 'lista_austral_1_imagem', '281'),
(1781, 285, '_lista_austral_1_imagem', 'field_643ef0c280743'),
(1782, 285, 'lista_austral_2_imagem', '282'),
(1783, 285, '_lista_austral_2_imagem', 'field_643ef0c280743'),
(1784, 285, 'lista_austral', '3'),
(1785, 285, '_lista_austral', 'field_643ef06c80742'),
(1786, 285, 'texto_austral', '<img class="class=" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral1-300x200.jpg" alt="" width="400" />\r\n<h2>AUSTRAL</h2>\r\nA Austral é uma marca de vestuário masculina com uma pegada outdoor, praia, surf, natureza, montanha e aventura com peças de matéria prima sustentável e de extrema qualidade! Além de tudo é brasileira e faz do Brasil uma de suas maiores inspirações. Sou fã, e é claro que levei eles para a Patagônia, afinal, falou em natureza, montanha e aventura? Patagônia na certa.\r\n\r\nAustral foi com certeza 80% da minha mala e esteve presente todos os dias na minha viagem! As peças foram perfeitas para o estilo de viagem que fizemos, eles possuem desde calças (de qualidade absurda) até corta ventos (super necessário), até camisetas, bermudas e moletons.\r\n\r\n<img class="size-medium wp-image-284 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral2-300x300.jpg" alt="" width="400" />\r\n\r\nSe você for para a Patagônia aqui vai um check list de itens para você levar que com certeza encontrará na Austral:\r\n<h3>CHECK LIST</h3>\r\n[ ] Camisetas\r\n[ ] Calças\r\n[ ] Bermuda\r\n[ ] Camiseta manga cumprida\r\n[ ] Moletom\r\n[ ] Corta-vento\r\n[ ] Camisas\r\n\r\nA primeira camada de roupa (se você pegar temperaturas baixas) é a segunda pele, após vem a segunda camada, calça e camiseta. Durante a trilha você acaba se sujando e transpirando então algumas opções de calça e camiseta são muito necessárias.'),
(1787, 285, '_texto_austral', 'field_643ef0eb80744'),
(1790, 286, 'subtitulo_austral', 'AUSTRAL'),
(1791, 286, '_subtitulo_austral', 'field_643ef03880740'),
(1792, 286, 'titulo_austral', 'Uma boa mala planejada te salvará em uma viagem de trilha, montanha e natureza. Seguem algumas Outside Tips:'),
(1793, 286, '_titulo_austral', 'field_643ef06080741'),
(1794, 286, 'lista_austral_0_imagem', '280'),
(1795, 286, '_lista_austral_0_imagem', 'field_643ef0c280743'),
(1796, 286, 'lista_austral_1_imagem', '281'),
(1797, 286, '_lista_austral_1_imagem', 'field_643ef0c280743'),
(1798, 286, 'lista_austral_2_imagem', '282'),
(1799, 286, '_lista_austral_2_imagem', 'field_643ef0c280743'),
(1800, 286, 'lista_austral', '3'),
(1801, 286, '_lista_austral', 'field_643ef06c80742'),
(1802, 286, 'texto_austral', '<img class="class=" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral1-300x200.jpg" alt="" width="400" />\r\n<h2>AUSTRAL</h2>\r\nA Austral é uma marca de vestuário masculina com uma pegada outdoor, praia, surf, natureza, montanha e aventura com peças de matéria prima sustentável e de extrema qualidade! Além de tudo é brasileira e faz do Brasil uma de suas maiores inspirações. Sou fã, e é claro que levei eles para a Patagônia, afinal, falou em natureza, montanha e aventura? Patagônia na certa.\r\n\r\nAustral foi com certeza 80% da minha mala e esteve presente todos os dias na minha viagem! As peças foram perfeitas para o estilo de viagem que fizemos, eles possuem desde calças (de qualidade absurda) até corta ventos (super necessário), até camisetas, bermudas e moletons.\r\n\r\n<img class="size-medium wp-image-284 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral2-300x300.jpg" alt="" width="400" />\r\n\r\nSe você for para a Patagônia aqui vai um check list de itens para você levar que com certeza encontrará na Austral:\r\n<h3>CHECK LIST</h3>\r\n[ ] Camisetas\r\n[ ] Calças\r\n[ ] Bermuda\r\n[ ] Camiseta manga cumprida\r\n[ ] Moletom\r\n[ ] Corta-vento\r\n[ ] Camisas\r\n\r\nA primeira camada de roupa (se você pegar temperaturas baixas) é a segunda pele, após vem a segunda camada, calça e camiseta. Durante a trilha você acaba se sujando e transpirando então algumas opções de calça e camiseta são muito necessárias.'),
(1803, 286, '_texto_austral', 'field_643ef0eb80744'),
(1806, 287, 'subtitulo_austral', 'AUSTRAL'),
(1807, 287, '_subtitulo_austral', 'field_643ef03880740'),
(1808, 287, 'titulo_austral', 'Uma boa mala planejada te salvará em uma viagem de trilha, montanha e natureza. Seguem algumas Outside Tips:'),
(1809, 287, '_titulo_austral', 'field_643ef06080741'),
(1810, 287, 'lista_austral_0_imagem', '280'),
(1811, 287, '_lista_austral_0_imagem', 'field_643ef0c280743'),
(1812, 287, 'lista_austral_1_imagem', '281'),
(1813, 287, '_lista_austral_1_imagem', 'field_643ef0c280743'),
(1814, 287, 'lista_austral_2_imagem', '282'),
(1815, 287, '_lista_austral_2_imagem', 'field_643ef0c280743'),
(1816, 287, 'lista_austral', '3'),
(1817, 287, '_lista_austral', 'field_643ef06c80742'),
(1818, 287, 'texto_austral', '<img class="class= alignright" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral1-300x200.jpg" alt="" width="400" />\r\n<h2>AUSTRAL</h2>\r\nA Austral é uma marca de vestuário masculina com uma pegada outdoor, praia, surf, natureza, montanha e aventura com peças de matéria prima sustentável e de extrema qualidade! Além de tudo é brasileira e faz do Brasil uma de suas maiores inspirações. Sou fã, e é claro que levei eles para a Patagônia, afinal, falou em natureza, montanha e aventura? Patagônia na certa.\r\n\r\nAustral foi com certeza 80% da minha mala e esteve presente todos os dias na minha viagem! As peças foram perfeitas para o estilo de viagem que fizemos, eles possuem desde calças (de qualidade absurda) até corta ventos (super necessário), até camisetas, bermudas e moletons.\r\n\r\n<img class="size-medium wp-image-284 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral2-300x300.jpg" alt="" width="400" />\r\n\r\nSe você for para a Patagônia aqui vai um check list de itens para você levar que com certeza encontrará na Austral:\r\n<h3>CHECK LIST</h3>\r\n[ ] Camisetas\r\n[ ] Calças\r\n[ ] Bermuda\r\n[ ] Camiseta manga cumprida\r\n[ ] Moletom\r\n[ ] Corta-vento\r\n[ ] Camisas\r\n\r\nA primeira camada de roupa (se você pegar temperaturas baixas) é a segunda pele, após vem a segunda camada, calça e camiseta. Durante a trilha você acaba se sujando e transpirando então algumas opções de calça e camiseta são muito necessárias.'),
(1819, 287, '_texto_austral', 'field_643ef0eb80744'),
(1820, 289, '_edit_lock', '1681848517:1'),
(1821, 289, '_edit_last', '1'),
(1822, 301, '_edit_last', '1'),
(1823, 301, '_edit_lock', '1681868916:1'),
(1824, 302, '_wp_attached_file', '2023/04/banner-lunch-time.jpg'),
(1825, 302, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:500;s:4:"file";s:29:"2023/04/banner-lunch-time.jpg";s:8:"filesize";i:297391;s:5:"sizes";a:17:{s:6:"medium";a:5:{s:4:"file";s:28:"banner-lunch-time-300x78.jpg";s:5:"width";i:300;s:6:"height";i:78;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9948;}s:5:"large";a:5:{s:4:"file";s:30:"banner-lunch-time-1024x267.jpg";s:5:"width";i:1024;s:6:"height";i:267;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:93451;}s:9:"thumbnail";a:5:{s:4:"file";s:29:"banner-lunch-time-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9349;}s:12:"medium_large";a:5:{s:4:"file";s:29:"banner-lunch-time-768x200.jpg";s:5:"width";i:768;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:53882;}s:9:"1536x1536";a:5:{s:4:"file";s:30:"banner-lunch-time-1536x400.jpg";s:5:"width";i:1536;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:188437;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:29:"banner-lunch-time-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55493;}s:10:"capa-viaje";a:5:{s:4:"file";s:29:"banner-lunch-time-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:51509;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:30:"banner-lunch-time-1037x500.jpg";s:5:"width";i:1037;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:161715;}s:11:"capa-padrao";a:5:{s:4:"file";s:29:"banner-lunch-time-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:59095;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:29:"banner-lunch-time-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28793;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:29:"banner-lunch-time-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:42025;}s:9:"fashion-1";a:5:{s:4:"file";s:29:"banner-lunch-time-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:51464;}s:9:"fashion-2";a:5:{s:4:"file";s:29:"banner-lunch-time-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:53614;}s:9:"fashion-3";a:5:{s:4:"file";s:29:"banner-lunch-time-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33225;}s:9:"fashion-4";a:5:{s:4:"file";s:29:"banner-lunch-time-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35402;}s:13:"imagem-astral";a:5:{s:4:"file";s:29:"banner-lunch-time-376x500.jpg";s:5:"width";i:376;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:65292;}s:17:"carrossel-viagens";a:5:{s:4:"file";s:29:"banner-lunch-time-585x500.jpg";s:5:"width";i:585;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:95448;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1826, 303, '_wp_attached_file', '2023/04/img-lunch-time1.jpg'),
(1827, 303, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:400;s:6:"height";i:338;s:4:"file";s:27:"2023/04/img-lunch-time1.jpg";s:8:"filesize";i:40524;s:5:"sizes";a:10:{s:6:"medium";a:5:{s:4:"file";s:27:"img-lunch-time1-300x254.jpg";s:5:"width";i:300;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22605;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"img-lunch-time1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8352;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:27:"img-lunch-time1-400x333.jpg";s:5:"width";i:400;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:39348;}s:10:"capa-viaje";a:5:{s:4:"file";s:27:"img-lunch-time1-400x288.jpg";s:5:"width";i:400;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31216;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:27:"img-lunch-time1-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20327;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:27:"img-lunch-time1-350x338.jpg";s:5:"width";i:350;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33875;}s:9:"fashion-1";a:5:{s:4:"file";s:27:"img-lunch-time1-396x338.jpg";s:5:"width";i:396;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:39707;}s:9:"fashion-3";a:5:{s:4:"file";s:27:"img-lunch-time1-280x338.jpg";s:5:"width";i:280;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28589;}s:9:"fashion-4";a:5:{s:4:"file";s:27:"img-lunch-time1-279x338.jpg";s:5:"width";i:279;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28555;}s:13:"imagem-astral";a:5:{s:4:"file";s:27:"img-lunch-time1-376x338.jpg";s:5:"width";i:376;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:37276;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1828, 304, '_wp_attached_file', '2023/04/img-lunch-time.jpg'),
(1829, 304, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:247;s:6:"height";i:165;s:4:"file";s:26:"2023/04/img-lunch-time.jpg";s:8:"filesize";i:6626;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:26:"img-lunch-time-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4565;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1830, 305, '_wp_attached_file', '2023/04/restaurante1.jpg'),
(1831, 305, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:908;s:6:"height";i:1210;s:4:"file";s:24:"2023/04/restaurante1.jpg";s:8:"filesize";i:298654;s:5:"sizes";a:18:{s:6:"medium";a:5:{s:4:"file";s:24:"restaurante1-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27150;}s:5:"large";a:5:{s:4:"file";s:25:"restaurante1-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:199149;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"restaurante1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10803;}s:12:"medium_large";a:5:{s:4:"file";s:25:"restaurante1-768x1023.jpg";s:5:"width";i:768;s:6:"height";i:1023;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:199419;}s:9:"carrossel";a:5:{s:4:"file";s:24:"restaurante1-908x794.jpg";s:5:"width";i:908;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:191439;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:24:"restaurante1-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:48798;}s:10:"capa-viaje";a:5:{s:4:"file";s:24:"restaurante1-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40868;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:24:"restaurante1-908x692.jpg";s:5:"width";i:908;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:161587;}s:11:"capa-padrao";a:5:{s:4:"file";s:24:"restaurante1-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:50764;}s:16:"banner-to-travel";a:5:{s:4:"file";s:24:"restaurante1-908x581.jpg";s:5:"width";i:908;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:127082;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:24:"restaurante1-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27589;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:24:"restaurante1-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44518;}s:9:"fashion-1";a:5:{s:4:"file";s:24:"restaurante1-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:53491;}s:9:"fashion-2";a:5:{s:4:"file";s:24:"restaurante1-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55775;}s:9:"fashion-3";a:5:{s:4:"file";s:24:"restaurante1-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36449;}s:9:"fashion-4";a:5:{s:4:"file";s:24:"restaurante1-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38267;}s:13:"imagem-astral";a:5:{s:4:"file";s:24:"restaurante1-376x564.jpg";s:5:"width";i:376;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:67054;}s:17:"carrossel-viagens";a:5:{s:4:"file";s:24:"restaurante1-585x712.jpg";s:5:"width";i:585;s:6:"height";i:712;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:120692;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1832, 306, '_wp_attached_file', '2023/04/restaurante2.jpg'),
(1833, 306, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:585;s:6:"height";i:712;s:4:"file";s:24:"2023/04/restaurante2.jpg";s:8:"filesize";i:100545;s:5:"sizes";a:14:{s:6:"medium";a:5:{s:4:"file";s:24:"restaurante2-246x300.jpg";s:5:"width";i:246;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24065;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"restaurante2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9423;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:24:"restaurante2-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:45370;}s:10:"capa-viaje";a:5:{s:4:"file";s:24:"restaurante2-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40295;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:24:"restaurante2-585x692.jpg";s:5:"width";i:585;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:99876;}s:11:"capa-padrao";a:5:{s:4:"file";s:24:"restaurante2-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:47770;}s:16:"banner-to-travel";a:5:{s:4:"file";s:24:"restaurante2-585x581.jpg";s:5:"width";i:585;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:85785;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:24:"restaurante2-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25447;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:24:"restaurante2-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:37243;}s:9:"fashion-1";a:5:{s:4:"file";s:24:"restaurante2-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44785;}s:9:"fashion-2";a:5:{s:4:"file";s:24:"restaurante2-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:46644;}s:9:"fashion-3";a:5:{s:4:"file";s:24:"restaurante2-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29884;}s:9:"fashion-4";a:5:{s:4:"file";s:24:"restaurante2-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31611;}s:13:"imagem-astral";a:5:{s:4:"file";s:24:"restaurante2-376x564.jpg";s:5:"width";i:376;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55843;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1834, 307, '_wp_attached_file', '2023/04/restaurante3.jpg'),
(1835, 307, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:908;s:6:"height";i:1210;s:4:"file";s:24:"2023/04/restaurante3.jpg";s:8:"filesize";i:244288;s:5:"sizes";a:18:{s:6:"medium";a:5:{s:4:"file";s:24:"restaurante3-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19863;}s:5:"large";a:5:{s:4:"file";s:25:"restaurante3-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:158280;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"restaurante3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8442;}s:12:"medium_large";a:5:{s:4:"file";s:25:"restaurante3-768x1023.jpg";s:5:"width";i:768;s:6:"height";i:1023;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:158123;}s:9:"carrossel";a:5:{s:4:"file";s:24:"restaurante3-908x794.jpg";s:5:"width";i:908;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:156867;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:24:"restaurante3-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38792;}s:10:"capa-viaje";a:5:{s:4:"file";s:24:"restaurante3-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35094;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:24:"restaurante3-908x692.jpg";s:5:"width";i:908;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136800;}s:11:"capa-padrao";a:5:{s:4:"file";s:24:"restaurante3-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41333;}s:16:"banner-to-travel";a:5:{s:4:"file";s:24:"restaurante3-908x581.jpg";s:5:"width";i:908;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:115670;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:24:"restaurante3-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21082;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:24:"restaurante3-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:32235;}s:9:"fashion-1";a:5:{s:4:"file";s:24:"restaurante3-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:39025;}s:9:"fashion-2";a:5:{s:4:"file";s:24:"restaurante3-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40695;}s:9:"fashion-3";a:5:{s:4:"file";s:24:"restaurante3-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25950;}s:9:"fashion-4";a:5:{s:4:"file";s:24:"restaurante3-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27796;}s:13:"imagem-astral";a:5:{s:4:"file";s:24:"restaurante3-376x564.jpg";s:5:"width";i:376;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:48227;}s:17:"carrossel-viagens";a:5:{s:4:"file";s:24:"restaurante3-585x712.jpg";s:5:"width";i:585;s:6:"height";i:712;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:91329;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1836, 308, '_wp_attached_file', '2023/04/restaurante4.jpg'),
(1837, 308, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:908;s:6:"height";i:1210;s:4:"file";s:24:"2023/04/restaurante4.jpg";s:8:"filesize";i:205925;s:5:"sizes";a:18:{s:6:"medium";a:5:{s:4:"file";s:24:"restaurante4-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21027;}s:5:"large";a:5:{s:4:"file";s:25:"restaurante4-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:147214;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"restaurante4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9328;}s:12:"medium_large";a:5:{s:4:"file";s:25:"restaurante4-768x1023.jpg";s:5:"width";i:768;s:6:"height";i:1023;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:146980;}s:9:"carrossel";a:5:{s:4:"file";s:24:"restaurante4-908x794.jpg";s:5:"width";i:908;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:154822;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:24:"restaurante4-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44787;}s:10:"capa-viaje";a:5:{s:4:"file";s:24:"restaurante4-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41877;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:24:"restaurante4-908x692.jpg";s:5:"width";i:908;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:139682;}s:11:"capa-padrao";a:5:{s:4:"file";s:24:"restaurante4-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:47582;}s:16:"banner-to-travel";a:5:{s:4:"file";s:24:"restaurante4-908x581.jpg";s:5:"width";i:908;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:121577;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:24:"restaurante4-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24953;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:24:"restaurante4-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34657;}s:9:"fashion-1";a:5:{s:4:"file";s:24:"restaurante4-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41738;}s:9:"fashion-2";a:5:{s:4:"file";s:24:"restaurante4-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:43144;}s:9:"fashion-3";a:5:{s:4:"file";s:24:"restaurante4-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27866;}s:9:"fashion-4";a:5:{s:4:"file";s:24:"restaurante4-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29576;}s:13:"imagem-astral";a:5:{s:4:"file";s:24:"restaurante4-376x564.jpg";s:5:"width";i:376;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:53046;}s:17:"carrossel-viagens";a:5:{s:4:"file";s:24:"restaurante4-585x712.jpg";s:5:"width";i:585;s:6:"height";i:712;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:89793;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1838, 301, '_wp_page_template', 'post-template-lunch-time-viagens.php'),
(1841, 301, 'imagem_banner_topo', '302'),
(1842, 301, '_imagem_banner_topo', 'field_643ef65c0244c'),
(1843, 301, 'subtitulo_viagens', 'LUNCH TIME'),
(1844, 301, '_subtitulo_viagens', 'field_643ef65c099e4'),
(1845, 301, 'titulo_viagens', 'Gastronomia é um dos meus pilares principais e por isso vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(1846, 301, '_titulo_viagens', 'field_643ef65c0d5d6'),
(1847, 301, 'texto_viagens', '<img class="alignleft size-full wp-image-303" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time1.jpg" alt="" width="400" height="338" />\r\n<h3>BUENOS AIRES</h3>\r\nOs últimos quatro dias de viagem foram em Buenos Aires, aproveitei para conhecer a cidade, ir nos pontos turísticos, comer nos famosos restaurantes da região e passear. Se for nos restaurantes mais famosos, reserve com antecedência, se não não vai comer rs.\r\n\r\nBuenos aires é uma cidade gostosa, bastante jovem, vários barzinhos que após as 21h viram baladinhas com bastante reggaeton e música pop. Sobre os pontos turísticos que visitei segue alguns: Mercado San Telmo e Feira San Telmo, a feira acontece apenas aos domingos, mas vale super a pena, muitas bugigangas, cacarecos e souvenires para trazer para família, já o mercado, para quem é fã de comer, assim como eu, recomendo muito! Vários “quiosques” de diversos restaurantes com uma variedade imensa de comidas e pratos locais, empanadas, cordeiros, carnes, cafés, salgados, doces, de tudo.\r\n\r\n&nbsp;\r\n\r\n<img class="alignleft size-full wp-image-304" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time.jpg" alt="" width="247" height="165" />\r\n\r\nComo vocês sabem, gastronomia é um dos meus pilares, então vamos de review?\r\n\r\nA culinária argentina é descrita como uma mistura cultural de influências mediterrâneas, ela possui um toque caseiro e natural. Tem como pratos principais: Bife de Chorizo · Parrillada · Empanadas · Milanesa argentina.'),
(1848, 301, '_texto_viagens', 'field_643ef68ec56bf'),
(1849, 301, 'lista_viagens_0_titulo', 'Nome do Restaurante'),
(1850, 301, '_lista_viagens_0_titulo', 'field_643ef65c1c0f7'),
(1851, 301, 'lista_viagens_0_descricao', 'Buenos Aires, Argentina'),
(1852, 301, '_lista_viagens_0_descricao', 'field_643ef6c1c56c0'),
(1853, 301, 'lista_viagens_0_link', 'http://outsideco.com.br/site/post-viagens/'),
(1854, 301, '_lista_viagens_0_link', 'field_643ef65c1fe10'),
(1855, 301, 'lista_viagens_0_imagem', '305'),
(1856, 301, '_lista_viagens_0_imagem', 'field_643ef65c239db'),
(1857, 301, 'lista_viagens_1_titulo', 'Nome do Restaurante'),
(1858, 301, '_lista_viagens_1_titulo', 'field_643ef65c1c0f7'),
(1859, 301, 'lista_viagens_1_descricao', 'Buenos Aires, Argentina'),
(1860, 301, '_lista_viagens_1_descricao', 'field_643ef6c1c56c0'),
(1861, 301, 'lista_viagens_1_link', 'http://outsideco.com.br/site/post-viagens/'),
(1862, 301, '_lista_viagens_1_link', 'field_643ef65c1fe10'),
(1863, 301, 'lista_viagens_1_imagem', '306'),
(1864, 301, '_lista_viagens_1_imagem', 'field_643ef65c239db'),
(1865, 301, 'lista_viagens_2_titulo', 'Nome do Restaurante'),
(1866, 301, '_lista_viagens_2_titulo', 'field_643ef65c1c0f7'),
(1867, 301, 'lista_viagens_2_descricao', 'Buenos Aires, Argentina') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1868, 301, '_lista_viagens_2_descricao', 'field_643ef6c1c56c0'),
(1869, 301, 'lista_viagens_2_link', 'http://outsideco.com.br/site/post-viagens/'),
(1870, 301, '_lista_viagens_2_link', 'field_643ef65c1fe10'),
(1871, 301, 'lista_viagens_2_imagem', '307'),
(1872, 301, '_lista_viagens_2_imagem', 'field_643ef65c239db'),
(1873, 301, 'lista_viagens_3_titulo', 'Nome do Restaurante'),
(1874, 301, '_lista_viagens_3_titulo', 'field_643ef65c1c0f7'),
(1875, 301, 'lista_viagens_3_descricao', 'Buenos Aires, Argentina'),
(1876, 301, '_lista_viagens_3_descricao', 'field_643ef6c1c56c0'),
(1877, 301, 'lista_viagens_3_link', 'http://outsideco.com.br/site/post-viagens/'),
(1878, 301, '_lista_viagens_3_link', 'field_643ef65c1fe10'),
(1879, 301, 'lista_viagens_3_imagem', '308'),
(1880, 301, '_lista_viagens_3_imagem', 'field_643ef65c239db'),
(1881, 301, 'lista_viagens', '4'),
(1882, 301, '_lista_viagens', 'field_643ef65c10fc1'),
(1883, 309, 'imagem_banner_topo', '302'),
(1884, 309, '_imagem_banner_topo', 'field_643ef65c0244c'),
(1885, 309, 'subtitulo_viagens', 'LUNCH TIME'),
(1886, 309, '_subtitulo_viagens', 'field_643ef65c099e4'),
(1887, 309, 'titulo_viagens', 'Gastronomia é um dos meus pilares principais e por isso vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(1888, 309, '_titulo_viagens', 'field_643ef65c0d5d6'),
(1889, 309, 'texto_viagens', '<img class="alignleft size-full wp-image-303" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time1.jpg" alt="" width="400" height="338" />\r\n<h3>BUENOS AIRES</h3>\r\nOs últimos quatro dias de viagem foram em Buenos Aires, aproveitei para conhecer a cidade, ir nos pontos turísticos, comer nos famosos restaurantes da região e passear. Se for nos restaurantes mais famosos, reserve com antecedência, se não não vai comer rs.\r\n\r\nBuenos aires é uma cidade gostosa, bastante jovem, vários barzinhos que após as 21h viram baladinhas com bastante reggaeton e música pop. Sobre os pontos turísticos que visitei segue alguns: Mercado San Telmo e Feira San Telmo, a feira acontece apenas aos domingos, mas vale super a pena, muitas bugigangas, cacarecos e souvenires para trazer para família, já o mercado, para quem é fã de comer, assim como eu, recomendo muito! Vários “quiosques” de diversos restaurantes com uma variedade imensa de comidas e pratos locais, empanadas, cordeiros, carnes, cafés, salgados, doces, de tudo.\r\n<img class="alignleft size-full wp-image-304" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time.jpg" alt="" width="247" height="165" />\r\nComo vocês sabem, gastronomia é um dos meus pilares, então vamos de review?\r\n\r\nA culinária argentina é descrita como uma mistura cultural de influências mediterrâneas, ela possui um toque caseiro e natural. Tem como pratos principais: Bife de Chorizo · Parrillada · Empanadas · Milanesa argentina.'),
(1890, 309, '_texto_viagens', 'field_643ef68ec56bf'),
(1891, 309, 'lista_viagens_0_titulo', 'Nome do Restaurante'),
(1892, 309, '_lista_viagens_0_titulo', 'field_643ef65c1c0f7'),
(1893, 309, 'lista_viagens_0_descricao', 'Buenos Aires, Argentina'),
(1894, 309, '_lista_viagens_0_descricao', 'field_643ef6c1c56c0'),
(1895, 309, 'lista_viagens_0_link', 'http://outsideco.com.br/site/post-viagens/'),
(1896, 309, '_lista_viagens_0_link', 'field_643ef65c1fe10'),
(1897, 309, 'lista_viagens_0_imagem', '305'),
(1898, 309, '_lista_viagens_0_imagem', 'field_643ef65c239db'),
(1899, 309, 'lista_viagens_1_titulo', 'Nome do Restaurante'),
(1900, 309, '_lista_viagens_1_titulo', 'field_643ef65c1c0f7'),
(1901, 309, 'lista_viagens_1_descricao', 'Buenos Aires, Argentina'),
(1902, 309, '_lista_viagens_1_descricao', 'field_643ef6c1c56c0'),
(1903, 309, 'lista_viagens_1_link', 'http://outsideco.com.br/site/post-viagens/'),
(1904, 309, '_lista_viagens_1_link', 'field_643ef65c1fe10'),
(1905, 309, 'lista_viagens_1_imagem', '306'),
(1906, 309, '_lista_viagens_1_imagem', 'field_643ef65c239db'),
(1907, 309, 'lista_viagens_2_titulo', 'Nome do Restaurante'),
(1908, 309, '_lista_viagens_2_titulo', 'field_643ef65c1c0f7'),
(1909, 309, 'lista_viagens_2_descricao', 'Buenos Aires, Argentina'),
(1910, 309, '_lista_viagens_2_descricao', 'field_643ef6c1c56c0'),
(1911, 309, 'lista_viagens_2_link', 'http://outsideco.com.br/site/post-viagens/'),
(1912, 309, '_lista_viagens_2_link', 'field_643ef65c1fe10'),
(1913, 309, 'lista_viagens_2_imagem', '307'),
(1914, 309, '_lista_viagens_2_imagem', 'field_643ef65c239db'),
(1915, 309, 'lista_viagens_3_titulo', 'Nome do Restaurante'),
(1916, 309, '_lista_viagens_3_titulo', 'field_643ef65c1c0f7'),
(1917, 309, 'lista_viagens_3_descricao', 'Buenos Aires, Argentina'),
(1918, 309, '_lista_viagens_3_descricao', 'field_643ef6c1c56c0'),
(1919, 309, 'lista_viagens_3_link', 'http://outsideco.com.br/site/post-viagens/'),
(1920, 309, '_lista_viagens_3_link', 'field_643ef65c1fe10'),
(1921, 309, 'lista_viagens_3_imagem', '308'),
(1922, 309, '_lista_viagens_3_imagem', 'field_643ef65c239db'),
(1923, 309, 'lista_viagens', '4'),
(1924, 309, '_lista_viagens', 'field_643ef65c10fc1'),
(1927, 310, 'imagem_banner_topo', '302'),
(1928, 310, '_imagem_banner_topo', 'field_643ef65c0244c'),
(1929, 310, 'subtitulo_viagens', 'LUNCH TIME'),
(1930, 310, '_subtitulo_viagens', 'field_643ef65c099e4'),
(1931, 310, 'titulo_viagens', 'Gastronomia é um dos meus pilares principais e por isso vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(1932, 310, '_titulo_viagens', 'field_643ef65c0d5d6'),
(1933, 310, 'texto_viagens', '<img class="alignleft size-full wp-image-303" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time1.jpg" alt="" width="400" height="338" />\r\n<h3>BUENOS AIRES</h3>\r\nOs últimos quatro dias de viagem foram em Buenos Aires, aproveitei para conhecer a cidade, ir nos pontos turísticos, comer nos famosos restaurantes da região e passear. Se for nos restaurantes mais famosos, reserve com antecedência, se não não vai comer rs.\r\n\r\nBuenos aires é uma cidade gostosa, bastante jovem, vários barzinhos que após as 21h viram baladinhas com bastante reggaeton e música pop. Sobre os pontos turísticos que visitei segue alguns: Mercado San Telmo e Feira San Telmo, a feira acontece apenas aos domingos, mas vale super a pena, muitas bugigangas, cacarecos e souvenires para trazer para família, já o mercado, para quem é fã de comer, assim como eu, recomendo muito! Vários “quiosques” de diversos restaurantes com uma variedade imensa de comidas e pratos locais, empanadas, cordeiros, carnes, cafés, salgados, doces, de tudo.\r\n<img class="alignleft size-full wp-image-304" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time.jpg" alt="" width="247" height="165" />\r\n\r\nComo vocês sabem, gastronomia é um dos meus pilares, então vamos de review?\r\n\r\nA culinária argentina é descrita como uma mistura cultural de influências mediterrâneas, ela possui um toque caseiro e natural. Tem como pratos principais: Bife de Chorizo · Parrillada · Empanadas · Milanesa argentina.'),
(1934, 310, '_texto_viagens', 'field_643ef68ec56bf'),
(1935, 310, 'lista_viagens_0_titulo', 'Nome do Restaurante'),
(1936, 310, '_lista_viagens_0_titulo', 'field_643ef65c1c0f7'),
(1937, 310, 'lista_viagens_0_descricao', 'Buenos Aires, Argentina'),
(1938, 310, '_lista_viagens_0_descricao', 'field_643ef6c1c56c0'),
(1939, 310, 'lista_viagens_0_link', 'http://outsideco.com.br/site/post-viagens/'),
(1940, 310, '_lista_viagens_0_link', 'field_643ef65c1fe10'),
(1941, 310, 'lista_viagens_0_imagem', '305'),
(1942, 310, '_lista_viagens_0_imagem', 'field_643ef65c239db'),
(1943, 310, 'lista_viagens_1_titulo', 'Nome do Restaurante'),
(1944, 310, '_lista_viagens_1_titulo', 'field_643ef65c1c0f7'),
(1945, 310, 'lista_viagens_1_descricao', 'Buenos Aires, Argentina'),
(1946, 310, '_lista_viagens_1_descricao', 'field_643ef6c1c56c0'),
(1947, 310, 'lista_viagens_1_link', 'http://outsideco.com.br/site/post-viagens/'),
(1948, 310, '_lista_viagens_1_link', 'field_643ef65c1fe10'),
(1949, 310, 'lista_viagens_1_imagem', '306'),
(1950, 310, '_lista_viagens_1_imagem', 'field_643ef65c239db'),
(1951, 310, 'lista_viagens_2_titulo', 'Nome do Restaurante'),
(1952, 310, '_lista_viagens_2_titulo', 'field_643ef65c1c0f7'),
(1953, 310, 'lista_viagens_2_descricao', 'Buenos Aires, Argentina'),
(1954, 310, '_lista_viagens_2_descricao', 'field_643ef6c1c56c0'),
(1955, 310, 'lista_viagens_2_link', 'http://outsideco.com.br/site/post-viagens/'),
(1956, 310, '_lista_viagens_2_link', 'field_643ef65c1fe10'),
(1957, 310, 'lista_viagens_2_imagem', '307'),
(1958, 310, '_lista_viagens_2_imagem', 'field_643ef65c239db'),
(1959, 310, 'lista_viagens_3_titulo', 'Nome do Restaurante'),
(1960, 310, '_lista_viagens_3_titulo', 'field_643ef65c1c0f7'),
(1961, 310, 'lista_viagens_3_descricao', 'Buenos Aires, Argentina'),
(1962, 310, '_lista_viagens_3_descricao', 'field_643ef6c1c56c0'),
(1963, 310, 'lista_viagens_3_link', 'http://outsideco.com.br/site/post-viagens/'),
(1964, 310, '_lista_viagens_3_link', 'field_643ef65c1fe10'),
(1965, 310, 'lista_viagens_3_imagem', '308'),
(1966, 310, '_lista_viagens_3_imagem', 'field_643ef65c239db'),
(1967, 310, 'lista_viagens', '4'),
(1968, 310, '_lista_viagens', 'field_643ef65c10fc1'),
(1971, 311, 'imagem_banner_topo', '302') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1972, 311, '_imagem_banner_topo', 'field_643ef65c0244c'),
(1973, 311, 'subtitulo_viagens', 'LUNCH TIME'),
(1974, 311, '_subtitulo_viagens', 'field_643ef65c099e4'),
(1975, 311, 'titulo_viagens', 'Gastronomia é um dos meus pilares principais e por isso vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(1976, 311, '_titulo_viagens', 'field_643ef65c0d5d6'),
(1977, 311, 'texto_viagens', '<img class="alignleft size-full wp-image-303" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time1.jpg" alt="" width="400" height="338" />\r\n<h3>BUENOS AIRES</h3>\r\nOs últimos quatro dias de viagem foram em Buenos Aires, aproveitei para conhecer a cidade, ir nos pontos turísticos, comer nos famosos restaurantes da região e passear. Se for nos restaurantes mais famosos, reserve com antecedência, se não não vai comer rs.\r\n\r\nBuenos aires é uma cidade gostosa, bastante jovem, vários barzinhos que após as 21h viram baladinhas com bastante reggaeton e música pop. Sobre os pontos turísticos que visitei segue alguns: Mercado San Telmo e Feira San Telmo, a feira acontece apenas aos domingos, mas vale super a pena, muitas bugigangas, cacarecos e souvenires para trazer para família, já o mercado, para quem é fã de comer, assim como eu, recomendo muito! Vários “quiosques” de diversos restaurantes com uma variedade imensa de comidas e pratos locais, empanadas, cordeiros, carnes, cafés, salgados, doces, de tudo.\r\n\r\n<img class="alignleft size-full wp-image-304" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time.jpg" alt="" width="247" height="165" />\r\n\r\nComo vocês sabem, gastronomia é um dos meus pilares, então vamos de review?\r\n\r\nA culinária argentina é descrita como uma mistura cultural de influências mediterrâneas, ela possui um toque caseiro e natural. Tem como pratos principais: Bife de Chorizo · Parrillada · Empanadas · Milanesa argentina.'),
(1978, 311, '_texto_viagens', 'field_643ef68ec56bf'),
(1979, 311, 'lista_viagens_0_titulo', 'Nome do Restaurante'),
(1980, 311, '_lista_viagens_0_titulo', 'field_643ef65c1c0f7'),
(1981, 311, 'lista_viagens_0_descricao', 'Buenos Aires, Argentina'),
(1982, 311, '_lista_viagens_0_descricao', 'field_643ef6c1c56c0'),
(1983, 311, 'lista_viagens_0_link', 'http://outsideco.com.br/site/post-viagens/'),
(1984, 311, '_lista_viagens_0_link', 'field_643ef65c1fe10'),
(1985, 311, 'lista_viagens_0_imagem', '305'),
(1986, 311, '_lista_viagens_0_imagem', 'field_643ef65c239db'),
(1987, 311, 'lista_viagens_1_titulo', 'Nome do Restaurante'),
(1988, 311, '_lista_viagens_1_titulo', 'field_643ef65c1c0f7'),
(1989, 311, 'lista_viagens_1_descricao', 'Buenos Aires, Argentina'),
(1990, 311, '_lista_viagens_1_descricao', 'field_643ef6c1c56c0'),
(1991, 311, 'lista_viagens_1_link', 'http://outsideco.com.br/site/post-viagens/'),
(1992, 311, '_lista_viagens_1_link', 'field_643ef65c1fe10'),
(1993, 311, 'lista_viagens_1_imagem', '306'),
(1994, 311, '_lista_viagens_1_imagem', 'field_643ef65c239db'),
(1995, 311, 'lista_viagens_2_titulo', 'Nome do Restaurante'),
(1996, 311, '_lista_viagens_2_titulo', 'field_643ef65c1c0f7'),
(1997, 311, 'lista_viagens_2_descricao', 'Buenos Aires, Argentina'),
(1998, 311, '_lista_viagens_2_descricao', 'field_643ef6c1c56c0'),
(1999, 311, 'lista_viagens_2_link', 'http://outsideco.com.br/site/post-viagens/'),
(2000, 311, '_lista_viagens_2_link', 'field_643ef65c1fe10'),
(2001, 311, 'lista_viagens_2_imagem', '307'),
(2002, 311, '_lista_viagens_2_imagem', 'field_643ef65c239db'),
(2003, 311, 'lista_viagens_3_titulo', 'Nome do Restaurante'),
(2004, 311, '_lista_viagens_3_titulo', 'field_643ef65c1c0f7'),
(2005, 311, 'lista_viagens_3_descricao', 'Buenos Aires, Argentina'),
(2006, 311, '_lista_viagens_3_descricao', 'field_643ef6c1c56c0'),
(2007, 311, 'lista_viagens_3_link', 'http://outsideco.com.br/site/post-viagens/'),
(2008, 311, '_lista_viagens_3_link', 'field_643ef65c1fe10'),
(2009, 311, 'lista_viagens_3_imagem', '308'),
(2010, 311, '_lista_viagens_3_imagem', 'field_643ef65c239db'),
(2011, 311, 'lista_viagens', '4'),
(2012, 311, '_lista_viagens', 'field_643ef65c10fc1'),
(2015, 312, 'imagem_banner_topo', '302'),
(2016, 312, '_imagem_banner_topo', 'field_643ef65c0244c'),
(2017, 312, 'subtitulo_viagens', 'LUNCH TIME'),
(2018, 312, '_subtitulo_viagens', 'field_643ef65c099e4'),
(2019, 312, 'titulo_viagens', 'Gastronomia é um dos meus pilares principais e por isso vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(2020, 312, '_titulo_viagens', 'field_643ef65c0d5d6'),
(2021, 312, 'texto_viagens', '<img class="alignleft size-full wp-image-303" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time1.jpg" alt="" width="400" height="338" />\r\n<h3>BUENOS AIRES</h3>\r\nOs últimos quatro dias de viagem foram em Buenos Aires, aproveitei para conhecer a cidade, ir nos pontos turísticos, comer nos famosos restaurantes da região e passear. Se for nos restaurantes mais famosos, reserve com antecedência, se não não vai comer rs.\r\n\r\nBuenos aires é uma cidade gostosa, bastante jovem, vários barzinhos que após as 21h viram baladinhas com bastante reggaeton e música pop. Sobre os pontos turísticos que visitei segue alguns: Mercado San Telmo e Feira San Telmo, a feira acontece apenas aos domingos, mas vale super a pena, muitas bugigangas, cacarecos e souvenires para trazer para família, já o mercado, para quem é fã de comer, assim como eu, recomendo muito! Vários “quiosques” de diversos restaurantes com uma variedade imensa de comidas e pratos locais, empanadas, cordeiros, carnes, cafés, salgados, doces, de tudo.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class="alignleft size-full wp-image-304" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time.jpg" alt="" width="247" height="165" />\r\n\r\nComo vocês sabem, gastronomia é um dos meus pilares, então vamos de review?\r\n\r\nA culinária argentina é descrita como uma mistura cultural de influências mediterrâneas, ela possui um toque caseiro e natural. Tem como pratos principais: Bife de Chorizo · Parrillada · Empanadas · Milanesa argentina.'),
(2022, 312, '_texto_viagens', 'field_643ef68ec56bf'),
(2023, 312, 'lista_viagens_0_titulo', 'Nome do Restaurante'),
(2024, 312, '_lista_viagens_0_titulo', 'field_643ef65c1c0f7'),
(2025, 312, 'lista_viagens_0_descricao', 'Buenos Aires, Argentina'),
(2026, 312, '_lista_viagens_0_descricao', 'field_643ef6c1c56c0'),
(2027, 312, 'lista_viagens_0_link', 'http://outsideco.com.br/site/post-viagens/'),
(2028, 312, '_lista_viagens_0_link', 'field_643ef65c1fe10'),
(2029, 312, 'lista_viagens_0_imagem', '305'),
(2030, 312, '_lista_viagens_0_imagem', 'field_643ef65c239db'),
(2031, 312, 'lista_viagens_1_titulo', 'Nome do Restaurante'),
(2032, 312, '_lista_viagens_1_titulo', 'field_643ef65c1c0f7'),
(2033, 312, 'lista_viagens_1_descricao', 'Buenos Aires, Argentina'),
(2034, 312, '_lista_viagens_1_descricao', 'field_643ef6c1c56c0'),
(2035, 312, 'lista_viagens_1_link', 'http://outsideco.com.br/site/post-viagens/'),
(2036, 312, '_lista_viagens_1_link', 'field_643ef65c1fe10'),
(2037, 312, 'lista_viagens_1_imagem', '306'),
(2038, 312, '_lista_viagens_1_imagem', 'field_643ef65c239db'),
(2039, 312, 'lista_viagens_2_titulo', 'Nome do Restaurante'),
(2040, 312, '_lista_viagens_2_titulo', 'field_643ef65c1c0f7'),
(2041, 312, 'lista_viagens_2_descricao', 'Buenos Aires, Argentina'),
(2042, 312, '_lista_viagens_2_descricao', 'field_643ef6c1c56c0'),
(2043, 312, 'lista_viagens_2_link', 'http://outsideco.com.br/site/post-viagens/'),
(2044, 312, '_lista_viagens_2_link', 'field_643ef65c1fe10'),
(2045, 312, 'lista_viagens_2_imagem', '307'),
(2046, 312, '_lista_viagens_2_imagem', 'field_643ef65c239db'),
(2047, 312, 'lista_viagens_3_titulo', 'Nome do Restaurante'),
(2048, 312, '_lista_viagens_3_titulo', 'field_643ef65c1c0f7'),
(2049, 312, 'lista_viagens_3_descricao', 'Buenos Aires, Argentina'),
(2050, 312, '_lista_viagens_3_descricao', 'field_643ef6c1c56c0'),
(2051, 312, 'lista_viagens_3_link', 'http://outsideco.com.br/site/post-viagens/'),
(2052, 312, '_lista_viagens_3_link', 'field_643ef65c1fe10'),
(2053, 312, 'lista_viagens_3_imagem', '308'),
(2054, 312, '_lista_viagens_3_imagem', 'field_643ef65c239db'),
(2055, 312, 'lista_viagens', '4'),
(2056, 312, '_lista_viagens', 'field_643ef65c10fc1'),
(2059, 313, 'imagem_banner_topo', '302'),
(2060, 313, '_imagem_banner_topo', 'field_643ef65c0244c'),
(2061, 313, 'subtitulo_viagens', 'LUNCH TIME'),
(2062, 313, '_subtitulo_viagens', 'field_643ef65c099e4'),
(2063, 313, 'titulo_viagens', 'Gastronomia é um dos meus pilares principais e por isso vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(2064, 313, '_titulo_viagens', 'field_643ef65c0d5d6'),
(2065, 313, 'texto_viagens', '<img class="alignleft size-full wp-image-303" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time1.jpg" alt="" width="400" height="338" />\r\n<h3>BUENOS AIRES</h3>\r\nOs últimos quatro dias de viagem foram em Buenos Aires, aproveitei para conhecer a cidade, ir nos pontos turísticos, comer nos famosos restaurantes da região e passear. Se for nos restaurantes mais famosos, reserve com antecedência, se não não vai comer rs.\r\n\r\nBuenos aires é uma cidade gostosa, bastante jovem, vários barzinhos que após as 21h viram baladinhas com bastante reggaeton e música pop. Sobre os pontos turísticos que visitei segue alguns: Mercado San Telmo e Feira San Telmo, a feira acontece apenas aos domingos, mas vale super a pena, muitas bugigangas, cacarecos e souvenires para trazer para família, já o mercado, para quem é fã de comer, assim como eu, recomendo muito! Vários “quiosques” de diversos restaurantes com uma variedade imensa de comidas e pratos locais, empanadas, cordeiros, carnes, cafés, salgados, doces, de tudo.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class="alignleft size-full wp-image-304" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time.jpg" alt="" width="247" height="165" />\r\n\r\nComo vocês sabem, gastronomia é um dos meus pilares, então vamos de review?\r\n\r\nA culinária argentina é descrita como uma mistura cultural de influências mediterrâneas, ela possui um toque caseiro e natural. Tem como pratos principais: Bife de Chorizo · Parrillada · Empanadas · Milanesa argentina.'),
(2066, 313, '_texto_viagens', 'field_643ef68ec56bf'),
(2067, 313, 'lista_viagens_0_titulo', 'Nome do Restaurante'),
(2068, 313, '_lista_viagens_0_titulo', 'field_643ef65c1c0f7'),
(2069, 313, 'lista_viagens_0_descricao', 'Buenos Aires, Argentina'),
(2070, 313, '_lista_viagens_0_descricao', 'field_643ef6c1c56c0'),
(2071, 313, 'lista_viagens_0_link', 'http://outsideco.com.br/site/post-viagens/'),
(2072, 313, '_lista_viagens_0_link', 'field_643ef65c1fe10'),
(2073, 313, 'lista_viagens_0_imagem', '305'),
(2074, 313, '_lista_viagens_0_imagem', 'field_643ef65c239db'),
(2075, 313, 'lista_viagens_1_titulo', 'Nome do Restaurante') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2076, 313, '_lista_viagens_1_titulo', 'field_643ef65c1c0f7'),
(2077, 313, 'lista_viagens_1_descricao', 'Buenos Aires, Argentina'),
(2078, 313, '_lista_viagens_1_descricao', 'field_643ef6c1c56c0'),
(2079, 313, 'lista_viagens_1_link', 'http://outsideco.com.br/site/post-viagens/'),
(2080, 313, '_lista_viagens_1_link', 'field_643ef65c1fe10'),
(2081, 313, 'lista_viagens_1_imagem', '306'),
(2082, 313, '_lista_viagens_1_imagem', 'field_643ef65c239db'),
(2083, 313, 'lista_viagens_2_titulo', 'Nome do Restaurante'),
(2084, 313, '_lista_viagens_2_titulo', 'field_643ef65c1c0f7'),
(2085, 313, 'lista_viagens_2_descricao', 'Buenos Aires, Argentina'),
(2086, 313, '_lista_viagens_2_descricao', 'field_643ef6c1c56c0'),
(2087, 313, 'lista_viagens_2_link', 'http://outsideco.com.br/site/post-viagens/'),
(2088, 313, '_lista_viagens_2_link', 'field_643ef65c1fe10'),
(2089, 313, 'lista_viagens_2_imagem', '307'),
(2090, 313, '_lista_viagens_2_imagem', 'field_643ef65c239db'),
(2091, 313, 'lista_viagens_3_titulo', 'Nome do Restaurante'),
(2092, 313, '_lista_viagens_3_titulo', 'field_643ef65c1c0f7'),
(2093, 313, 'lista_viagens_3_descricao', 'Buenos Aires, Argentina'),
(2094, 313, '_lista_viagens_3_descricao', 'field_643ef6c1c56c0'),
(2095, 313, 'lista_viagens_3_link', 'http://outsideco.com.br/site/post-viagens/'),
(2096, 313, '_lista_viagens_3_link', 'field_643ef65c1fe10'),
(2097, 313, 'lista_viagens_3_imagem', '308'),
(2098, 313, '_lista_viagens_3_imagem', 'field_643ef65c239db'),
(2099, 313, 'lista_viagens', '4'),
(2100, 313, '_lista_viagens', 'field_643ef65c10fc1'),
(2103, 314, 'imagem_banner_topo', '302'),
(2104, 314, '_imagem_banner_topo', 'field_643ef65c0244c'),
(2105, 314, 'subtitulo_viagens', 'LUNCH TIME'),
(2106, 314, '_subtitulo_viagens', 'field_643ef65c099e4'),
(2107, 314, 'titulo_viagens', 'Gastronomia é um dos meus pilares principais e por isso vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(2108, 314, '_titulo_viagens', 'field_643ef65c0d5d6'),
(2109, 314, 'texto_viagens', '<img class="alignleft size-full wp-image-303" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time1.jpg" alt="" width="400" height="338" />\r\n<h3>BUENOS AIRES</h3>\r\nOs últimos quatro dias de viagem foram em Buenos Aires, aproveitei para conhecer a cidade, ir nos pontos turísticos, comer nos famosos restaurantes da região e passear. Se for nos restaurantes mais famosos, reserve com antecedência, se não não vai comer rs.\r\n\r\nBuenos aires é uma cidade gostosa, bastante jovem, vários barzinhos que após as 21h viram baladinhas com bastante reggaeton e música pop. Sobre os pontos turísticos que visitei segue alguns: Mercado San Telmo e Feira San Telmo, a feira acontece apenas aos domingos, mas vale super a pena, muitas bugigangas, cacarecos e souvenires para trazer para família, já o mercado, para quem é fã de comer, assim como eu, recomendo muito! Vários “quiosques” de diversos restaurantes com uma variedade imensa de comidas e pratos locais, empanadas, cordeiros, carnes, cafés, salgados, doces, de tudo.\r\n\r\n&nbsp;\r\n\r\n<img class="alignleft size-full wp-image-304" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time.jpg" alt="" width="247" height="165" />\r\n\r\nComo vocês sabem, gastronomia é um dos meus pilares, então vamos de review?\r\n\r\nA culinária argentina é descrita como uma mistura cultural de influências mediterrâneas, ela possui um toque caseiro e natural. Tem como pratos principais: Bife de Chorizo · Parrillada · Empanadas · Milanesa argentina.'),
(2110, 314, '_texto_viagens', 'field_643ef68ec56bf'),
(2111, 314, 'lista_viagens_0_titulo', 'Nome do Restaurante'),
(2112, 314, '_lista_viagens_0_titulo', 'field_643ef65c1c0f7'),
(2113, 314, 'lista_viagens_0_descricao', 'Buenos Aires, Argentina'),
(2114, 314, '_lista_viagens_0_descricao', 'field_643ef6c1c56c0'),
(2115, 314, 'lista_viagens_0_link', 'http://outsideco.com.br/site/post-viagens/'),
(2116, 314, '_lista_viagens_0_link', 'field_643ef65c1fe10'),
(2117, 314, 'lista_viagens_0_imagem', '305'),
(2118, 314, '_lista_viagens_0_imagem', 'field_643ef65c239db'),
(2119, 314, 'lista_viagens_1_titulo', 'Nome do Restaurante'),
(2120, 314, '_lista_viagens_1_titulo', 'field_643ef65c1c0f7'),
(2121, 314, 'lista_viagens_1_descricao', 'Buenos Aires, Argentina'),
(2122, 314, '_lista_viagens_1_descricao', 'field_643ef6c1c56c0'),
(2123, 314, 'lista_viagens_1_link', 'http://outsideco.com.br/site/post-viagens/'),
(2124, 314, '_lista_viagens_1_link', 'field_643ef65c1fe10'),
(2125, 314, 'lista_viagens_1_imagem', '306'),
(2126, 314, '_lista_viagens_1_imagem', 'field_643ef65c239db'),
(2127, 314, 'lista_viagens_2_titulo', 'Nome do Restaurante'),
(2128, 314, '_lista_viagens_2_titulo', 'field_643ef65c1c0f7'),
(2129, 314, 'lista_viagens_2_descricao', 'Buenos Aires, Argentina'),
(2130, 314, '_lista_viagens_2_descricao', 'field_643ef6c1c56c0'),
(2131, 314, 'lista_viagens_2_link', 'http://outsideco.com.br/site/post-viagens/'),
(2132, 314, '_lista_viagens_2_link', 'field_643ef65c1fe10'),
(2133, 314, 'lista_viagens_2_imagem', '307'),
(2134, 314, '_lista_viagens_2_imagem', 'field_643ef65c239db'),
(2135, 314, 'lista_viagens_3_titulo', 'Nome do Restaurante'),
(2136, 314, '_lista_viagens_3_titulo', 'field_643ef65c1c0f7'),
(2137, 314, 'lista_viagens_3_descricao', 'Buenos Aires, Argentina'),
(2138, 314, '_lista_viagens_3_descricao', 'field_643ef6c1c56c0'),
(2139, 314, 'lista_viagens_3_link', 'http://outsideco.com.br/site/post-viagens/'),
(2140, 314, '_lista_viagens_3_link', 'field_643ef65c1fe10'),
(2141, 314, 'lista_viagens_3_imagem', '308'),
(2142, 314, '_lista_viagens_3_imagem', 'field_643ef65c239db'),
(2143, 314, 'lista_viagens', '4'),
(2144, 314, '_lista_viagens', 'field_643ef65c10fc1'),
(2147, 164, 'titulo', 'ABOUT'),
(2148, 164, '_titulo', 'field_643d5c5478992'),
(2149, 315, 'titulo', 'ABOUT'),
(2150, 315, '_titulo', 'field_643d5c5478992'),
(2151, 316, '_edit_lock', '1681850034:1'),
(2152, 316, '_edit_last', '1'),
(2153, 329, '_wp_attached_file', '2023/04/restaurante5.jpg'),
(2154, 329, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:500;s:6:"height";i:385;s:4:"file";s:24:"2023/04/restaurante5.jpg";s:8:"filesize";i:56869;s:5:"sizes";a:12:{s:6:"medium";a:5:{s:4:"file";s:24:"restaurante5-300x231.jpg";s:5:"width";i:300;s:6:"height";i:231;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23336;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"restaurante5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9314;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:24:"restaurante5-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:49068;}s:10:"capa-viaje";a:5:{s:4:"file";s:24:"restaurante5-500x288.jpg";s:5:"width";i:500;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:42252;}s:11:"capa-padrao";a:5:{s:4:"file";s:24:"restaurante5-500x340.jpg";s:5:"width";i:500;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:50096;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:24:"restaurante5-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25496;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:24:"restaurante5-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33830;}s:9:"fashion-1";a:5:{s:4:"file";s:24:"restaurante5-396x385.jpg";s:5:"width";i:396;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44077;}s:9:"fashion-2";a:5:{s:4:"file";s:24:"restaurante5-402x385.jpg";s:5:"width";i:402;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:43821;}s:9:"fashion-3";a:5:{s:4:"file";s:24:"restaurante5-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26463;}s:9:"fashion-4";a:5:{s:4:"file";s:24:"restaurante5-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27295;}s:13:"imagem-astral";a:5:{s:4:"file";s:24:"restaurante5-376x385.jpg";s:5:"width";i:376;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41416;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2157, 166, 'lista_restaurantes_0_titulo', 'Nome do Restaurante'),
(2158, 166, '_lista_restaurantes_0_titulo', 'field_643efac2641a6'),
(2159, 166, 'lista_restaurantes_0_descricao', 'Buenos Aires, Argentina'),
(2160, 166, '_lista_restaurantes_0_descricao', 'field_643efac267c07'),
(2161, 166, 'lista_restaurantes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(2162, 166, '_lista_restaurantes_0_link', 'field_643efac26b8e7'),
(2163, 166, 'lista_restaurantes_0_imagem', '308'),
(2164, 166, '_lista_restaurantes_0_imagem', 'field_643efac26f289'),
(2165, 166, 'lista_restaurantes_1_titulo', 'Nome do Restaurante'),
(2166, 166, '_lista_restaurantes_1_titulo', 'field_643efac2641a6'),
(2167, 166, 'lista_restaurantes_1_descricao', 'Buenos Aires, Argentina'),
(2168, 166, '_lista_restaurantes_1_descricao', 'field_643efac267c07'),
(2169, 166, 'lista_restaurantes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(2170, 166, '_lista_restaurantes_1_link', 'field_643efac26b8e7'),
(2171, 166, 'lista_restaurantes_1_imagem', '307'),
(2172, 166, '_lista_restaurantes_1_imagem', 'field_643efac26f289'),
(2173, 166, 'lista_restaurantes_2_titulo', 'Nome do Restaurante'),
(2174, 166, '_lista_restaurantes_2_titulo', 'field_643efac2641a6'),
(2175, 166, 'lista_restaurantes_2_descricao', 'Buenos Aires, Argentina'),
(2176, 166, '_lista_restaurantes_2_descricao', 'field_643efac267c07'),
(2177, 166, 'lista_restaurantes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(2178, 166, '_lista_restaurantes_2_link', 'field_643efac26b8e7'),
(2179, 166, 'lista_restaurantes_2_imagem', '306'),
(2180, 166, '_lista_restaurantes_2_imagem', 'field_643efac26f289'),
(2181, 166, 'lista_restaurantes_3_titulo', 'Nome do Restaurante') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2182, 166, '_lista_restaurantes_3_titulo', 'field_643efac2641a6'),
(2183, 166, 'lista_restaurantes_3_descricao', 'Buenos Aires, Argentina'),
(2184, 166, '_lista_restaurantes_3_descricao', 'field_643efac267c07'),
(2185, 166, 'lista_restaurantes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(2186, 166, '_lista_restaurantes_3_link', 'field_643efac26b8e7'),
(2187, 166, 'lista_restaurantes_3_imagem', '305'),
(2188, 166, '_lista_restaurantes_3_imagem', 'field_643efac26f289'),
(2189, 166, 'lista_restaurantes', '4'),
(2190, 166, '_lista_restaurantes', 'field_643efac2587be'),
(2191, 166, 'titulo_restaurantes', 'EL PREFERIDO'),
(2192, 166, '_titulo_restaurantes', 'field_643efac2510d9'),
(2193, 166, 'subtitulo_restaurantes', 'Buenos Aires, Argentina'),
(2194, 166, '_subtitulo_restaurantes', 'field_643efac24d76e'),
(2195, 166, 'texto_restaurantes', '<img class="alignright size-full wp-image-329" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/restaurante5.jpg" alt="" width="500" height="385" />\r\nO Preferido é do mesmo dono do famoso Don Julio, restaurante super gostoso, comida boa, segundo um dos Outsiders, melhor batata frita que ele já comeu. Possui desde carnes, até saladas e massas, tem opção vegetariana e modéstia a parte, preferi bem mais que o Don Julio 🤭.\r\n\r\nAmbiente:⭐️⭐️⭐️⭐️⭐️\r\nComida:⭐️⭐️⭐️⭐️⭐️\r\nPreço:⭐️⭐️\r\nAtendimento:⭐️⭐️⭐️⭐️\r\n\r\nOutside favorite: Milanesa com fritas:\r\n<blockquote>💡 Precisa reservar com antecedência</blockquote>'),
(2196, 166, '_texto_restaurantes', 'field_643efac254d7a'),
(2197, 330, 'lista_restaurantes_0_titulo', 'Nome do Restaurante'),
(2198, 330, '_lista_restaurantes_0_titulo', 'field_643efac2641a6'),
(2199, 330, 'lista_restaurantes_0_descricao', 'Buenos Aires, Argentina'),
(2200, 330, '_lista_restaurantes_0_descricao', 'field_643efac267c07'),
(2201, 330, 'lista_restaurantes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(2202, 330, '_lista_restaurantes_0_link', 'field_643efac26b8e7'),
(2203, 330, 'lista_restaurantes_0_imagem', '308'),
(2204, 330, '_lista_restaurantes_0_imagem', 'field_643efac26f289'),
(2205, 330, 'lista_restaurantes_1_titulo', 'Nome do Restaurante'),
(2206, 330, '_lista_restaurantes_1_titulo', 'field_643efac2641a6'),
(2207, 330, 'lista_restaurantes_1_descricao', 'Buenos Aires, Argentina'),
(2208, 330, '_lista_restaurantes_1_descricao', 'field_643efac267c07'),
(2209, 330, 'lista_restaurantes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(2210, 330, '_lista_restaurantes_1_link', 'field_643efac26b8e7'),
(2211, 330, 'lista_restaurantes_1_imagem', '307'),
(2212, 330, '_lista_restaurantes_1_imagem', 'field_643efac26f289'),
(2213, 330, 'lista_restaurantes_2_titulo', 'Nome do Restaurante'),
(2214, 330, '_lista_restaurantes_2_titulo', 'field_643efac2641a6'),
(2215, 330, 'lista_restaurantes_2_descricao', 'Buenos Aires, Argentina'),
(2216, 330, '_lista_restaurantes_2_descricao', 'field_643efac267c07'),
(2217, 330, 'lista_restaurantes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(2218, 330, '_lista_restaurantes_2_link', 'field_643efac26b8e7'),
(2219, 330, 'lista_restaurantes_2_imagem', '306'),
(2220, 330, '_lista_restaurantes_2_imagem', 'field_643efac26f289'),
(2221, 330, 'lista_restaurantes_3_titulo', 'Nome do Restaurante'),
(2222, 330, '_lista_restaurantes_3_titulo', 'field_643efac2641a6'),
(2223, 330, 'lista_restaurantes_3_descricao', 'Buenos Aires, Argentina'),
(2224, 330, '_lista_restaurantes_3_descricao', 'field_643efac267c07'),
(2225, 330, 'lista_restaurantes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(2226, 330, '_lista_restaurantes_3_link', 'field_643efac26b8e7'),
(2227, 330, 'lista_restaurantes_3_imagem', '305'),
(2228, 330, '_lista_restaurantes_3_imagem', 'field_643efac26f289'),
(2229, 330, 'lista_restaurantes', '4'),
(2230, 330, '_lista_restaurantes', 'field_643efac2587be'),
(2231, 330, 'titulo_restaurantes', 'EL PREFERIDO'),
(2232, 330, '_titulo_restaurantes', 'field_643efac2510d9'),
(2233, 330, 'subtitulo_restaurantes', 'Buenos Aires, Argentina'),
(2234, 330, '_subtitulo_restaurantes', 'field_643efac24d76e'),
(2235, 330, 'texto_restaurantes', '<img class="alignright size-full wp-image-329" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/restaurante5.jpg" alt="" width="500" height="385" />\r\nO Preferido é do mesmo dono do famoso Don Julio, restaurante super gostoso, comida boa, segundo um dos Outsiders, melhor batata frita que ele já comeu. Possui desde carnes, até saladas e massas, tem opção vegetariana e modéstia a parte, preferi bem mais que o Don Julio 🤭.\r\n\r\nAmbiente:⭐️⭐️⭐️⭐️⭐️\r\nComida:⭐️⭐️⭐️⭐️⭐️\r\nPreço:⭐️⭐️\r\nAtendimento:⭐️⭐️⭐️⭐️\r\n\r\nOutside favorite: Milanesa com fritas:\r\n<blockquote>💡 Precisa reservar com antecedência</blockquote>'),
(2236, 330, '_texto_restaurantes', 'field_643efac254d7a'),
(2237, 336, '_wp_attached_file', '2023/04/menu1.jpg'),
(2238, 336, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:300;s:4:"file";s:17:"2023/04/menu1.jpg";s:8:"filesize";i:40866;s:5:"sizes";a:4:{s:9:"thumbnail";a:5:{s:4:"file";s:17:"menu1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12018;}s:10:"capa-viaje";a:5:{s:4:"file";s:17:"menu1-250x288.jpg";s:5:"width";i:250;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38432;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:17:"menu1-250x230.jpg";s:5:"width";i:250;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:32694;}s:11:"menu-footer";a:5:{s:4:"file";s:17:"menu1-250x240.jpg";s:5:"width";i:250;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33522;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2239, 337, '_wp_attached_file', '2023/04/menu2.jpg'),
(2240, 337, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:300;s:4:"file";s:17:"2023/04/menu2.jpg";s:8:"filesize";i:17613;s:5:"sizes";a:4:{s:9:"thumbnail";a:5:{s:4:"file";s:17:"menu2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6277;}s:10:"capa-viaje";a:5:{s:4:"file";s:17:"menu2-250x288.jpg";s:5:"width";i:250;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16150;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:17:"menu2-250x230.jpg";s:5:"width";i:250;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13570;}s:11:"menu-footer";a:5:{s:4:"file";s:17:"menu2-250x240.jpg";s:5:"width";i:250;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13843;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2241, 338, '_wp_attached_file', '2023/04/menu3.jpg'),
(2242, 338, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:300;s:4:"file";s:17:"2023/04/menu3.jpg";s:8:"filesize";i:23787;s:5:"sizes";a:4:{s:9:"thumbnail";a:5:{s:4:"file";s:17:"menu3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8996;}s:10:"capa-viaje";a:5:{s:4:"file";s:17:"menu3-250x288.jpg";s:5:"width";i:250;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22607;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:17:"menu3-250x230.jpg";s:5:"width";i:250;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19578;}s:11:"menu-footer";a:5:{s:4:"file";s:17:"menu3-250x240.jpg";s:5:"width";i:250;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20015;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2243, 339, '_wp_attached_file', '2023/04/menu4.jpg'),
(2244, 339, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:300;s:4:"file";s:17:"2023/04/menu4.jpg";s:8:"filesize";i:18928;s:5:"sizes";a:4:{s:9:"thumbnail";a:5:{s:4:"file";s:17:"menu4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6909;}s:10:"capa-viaje";a:5:{s:4:"file";s:17:"menu4-250x288.jpg";s:5:"width";i:250;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18569;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:17:"menu4-250x230.jpg";s:5:"width";i:250;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14652;}s:11:"menu-footer";a:5:{s:4:"file";s:17:"menu4-250x240.jpg";s:5:"width";i:250;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15172;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2245, 340, '_wp_attached_file', '2023/04/menu4.png'),
(2246, 340, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:270;s:4:"file";s:17:"2023/04/menu4.png";s:8:"filesize";i:107436;s:5:"sizes";a:3:{s:9:"thumbnail";a:5:{s:4:"file";s:17:"menu4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:33292;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:17:"menu4-250x230.png";s:5:"width";i:250;s:6:"height";i:230;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:89488;}s:11:"menu-footer";a:5:{s:4:"file";s:17:"menu4-250x240.png";s:5:"width";i:250;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:93010;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2247, 341, '_wp_attached_file', '2023/04/menu5.jpg'),
(2248, 341, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:300;s:4:"file";s:17:"2023/04/menu5.jpg";s:8:"filesize";i:22279;s:5:"sizes";a:4:{s:9:"thumbnail";a:5:{s:4:"file";s:17:"menu5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8770;}s:10:"capa-viaje";a:5:{s:4:"file";s:17:"menu5-250x288.jpg";s:5:"width";i:250;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21457;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:17:"menu5-250x230.jpg";s:5:"width";i:250;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17704;}s:11:"menu-footer";a:5:{s:4:"file";s:17:"menu5-250x240.jpg";s:5:"width";i:250;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18528;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2249, 342, '_wp_attached_file', '2023/04/menu6.jpg'),
(2250, 342, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:300;s:4:"file";s:17:"2023/04/menu6.jpg";s:8:"filesize";i:31014;s:5:"sizes";a:4:{s:9:"thumbnail";a:5:{s:4:"file";s:17:"menu6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10384;}s:10:"capa-viaje";a:5:{s:4:"file";s:17:"menu6-250x288.jpg";s:5:"width";i:250;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28921;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:17:"menu6-250x230.jpg";s:5:"width";i:250;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22829;}s:11:"menu-footer";a:5:{s:4:"file";s:17:"menu6-250x240.jpg";s:5:"width";i:250;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23759;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2251, 343, '_menu_item_type', 'post_type'),
(2252, 343, '_menu_item_menu_item_parent', '0'),
(2253, 343, '_menu_item_object_id', '9'),
(2254, 343, '_menu_item_object', 'page'),
(2255, 343, '_menu_item_target', ''),
(2256, 343, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2257, 343, '_menu_item_xfn', ''),
(2258, 343, '_menu_item_url', ''),
(2260, 344, '_menu_item_type', 'post_type'),
(2261, 344, '_menu_item_menu_item_parent', '0'),
(2262, 344, '_menu_item_object_id', '57'),
(2263, 344, '_menu_item_object', 'page'),
(2264, 344, '_menu_item_target', ''),
(2265, 344, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2266, 344, '_menu_item_xfn', ''),
(2267, 344, '_menu_item_url', ''),
(2269, 345, '_menu_item_type', 'post_type'),
(2270, 345, '_menu_item_menu_item_parent', '0'),
(2271, 345, '_menu_item_object_id', '68'),
(2272, 345, '_menu_item_object', 'page'),
(2273, 345, '_menu_item_target', ''),
(2274, 345, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2275, 345, '_menu_item_xfn', ''),
(2276, 345, '_menu_item_url', ''),
(2278, 346, '_menu_item_type', 'post_type'),
(2279, 346, '_menu_item_menu_item_parent', '0'),
(2280, 346, '_menu_item_object_id', '70'),
(2281, 346, '_menu_item_object', 'page'),
(2282, 346, '_menu_item_target', ''),
(2283, 346, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2284, 346, '_menu_item_xfn', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2285, 346, '_menu_item_url', ''),
(2287, 347, '_menu_item_type', 'post_type'),
(2288, 347, '_menu_item_menu_item_parent', '0'),
(2289, 347, '_menu_item_object_id', '72'),
(2290, 347, '_menu_item_object', 'page'),
(2291, 347, '_menu_item_target', ''),
(2292, 347, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2293, 347, '_menu_item_xfn', ''),
(2294, 347, '_menu_item_url', ''),
(2298, 349, '_edit_last', '1'),
(2299, 349, '_edit_lock', '1681858504:1'),
(2300, 349, 'titulo', '.'),
(2301, 349, '_titulo', 'field_643d5c5478992'),
(2302, 350, 'titulo', '.'),
(2303, 350, '_titulo', 'field_643d5c5478992'),
(2304, 354, '_edit_last', '1'),
(2305, 354, '_edit_lock', '1681857003:1'),
(2308, 166, 'descricao', 'Nome do Restaurante'),
(2309, 166, '_descricao', 'field_643f1948b586c'),
(2310, 166, 'imagem', '308'),
(2311, 166, '_imagem', 'field_643f196ab586d'),
(2312, 358, 'lista_restaurantes_0_titulo', 'Nome do Restaurante'),
(2313, 358, '_lista_restaurantes_0_titulo', 'field_643efac2641a6'),
(2314, 358, 'lista_restaurantes_0_descricao', 'Buenos Aires, Argentina'),
(2315, 358, '_lista_restaurantes_0_descricao', 'field_643efac267c07'),
(2316, 358, 'lista_restaurantes_0_link', 'http://outsideco.com.br/site/post-padrao/'),
(2317, 358, '_lista_restaurantes_0_link', 'field_643efac26b8e7'),
(2318, 358, 'lista_restaurantes_0_imagem', '308'),
(2319, 358, '_lista_restaurantes_0_imagem', 'field_643efac26f289'),
(2320, 358, 'lista_restaurantes_1_titulo', 'Nome do Restaurante'),
(2321, 358, '_lista_restaurantes_1_titulo', 'field_643efac2641a6'),
(2322, 358, 'lista_restaurantes_1_descricao', 'Buenos Aires, Argentina'),
(2323, 358, '_lista_restaurantes_1_descricao', 'field_643efac267c07'),
(2324, 358, 'lista_restaurantes_1_link', 'http://outsideco.com.br/site/post-padrao/'),
(2325, 358, '_lista_restaurantes_1_link', 'field_643efac26b8e7'),
(2326, 358, 'lista_restaurantes_1_imagem', '307'),
(2327, 358, '_lista_restaurantes_1_imagem', 'field_643efac26f289'),
(2328, 358, 'lista_restaurantes_2_titulo', 'Nome do Restaurante'),
(2329, 358, '_lista_restaurantes_2_titulo', 'field_643efac2641a6'),
(2330, 358, 'lista_restaurantes_2_descricao', 'Buenos Aires, Argentina'),
(2331, 358, '_lista_restaurantes_2_descricao', 'field_643efac267c07'),
(2332, 358, 'lista_restaurantes_2_link', 'http://outsideco.com.br/site/post-padrao/'),
(2333, 358, '_lista_restaurantes_2_link', 'field_643efac26b8e7'),
(2334, 358, 'lista_restaurantes_2_imagem', '306'),
(2335, 358, '_lista_restaurantes_2_imagem', 'field_643efac26f289'),
(2336, 358, 'lista_restaurantes_3_titulo', 'Nome do Restaurante'),
(2337, 358, '_lista_restaurantes_3_titulo', 'field_643efac2641a6'),
(2338, 358, 'lista_restaurantes_3_descricao', 'Buenos Aires, Argentina'),
(2339, 358, '_lista_restaurantes_3_descricao', 'field_643efac267c07'),
(2340, 358, 'lista_restaurantes_3_link', 'http://outsideco.com.br/site/post-padrao/'),
(2341, 358, '_lista_restaurantes_3_link', 'field_643efac26b8e7'),
(2342, 358, 'lista_restaurantes_3_imagem', '305'),
(2343, 358, '_lista_restaurantes_3_imagem', 'field_643efac26f289'),
(2344, 358, 'lista_restaurantes', '4'),
(2345, 358, '_lista_restaurantes', 'field_643efac2587be'),
(2346, 358, 'titulo_restaurantes', 'EL PREFERIDO'),
(2347, 358, '_titulo_restaurantes', 'field_643efac2510d9'),
(2348, 358, 'subtitulo_restaurantes', 'Buenos Aires, Argentina'),
(2349, 358, '_subtitulo_restaurantes', 'field_643efac24d76e'),
(2350, 358, 'texto_restaurantes', '<img class="alignright size-full wp-image-329" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/restaurante5.jpg" alt="" width="500" height="385" />\r\nO Preferido é do mesmo dono do famoso Don Julio, restaurante super gostoso, comida boa, segundo um dos Outsiders, melhor batata frita que ele já comeu. Possui desde carnes, até saladas e massas, tem opção vegetariana e modéstia a parte, preferi bem mais que o Don Julio 🤭.\r\n\r\nAmbiente:⭐️⭐️⭐️⭐️⭐️\r\nComida:⭐️⭐️⭐️⭐️⭐️\r\nPreço:⭐️⭐️\r\nAtendimento:⭐️⭐️⭐️⭐️\r\n\r\nOutside favorite: Milanesa com fritas:\r\n<blockquote>💡 Precisa reservar com antecedência</blockquote>'),
(2351, 358, '_texto_restaurantes', 'field_643efac254d7a'),
(2352, 358, 'descricao', 'Nome do Restaurante'),
(2353, 358, '_descricao', 'field_643f1948b586c'),
(2354, 358, 'imagem', '308'),
(2355, 358, '_imagem', 'field_643f196ab586d'),
(2358, 164, 'descricao', 'Nome do Restaurante'),
(2359, 164, '_descricao', 'field_643f1948b586c'),
(2360, 164, 'imagem', '306'),
(2361, 164, '_imagem', 'field_643f196ab586d'),
(2362, 359, 'titulo', 'ABOUT'),
(2363, 359, '_titulo', 'field_643d5c5478992'),
(2364, 359, 'descricao', 'Nome do Restaurante'),
(2365, 359, '_descricao', 'field_643f1948b586c'),
(2366, 359, 'imagem', '306'),
(2367, 359, '_imagem', 'field_643f196ab586d'),
(2368, 360, '_edit_last', '1'),
(2369, 360, '_edit_lock', '1681857851:1'),
(2370, 360, '_wp_page_template', 'default'),
(2373, 360, 'descricao', 'Buenos Aires, Argentina'),
(2374, 360, '_descricao', 'field_643f1948b586c'),
(2375, 360, 'imagem', '306'),
(2376, 360, '_imagem', 'field_643f196ab586d'),
(2377, 361, 'descricao', 'Buenos Aires, Argentina'),
(2378, 361, '_descricao', 'field_643f1948b586c'),
(2379, 361, 'imagem', '306'),
(2380, 361, '_imagem', 'field_643f196ab586d'),
(2381, 362, '_edit_last', '1'),
(2382, 362, '_edit_lock', '1681857700:1'),
(2383, 362, '_wp_page_template', 'default'),
(2386, 362, 'descricao', 'Buenos Aires, Argentina'),
(2387, 362, '_descricao', 'field_643f1948b586c'),
(2388, 362, 'imagem', '308'),
(2389, 362, '_imagem', 'field_643f196ab586d'),
(2390, 363, 'descricao', 'Buenos Aires, Argentina'),
(2391, 363, '_descricao', 'field_643f1948b586c'),
(2392, 363, 'imagem', '308'),
(2393, 363, '_imagem', 'field_643f196ab586d'),
(2394, 364, '_edit_last', '1'),
(2395, 364, '_edit_lock', '1681857718:1'),
(2396, 364, '_wp_page_template', 'default') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2399, 364, 'descricao', 'Buenos Aires, Argentina'),
(2400, 364, '_descricao', 'field_643f1948b586c'),
(2401, 364, 'imagem', '306'),
(2402, 364, '_imagem', 'field_643f196ab586d'),
(2403, 365, 'descricao', 'Buenos Aires, Argentina'),
(2404, 365, '_descricao', 'field_643f1948b586c'),
(2405, 365, 'imagem', '306'),
(2406, 365, '_imagem', 'field_643f196ab586d'),
(2407, 366, '_edit_last', '1'),
(2408, 366, '_edit_lock', '1681857737:1'),
(2409, 366, '_wp_page_template', 'default'),
(2412, 366, 'descricao', 'Buenos Aires, Argentina'),
(2413, 366, '_descricao', 'field_643f1948b586c'),
(2414, 366, 'imagem', '308'),
(2415, 366, '_imagem', 'field_643f196ab586d'),
(2416, 367, 'descricao', 'Buenos Aires, Argentina'),
(2417, 367, '_descricao', 'field_643f1948b586c'),
(2418, 367, 'imagem', '308'),
(2419, 367, '_imagem', 'field_643f196ab586d'),
(2420, 374, '_wp_attached_file', '2023/04/banner-contact.jpg'),
(2421, 374, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:580;s:4:"file";s:26:"2023/04/banner-contact.jpg";s:8:"filesize";i:156637;s:5:"sizes";a:18:{s:6:"medium";a:5:{s:4:"file";s:25:"banner-contact-300x91.jpg";s:5:"width";i:300;s:6:"height";i:91;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8328;}s:5:"large";a:5:{s:4:"file";s:27:"banner-contact-1024x309.jpg";s:5:"width";i:1024;s:6:"height";i:309;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:58332;}s:9:"thumbnail";a:5:{s:4:"file";s:26:"banner-contact-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5710;}s:12:"medium_large";a:5:{s:4:"file";s:26:"banner-contact-768x232.jpg";s:5:"width";i:768;s:6:"height";i:232;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36105;}s:9:"1536x1536";a:5:{s:4:"file";s:27:"banner-contact-1536x464.jpg";s:5:"width";i:1536;s:6:"height";i:464;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:109598;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:26:"banner-contact-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27642;}s:10:"capa-viaje";a:5:{s:4:"file";s:26:"banner-contact-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26618;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:27:"banner-contact-1037x580.jpg";s:5:"width";i:1037;s:6:"height";i:580;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:81062;}s:11:"capa-padrao";a:5:{s:4:"file";s:26:"banner-contact-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29506;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:26:"banner-contact-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15774;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:26:"banner-contact-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19622;}s:9:"fashion-1";a:5:{s:4:"file";s:26:"banner-contact-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23715;}s:9:"fashion-2";a:5:{s:4:"file";s:26:"banner-contact-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24659;}s:9:"fashion-3";a:5:{s:4:"file";s:26:"banner-contact-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14911;}s:9:"fashion-4";a:5:{s:4:"file";s:26:"banner-contact-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15217;}s:13:"imagem-astral";a:5:{s:4:"file";s:26:"banner-contact-376x564.jpg";s:5:"width";i:376;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25707;}s:17:"carrossel-viagens";a:5:{s:4:"file";s:26:"banner-contact-585x580.jpg";s:5:"width";i:585;s:6:"height";i:580;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:47105;}s:11:"menu-footer";a:5:{s:4:"file";s:26:"banner-contact-350x240.jpg";s:5:"width";i:350;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16039;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2424, 279, 'banner_patrocinio', '374'),
(2425, 279, '_banner_patrocinio', 'field_643f254ee9733'),
(2426, 279, 'subtitulo_patrocinio', 'CONTACT'),
(2427, 279, '_subtitulo_patrocinio', 'field_643f2590e9734'),
(2428, 279, 'titulo_patrocinio', 'Que tal levar a sua marca para viajar comigo?'),
(2429, 279, '_titulo_patrocinio', 'field_643f25a0e9735'),
(2430, 279, 'texto_patrocinio', 'Viagens com produção de conteúdos originais e personalizados, em tempo real para trazer o consumidor á uma imersão com a marca, gerando conhecimento cultural e muito entretenimento com uma abordagem descontraída e divertida. Além se de um super material do seu produto em uma paisagem absurda.'),
(2431, 279, '_texto_patrocinio', 'field_643f25ace9736'),
(2432, 375, 'subtitulo_austral', 'AUSTRAL'),
(2433, 375, '_subtitulo_austral', 'field_643ef03880740'),
(2434, 375, 'titulo_austral', 'Uma boa mala planejada te salvará em uma viagem de trilha, montanha e natureza. Seguem algumas Outside Tips:'),
(2435, 375, '_titulo_austral', 'field_643ef06080741'),
(2436, 375, 'lista_austral_0_imagem', '280'),
(2437, 375, '_lista_austral_0_imagem', 'field_643ef0c280743'),
(2438, 375, 'lista_austral_1_imagem', '281'),
(2439, 375, '_lista_austral_1_imagem', 'field_643ef0c280743'),
(2440, 375, 'lista_austral_2_imagem', '282'),
(2441, 375, '_lista_austral_2_imagem', 'field_643ef0c280743'),
(2442, 375, 'lista_austral', '3'),
(2443, 375, '_lista_austral', 'field_643ef06c80742'),
(2444, 375, 'texto_austral', '<img class="class= alignright" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral1-300x200.jpg" alt="" width="400" />\r\n<h2>AUSTRAL</h2>\r\nA Austral é uma marca de vestuário masculina com uma pegada outdoor, praia, surf, natureza, montanha e aventura com peças de matéria prima sustentável e de extrema qualidade! Além de tudo é brasileira e faz do Brasil uma de suas maiores inspirações. Sou fã, e é claro que levei eles para a Patagônia, afinal, falou em natureza, montanha e aventura? Patagônia na certa.\r\n\r\nAustral foi com certeza 80% da minha mala e esteve presente todos os dias na minha viagem! As peças foram perfeitas para o estilo de viagem que fizemos, eles possuem desde calças (de qualidade absurda) até corta ventos (super necessário), até camisetas, bermudas e moletons.\r\n\r\n<img class="size-medium wp-image-284 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral2-300x300.jpg" alt="" width="400" />\r\n\r\nSe você for para a Patagônia aqui vai um check list de itens para você levar que com certeza encontrará na Austral:\r\n<h3>CHECK LIST</h3>\r\n[ ] Camisetas\r\n[ ] Calças\r\n[ ] Bermuda\r\n[ ] Camiseta manga cumprida\r\n[ ] Moletom\r\n[ ] Corta-vento\r\n[ ] Camisas\r\n\r\nA primeira camada de roupa (se você pegar temperaturas baixas) é a segunda pele, após vem a segunda camada, calça e camiseta. Durante a trilha você acaba se sujando e transpirando então algumas opções de calça e camiseta são muito necessárias.'),
(2445, 375, '_texto_austral', 'field_643ef0eb80744'),
(2446, 375, 'banner_patrocinio', '374'),
(2447, 375, '_banner_patrocinio', 'field_643f254ee9733'),
(2448, 375, 'subtitulo_patrocinio', 'CONTACT'),
(2449, 375, '_subtitulo_patrocinio', 'field_643f2590e9734'),
(2450, 375, 'titulo_patrocinio', 'Que tal levar a sua marca para viajar comigo?'),
(2451, 375, '_titulo_patrocinio', 'field_643f25a0e9735'),
(2452, 375, 'texto_patrocinio', 'Viagens com produção de conteúdos originais e personalizados, em tempo real para trazer o consumidor á uma imersão com a marca, gerando conhecimento cultural e muito entretenimento com uma abordagem descontraída e divertida. Além se de um super material do seu produto em uma paisagem absurda.'),
(2453, 375, '_texto_patrocinio', 'field_643f25ace9736'),
(2456, 279, 'link_banner_patrocinio', 'https://www.google.com/'),
(2457, 279, '_link_banner_patrocinio', 'field_643f2631adce6'),
(2458, 377, 'subtitulo_austral', 'AUSTRAL'),
(2459, 377, '_subtitulo_austral', 'field_643ef03880740'),
(2460, 377, 'titulo_austral', 'Uma boa mala planejada te salvará em uma viagem de trilha, montanha e natureza. Seguem algumas Outside Tips:'),
(2461, 377, '_titulo_austral', 'field_643ef06080741'),
(2462, 377, 'lista_austral_0_imagem', '280'),
(2463, 377, '_lista_austral_0_imagem', 'field_643ef0c280743'),
(2464, 377, 'lista_austral_1_imagem', '281'),
(2465, 377, '_lista_austral_1_imagem', 'field_643ef0c280743'),
(2466, 377, 'lista_austral_2_imagem', '282'),
(2467, 377, '_lista_austral_2_imagem', 'field_643ef0c280743'),
(2468, 377, 'lista_austral', '3'),
(2469, 377, '_lista_austral', 'field_643ef06c80742'),
(2470, 377, 'texto_austral', '<img class="class= alignright" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral1-300x200.jpg" alt="" width="400" />\r\n<h2>AUSTRAL</h2>\r\nA Austral é uma marca de vestuário masculina com uma pegada outdoor, praia, surf, natureza, montanha e aventura com peças de matéria prima sustentável e de extrema qualidade! Além de tudo é brasileira e faz do Brasil uma de suas maiores inspirações. Sou fã, e é claro que levei eles para a Patagônia, afinal, falou em natureza, montanha e aventura? Patagônia na certa.\r\n\r\nAustral foi com certeza 80% da minha mala e esteve presente todos os dias na minha viagem! As peças foram perfeitas para o estilo de viagem que fizemos, eles possuem desde calças (de qualidade absurda) até corta ventos (super necessário), até camisetas, bermudas e moletons.\r\n\r\n<img class="size-medium wp-image-284 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/astral2-300x300.jpg" alt="" width="400" />\r\n\r\nSe você for para a Patagônia aqui vai um check list de itens para você levar que com certeza encontrará na Austral:\r\n<h3>CHECK LIST</h3>\r\n[ ] Camisetas\r\n[ ] Calças\r\n[ ] Bermuda\r\n[ ] Camiseta manga cumprida\r\n[ ] Moletom\r\n[ ] Corta-vento\r\n[ ] Camisas\r\n\r\nA primeira camada de roupa (se você pegar temperaturas baixas) é a segunda pele, após vem a segunda camada, calça e camiseta. Durante a trilha você acaba se sujando e transpirando então algumas opções de calça e camiseta são muito necessárias.'),
(2471, 377, '_texto_austral', 'field_643ef0eb80744'),
(2472, 377, 'banner_patrocinio', '374'),
(2473, 377, '_banner_patrocinio', 'field_643f254ee9733'),
(2474, 377, 'subtitulo_patrocinio', 'CONTACT'),
(2475, 377, '_subtitulo_patrocinio', 'field_643f2590e9734'),
(2476, 377, 'titulo_patrocinio', 'Que tal levar a sua marca para viajar comigo?'),
(2477, 377, '_titulo_patrocinio', 'field_643f25a0e9735'),
(2478, 377, 'texto_patrocinio', 'Viagens com produção de conteúdos originais e personalizados, em tempo real para trazer o consumidor á uma imersão com a marca, gerando conhecimento cultural e muito entretenimento com uma abordagem descontraída e divertida. Além se de um super material do seu produto em uma paisagem absurda.'),
(2479, 377, '_texto_patrocinio', 'field_643f25ace9736'),
(2480, 377, 'link_banner_patrocinio', 'https://www.google.com/'),
(2481, 377, '_link_banner_patrocinio', 'field_643f2631adce6'),
(2482, 378, '_form', '<div class="frm_fields_container">\n                                            <div class="row">\n                                                <div class="col-md-6 col-sm-6">\n                                                    <div class="frm_form_field form-field  frm_required_field frm_none_container">\n                                                        [text* nome placeholder "Nome"]\n                                                    </div>\n                                                    <div class="frm_form_field form-field  frm_none_container">\n                                                       [text* whatsapp placeholder "WhatsApp"]\n                                                    </div>\n                                                    <div class="frm_form_field form-field  frm_required_field frm_none_container">\n                                                        [email* email placeholder "E-mail"]\n                                                    </div>\n                                                </div>\n                                                <div class="col-md-6 col-sm-6">\n                                                    <div class="frm_form_field form-field  frm_none_container">\n                                                        [textarea* mensagem placeholder "Mensagem"]\n                                                    </div>\n                                                </div>\n                                            </div>\n                                            \n                                            <div class="frm_submit">\n[submit id:enviar "Enviar"]\n                                                \n\n                                                <span class="arrow-right"></span>\n                                            </div>\n                                        </div>'),
(2483, 378, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:41:"[_site_title] <wordpress@outsideco.local>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:176:"De: [your-name] [your-email]\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(2484, 378, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:41:"[_site_title] <wordpress@outsideco.local>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:122:"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(2485, 378, '_messages', 'a:22:{s:12:"mail_sent_ok";s:27:"Agradecemos a sua mensagem.";s:12:"mail_sent_ng";s:74:"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.";s:16:"validation_error";s:63:"Um ou mais campos possuem um erro. Verifique e tente novamente.";s:4:"spam";s:74:"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.";s:12:"accept_terms";s:72:"Você deve aceitar os termos e condições antes de enviar sua mensagem.";s:16:"invalid_required";s:20:"Preencha este campo.";s:16:"invalid_too_long";s:39:"Este campo tem uma entrada muito longa.";s:17:"invalid_too_short";s:39:"Este campo tem uma entrada muito curta.";s:13:"upload_failed";s:49:"Ocorreu um erro desconhecido ao enviar o arquivo.";s:24:"upload_file_type_invalid";s:59:"Você não tem permissão para enviar esse tipo de arquivo.";s:21:"upload_file_too_large";s:34:"O arquivo enviado é muito grande.";s:23:"upload_failed_php_error";s:36:"Ocorreu um erro ao enviar o arquivo.";s:12:"invalid_date";s:38:"Digite uma data no formato AAAA-MM-DD.";s:14:"date_too_early";s:39:"Este campo tem uma data muito próxima.";s:13:"date_too_late";s:39:"Este campo tem uma data muito distante.";s:14:"invalid_number";s:18:"Digite um número.";s:16:"number_too_small";s:41:"Este campo tem um número pequeno demais.";s:16:"number_too_large";s:40:"Este campo tem um número grande demais.";s:23:"quiz_answer_not_correct";s:39:"A resposta para o quiz está incorreta.";s:13:"invalid_email";s:30:"Digite um endereço de e-mail.";s:11:"invalid_url";s:14:"Digite um URL.";s:11:"invalid_tel";s:30:"Digite um número de telefone.";}'),
(2486, 378, '_additional_settings', ''),
(2487, 378, '_locale', 'pt_BR'),
(2491, 378, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:64:"A sintaxe de caixa de e-mail usada no campo %name% é inválida.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(2492, 379, '_wp_attached_file', '2023/04/outside.co_.svg'),
(2493, 379, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:512;s:6:"height";i:66;s:4:"file";s:23:"2023/04/outside.co_.svg";s:5:"sizes";a:21:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:4:"crop";s:1:"1";s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";b:0;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";s:1:"0";s:4:"crop";b:0;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";s:4:"1024";s:4:"crop";b:0;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";i:1536;s:6:"height";i:1536;s:4:"crop";i:0;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";i:2048;s:6:"height";i:2048;s:4:"crop";i:0;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"carrossel";a:5:{s:5:"width";i:1920;s:6:"height";i:794;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:19:"capa-ultm-conteudos";a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:10:"capa-viaje";a:5:{s:5:"width";i:527;s:6:"height";i:288;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:16:"carrossel-padrao";a:5:{s:5:"width";i:1037;s:6:"height";i:692;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:11:"capa-padrao";a:5:{s:5:"width";i:527;s:6:"height";i:340;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:16:"banner-to-travel";a:5:{s:5:"width";i:1920;s:6:"height";i:581;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:16:"list-to-travel-1";a:5:{s:5:"width";i:350;s:6:"height";i:230;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:16:"list-to-travel-2";a:5:{s:5:"width";i:350;s:6:"height";i:360;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"fashion-1";a:5:{s:5:"width";i:396;s:6:"height";i:399;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"fashion-2";a:5:{s:5:"width";i:402;s:6:"height";i:409;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"fashion-3";a:5:{s:5:"width";i:280;s:6:"height";i:346;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"fashion-4";a:5:{s:5:"width";i:279;s:6:"height";i:376;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:13:"imagem-astral";a:5:{s:5:"width";i:376;s:6:"height";i:564;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:17:"carrossel-viagens";a:5:{s:5:"width";i:585;s:6:"height";i:712;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:11:"menu-footer";a:5:{s:5:"width";i:350;s:6:"height";i:240;s:4:"crop";i:1;s:4:"file";s:15:"outside.co_.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(2494, 380, 'imagem_banner', '48'),
(2495, 380, '_imagem_banner', 'field_6438357e1ae3b'),
(2496, 380, 'subtitulo_sobre', 'ABOUT ME'),
(2497, 380, '_subtitulo_sobre', 'field_643835ef1ae3d'),
(2498, 380, 'titulo_1_sobre', 'HEY OUTSIDERS,'),
(2499, 380, '_titulo_1_sobre', 'field_643836061ae3e'),
(2500, 380, 'logo_sobre', '379'),
(2501, 380, '_logo_sobre', 'field_6438361e1ae40'),
(2502, 380, 'titulo_2_sobre', 'HERE!'),
(2503, 380, '_titulo_2_sobre', 'field_643836111ae3f'),
(2504, 380, 'texto_sobre', 'Welcome to my world, sou mais do que uma marca, sou um lifestyle cheio ​de experiências, uma nova forma de expressão trazendo um novo olhar e ​perspectiva para o mundo digital.'),
(2505, 380, '_texto_sobre', 'field_6438362f1ae41'),
(2506, 380, 'titulo_noticias', 'LATEST CONTENTS'),
(2507, 380, '_titulo_noticias', 'field_6438365b1ae43') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2508, 380, 'lista_noticias_0_data', 'Fevereiro, 2023.'),
(2509, 380, '_lista_noticias_0_data', 'field_643836de1ae45'),
(2510, 380, 'lista_noticias_0_titulo', 'PATAGÔNIA'),
(2511, 380, '_lista_noticias_0_titulo', 'field_643836e61ae46'),
(2512, 380, 'lista_noticias_0_resumo', 'A Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma). (..).'),
(2513, 380, '_lista_noticias_0_resumo', 'field_643836f01ae47'),
(2514, 380, 'lista_noticias_0_link', 'https://www.google.com/'),
(2515, 380, '_lista_noticias_0_link', 'field_643836fc1ae48'),
(2516, 380, 'lista_noticias_0_imagem', '49'),
(2517, 380, '_lista_noticias_0_imagem', 'field_643838691ae56'),
(2518, 380, 'lista_noticias_1_data', 'Janeiro, 2023.'),
(2519, 380, '_lista_noticias_1_data', 'field_643836de1ae45'),
(2520, 380, 'lista_noticias_1_titulo', 'MILA SP'),
(2521, 380, '_lista_noticias_1_titulo', 'field_643836e61ae46'),
(2522, 380, 'lista_noticias_1_resumo', 'O restaurante Mila é um italiano descolado e diferenciado localizado no Itaim, sou suspeita para falar porque italiano é meu top 3, e o Mila ganhou meu coração! (...).'),
(2523, 380, '_lista_noticias_1_resumo', 'field_643836f01ae47'),
(2524, 380, 'lista_noticias_1_link', 'https://www.google.com/'),
(2525, 380, '_lista_noticias_1_link', 'field_643836fc1ae48'),
(2526, 380, 'lista_noticias_1_imagem', '50'),
(2527, 380, '_lista_noticias_1_imagem', 'field_643838691ae56'),
(2528, 380, 'lista_noticias_2_data', 'Dezembro, 2022.'),
(2529, 380, '_lista_noticias_2_data', 'field_643836de1ae45'),
(2530, 380, 'lista_noticias_2_titulo', 'DROP/0001'),
(2531, 380, '_lista_noticias_2_titulo', 'field_643836e61ae46'),
(2532, 380, 'lista_noticias_2_resumo', 'Um dos meus pilares principais é a sustentabilidade e a preocupação com o meio ambiente, aqui vou contar para vocês algumas curiosidades sobre meus drops e como você pode adquiri-los 😉 (...)'),
(2533, 380, '_lista_noticias_2_resumo', 'field_643836f01ae47'),
(2534, 380, 'lista_noticias_2_link', 'https://www.google.com/'),
(2535, 380, '_lista_noticias_2_link', 'field_643836fc1ae48'),
(2536, 380, 'lista_noticias_2_imagem', '51'),
(2537, 380, '_lista_noticias_2_imagem', 'field_643838691ae56'),
(2538, 380, 'lista_noticias', '3'),
(2539, 380, '_lista_noticias', 'field_643836bc1ae44'),
(2540, 380, 'lista_destaques_0_titulo_chamada', 'Time to travel!'),
(2541, 380, '_lista_destaques_0_titulo_chamada', 'field_6438379c1ae4d'),
(2542, 380, 'lista_destaques_0_texto_chamada', 'Viagens com aventura, natureza, entretenimento, gastronomia, cultura e muito mais.'),
(2543, 380, '_lista_destaques_0_texto_chamada', 'field_643837bd1ae4e'),
(2544, 380, 'lista_destaques_0_data', 'Novembro, 2022.'),
(2545, 380, '_lista_destaques_0_data', 'field_643837e11ae4f'),
(2546, 380, 'lista_destaques_0_titulo', 'PATAGÔNIA'),
(2547, 380, '_lista_destaques_0_titulo', 'field_643837ed1ae50'),
(2548, 380, 'lista_destaques_0_resumo', 'Um dos meus pilares principais é viagem, seja para o Brasil ou ao redor do 🌎... Produções de conteúdos, marcas parceiras, outsiders aventureiros e muito mais.\r\n\r\nMinha última viagem foi para Patagônia, um lugar maravilhoso, com marcas incríveis, muita aventura e cultura. Quer saber mais do meu roteiro, dos perrengues e dicas?'),
(2549, 380, '_lista_destaques_0_resumo', 'field_643837f61ae51'),
(2550, 380, 'lista_destaques_0_titulo_botao', 'read more'),
(2551, 380, '_lista_destaques_0_titulo_botao', 'field_643838011ae52'),
(2552, 380, 'lista_destaques_0_link_botao', 'https://www.google.com/'),
(2553, 380, '_lista_destaques_0_link_botao', 'field_6438380f1ae53'),
(2554, 380, 'lista_destaques_0_letra_imagem', 't'),
(2555, 380, '_lista_destaques_0_letra_imagem', 'field_643838241ae54'),
(2556, 380, 'lista_destaques_0_imagem', '52'),
(2557, 380, '_lista_destaques_0_imagem', 'field_6438383e1ae55'),
(2558, 380, 'lista_destaques_1_titulo_chamada', 'Nothing Basic'),
(2559, 380, '_lista_destaques_1_titulo_chamada', 'field_6438379c1ae4d'),
(2560, 380, 'lista_destaques_1_texto_chamada', 'O slow fashion e o consumo consciente é algo que quero transmitir com peças atemporais, sustentáveis, exclusivas e para qualquer ocasião'),
(2561, 380, '_lista_destaques_1_texto_chamada', 'field_643837bd1ae4e'),
(2562, 380, 'lista_destaques_1_data', 'Março, 2023.'),
(2563, 380, '_lista_destaques_1_data', 'field_643837e11ae4f'),
(2564, 380, 'lista_destaques_1_titulo', 'DROP/0001'),
(2565, 380, '_lista_destaques_1_titulo', 'field_643837ed1ae50'),
(2566, 380, 'lista_destaques_1_resumo', 'A sustentabilidade e a preocupação com o meio ambiente, é algo que faz parte dos meus valores, com isso trarei para vocês coleções cápsulas (famosos drops), com peças exclusivas e de uso infinito.\r\n\r\nNão é sempre que terei drops, então fiquem sempre de olho! Seja uma outsider e me mande sua fotinho usando o look e apareça nas minhas redes sociais 😃.'),
(2567, 380, '_lista_destaques_1_resumo', 'field_643837f61ae51'),
(2568, 380, 'lista_destaques_1_titulo_botao', 'shop now'),
(2569, 380, '_lista_destaques_1_titulo_botao', 'field_643838011ae52'),
(2570, 380, 'lista_destaques_1_link_botao', 'https://www.google.com/'),
(2571, 380, '_lista_destaques_1_link_botao', 'field_6438380f1ae53'),
(2572, 380, 'lista_destaques_1_letra_imagem', 'n'),
(2573, 380, '_lista_destaques_1_letra_imagem', 'field_643838241ae54'),
(2574, 380, 'lista_destaques_1_imagem', '53'),
(2575, 380, '_lista_destaques_1_imagem', 'field_6438383e1ae55'),
(2576, 380, 'lista_destaques_2_titulo_chamada', 'Lunch Time'),
(2577, 380, '_lista_destaques_2_titulo_chamada', 'field_6438379c1ae4d'),
(2578, 380, 'lista_destaques_2_texto_chamada', 'Gastronomia faz parte do meu dia a dia e vou sempre indicar para vocês os restaurantes que mais gosto e frequentaria de novo ao redor do mundo.'),
(2579, 380, '_lista_destaques_2_texto_chamada', 'field_643837bd1ae4e'),
(2580, 380, 'lista_destaques_2_data', 'Dezembro, 2022.'),
(2581, 380, '_lista_destaques_2_data', 'field_643837e11ae4f'),
(2582, 380, 'lista_destaques_2_titulo', 'MIADO'),
(2583, 380, '_lista_destaques_2_titulo', 'field_643837ed1ae50'),
(2584, 380, 'lista_destaques_2_resumo', 'Através de produções de conteúdo originais, personalizadas e em tempo real vou contar para vocês, meus reviews dos restaurantes, pratos preferidos, ambiente, atendimento e sugestões, com uma abordagem descontraída e divertida.'),
(2585, 380, '_lista_destaques_2_resumo', 'field_643837f61ae51'),
(2586, 380, 'lista_destaques_2_titulo_botao', 'read more'),
(2587, 380, '_lista_destaques_2_titulo_botao', 'field_643838011ae52'),
(2588, 380, 'lista_destaques_2_link_botao', 'https://www.google.com/'),
(2589, 380, '_lista_destaques_2_link_botao', 'field_6438380f1ae53'),
(2590, 380, 'lista_destaques_2_letra_imagem', 'I'),
(2591, 380, '_lista_destaques_2_letra_imagem', 'field_643838241ae54'),
(2592, 380, 'lista_destaques_2_imagem', '54'),
(2593, 380, '_lista_destaques_2_imagem', 'field_6438383e1ae55'),
(2594, 380, 'lista_destaques_3_titulo_chamada', 'Canal da Nutric'),
(2595, 380, '_lista_destaques_3_titulo_chamada', 'field_6438379c1ae4d'),
(2596, 380, 'lista_destaques_3_texto_chamada', 'Página de receitas saudáveis, bate papo sobre diversos assuntos, perguntas e respostas, work out e muito mais.'),
(2597, 380, '_lista_destaques_3_texto_chamada', 'field_643837bd1ae4e'),
(2598, 380, 'lista_destaques_3_data', 'Março, 2023.'),
(2599, 380, '_lista_destaques_3_data', 'field_643837e11ae4f'),
(2600, 380, 'lista_destaques_3_titulo', 'DROP/0001'),
(2601, 380, '_lista_destaques_3_titulo', 'field_643837ed1ae50'),
(2602, 380, 'lista_destaques_3_resumo', 'Um dos pilares principais da Outside.co é saúde e bem estar e eu gostaria de me apresentar para vocês! Prazer, sou Camila, nutri da Outside :)\r\n\r\nSe interessa por esse universo de saúde, seja na alimentação ou prática de exercícios físicos? Aqui é seu lugar! Vem conversar comigo 😍'),
(2603, 380, '_lista_destaques_3_resumo', 'field_643837f61ae51'),
(2604, 380, 'lista_destaques_3_titulo_botao', 'read more'),
(2605, 380, '_lista_destaques_3_titulo_botao', 'field_643838011ae52'),
(2606, 380, 'lista_destaques_3_link_botao', 'https://www.google.com/'),
(2607, 380, '_lista_destaques_3_link_botao', 'field_6438380f1ae53') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2608, 380, 'lista_destaques_3_letra_imagem', 'n'),
(2609, 380, '_lista_destaques_3_letra_imagem', 'field_643838241ae54'),
(2610, 380, 'lista_destaques_3_imagem', '55'),
(2611, 380, '_lista_destaques_3_imagem', 'field_6438383e1ae55'),
(2612, 380, 'lista_destaques', '4'),
(2613, 380, '_lista_destaques', 'field_6438378b1ae4c'),
(2614, 381, '_edit_last', '1'),
(2615, 381, '_edit_lock', '1681870026:1'),
(2616, 385, '_wp_attached_file', 'woocommerce-placeholder.png'),
(2617, 385, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:27:"woocommerce-placeholder.png";s:8:"filesize";i:102644;s:5:"sizes";a:19:{s:6:"medium";a:5:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10659;}s:5:"large";a:5:{s:4:"file";s:37:"woocommerce-placeholder-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:80210;}s:9:"thumbnail";a:5:{s:4:"file";s:35:"woocommerce-placeholder-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:3738;}s:12:"medium_large";a:5:{s:4:"file";s:35:"woocommerce-placeholder-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:48652;}s:9:"carrossel";a:5:{s:4:"file";s:36:"woocommerce-placeholder-1200x794.png";s:5:"width";i:1200;s:6:"height";i:794;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:114832;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:35:"woocommerce-placeholder-500x333.png";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:23043;}s:10:"capa-viaje";a:5:{s:4:"file";s:35:"woocommerce-placeholder-527x288.png";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:24549;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:36:"woocommerce-placeholder-1037x692.png";s:5:"width";i:1037;s:6:"height";i:692;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:78736;}s:11:"capa-padrao";a:5:{s:4:"file";s:35:"woocommerce-placeholder-527x340.png";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:24801;}s:16:"banner-to-travel";a:5:{s:4:"file";s:36:"woocommerce-placeholder-1200x581.png";s:5:"width";i:1200;s:6:"height";i:581;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:112646;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:35:"woocommerce-placeholder-350x230.png";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:12879;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:35:"woocommerce-placeholder-350x360.png";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:14071;}s:9:"fashion-1";a:5:{s:4:"file";s:35:"woocommerce-placeholder-396x399.png";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:16409;}s:9:"fashion-2";a:5:{s:4:"file";s:35:"woocommerce-placeholder-402x409.png";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:16938;}s:9:"fashion-3";a:5:{s:4:"file";s:35:"woocommerce-placeholder-280x346.png";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:12878;}s:9:"fashion-4";a:5:{s:4:"file";s:35:"woocommerce-placeholder-279x376.png";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:14550;}s:13:"imagem-astral";a:5:{s:4:"file";s:35:"woocommerce-placeholder-376x564.png";s:5:"width";i:376;s:6:"height";i:564;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:27862;}s:17:"carrossel-viagens";a:5:{s:4:"file";s:35:"woocommerce-placeholder-585x712.png";s:5:"width";i:585;s:6:"height";i:712;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:42011;}s:11:"menu-footer";a:5:{s:4:"file";s:35:"woocommerce-placeholder-350x240.png";s:5:"width";i:350;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:12873;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2618, 391, '_edit_last', '1'),
(2619, 391, '_edit_lock', '1681874337:1'),
(2620, 392, '_wp_attached_file', '2023/04/fashion8.jpg'),
(2621, 392, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1248;s:6:"height";i:1872;s:4:"file";s:20:"2023/04/fashion8.jpg";s:8:"filesize";i:538489;s:5:"sizes";a:24:{s:6:"medium";a:5:{s:4:"file";s:20:"fashion8-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11800;}s:5:"large";a:5:{s:4:"file";s:21:"fashion8-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:78402;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"fashion8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5706;}s:12:"medium_large";a:5:{s:4:"file";s:21:"fashion8-768x1152.jpg";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:94999;}s:9:"1536x1536";a:5:{s:4:"file";s:22:"fashion8-1024x1536.jpg";s:5:"width";i:1024;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:149668;}s:9:"carrossel";a:5:{s:4:"file";s:21:"fashion8-1248x794.jpg";s:5:"width";i:1248;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:117305;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"fashion8-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27908;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"fashion8-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25331;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:21:"fashion8-1037x692.jpg";s:5:"width";i:1037;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:86629;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"fashion8-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29441;}s:16:"banner-to-travel";a:5:{s:4:"file";s:21:"fashion8-1248x581.jpg";s:5:"width";i:1248;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:87230;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:20:"fashion8-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15997;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:20:"fashion8-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21464;}s:9:"fashion-1";a:5:{s:4:"file";s:20:"fashion8-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25561;}s:9:"fashion-2";a:5:{s:4:"file";s:20:"fashion8-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26544;}s:9:"fashion-3";a:5:{s:4:"file";s:20:"fashion8-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17162;}s:9:"fashion-4";a:5:{s:4:"file";s:20:"fashion8-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18155;}s:13:"imagem-astral";a:5:{s:4:"file";s:20:"fashion8-376x564.jpg";s:5:"width";i:376;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30934;}s:17:"carrossel-viagens";a:5:{s:4:"file";s:20:"fashion8-585x712.jpg";s:5:"width";i:585;s:6:"height";i:712;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:52836;}s:11:"menu-footer";a:5:{s:4:"file";s:20:"fashion8-350x240.jpg";s:5:"width";i:350;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16366;}s:7:"produto";a:5:{s:4:"file";s:20:"fashion8-335x418.jpg";s:5:"width";i:335;s:6:"height";i:418;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22707;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"fashion8-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16776;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"fashion8-600x900.jpg";s:5:"width";i:600;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:64043;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"fashion8-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3212;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2622, 393, '_wp_attached_file', '2023/04/fashion9.jpg'),
(2623, 393, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1248;s:6:"height";i:1872;s:4:"file";s:20:"2023/04/fashion9.jpg";s:8:"filesize";i:499314;s:5:"sizes";a:24:{s:6:"medium";a:5:{s:4:"file";s:20:"fashion9-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11348;}s:5:"large";a:5:{s:4:"file";s:21:"fashion9-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:73105;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"fashion9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5499;}s:12:"medium_large";a:5:{s:4:"file";s:21:"fashion9-768x1152.jpg";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:88062;}s:9:"1536x1536";a:5:{s:4:"file";s:22:"fashion9-1024x1536.jpg";s:5:"width";i:1024;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:137046;}s:9:"carrossel";a:5:{s:4:"file";s:21:"fashion9-1248x794.jpg";s:5:"width";i:1248;s:6:"height";i:794;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:101413;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"fashion9-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25059;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"fashion9-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22990;}s:16:"carrossel-padrao";a:5:{s:4:"file";s:21:"fashion9-1037x692.jpg";s:5:"width";i:1037;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:75560;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"fashion9-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26421;}s:16:"banner-to-travel";a:5:{s:4:"file";s:21:"fashion9-1248x581.jpg";s:5:"width";i:1248;s:6:"height";i:581;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:77424;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:20:"fashion9-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14562;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:20:"fashion9-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19935;}s:9:"fashion-1";a:5:{s:4:"file";s:20:"fashion9-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23618;}s:9:"fashion-2";a:5:{s:4:"file";s:20:"fashion9-402x409.jpg";s:5:"width";i:402;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24652;}s:9:"fashion-3";a:5:{s:4:"file";s:20:"fashion9-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16535;}s:9:"fashion-4";a:5:{s:4:"file";s:20:"fashion9-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17345;}s:13:"imagem-astral";a:5:{s:4:"file";s:20:"fashion9-376x564.jpg";s:5:"width";i:376;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29344;}s:17:"carrossel-viagens";a:5:{s:4:"file";s:20:"fashion9-585x712.jpg";s:5:"width";i:585;s:6:"height";i:712;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:49282;}s:11:"menu-footer";a:5:{s:4:"file";s:20:"fashion9-350x240.jpg";s:5:"width";i:350;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14984;}s:7:"produto";a:5:{s:4:"file";s:20:"fashion9-335x418.jpg";s:5:"width";i:335;s:6:"height";i:418;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21462;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"fashion9-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15707;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"fashion9-600x900.jpg";s:5:"width";i:600;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:60096;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"fashion9-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3111;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2624, 394, '_wp_attached_file', '2023/04/fashion10.jpg'),
(2625, 394, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:786;s:6:"height";i:400;s:4:"file";s:21:"2023/04/fashion10.jpg";s:8:"filesize";i:43317;s:5:"sizes";a:19:{s:6:"medium";a:5:{s:4:"file";s:21:"fashion10-300x153.jpg";s:5:"width";i:300;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10213;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"fashion10-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6520;}s:12:"medium_large";a:5:{s:4:"file";s:21:"fashion10-768x391.jpg";s:5:"width";i:768;s:6:"height";i:391;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40360;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:21:"fashion10-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28256;}s:10:"capa-viaje";a:5:{s:4:"file";s:21:"fashion10-527x288.jpg";s:5:"width";i:527;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24604;}s:11:"capa-padrao";a:5:{s:4:"file";s:21:"fashion10-527x340.jpg";s:5:"width";i:527;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29621;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:21:"fashion10-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16313;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:21:"fashion10-350x360.jpg";s:5:"width";i:350;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21202;}s:9:"fashion-1";a:5:{s:4:"file";s:21:"fashion10-396x399.jpg";s:5:"width";i:396;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25390;}s:9:"fashion-2";a:5:{s:4:"file";s:21:"fashion10-402x400.jpg";s:5:"width";i:402;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26942;}s:9:"fashion-3";a:5:{s:4:"file";s:21:"fashion10-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16601;}s:9:"fashion-4";a:5:{s:4:"file";s:21:"fashion10-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16727;}s:13:"imagem-astral";a:5:{s:4:"file";s:21:"fashion10-376x400.jpg";s:5:"width";i:376;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25257;}s:17:"carrossel-viagens";a:5:{s:4:"file";s:21:"fashion10-585x400.jpg";s:5:"width";i:585;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:39421;}s:11:"menu-footer";a:5:{s:4:"file";s:21:"fashion10-350x240.jpg";s:5:"width";i:350;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16944;}s:7:"produto";a:5:{s:4:"file";s:21:"fashion10-335x400.jpg";s:5:"width";i:335;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21745;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:21:"fashion10-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16801;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:21:"fashion10-600x305.jpg";s:5:"width";i:600;s:6:"height";i:305;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27921;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:21:"fashion10-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4129;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2626, 395, '_wp_attached_file', '2023/04/produto1.jpg'),
(2627, 395, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:335;s:6:"height";i:418;s:4:"file";s:20:"2023/04/produto1.jpg";s:8:"filesize";i:27149;s:5:"sizes";a:14:{s:6:"medium";a:5:{s:4:"file";s:20:"produto1-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13871;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"produto1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5688;}s:19:"capa-ultm-conteudos";a:5:{s:4:"file";s:20:"produto1-335x333.jpg";s:5:"width";i:335;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20983;}s:10:"capa-viaje";a:5:{s:4:"file";s:20:"produto1-335x288.jpg";s:5:"width";i:335;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18008;}s:11:"capa-padrao";a:5:{s:4:"file";s:20:"produto1-335x340.jpg";s:5:"width";i:335;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21406;}s:16:"list-to-travel-1";a:5:{s:4:"file";s:20:"produto1-335x230.jpg";s:5:"width";i:335;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14888;}s:16:"list-to-travel-2";a:5:{s:4:"file";s:20:"produto1-335x360.jpg";s:5:"width";i:335;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22879;}s:9:"fashion-1";a:5:{s:4:"file";s:20:"produto1-335x399.jpg";s:5:"width";i:335;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24522;}s:9:"fashion-2";a:5:{s:4:"file";s:20:"produto1-335x409.jpg";s:5:"width";i:335;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26425;}s:9:"fashion-3";a:5:{s:4:"file";s:20:"produto1-280x346.jpg";s:5:"width";i:280;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17913;}s:9:"fashion-4";a:5:{s:4:"file";s:20:"produto1-279x376.jpg";s:5:"width";i:279;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18057;}s:11:"menu-footer";a:5:{s:4:"file";s:20:"produto1-335x240.jpg";s:5:"width";i:335;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15255;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"produto1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16224;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"produto1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3495;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2628, 391, '_thumbnail_id', '395'),
(2629, 391, '_regular_price', '319'),
(2630, 391, 'total_sales', '0'),
(2631, 391, '_tax_status', 'taxable'),
(2632, 391, '_tax_class', ''),
(2633, 391, '_manage_stock', 'no'),
(2634, 391, '_backorders', 'no'),
(2635, 391, '_sold_individually', 'no'),
(2636, 391, '_virtual', 'no'),
(2637, 391, '_downloadable', 'no'),
(2638, 391, '_download_limit', '-1'),
(2639, 391, '_download_expiry', '-1'),
(2640, 391, '_stock', NULL),
(2641, 391, '_stock_status', 'instock'),
(2642, 391, '_wc_average_rating', '0'),
(2643, 391, '_wc_review_count', '0'),
(2644, 391, '_product_version', '7.6.0'),
(2645, 391, '_price', '319'),
(2646, 391, '_product_image_gallery', '394,393,392'),
(2649, 396, 'imagem_banner_topo', '258'),
(2650, 396, '_imagem_banner_topo', 'field_643ed6621aedd'),
(2651, 396, 'titulo_publicacao', 'Conjunto \r\nLinho'),
(2652, 396, '_titulo_publicacao', 'field_643ed66225ecd'),
(2653, 396, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(2654, 396, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(2655, 396, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(2656, 396, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(2657, 396, 'titulo_botao_publicacao', 'shop now'),
(2658, 396, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(2659, 396, 'link_botao_publicacao', 'http://outsideco.com.br/site/product/camisa-linho/'),
(2660, 396, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(2661, 396, 'lista_publicacao_0_imagem', '259'),
(2662, 396, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(2663, 396, 'lista_publicacao_1_imagem', '261'),
(2664, 396, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(2665, 396, 'lista_publicacao_2_imagem', '260'),
(2666, 396, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(2667, 396, 'lista_publicacao_3_imagem', '262'),
(2668, 396, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(2669, 396, 'lista_publicacao', '4'),
(2670, 396, '_lista_publicacao', 'field_643ed66229953'),
(2671, 396, 'subtitulo_publicacao', 'DROP/0001'),
(2672, 396, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(2675, 397, 'imagem_banner_topo', '258'),
(2676, 397, '_imagem_banner_topo', 'field_643ed6621aedd'),
(2677, 397, 'subtitulo_publicacao', 'DROP/0002'),
(2678, 397, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(2679, 397, 'titulo_publicacao', 'Conjunto \r\nLinho'),
(2680, 397, '_titulo_publicacao', 'field_643ed66225ecd'),
(2681, 397, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(2682, 397, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(2683, 397, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(2684, 397, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(2685, 397, 'titulo_botao_publicacao', 'shop now'),
(2686, 397, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(2687, 397, 'link_botao_publicacao', 'http://outsideco.com.br/site/product/camisa-linho/'),
(2688, 397, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(2689, 397, 'lista_publicacao_0_imagem', '266'),
(2690, 397, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(2691, 397, 'lista_publicacao_1_imagem', '266'),
(2692, 397, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(2693, 397, 'lista_publicacao_2_imagem', '266'),
(2694, 397, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(2695, 397, 'lista_publicacao_3_imagem', '266'),
(2696, 397, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(2697, 397, 'lista_publicacao', '4'),
(2698, 397, '_lista_publicacao', 'field_643ed66229953'),
(2701, 398, 'imagem_banner_topo', '258'),
(2702, 398, '_imagem_banner_topo', 'field_643ed6621aedd'),
(2703, 398, 'subtitulo_publicacao', 'DROP/0003'),
(2704, 398, '_subtitulo_publicacao', 'field_643ed7ef861d9'),
(2705, 398, 'titulo_publicacao', 'Conjunto\r\nLinho'),
(2706, 398, '_titulo_publicacao', 'field_643ed66225ecd'),
(2707, 398, 'texto_1_publicacao', 'O linho é um tecido versátil que ao mesmo tempo em que é sofisticado, também pode ser usado para peças casuais e despojadas. Perfeito para usar na praia, no campo, na cidade, onde for, conjunto de linho é essencial!!!!'),
(2708, 398, '_texto_1_publicacao', 'field_643ed6c5cf91b'),
(2709, 398, 'texto_2_publicacao', 'A camisa é de alfaiataria com cinco botões de Madrepérola, também origem natural e ecológica. Já a calça é reta, com espaço para fazer a barra caso necessário, elástico no cós para o conforto e bolsos frontais.'),
(2710, 398, '_texto_2_publicacao', 'field_643ed6dbcf91c'),
(2711, 398, 'titulo_botao_publicacao', 'shop now'),
(2712, 398, '_titulo_botao_publicacao', 'field_643ed727cf91d'),
(2713, 398, 'link_botao_publicacao', 'http://outsideco.com.br/site/product/camisa-linho/') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2714, 398, '_link_botao_publicacao', 'field_643ed73ccf91e'),
(2715, 398, 'lista_publicacao_0_imagem', '259'),
(2716, 398, '_lista_publicacao_0_imagem', 'field_643ed6623c622'),
(2717, 398, 'lista_publicacao_1_imagem', '261'),
(2718, 398, '_lista_publicacao_1_imagem', 'field_643ed6623c622'),
(2719, 398, 'lista_publicacao_2_imagem', '260'),
(2720, 398, '_lista_publicacao_2_imagem', 'field_643ed6623c622'),
(2721, 398, 'lista_publicacao_3_imagem', '262'),
(2722, 398, '_lista_publicacao_3_imagem', 'field_643ed6623c622'),
(2723, 398, 'lista_publicacao', '4'),
(2724, 398, '_lista_publicacao', 'field_643ed66229953') ;

#
# Fim do conteúdo da tabela `wp_postmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_posts` existente
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Estrutura da tabela `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2023-04-13 01:19:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-13 01:19:03', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=4', 0, 'post', '', 0),
(9, 1, '2023-04-12 22:24:50', '2023-04-13 01:24:50', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-04-18 22:46:45', '2023-04-19 01:46:45', '', 0, 'http://outsideco.com.br/site/?page_id=9', 1, 'page', '', 0),
(10, 1, '2023-04-12 22:24:50', '2023-04-13 01:24:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-04-12 22:24:50', '2023-04-13 01:24:50', '', 9, 'http://outsideco.com.br/site/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-04-13 11:48:46', '2023-04-13 14:48:46', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:20:"conteudos-adicionais";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Conteúdos adicionais', 'conteudos-adicionais', 'publish', 'closed', 'closed', '', 'group_64381473b3491', '', '', '2023-04-18 17:46:23', '2023-04-18 20:46:23', '', 0, 'http://outsideco.com.br/site/?post_type=acf-field-group&#038;p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2023-04-13 11:48:46', '2023-04-13 14:48:46', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Informações e contato', 'informacoes_e_contato', 'publish', 'closed', 'closed', '', 'field_643814732e127', '', '', '2023-04-13 11:48:46', '2023-04-13 14:48:46', '', 11, 'http://outsideco.com.br/site/?post_type=acf-field&p=12', 0, 'acf-field', '', 0),
(13, 1, '2023-04-13 11:48:46', '2023-04-13 14:48:46', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Telefone', 'telefone', 'publish', 'closed', 'closed', '', 'field_643815a92e128', '', '', '2023-04-13 11:48:46', '2023-04-13 14:48:46', '', 11, 'http://outsideco.com.br/site/?post_type=acf-field&p=13', 1, 'acf-field', '', 0),
(14, 1, '2023-04-13 11:48:46', '2023-04-13 14:48:46', 'a:10:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'E-mail', 'email', 'publish', 'closed', 'closed', '', 'field_643815be2e129', '', '', '2023-04-13 11:48:46', '2023-04-13 14:48:46', '', 11, 'http://outsideco.com.br/site/?post_type=acf-field&p=14', 2, 'acf-field', '', 0),
(15, 1, '2023-04-13 11:48:46', '2023-04-13 14:48:46', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_643815d82e12a', '', '', '2023-04-13 11:48:46', '2023-04-13 14:48:46', '', 11, 'http://outsideco.com.br/site/?post_type=acf-field&p=15', 3, 'acf-field', '', 0),
(16, 1, '2023-04-13 11:48:46', '2023-04-13 14:48:46', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_643815ee2e12b', '', '', '2023-04-13 11:48:46', '2023-04-13 14:48:46', '', 11, 'http://outsideco.com.br/site/?post_type=acf-field&p=16', 4, 'acf-field', '', 0),
(17, 1, '2023-04-13 11:48:46', '2023-04-13 14:48:46', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_643815fc2e12c', '', '', '2023-04-13 11:48:46', '2023-04-13 14:48:46', '', 11, 'http://outsideco.com.br/site/?post_type=acf-field&p=17', 5, 'acf-field', '', 0),
(18, 1, '2023-04-13 11:48:46', '2023-04-13 14:48:46', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Linkedin', 'linkedin', 'publish', 'closed', 'closed', '', 'field_6438160f2e12d', '', '', '2023-04-13 11:48:46', '2023-04-13 14:48:46', '', 11, 'http://outsideco.com.br/site/?post_type=acf-field&p=18', 6, 'acf-field', '', 0),
(19, 1, '2023-04-13 11:48:46', '2023-04-13 14:48:46', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Pinterest', 'pinterest', 'publish', 'closed', 'closed', '', 'field_643816362e12e', '', '', '2023-04-13 11:48:46', '2023-04-13 14:48:46', '', 11, 'http://outsideco.com.br/site/?post_type=acf-field&p=19', 7, 'acf-field', '', 0),
(20, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"9";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_64383560d2471', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 0, 'http://outsideco.com.br/site/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Banner topo', 'banner_topo', 'publish', 'closed', 'closed', '', 'field_643835611ae3a', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:29:"Proporção ideal 1920x794px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:9:"carrossel";}', 'Imagem', 'imagem_banner', 'publish', 'closed', 'closed', '', 'field_6438357e1ae3b', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=22', 1, 'acf-field', '', 0),
(23, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Sobre', 'sobre', 'publish', 'closed', 'closed', '', 'field_643835c91ae3c', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=23', 2, 'acf-field', '', 0),
(24, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Subtítulo', 'subtitulo_sobre', 'publish', 'closed', 'closed', '', 'field_643835ef1ae3d', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=24', 3, 'acf-field', '', 0),
(25, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título 1', 'titulo_1_sobre', 'publish', 'closed', 'closed', '', 'field_643836061ae3e', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=25', 4, 'acf-field', '', 0),
(26, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:6:"medium";}', 'Logo', 'logo_sobre', 'publish', 'closed', 'closed', '', 'field_6438361e1ae40', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=26', 5, 'acf-field', '', 0),
(27, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título 2', 'titulo_2_sobre', 'publish', 'closed', 'closed', '', 'field_643836111ae3f', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=27', 6, 'acf-field', '', 0),
(28, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Texto', 'texto_sobre', 'publish', 'closed', 'closed', '', 'field_6438362f1ae41', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=28', 7, 'acf-field', '', 0),
(29, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Últimas notícias', 'ultimas_noticias', 'publish', 'closed', 'closed', '', 'field_643836441ae42', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=29', 8, 'acf-field', '', 0),
(30, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo_noticias', 'publish', 'closed', 'closed', '', 'field_6438365b1ae43', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=30', 9, 'acf-field', '', 0),
(31, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:0:"";s:13:"rows_per_page";i:20;}', 'Lista', 'lista_noticias', 'publish', 'closed', 'closed', '', 'field_643836bc1ae44', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=31', 10, 'acf-field', '', 0),
(32, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Data', 'data', 'publish', 'closed', 'closed', '', 'field_643836de1ae45', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 31, 'http://outsideco.com.br/site/?post_type=acf-field&p=32', 0, 'acf-field', '', 0),
(33, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_643836e61ae46', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 31, 'http://outsideco.com.br/site/?post_type=acf-field&p=33', 1, 'acf-field', '', 0),
(34, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:11:"placeholder";s:0:"";s:9:"new_lines";s:0:"";}', 'Resumo', 'resumo', 'publish', 'closed', 'closed', '', 'field_643836f01ae47', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 31, 'http://outsideco.com.br/site/?post_type=acf-field&p=34', 2, 'acf-field', '', 0),
(35, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_643836fc1ae48', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 31, 'http://outsideco.com.br/site/?post_type=acf-field&p=35', 3, 'acf-field', '', 0),
(36, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:28:"Proporção ideal 500x333px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:19:"capa-ultm-conteudos";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_643838691ae56', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 31, 'http://outsideco.com.br/site/?post_type=acf-field&p=36', 4, 'acf-field', '', 0),
(37, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Destaques', 'hora_de_viajar', 'publish', 'closed', 'closed', '', 'field_6438371e1ae49', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=37', 11, 'acf-field', '', 0),
(38, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:0:"";s:13:"rows_per_page";i:20;}', 'Lista', 'lista_destaques', 'publish', 'closed', 'closed', '', 'field_6438378b1ae4c', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 20, 'http://outsideco.com.br/site/?post_type=acf-field&p=38', 12, 'acf-field', '', 0),
(39, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título chamada', 'titulo_chamada', 'publish', 'closed', 'closed', '', 'field_6438379c1ae4d', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 38, 'http://outsideco.com.br/site/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:11:"placeholder";s:0:"";s:9:"new_lines";s:2:"br";}', 'Texto chamada', 'texto_chamada', 'publish', 'closed', 'closed', '', 'field_643837bd1ae4e', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 38, 'http://outsideco.com.br/site/?post_type=acf-field&p=40', 1, 'acf-field', '', 0),
(41, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Data', 'data', 'publish', 'closed', 'closed', '', 'field_643837e11ae4f', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 38, 'http://outsideco.com.br/site/?post_type=acf-field&p=41', 2, 'acf-field', '', 0),
(42, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_643837ed1ae50', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 38, 'http://outsideco.com.br/site/?post_type=acf-field&p=42', 3, 'acf-field', '', 0),
(43, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:11:"placeholder";s:0:"";s:9:"new_lines";s:0:"";}', 'Resumo', 'resumo', 'publish', 'closed', 'closed', '', 'field_643837f61ae51', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 38, 'http://outsideco.com.br/site/?post_type=acf-field&p=43', 4, 'acf-field', '', 0),
(44, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título do botão', 'titulo_botao', 'publish', 'closed', 'closed', '', 'field_643838011ae52', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 38, 'http://outsideco.com.br/site/?post_type=acf-field&p=44', 5, 'acf-field', '', 0),
(45, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link do botão', 'link_botao', 'publish', 'closed', 'closed', '', 'field_6438380f1ae53', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 38, 'http://outsideco.com.br/site/?post_type=acf-field&p=45', 6, 'acf-field', '', 0),
(46, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Letra da imagem', 'letra_imagem', 'publish', 'closed', 'closed', '', 'field_643838241ae54', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 38, 'http://outsideco.com.br/site/?post_type=acf-field&p=46', 7, 'acf-field', '', 0),
(47, 1, '2023-04-13 14:17:53', '2023-04-13 17:17:53', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:28:"Proporção ideal 527x288px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:10:"capa-viaje";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_6438383e1ae55', '', '', '2023-04-13 14:17:53', '2023-04-13 17:17:53', '', 38, 'http://outsideco.com.br/site/?post_type=acf-field&p=47', 8, 'acf-field', '', 0),
(48, 1, '2023-04-13 14:19:03', '2023-04-13 17:19:03', '', 'slider2', '', 'inherit', 'open', 'closed', '', 'slider2', '', '', '2023-04-13 14:19:03', '2023-04-13 17:19:03', '', 9, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2023-04-13 14:22:10', '2023-04-13 17:22:10', '', 'blog1', '', 'inherit', 'open', 'closed', '', 'blog1', '', '', '2023-04-13 14:22:10', '2023-04-13 17:22:10', '', 9, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/blog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2023-04-13 14:22:10', '2023-04-13 17:22:10', '', 'blog2', '', 'inherit', 'open', 'closed', '', 'blog2', '', '', '2023-04-13 14:22:10', '2023-04-13 17:22:10', '', 9, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/blog2.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2023-04-13 14:22:10', '2023-04-13 17:22:10', '', 'blog3', '', 'inherit', 'open', 'closed', '', 'blog3', '', '', '2023-04-13 14:22:10', '2023-04-13 17:22:10', '', 9, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/blog3.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2023-04-13 14:29:37', '2023-04-13 17:29:37', '', 'time-to-travel', '', 'inherit', 'open', 'closed', '', 'time-to-travel', '', '', '2023-04-13 14:29:37', '2023-04-13 17:29:37', '', 9, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/time-to-travel.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2023-04-13 14:30:43', '2023-04-13 17:30:43', '', 'slider1', '', 'inherit', 'open', 'closed', '', 'slider1', '', '', '2023-04-13 14:30:43', '2023-04-13 17:30:43', '', 9, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/slider1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2023-04-13 14:32:01', '2023-04-13 17:32:01', '', 'miado1', '', 'inherit', 'open', 'closed', '', 'miado1', '', '', '2023-04-13 14:32:01', '2023-04-13 17:32:01', '', 9, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/miado1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2023-04-13 14:33:03', '2023-04-13 17:33:03', '', 'nutri', '', 'inherit', 'open', 'closed', '', 'nutri', '', '', '2023-04-13 14:33:03', '2023-04-13 17:33:03', '', 9, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/nutri.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2023-04-13 14:33:10', '2023-04-13 17:33:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-04-13 14:33:10', '2023-04-13 17:33:10', '', 9, 'http://outsideco.com.br/site/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-04-13 15:10:17', '2023-04-13 18:10:17', '', 'Travel time', '', 'publish', 'closed', 'closed', '', 'travel-time', '', '', '2023-04-14 17:46:06', '2023-04-14 20:46:06', '', 0, 'https://outsideco.com.br/site/?page_id=57', 2, 'page', '', 0),
(58, 1, '2023-04-13 15:10:17', '2023-04-13 18:10:17', '2', 'Travel time', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2023-04-13 15:10:17', '2023-04-13 18:10:17', '', 57, 'https://outsideco.com.br/site/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-04-13 15:10:20', '2023-04-13 18:10:20', '', 'Travel time', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2023-04-13 15:10:20', '2023-04-13 18:10:20', '', 57, 'https://outsideco.com.br/site/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-04-13 15:11:45', '2023-04-13 18:11:45', 'a:8:{s:8:"location";a:4:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"57";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"68";}}i:2;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"70";}}i:3;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"72";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Padrão', 'padrao', 'publish', 'closed', 'closed', '', 'group_6438458f20ff9', '', '', '2023-04-14 17:46:54', '2023-04-14 20:46:54', '', 0, 'https://outsideco.com.br/site/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2023-04-13 15:11:45', '2023-04-13 18:11:45', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Carrossel', 'carrossel', 'publish', 'closed', 'closed', '', 'field_6438458f8c3b6', '', '', '2023-04-13 15:11:45', '2023-04-13 18:11:45', '', 60, 'https://outsideco.com.br/site/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2023-04-13 15:11:45', '2023-04-13 18:11:45', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:0:"";s:13:"rows_per_page";i:20;}', 'Lista', 'lista_carrossel', 'publish', 'closed', 'closed', '', 'field_643845b78c3b7', '', '', '2023-04-13 15:11:45', '2023-04-13 18:11:45', '', 60, 'https://outsideco.com.br/site/?post_type=acf-field&p=62', 1, 'acf-field', '', 0),
(63, 1, '2023-04-13 15:11:45', '2023-04-13 18:11:45', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:29:"Proporção ideal 1037x692px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:12:"medium_large";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_643845c98c3b8', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 62, 'https://outsideco.com.br/site/?post_type=acf-field&#038;p=63', 0, 'acf-field', '', 0),
(68, 1, '2023-04-14 15:13:43', '2023-04-14 18:13:43', '', 'Nothing basic', '', 'publish', 'closed', 'closed', '', 'nothing-basic', '', '', '2023-04-14 17:48:51', '2023-04-14 20:48:51', '', 0, 'http://outsideco.com.br/site/?page_id=68', 3, 'page', '', 0),
(69, 1, '2023-04-14 15:13:43', '2023-04-14 18:13:43', '', 'Nothing basic', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-04-14 15:13:43', '2023-04-14 18:13:43', '', 68, 'http://outsideco.com.br/site/?p=69', 0, 'revision', '', 0),
(70, 1, '2023-04-14 15:14:19', '2023-04-14 18:14:19', '', 'Hey nutri', '', 'publish', 'closed', 'closed', '', 'hey-nutri', '', '', '2023-04-14 17:50:20', '2023-04-14 20:50:20', '', 0, 'http://outsideco.com.br/site/?page_id=70', 4, 'page', '', 0),
(71, 1, '2023-04-14 15:14:19', '2023-04-14 18:14:19', '', 'Hey nutri', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2023-04-14 15:14:19', '2023-04-14 18:14:19', '', 70, 'http://outsideco.com.br/site/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-04-14 15:14:41', '2023-04-14 18:14:41', '', 'Brunch time', '', 'publish', 'closed', 'closed', '', 'brunch-time', '', '', '2023-04-14 17:52:17', '2023-04-14 20:52:17', '', 0, 'http://outsideco.com.br/site/?page_id=72', 5, 'page', '', 0),
(73, 1, '2023-04-14 15:14:41', '2023-04-14 18:14:41', '', 'Brunch time', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2023-04-14 15:14:41', '2023-04-14 18:14:41', '', 72, 'http://outsideco.com.br/site/?p=73', 0, 'revision', '', 0),
(74, 1, '2023-04-14 17:43:23', '2023-04-14 20:43:23', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Tema', 'tema', 'publish', 'closed', 'closed', '', 'field_6439b9cdafaba', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 60, 'http://outsideco.com.br/site/?post_type=acf-field&p=74', 2, 'acf-field', '', 0),
(75, 1, '2023-04-14 17:43:23', '2023-04-14 20:43:23', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Subtítulo', 'subtitulo_tema', 'publish', 'closed', 'closed', '', 'field_6439b9d8afabb', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 60, 'http://outsideco.com.br/site/?post_type=acf-field&p=75', 3, 'acf-field', '', 0),
(76, 1, '2023-04-14 17:43:23', '2023-04-14 20:43:23', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:11:"placeholder";s:0:"";s:9:"new_lines";s:2:"br";}', 'Título', 'titulo_tema', 'publish', 'closed', 'closed', '', 'field_6439b9fdafabc', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 60, 'http://outsideco.com.br/site/?post_type=acf-field&p=76', 4, 'acf-field', '', 0),
(77, 1, '2023-04-14 17:43:23', '2023-04-14 20:43:23', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Chamada', 'chamada_tema', 'publish', 'closed', 'closed', '', 'field_6439ba23afabd', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 60, 'http://outsideco.com.br/site/?post_type=acf-field&p=77', 5, 'acf-field', '', 0),
(78, 1, '2023-04-14 17:43:23', '2023-04-14 20:43:23', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Texto', 'texto_tema', 'publish', 'closed', 'closed', '', 'field_6439ba33afabe', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 60, 'http://outsideco.com.br/site/?post_type=acf-field&p=78', 6, 'acf-field', '', 0),
(79, 1, '2023-04-14 17:43:23', '2023-04-14 20:43:23', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Letra da imagem', 'letra_imagem_tema', 'publish', 'closed', 'closed', '', 'field_6439ba4dafabf', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 60, 'http://outsideco.com.br/site/?post_type=acf-field&p=79', 7, 'acf-field', '', 0),
(80, 1, '2023-04-14 17:43:23', '2023-04-14 20:43:23', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:28:"Proporção ideal 527x340px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:11:"capa-padrao";}', 'Imagem', 'imagem_tema', 'publish', 'closed', 'closed', '', 'field_6439ba63afac0', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 60, 'http://outsideco.com.br/site/?post_type=acf-field&p=80', 8, 'acf-field', '', 0),
(81, 1, '2023-04-14 17:43:23', '2023-04-14 20:43:23', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Sobre', 'sobre', 'publish', 'closed', 'closed', '', 'field_6439ba8cafac1', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 60, 'http://outsideco.com.br/site/?post_type=acf-field&p=81', 9, 'acf-field', '', 0),
(82, 1, '2023-04-14 17:43:23', '2023-04-14 20:43:23', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Subtítulo', 'subtitulo_sobre', 'publish', 'closed', 'closed', '', 'field_6439ba96afac2', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 60, 'http://outsideco.com.br/site/?post_type=acf-field&p=82', 10, 'acf-field', '', 0),
(83, 1, '2023-04-14 17:43:23', '2023-04-14 20:43:23', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:11:"placeholder";s:0:"";s:9:"new_lines";s:2:"br";}', 'Título', 'titulo_sobre', 'publish', 'closed', 'closed', '', 'field_6439bac4afac3', '', '', '2023-04-14 17:43:23', '2023-04-14 20:43:23', '', 60, 'http://outsideco.com.br/site/?post_type=acf-field&p=83', 11, 'acf-field', '', 0),
(84, 1, '2023-04-14 17:44:01', '2023-04-14 20:44:01', '', 'galeria-travel1', '', 'inherit', 'open', 'closed', '', 'galeria-travel1', '', '', '2023-04-14 17:44:01', '2023-04-14 20:44:01', '', 57, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/galeria-travel1.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2023-04-14 17:44:02', '2023-04-14 20:44:02', '', 'galeria-travel2', '', 'inherit', 'open', 'closed', '', 'galeria-travel2', '', '', '2023-04-14 17:44:02', '2023-04-14 20:44:02', '', 57, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/galeria-travel2.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2023-04-14 17:44:51', '2023-04-14 20:44:51', '', 'galeria-travel3', '', 'inherit', 'open', 'closed', '', 'galeria-travel3', '', '', '2023-04-14 17:44:51', '2023-04-14 20:44:51', '', 57, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/galeria-travel3.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2023-04-14 17:45:51', '2023-04-14 20:45:51', '', 'time-to-travel2', '', 'inherit', 'open', 'closed', '', 'time-to-travel2', '', '', '2023-04-14 17:45:51', '2023-04-14 20:45:51', '', 57, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/time-to-travel2.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2023-04-14 17:46:06', '2023-04-14 20:46:06', '', 'Travel time', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2023-04-14 17:46:06', '2023-04-14 20:46:06', '', 57, 'http://outsideco.com.br/site/?p=90', 0, 'revision', '', 0),
(91, 1, '2023-04-14 17:47:53', '2023-04-14 20:47:53', '', 'fashion7', '', 'inherit', 'open', 'closed', '', 'fashion7', '', '', '2023-04-14 17:47:53', '2023-04-14 20:47:53', '', 68, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion7.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2023-04-14 17:47:54', '2023-04-14 20:47:54', '', 'fashion5', '', 'inherit', 'open', 'closed', '', 'fashion5', '', '', '2023-04-14 17:47:54', '2023-04-14 20:47:54', '', 68, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion5.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2023-04-14 17:47:55', '2023-04-14 20:47:55', '', 'fashion6', '', 'inherit', 'open', 'closed', '', 'fashion6', '', '', '2023-04-14 17:47:55', '2023-04-14 20:47:55', '', 68, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion6.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2023-04-14 17:48:39', '2023-04-14 20:48:39', '', 'fashion', '', 'inherit', 'open', 'closed', '', 'fashion', '', '', '2023-04-14 17:48:39', '2023-04-14 20:48:39', '', 68, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2023-04-14 17:48:51', '2023-04-14 20:48:51', '', 'Nothing basic', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-04-14 17:48:51', '2023-04-14 20:48:51', '', 68, 'http://outsideco.com.br/site/?p=95', 0, 'revision', '', 0),
(96, 1, '2023-04-14 17:49:30', '2023-04-14 20:49:30', '', 'nutri2', '', 'inherit', 'open', 'closed', '', 'nutri2', '', '', '2023-04-14 17:49:30', '2023-04-14 20:49:30', '', 70, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/nutri2.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2023-04-14 17:49:31', '2023-04-14 20:49:31', '', 'nutri3', '', 'inherit', 'open', 'closed', '', 'nutri3', '', '', '2023-04-14 17:49:31', '2023-04-14 20:49:31', '', 70, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/nutri3.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2023-04-14 17:49:32', '2023-04-14 20:49:32', '', 'nutri4', '', 'inherit', 'open', 'closed', '', 'nutri4', '', '', '2023-04-14 17:49:32', '2023-04-14 20:49:32', '', 70, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/nutri4.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2023-04-14 17:50:08', '2023-04-14 20:50:08', '', 'nutri5', '', 'inherit', 'open', 'closed', '', 'nutri5', '', '', '2023-04-14 17:50:08', '2023-04-14 20:50:08', '', 70, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/nutri5.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2023-04-14 17:50:20', '2023-04-14 20:50:20', '', 'Hey nutri', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2023-04-14 17:50:20', '2023-04-14 20:50:20', '', 70, 'http://outsideco.com.br/site/?p=100', 0, 'revision', '', 0),
(101, 1, '2023-04-14 17:51:10', '2023-04-14 20:51:10', '', 'lunch1', '', 'inherit', 'open', 'closed', '', 'lunch1', '', '', '2023-04-14 17:51:10', '2023-04-14 20:51:10', '', 72, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/lunch1.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2023-04-14 17:51:10', '2023-04-14 20:51:10', '', 'lunch2', '', 'inherit', 'open', 'closed', '', 'lunch2', '', '', '2023-04-14 17:51:10', '2023-04-14 20:51:10', '', 72, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/lunch2.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2023-04-14 17:51:11', '2023-04-14 20:51:11', '', 'lunch3', '', 'inherit', 'open', 'closed', '', 'lunch3', '', '', '2023-04-14 17:51:11', '2023-04-14 20:51:11', '', 72, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/lunch3.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2023-04-14 17:51:56', '2023-04-14 20:51:56', '', 'lunch4', '', 'inherit', 'open', 'closed', '', 'lunch4', '', '', '2023-04-14 17:51:56', '2023-04-14 20:51:56', '', 72, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/lunch4.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2023-04-14 17:52:17', '2023-04-14 20:52:17', '', 'Brunch time', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2023-04-14 17:52:17', '2023-04-14 20:52:17', '', 72, 'http://outsideco.com.br/site/?p=105', 0, 'revision', '', 0),
(106, 1, '2023-04-14 18:35:57', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 18:35:57', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=106', 0, 'post', '', 0),
(107, 1, '2023-04-14 18:36:06', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-14 18:36:06', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?page_id=107', 0, 'page', '', 0),
(108, 1, '2023-04-14 19:05:00', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:05:00', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=108', 0, 'post', '', 0),
(109, 1, '2023-04-14 19:05:07', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-14 19:05:07', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?page_id=109', 0, 'page', '', 0),
(110, 1, '2023-04-14 19:05:13', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:05:13', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=110', 0, 'post', '', 0),
(111, 1, '2023-04-14 19:07:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:07:21', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=111', 0, 'post', '', 0),
(112, 1, '2023-04-14 19:08:56', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-14 19:08:56', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?page_id=112', 0, 'page', '', 0),
(113, 1, '2023-04-14 19:11:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:11:21', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=113', 0, 'post', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(114, 1, '2023-04-14 19:12:12', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:12:12', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=114', 0, 'post', '', 0),
(115, 1, '2023-04-14 19:12:26', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:12:26', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=115', 0, 'post', '', 0),
(116, 1, '2023-04-14 19:12:56', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:12:56', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=116', 0, 'post', '', 0),
(117, 1, '2023-04-14 19:13:14', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:13:14', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=117', 0, 'post', '', 0),
(118, 1, '2023-04-14 19:14:16', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:14:16', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=118', 0, 'post', '', 0),
(119, 1, '2023-04-14 19:14:23', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:14:23', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=119', 0, 'post', '', 0),
(120, 1, '2023-04-14 19:14:47', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:14:47', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=120', 0, 'post', '', 0),
(128, 1, '2023-04-14 19:25:26', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:25:26', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=128', 0, 'post', '', 0),
(129, 1, '2023-04-14 19:26:04', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:26:04', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=129', 0, 'post', '', 0),
(130, 1, '2023-04-14 19:26:13', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-14 19:26:13', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?page_id=130', 0, 'page', '', 0),
(131, 1, '2023-04-14 19:26:20', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:26:20', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=131', 0, 'post', '', 0),
(132, 1, '2023-04-14 19:27:52', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:27:52', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=132', 0, 'post', '', 0),
(133, 1, '2023-04-14 19:30:41', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 19:30:41', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=133', 0, 'post', '', 0),
(140, 1, '2023-04-15 09:21:39', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-15 09:21:39', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=140', 0, 'post', '', 0),
(141, 1, '2023-04-15 09:22:49', '2023-04-15 12:22:49', '', 'Patagônia', '', 'publish', 'open', 'open', '', 'patagonia', '', '', '2023-04-18 14:12:00', '2023-04-18 17:12:00', '', 0, 'http://outsideco.com.br/site/?p=141', 0, 'post', '', 0),
(142, 1, '2023-04-15 09:22:49', '2023-04-15 12:22:49', '', 'Patagônia', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2023-04-15 09:22:49', '2023-04-15 12:22:49', '', 141, 'http://outsideco.com.br/site/?p=142', 0, 'revision', '', 0),
(143, 1, '2023-04-15 09:32:54', '2023-04-15 12:32:54', '', 'Itália', '', 'publish', 'open', 'open', '', 'italia', '', '', '2023-04-17 22:20:02', '2023-04-18 01:20:02', '', 0, 'http://outsideco.com.br/site/?p=143', 0, 'post', '', 0),
(144, 1, '2023-04-15 09:32:54', '2023-04-15 12:32:54', '', 'Itália', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-04-15 09:32:54', '2023-04-15 12:32:54', '', 143, 'http://outsideco.com.br/site/?p=144', 0, 'revision', '', 0),
(145, 1, '2023-04-15 09:33:09', '2023-04-15 12:33:09', '', 'Havaí', '', 'publish', 'open', 'open', '', 'havai', '', '', '2023-04-18 14:14:54', '2023-04-18 17:14:54', '', 0, 'http://outsideco.com.br/site/?p=145', 0, 'post', '', 0),
(146, 1, '2023-04-15 09:33:09', '2023-04-15 12:33:09', '', 'Havaí', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2023-04-15 09:33:09', '2023-04-15 12:33:09', '', 145, 'http://outsideco.com.br/site/?p=146', 0, 'revision', '', 0),
(147, 1, '2023-04-15 09:34:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-15 09:34:22', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=147', 0, 'post', '', 0),
(148, 1, '2023-04-15 09:34:58', '2023-04-15 12:34:58', '', 'DROP/0001', '', 'publish', 'open', 'open', '', 'drop-0001', '', '', '2023-04-19 00:20:09', '2023-04-19 03:20:09', '', 0, 'http://outsideco.com.br/site/?p=148', 0, 'post', '', 0),
(149, 1, '2023-04-15 09:34:58', '2023-04-15 12:34:58', '', 'DROP/0001', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2023-04-15 09:34:58', '2023-04-15 12:34:58', '', 148, 'http://outsideco.com.br/site/?p=149', 0, 'revision', '', 0),
(150, 1, '2023-04-15 09:36:33', '2023-04-15 12:36:33', '', 'DROP/0002', '', 'publish', 'open', 'open', '', 'drop-0002', '', '', '2023-04-19 00:20:23', '2023-04-19 03:20:23', '', 0, 'http://outsideco.com.br/site/?p=150', 0, 'post', '', 0),
(151, 1, '2023-04-15 09:36:33', '2023-04-15 12:36:33', '', 'DROP/0002', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2023-04-15 09:36:33', '2023-04-15 12:36:33', '', 150, 'http://outsideco.com.br/site/?p=151', 0, 'revision', '', 0),
(152, 1, '2023-04-15 09:36:42', '2023-04-15 12:36:42', '', 'DROP/0003', '', 'publish', 'open', 'open', '', 'drop-0003', '', '', '2023-04-19 00:20:30', '2023-04-19 03:20:30', '', 0, 'http://outsideco.com.br/site/?p=152', 0, 'post', '', 0),
(153, 1, '2023-04-15 09:36:42', '2023-04-15 12:36:42', '', 'DROP/0003', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2023-04-15 09:36:42', '2023-04-15 12:36:42', '', 152, 'http://outsideco.com.br/site/?p=153', 0, 'revision', '', 0),
(154, 1, '2023-04-15 10:00:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-15 10:00:21', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=154', 0, 'post', '', 0),
(155, 1, '2023-04-15 10:01:04', '2023-04-15 13:01:04', '', 'Receitas', '', 'publish', 'open', 'open', '', 'receitas', '', '', '2023-04-15 10:01:04', '2023-04-15 13:01:04', '', 0, 'http://outsideco.com.br/site/?p=155', 0, 'post', '', 0),
(156, 1, '2023-04-15 10:01:04', '2023-04-15 13:01:04', '', 'Receitas', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2023-04-15 10:01:04', '2023-04-15 13:01:04', '', 155, 'http://outsideco.com.br/site/?p=156', 0, 'revision', '', 0),
(157, 1, '2023-04-15 10:01:24', '2023-04-15 13:01:24', '', 'Work out', '', 'publish', 'open', 'open', '', 'work-out', '', '', '2023-04-15 10:01:24', '2023-04-15 13:01:24', '', 0, 'http://outsideco.com.br/site/?p=157', 0, 'post', '', 0),
(158, 1, '2023-04-15 10:01:24', '2023-04-15 13:01:24', '', 'Work out', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2023-04-15 10:01:24', '2023-04-15 13:01:24', '', 157, 'http://outsideco.com.br/site/?p=158', 0, 'revision', '', 0),
(159, 1, '2023-04-15 10:03:08', '2023-04-15 13:03:08', '', 'Parceiros', '', 'publish', 'open', 'open', '', 'parceiros', '', '', '2023-04-15 10:03:18', '2023-04-15 13:03:18', '', 0, 'http://outsideco.com.br/site/?p=159', 0, 'post', '', 0),
(160, 1, '2023-04-15 10:03:08', '2023-04-15 13:03:08', '', 'Parceiros', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2023-04-15 10:03:08', '2023-04-15 13:03:08', '', 159, 'http://outsideco.com.br/site/?p=160', 0, 'revision', '', 0),
(163, 1, '2023-04-15 10:17:59', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-15 10:17:59', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=163', 0, 'post', '', 0),
(164, 1, '2023-04-15 10:29:12', '2023-04-15 13:29:12', '<img class="size-medium wp-image-222 alignright" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog1-1-300x200.jpg" alt="" width="400" />\r\n<h2>Patagônia</h2>\r\nA Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma).\r\n\r\nA Patagônia é uma região que abrange uma vasta área no extremo sul da América do Sul ocupando partes da Argentina e do Chile.\r\n\r\nA Cordilheira dos Andes delimita a fronteira entre os dois países.\r\n\r\nO território possui desde pastagens, desertos, fiordes glaciais á florestas e cachoeiras. A famosa rodovia RN-40, na Argentina, passa pelos cumes do monte Fitz Roy e pela geleira Perito Moreno, no Parque Nacional Los Glaciares.\r\n\r\nA paisagem supera qualquer expectativa, não importa a trilha ou passeio, em qualquer lugar que estiver seja no meio da estrada ou dentro da cidade, ao redor o visual é incrível, de deixar a boca aberta! Ao longo do post vocês verão algumas fotos que tirei durante a viagem 😃\r\n\r\n<img class="size-medium wp-image-223 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog3-1-300x200.jpg" alt="" width="400" />\r\n<h3>THE TRIP</h3>\r\nFiz uma viagem de 15 dias totais, sendo 10 na Patagônia e 5 em Buenos Aires. Fui em Novembro, época de primavera quase verão, então o clima estava perfeito na medida certa! A temperatura varia muito, de 23 graus á sensação térmica de 5 graus. Por ser primavera, pegamos céu azul e sol na maior parte da viagem, dias lindos e ensolarados.', 'Post viagens', '', 'publish', 'open', 'open', '', 'post-viagens', '', '', '2023-04-18 19:40:37', '2023-04-18 22:40:37', '', 0, 'http://outsideco.com.br/site/?p=164', 0, 'post', '', 0),
(165, 1, '2023-04-15 10:29:12', '2023-04-15 13:29:12', '', 'Post viagens', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2023-04-15 10:29:12', '2023-04-15 13:29:12', '', 164, 'http://outsideco.com.br/site/?p=165', 0, 'revision', '', 0),
(166, 1, '2023-04-15 10:36:24', '2023-04-15 13:36:24', '', 'Post restaurante', '', 'publish', 'open', 'open', '', 'post-restaurante', '', '', '2023-04-18 19:33:11', '2023-04-18 22:33:11', '', 0, 'http://outsideco.com.br/site/?p=166', 0, 'post', '', 0),
(167, 1, '2023-04-15 10:36:24', '2023-04-15 13:36:24', '', 'Post restaurante', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2023-04-15 10:36:24', '2023-04-15 13:36:24', '', 166, 'http://outsideco.com.br/site/?p=167', 0, 'revision', '', 0),
(170, 1, '2023-04-15 11:33:59', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-15 11:33:59', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=170', 0, 'post', '', 0),
(173, 1, '2023-04-17 10:00:16', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 10:00:16', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?post_type=acf-field-group&p=173', 0, 'acf-field-group', '', 0),
(175, 1, '2023-04-17 10:27:47', '2023-04-17 13:27:47', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_template";s:8:"operator";s:2:"==";s:5:"value";s:10:"single.php";}}}s:8:"position";s:4:"side";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Post padrão', 'post-padrao', 'trash', 'closed', 'closed', '', 'group_643d49218cd68__trashed', '', '', '2023-04-17 11:48:40', '2023-04-17 14:48:40', '', 0, 'https://outsideco.com.br/site/?post_type=acf-field-group&#038;p=175', 0, 'acf-field-group', '', 0),
(176, 1, '2023-04-17 10:27:47', '2023-04-17 13:27:47', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Subtítulo', 'subtitulo', 'trash', 'closed', 'closed', '', 'field_643d49219175c__trashed', '', '', '2023-04-17 11:48:40', '2023-04-17 14:48:40', '', 175, 'https://outsideco.com.br/site/?post_type=acf-field&#038;p=176', 0, 'acf-field', '', 0),
(178, 1, '2023-04-17 10:30:05', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 10:30:05', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?page_id=178', 0, 'page', '', 0),
(179, 1, '2023-04-17 10:30:25', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 10:30:25', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=179', 0, 'post', '', 0),
(180, 1, '2023-04-17 10:33:52', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 10:33:52', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=180', 0, 'post', '', 0),
(181, 1, '2023-04-17 10:34:01', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 10:34:01', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=181', 0, 'post', '', 0),
(184, 1, '2023-04-17 11:34:34', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 11:34:34', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=184', 0, 'post', '', 0),
(185, 1, '2023-04-17 11:46:35', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 11:46:35', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=185', 0, 'post', '', 0),
(186, 1, '2023-04-17 11:49:27', '2023-04-17 14:49:27', 'a:8:{s:8:"location";a:2:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_template";s:8:"operator";s:2:"==";s:5:"value";s:7:"default";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"!=";s:5:"value";s:7:"default";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Post padrão', 'post-padrao', 'acf-disabled', 'closed', 'closed', '', 'group_643d5c546c0b0', '', '', '2023-04-18 19:09:54', '2023-04-18 22:09:54', '', 0, 'https://outsideco.com.br/site/?post_type=acf-field-group&#038;p=186', 0, 'acf-field-group', '', 0),
(187, 1, '2023-04-17 11:49:27', '2023-04-17 14:49:27', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_643d5c5478992', '', '', '2023-04-17 11:49:27', '2023-04-17 14:49:27', '', 186, 'https://outsideco.com.br/site/?post_type=acf-field&p=187', 0, 'acf-field', '', 0),
(189, 1, '2023-04-17 12:20:36', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 12:20:36', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=189', 0, 'post', '', 0),
(190, 1, '2023-04-17 12:21:33', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 12:21:33', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=190', 0, 'post', '', 0),
(191, 1, '2023-04-17 12:26:50', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 12:26:50', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=191', 0, 'post', '', 0),
(192, 1, '2023-04-17 12:27:01', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 12:27:01', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=192', 0, 'post', '', 0),
(193, 1, '2023-04-17 12:27:16', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 12:27:16', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=193', 0, 'post', '', 0),
(194, 1, '2023-04-17 12:33:50', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 12:33:50', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=194', 0, 'post', '', 0),
(196, 1, '2023-04-17 12:57:59', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 12:57:59', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?page_id=196', 0, 'page', '', 0),
(197, 1, '2023-04-17 12:58:26', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 12:58:26', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?page_id=197', 0, 'page', '', 0),
(198, 1, '2023-04-17 12:58:27', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 12:58:27', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?page_id=198', 0, 'page', '', 0),
(200, 1, '2023-04-17 13:04:54', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 13:04:54', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=200', 0, 'post', '', 0),
(201, 1, '2023-04-17 13:04:58', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 13:04:58', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?p=201', 0, 'post', '', 0),
(202, 1, '2023-04-17 13:05:36', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 13:05:36', '0000-00-00 00:00:00', '', 0, 'https://outsideco.com.br/site/?page_id=202', 0, 'page', '', 0),
(204, 1, '2023-04-17 21:12:51', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 21:12:51', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=204', 0, 'post', '', 0),
(205, 1, '2023-04-17 21:13:10', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 21:13:10', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=205', 0, 'post', '', 0),
(206, 1, '2023-04-17 21:13:29', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 21:13:29', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=206', 0, 'post', '', 0),
(207, 1, '2023-04-17 21:29:53', '2023-04-18 00:29:53', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_template";s:8:"operator";s:2:"==";s:5:"value";s:22:"template-to-travel.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Template to travel', 'template-to-travel', 'publish', 'closed', 'closed', '', 'group_643de1f881f7a', '', '', '2023-04-17 21:52:50', '2023-04-18 00:52:50', '', 0, 'http://outsideco.com.br/site/?post_type=acf-field-group&#038;p=207', 0, 'acf-field-group', '', 0),
(208, 1, '2023-04-17 21:29:53', '2023-04-18 00:29:53', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Banner topo', 'banner_topo', 'publish', 'closed', 'closed', '', 'field_643de1f871708', '', '', '2023-04-17 21:29:53', '2023-04-18 00:29:53', '', 207, 'http://outsideco.com.br/site/?post_type=acf-field&p=208', 0, 'acf-field', '', 0),
(209, 1, '2023-04-17 21:29:53', '2023-04-18 00:29:53', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:29:"Proporção ideal 1920x581px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:16:"banner-to-travel";}', 'Imagem', 'imagem_banner_topo', 'publish', 'closed', 'closed', '', 'field_643de39c71709', '', '', '2023-04-17 21:29:53', '2023-04-18 00:29:53', '', 207, 'http://outsideco.com.br/site/?post_type=acf-field&p=209', 1, 'acf-field', '', 0),
(210, 1, '2023-04-17 21:29:53', '2023-04-18 00:29:53', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Publicações', 'publicacoes', 'publish', 'closed', 'closed', '', 'field_643de3c77170a', '', '', '2023-04-17 21:29:53', '2023-04-18 00:29:53', '', 207, 'http://outsideco.com.br/site/?post_type=acf-field&p=210', 2, 'acf-field', '', 0),
(211, 1, '2023-04-17 21:29:53', '2023-04-18 00:29:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Subtítulo', 'subtitulo_publicacoes', 'publish', 'closed', 'closed', '', 'field_643de3db7170b', '', '', '2023-04-17 21:29:53', '2023-04-18 00:29:53', '', 207, 'http://outsideco.com.br/site/?post_type=acf-field&p=211', 3, 'acf-field', '', 0),
(212, 1, '2023-04-17 21:29:53', '2023-04-18 00:29:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo_publicacoes', 'publish', 'closed', 'closed', '', 'field_643de3f17170c', '', '', '2023-04-17 21:29:53', '2023-04-18 00:29:53', '', 207, 'http://outsideco.com.br/site/?post_type=acf-field&p=212', 4, 'acf-field', '', 0),
(213, 1, '2023-04-17 21:29:53', '2023-04-18 00:29:53', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:0:"";s:13:"rows_per_page";i:20;}', 'Lista', 'lista_publicacoes', 'publish', 'closed', 'closed', '', 'field_643de4037170d', '', '', '2023-04-17 21:29:53', '2023-04-18 00:29:53', '', 207, 'http://outsideco.com.br/site/?post_type=acf-field&p=213', 5, 'acf-field', '', 0),
(214, 1, '2023-04-17 21:29:53', '2023-04-18 00:29:53', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_643de4147170e', '', '', '2023-04-17 21:29:53', '2023-04-18 00:29:53', '', 213, 'http://outsideco.com.br/site/?post_type=acf-field&p=214', 0, 'acf-field', '', 0),
(215, 1, '2023-04-17 21:29:53', '2023-04-18 00:29:53', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:28:"Proporção ideal 350x360px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:6:"medium";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_643de4287170f', '', '', '2023-04-17 21:52:50', '2023-04-18 00:52:50', '', 213, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=215', 2, 'acf-field', '', 0),
(216, 1, '2023-04-17 21:37:54', '2023-04-18 00:37:54', '', 'banner-patagonia', '', 'inherit', 'open', 'closed', '', 'banner-patagonia', '', '', '2023-04-17 21:37:54', '2023-04-18 00:37:54', '', 141, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/banner-patagonia.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2023-04-17 21:39:54', '2023-04-18 00:39:54', '', 'Itália', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-04-17 21:39:54', '2023-04-18 00:39:54', '', 143, 'http://outsideco.com.br/site/?p=217', 0, 'revision', '', 0),
(218, 1, '2023-04-17 21:42:05', '2023-04-18 00:42:05', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_643de74cfd48e', '', '', '2023-04-17 21:42:05', '2023-04-18 00:42:05', '', 213, 'http://outsideco.com.br/site/?post_type=acf-field&p=218', 1, 'acf-field', '', 0),
(220, 1, '2023-04-17 21:42:56', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-17 21:42:56', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=220', 0, 'post', '', 0),
(221, 1, '2023-04-17 21:47:21', '2023-04-18 00:47:21', '<img class="size-medium wp-image-222 alignright" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog1-1-300x200.jpg" alt="" width="400" />\r\n<h2>Patagônia</h2>\r\nA Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma).\r\n\r\nA Patagônia é uma região que abrange uma vasta área no extremo sul da América do Sul ocupando partes da Argentina e do Chile.\r\n\r\nA Cordilheira dos Andes delimita a fronteira entre os dois países.\r\n\r\nO território possui desde pastagens, desertos, fiordes glaciais á florestas e cachoeiras. A famosa rodovia RN-40, na Argentina, passa pelos cumes do monte Fitz Roy e pela geleira Perito Moreno, no Parque Nacional Los Glaciares.\r\n\r\nA paisagem supera qualquer expectativa, não importa a trilha ou passeio, em qualquer lugar que estiver seja no meio da estrada ou dentro da cidade, ao redor o visual é incrível, de deixar a boca aberta! Ao longo do post vocês verão algumas fotos que tirei durante a viagem 😃\r\n\r\n<img class="size-medium wp-image-223 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog3-1-300x200.jpg" alt="" width="400" />\r\n<h3>THE TRIP</h3>\r\nFiz uma viagem de 15 dias totais, sendo 10 na Patagônia e 5 em Buenos Aires. Fui em Novembro, época de primavera quase verão, então o clima estava perfeito na medida certa! A temperatura varia muito, de 23 graus á sensação térmica de 5 graus. Por ser primavera, pegamos céu azul e sol na maior parte da viagem, dias lindos e ensolarados.', 'Post padrão', '', 'publish', 'open', 'open', '', 'post-padrao', '', '', '2023-04-17 22:26:36', '2023-04-18 01:26:36', '', 0, 'http://outsideco.com.br/site/?p=221', 0, 'post', '', 1),
(222, 1, '2023-04-17 21:44:39', '2023-04-18 00:44:39', '', 'blog1', '', 'inherit', 'open', 'closed', '', 'blog1-2', '', '', '2023-04-17 21:44:39', '2023-04-18 00:44:39', '', 221, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/blog1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2023-04-17 21:46:24', '2023-04-18 00:46:24', '', 'blog3', '', 'inherit', 'open', 'closed', '', 'blog3-2', '', '', '2023-04-17 21:46:24', '2023-04-18 00:46:24', '', 221, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/blog3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(224, 1, '2023-04-17 21:47:21', '2023-04-18 00:47:21', '<img class="size-medium wp-image-222 alignright" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog1-1-300x200.jpg" alt="" width="400" />\r\n<h2>Patagônia</h2>\r\nA Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma).\r\n\r\nA Patagônia é uma região que abrange uma vasta área no extremo sul da América do Sul ocupando partes da Argentina e do Chile.\r\n\r\nA Cordilheira dos Andes delimita a fronteira entre os dois países.\r\n\r\nO território possui desde pastagens, desertos, fiordes glaciais á florestas e cachoeiras. A famosa rodovia RN-40, na Argentina, passa pelos cumes do monte Fitz Roy e pela geleira Perito Moreno, no Parque Nacional Los Glaciares.\r\n\r\nA paisagem supera qualquer expectativa, não importa a trilha ou passeio, em qualquer lugar que estiver seja no meio da estrada ou dentro da cidade, ao redor o visual é incrível, de deixar a boca aberta! Ao longo do post vocês verão algumas fotos que tirei durante a viagem 😃\r\n\r\n<img class="size-medium wp-image-223 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog3-1-300x200.jpg" alt="" width="400" />\r\n<h3>THE TRIP</h3>\r\nFiz uma viagem de 15 dias totais, sendo 10 na Patagônia e 5 em Buenos Aires. Fui em Novembro, época de primavera quase verão, então o clima estava perfeito na medida certa! A temperatura varia muito, de 23 graus á sensação térmica de 5 graus. Por ser primavera, pegamos céu azul e sol na maior parte da viagem, dias lindos e ensolarados.', '', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2023-04-17 21:47:21', '2023-04-18 00:47:21', '', 221, 'http://outsideco.com.br/site/?p=224', 0, 'revision', '', 0),
(225, 1, '2023-04-17 21:47:36', '2023-04-18 00:47:36', '<img class="size-medium wp-image-222 alignright" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog1-1-300x200.jpg" alt="" width="400" />\r\n<h2>Patagônia</h2>\r\nA Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma).\r\n\r\nA Patagônia é uma região que abrange uma vasta área no extremo sul da América do Sul ocupando partes da Argentina e do Chile.\r\n\r\nA Cordilheira dos Andes delimita a fronteira entre os dois países.\r\n\r\nO território possui desde pastagens, desertos, fiordes glaciais á florestas e cachoeiras. A famosa rodovia RN-40, na Argentina, passa pelos cumes do monte Fitz Roy e pela geleira Perito Moreno, no Parque Nacional Los Glaciares.\r\n\r\nA paisagem supera qualquer expectativa, não importa a trilha ou passeio, em qualquer lugar que estiver seja no meio da estrada ou dentro da cidade, ao redor o visual é incrível, de deixar a boca aberta! Ao longo do post vocês verão algumas fotos que tirei durante a viagem 😃\r\n\r\n<img class="size-medium wp-image-223 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog3-1-300x200.jpg" alt="" width="400" />\r\n<h3>THE TRIP</h3>\r\nFiz uma viagem de 15 dias totais, sendo 10 na Patagônia e 5 em Buenos Aires. Fui em Novembro, época de primavera quase verão, então o clima estava perfeito na medida certa! A temperatura varia muito, de 23 graus á sensação térmica de 5 graus. Por ser primavera, pegamos céu azul e sol na maior parte da viagem, dias lindos e ensolarados.', 'Post padrão', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2023-04-17 21:47:36', '2023-04-18 00:47:36', '', 221, 'http://outsideco.com.br/site/?p=225', 0, 'revision', '', 0),
(227, 1, '2023-04-17 21:51:42', '2023-04-18 00:51:42', '', 'Itália', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-04-17 21:51:42', '2023-04-18 00:51:42', '', 143, 'http://outsideco.com.br/site/?p=227', 0, 'revision', '', 0),
(228, 1, '2023-04-17 21:53:45', '2023-04-18 00:53:45', '', 'patagonia1', '', 'inherit', 'open', 'closed', '', 'patagonia1', '', '', '2023-04-17 21:53:45', '2023-04-18 00:53:45', '', 143, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/patagonia1.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2023-04-17 21:53:46', '2023-04-18 00:53:46', '', 'patagonia2', '', 'inherit', 'open', 'closed', '', 'patagonia2', '', '', '2023-04-17 21:53:46', '2023-04-18 00:53:46', '', 143, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/patagonia2.jpg', 0, 'attachment', 'image/jpeg', 0),
(230, 1, '2023-04-17 21:53:46', '2023-04-18 00:53:46', '', 'patagonia3', '', 'inherit', 'open', 'closed', '', 'patagonia3', '', '', '2023-04-17 21:53:46', '2023-04-18 00:53:46', '', 143, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/patagonia3.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2023-04-17 21:53:47', '2023-04-18 00:53:47', '', 'patagonia4', '', 'inherit', 'open', 'closed', '', 'patagonia4', '', '', '2023-04-17 21:53:47', '2023-04-18 00:53:47', '', 143, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/patagonia4.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2023-04-17 21:53:47', '2023-04-18 00:53:47', '', 'patagonia5', '', 'inherit', 'open', 'closed', '', 'patagonia5', '', '', '2023-04-17 21:53:47', '2023-04-18 00:53:47', '', 143, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/patagonia5.jpg', 0, 'attachment', 'image/jpeg', 0),
(233, 1, '2023-04-17 21:53:47', '2023-04-18 00:53:47', '', 'patagonia6', '', 'inherit', 'open', 'closed', '', 'patagonia6', '', '', '2023-04-17 21:53:47', '2023-04-18 00:53:47', '', 143, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/patagonia6.jpg', 0, 'attachment', 'image/jpeg', 0),
(234, 1, '2023-04-17 21:53:48', '2023-04-18 00:53:48', '', 'patagonia7', '', 'inherit', 'open', 'closed', '', 'patagonia7', '', '', '2023-04-17 21:53:48', '2023-04-18 00:53:48', '', 143, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/patagonia7.jpg', 0, 'attachment', 'image/jpeg', 0),
(235, 1, '2023-04-17 21:53:49', '2023-04-18 00:53:49', '', 'patagonia8', '', 'inherit', 'open', 'closed', '', 'patagonia8', '', '', '2023-04-17 21:53:49', '2023-04-18 00:53:49', '', 143, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/patagonia8.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2023-04-17 21:54:15', '2023-04-18 00:54:15', '', 'Itália', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-04-17 21:54:15', '2023-04-18 00:54:15', '', 143, 'http://outsideco.com.br/site/?p=236', 0, 'revision', '', 0),
(237, 1, '2023-04-17 22:00:34', '2023-04-18 01:00:34', '', 'Itália', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-04-17 22:00:34', '2023-04-18 01:00:34', '', 143, 'http://outsideco.com.br/site/?p=237', 0, 'revision', '', 0),
(238, 1, '2023-04-17 22:00:54', '2023-04-18 01:00:54', '', 'Itália', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-04-17 22:00:54', '2023-04-18 01:00:54', '', 143, 'http://outsideco.com.br/site/?p=238', 0, 'revision', '', 0),
(239, 1, '2023-04-17 22:01:07', '2023-04-18 01:01:07', '', 'Itália', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-04-17 22:01:07', '2023-04-18 01:01:07', '', 143, 'http://outsideco.com.br/site/?p=239', 0, 'revision', '', 0),
(240, 1, '2023-04-17 22:19:57', '2023-04-18 01:19:57', '', 'patagonia6', '', 'inherit', 'open', 'closed', '', 'patagonia6-2', '', '', '2023-04-17 22:19:57', '2023-04-18 01:19:57', '', 143, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/patagonia6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(241, 1, '2023-04-17 22:20:02', '2023-04-18 01:20:02', '', 'Itália', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-04-17 22:20:02', '2023-04-18 01:20:02', '', 143, 'http://outsideco.com.br/site/?p=241', 0, 'revision', '', 0),
(242, 1, '2023-04-18 14:12:00', '2023-04-18 17:12:00', '', 'Patagônia', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2023-04-18 14:12:00', '2023-04-18 17:12:00', '', 141, 'http://outsideco.com.br/site/?p=242', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(243, 1, '2023-04-18 14:14:54', '2023-04-18 17:14:54', '', 'Havaí', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2023-04-18 14:14:54', '2023-04-18 17:14:54', '', 145, 'http://outsideco.com.br/site/?p=243', 0, 'revision', '', 0),
(244, 1, '2023-04-18 14:41:54', '2023-04-18 17:41:54', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_template";s:8:"operator";s:2:"==";s:5:"value";s:20:"template-fashion.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Template Nothing basic', 'template-nothing-basic', 'publish', 'closed', 'closed', '', 'group_643ed662121d7', '', '', '2023-04-18 15:17:00', '2023-04-18 18:17:00', '', 0, 'http://outsideco.com.br/site/?p=244', 0, 'acf-field-group', '', 0),
(245, 1, '2023-04-18 14:41:54', '2023-04-18 17:41:54', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Banner topo', '', 'publish', 'closed', 'closed', '', 'field_643ed6621744c', '', '', '2023-04-18 14:41:54', '2023-04-18 17:41:54', '', 244, 'http://outsideco.com.br/site/?post_type=acf-field&p=245', 0, 'acf-field', '', 0),
(246, 1, '2023-04-18 14:41:54', '2023-04-18 17:41:54', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:29:"Proporção ideal 1920x581px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:16:"banner-to-travel";}', 'Imagem', 'imagem_banner_topo', 'publish', 'closed', 'closed', '', 'field_643ed6621aedd', '', '', '2023-04-18 14:41:54', '2023-04-18 17:41:54', '', 244, 'http://outsideco.com.br/site/?post_type=acf-field&p=246', 1, 'acf-field', '', 0),
(247, 1, '2023-04-18 14:41:54', '2023-04-18 17:41:54', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Publicação', 'publicacao', 'publish', 'closed', 'closed', '', 'field_643ed6621e985', '', '', '2023-04-18 14:46:11', '2023-04-18 17:46:11', '', 244, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=247', 2, 'acf-field', '', 0),
(249, 1, '2023-04-18 14:41:54', '2023-04-18 17:41:54', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";i:2;s:11:"placeholder";s:0:"";s:9:"new_lines";s:2:"br";}', 'Título', 'titulo_publicacao', 'publish', 'closed', 'closed', '', 'field_643ed66225ecd', '', '', '2023-04-18 15:17:00', '2023-04-18 18:17:00', '', 244, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=249', 4, 'acf-field', '', 0),
(250, 1, '2023-04-18 14:41:54', '2023-04-18 17:41:54', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"pagination";i:0;s:3:"min";i:4;s:3:"max";i:4;s:9:"collapsed";s:0:"";s:12:"button_label";s:15:"Adicionar Linha";s:13:"rows_per_page";i:20;}', 'Lista', 'lista_publicacao', 'publish', 'closed', 'closed', '', 'field_643ed66229953', '', '', '2023-04-18 14:48:47', '2023-04-18 17:48:47', '', 244, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=250', 9, 'acf-field', '', 0),
(253, 1, '2023-04-18 14:41:54', '2023-04-18 17:41:54', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:28:"Proporção ideal 402x409px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:9:"fashion-2";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_643ed6623c622', '', '', '2023-04-18 14:46:11', '2023-04-18 17:46:11', '', 250, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=253', 0, 'acf-field', '', 0),
(254, 1, '2023-04-18 14:46:11', '2023-04-18 17:46:11', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Texto 1', 'texto_1_publicacao', 'publish', 'closed', 'closed', '', 'field_643ed6c5cf91b', '', '', '2023-04-18 14:48:47', '2023-04-18 17:48:47', '', 244, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=254', 5, 'acf-field', '', 0),
(255, 1, '2023-04-18 14:46:11', '2023-04-18 17:46:11', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Texto 2', 'texto_2_publicacao', 'publish', 'closed', 'closed', '', 'field_643ed6dbcf91c', '', '', '2023-04-18 14:48:47', '2023-04-18 17:48:47', '', 244, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=255', 6, 'acf-field', '', 0),
(256, 1, '2023-04-18 14:46:11', '2023-04-18 17:46:11', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título do botão', 'titulo_botao_publicacao', 'publish', 'closed', 'closed', '', 'field_643ed727cf91d', '', '', '2023-04-18 14:48:47', '2023-04-18 17:48:47', '', 244, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=256', 7, 'acf-field', '', 0),
(257, 1, '2023-04-18 14:46:11', '2023-04-18 17:46:11', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link do botão', 'link_botao_publicacao', 'publish', 'closed', 'closed', '', 'field_643ed73ccf91e', '', '', '2023-04-18 14:48:47', '2023-04-18 17:48:47', '', 244, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=257', 8, 'acf-field', '', 0),
(258, 1, '2023-04-18 14:46:55', '2023-04-18 17:46:55', '', 'banner-fashion', '', 'inherit', 'open', 'closed', '', 'banner-fashion', '', '', '2023-04-18 14:46:55', '2023-04-18 17:46:55', '', 148, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/banner-fashion.jpg', 0, 'attachment', 'image/jpeg', 0),
(259, 1, '2023-04-18 14:47:55', '2023-04-18 17:47:55', '', 'fashion1', '', 'inherit', 'open', 'closed', '', 'fashion1', '', '', '2023-04-18 14:47:55', '2023-04-18 17:47:55', '', 148, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion1.jpg', 0, 'attachment', 'image/jpeg', 0),
(260, 1, '2023-04-18 14:47:56', '2023-04-18 17:47:56', '', 'fashion2', '', 'inherit', 'open', 'closed', '', 'fashion2', '', '', '2023-04-18 14:47:56', '2023-04-18 17:47:56', '', 148, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion2.jpg', 0, 'attachment', 'image/jpeg', 0),
(261, 1, '2023-04-18 14:47:56', '2023-04-18 17:47:56', '', 'fashion3', '', 'inherit', 'open', 'closed', '', 'fashion3', '', '', '2023-04-18 14:47:56', '2023-04-18 17:47:56', '', 148, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion3.jpg', 0, 'attachment', 'image/jpeg', 0),
(262, 1, '2023-04-18 14:47:57', '2023-04-18 17:47:57', '', 'fashion4', '', 'inherit', 'open', 'closed', '', 'fashion4', '', '', '2023-04-18 14:47:57', '2023-04-18 17:47:57', '', 148, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion4.jpg', 0, 'attachment', 'image/jpeg', 0),
(263, 1, '2023-04-18 14:48:16', '2023-04-18 17:48:16', '', 'DROP/0001', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2023-04-18 14:48:16', '2023-04-18 17:48:16', '', 148, 'http://outsideco.com.br/site/?p=263', 0, 'revision', '', 0),
(264, 1, '2023-04-18 14:48:47', '2023-04-18 17:48:47', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'subtítulo', 'subtitulo_publicacao', 'publish', 'closed', 'closed', '', 'field_643ed7ef861d9', '', '', '2023-04-18 14:48:56', '2023-04-18 17:48:56', '', 244, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=264', 3, 'acf-field', '', 0),
(265, 1, '2023-04-18 14:49:01', '2023-04-18 17:49:01', '', 'DROP/0001', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2023-04-18 14:49:01', '2023-04-18 17:49:01', '', 148, 'http://outsideco.com.br/site/?p=265', 0, 'revision', '', 0),
(266, 1, '2023-04-18 15:12:16', '2023-04-18 18:12:16', '', 'time-to-travel', '', 'inherit', 'open', 'closed', '', 'time-to-travel-2', '', '', '2023-04-18 15:12:16', '2023-04-18 18:12:16', '', 150, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/time-to-travel-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(267, 1, '2023-04-18 15:12:42', '2023-04-18 18:12:42', '', 'DROP/0002', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2023-04-18 15:12:42', '2023-04-18 18:12:42', '', 150, 'http://outsideco.com.br/site/?p=267', 0, 'revision', '', 0),
(268, 1, '2023-04-18 15:16:02', '2023-04-18 18:16:02', '', 'DROP/0001', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2023-04-18 15:16:02', '2023-04-18 18:16:02', '', 148, 'http://outsideco.com.br/site/?p=268', 0, 'revision', '', 0),
(269, 1, '2023-04-18 15:21:20', '2023-04-18 18:21:20', '', 'DROP/0001', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2023-04-18 15:21:20', '2023-04-18 18:21:20', '', 148, 'http://outsideco.com.br/site/?p=269', 0, 'revision', '', 0),
(270, 1, '2023-04-18 15:23:25', '2023-04-18 18:23:25', '', 'DROP/0002', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2023-04-18 15:23:25', '2023-04-18 18:23:25', '', 150, 'http://outsideco.com.br/site/?p=270', 0, 'revision', '', 0),
(271, 1, '2023-04-18 15:24:23', '2023-04-18 18:24:23', '', 'DROP/0003', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2023-04-18 15:24:23', '2023-04-18 18:24:23', '', 152, 'http://outsideco.com.br/site/?p=271', 0, 'revision', '', 0),
(272, 1, '2023-04-18 16:31:45', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-18 16:31:45', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=272', 0, 'post', '', 0),
(273, 1, '2023-04-18 16:36:38', '2023-04-18 19:36:38', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_template";s:8:"operator";s:2:"==";s:5:"value";s:25:"post-template-austral.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Post Marcas - Austral', 'post-marcas-austral', 'publish', 'closed', 'closed', '', 'group_643ef038a6ce6', '', '', '2023-04-18 20:26:06', '2023-04-18 23:26:06', '', 0, 'http://outsideco.com.br/site/?post_type=acf-field-group&#038;p=273', 0, 'acf-field-group', '', 0),
(274, 1, '2023-04-18 16:36:38', '2023-04-18 19:36:38', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Subtítulo', 'subtitulo_austral', 'publish', 'closed', 'closed', '', 'field_643ef03880740', '', '', '2023-04-18 20:20:30', '2023-04-18 23:20:30', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=274', 1, 'acf-field', '', 0),
(275, 1, '2023-04-18 16:36:38', '2023-04-18 19:36:38', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo_austral', 'publish', 'closed', 'closed', '', 'field_643ef06080741', '', '', '2023-04-18 20:20:30', '2023-04-18 23:20:30', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=275', 2, 'acf-field', '', 0),
(276, 1, '2023-04-18 16:36:38', '2023-04-18 19:36:38', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"pagination";i:0;s:3:"min";i:3;s:3:"max";i:3;s:9:"collapsed";s:0:"";s:12:"button_label";s:0:"";s:13:"rows_per_page";i:20;}', 'Lista', 'lista_austral', 'publish', 'closed', 'closed', '', 'field_643ef06c80742', '', '', '2023-04-18 20:20:30', '2023-04-18 23:20:30', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=276', 3, 'acf-field', '', 0),
(277, 1, '2023-04-18 16:36:38', '2023-04-18 19:36:38', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:28:"Proporção ideal 376x564px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:13:"imagem-astral";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_643ef0c280743', '', '', '2023-04-18 16:36:38', '2023-04-18 19:36:38', '', 276, 'http://outsideco.com.br/site/?post_type=acf-field&p=277', 0, 'acf-field', '', 0),
(278, 1, '2023-04-18 16:36:38', '2023-04-18 19:36:38', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Texto', 'texto_austral', 'publish', 'closed', 'closed', '', 'field_643ef0eb80744', '', '', '2023-04-18 20:20:30', '2023-04-18 23:20:30', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=278', 4, 'acf-field', '', 0),
(279, 1, '2023-04-18 16:41:38', '2023-04-18 19:41:38', '', 'Post Marcas', '', 'publish', 'open', 'open', '', 'post-nothing-basic', '', '', '2023-04-18 20:23:20', '2023-04-18 23:23:20', '', 0, 'http://outsideco.com.br/site/?p=279', 0, 'post', '', 0),
(280, 1, '2023-04-18 16:38:32', '2023-04-18 19:38:32', '', 'galeria1', '', 'inherit', 'open', 'closed', '', 'galeria1', '', '', '2023-04-18 16:38:32', '2023-04-18 19:38:32', '', 279, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/galeria1.jpg', 0, 'attachment', 'image/jpeg', 0),
(281, 1, '2023-04-18 16:38:32', '2023-04-18 19:38:32', '', 'galeria2', '', 'inherit', 'open', 'closed', '', 'galeria2', '', '', '2023-04-18 16:38:32', '2023-04-18 19:38:32', '', 279, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/galeria2.jpg', 0, 'attachment', 'image/jpeg', 0),
(282, 1, '2023-04-18 16:38:33', '2023-04-18 19:38:33', '', 'galeria3', '', 'inherit', 'open', 'closed', '', 'galeria3', '', '', '2023-04-18 16:38:33', '2023-04-18 19:38:33', '', 279, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/galeria3.jpg', 0, 'attachment', 'image/jpeg', 0),
(283, 1, '2023-04-18 16:39:48', '2023-04-18 19:39:48', '', 'astral1', '', 'inherit', 'open', 'closed', '', 'astral1', '', '', '2023-04-18 16:39:48', '2023-04-18 19:39:48', '', 279, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/astral1.jpg', 0, 'attachment', 'image/jpeg', 0),
(284, 1, '2023-04-18 16:39:49', '2023-04-18 19:39:49', '', 'astral2', '', 'inherit', 'open', 'closed', '', 'astral2', '', '', '2023-04-18 16:39:49', '2023-04-18 19:39:49', '', 279, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/astral2.jpg', 0, 'attachment', 'image/jpeg', 0),
(285, 1, '2023-04-18 16:41:38', '2023-04-18 19:41:38', '', 'Post Nothing Basic', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-04-18 16:41:38', '2023-04-18 19:41:38', '', 279, 'http://outsideco.com.br/site/?p=285', 0, 'revision', '', 0),
(286, 1, '2023-04-18 16:48:14', '2023-04-18 19:48:14', '', 'Post Nothing Basic', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-04-18 16:48:14', '2023-04-18 19:48:14', '', 279, 'http://outsideco.com.br/site/?p=286', 0, 'revision', '', 0),
(287, 1, '2023-04-18 16:48:39', '2023-04-18 19:48:39', '', 'Post Nothing Basic', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-04-18 16:48:39', '2023-04-18 19:48:39', '', 279, 'http://outsideco.com.br/site/?p=287', 0, 'revision', '', 0),
(288, 1, '2023-04-18 16:57:16', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-18 16:57:16', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?post_type=acf-field-group&p=288', 0, 'acf-field-group', '', 0),
(289, 1, '2023-04-18 16:58:20', '2023-04-18 19:58:20', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_template";s:8:"operator";s:2:"==";s:5:"value";s:36:"post-template-lunch-time-viagens.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Post Brunch Time Viagens', 'post-brunch-time-viagens', 'publish', 'closed', 'closed', '', 'group_643ef65bee09f', '', '', '2023-04-18 17:02:35', '2023-04-18 20:02:35', '', 0, 'http://outsideco.com.br/site/?p=289', 0, 'acf-field-group', '', 0),
(290, 1, '2023-04-18 16:58:20', '2023-04-18 19:58:20', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Banner topo', '', 'publish', 'closed', 'closed', '', 'field_643ef65bf2d10', '', '', '2023-04-18 16:58:20', '2023-04-18 19:58:20', '', 289, 'http://outsideco.com.br/site/?post_type=acf-field&p=290', 0, 'acf-field', '', 0),
(291, 1, '2023-04-18 16:58:20', '2023-04-18 19:58:20', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:29:"Proporção ideal 1920x581px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:16:"banner-to-travel";}', 'Imagem', 'imagem_banner_topo', 'publish', 'closed', 'closed', '', 'field_643ef65c0244c', '', '', '2023-04-18 16:58:20', '2023-04-18 19:58:20', '', 289, 'http://outsideco.com.br/site/?post_type=acf-field&p=291', 1, 'acf-field', '', 0),
(292, 1, '2023-04-18 16:58:20', '2023-04-18 19:58:20', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Publicações', '', 'publish', 'closed', 'closed', '', 'field_643ef65c06028', '', '', '2023-04-18 16:58:20', '2023-04-18 19:58:20', '', 289, 'http://outsideco.com.br/site/?post_type=acf-field&p=292', 2, 'acf-field', '', 0),
(293, 1, '2023-04-18 16:58:20', '2023-04-18 19:58:20', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Subtítulo', 'subtitulo_viagens', 'publish', 'closed', 'closed', '', 'field_643ef65c099e4', '', '', '2023-04-18 17:00:57', '2023-04-18 20:00:57', '', 289, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=293', 3, 'acf-field', '', 0),
(294, 1, '2023-04-18 16:58:20', '2023-04-18 19:58:20', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo_viagens', 'publish', 'closed', 'closed', '', 'field_643ef65c0d5d6', '', '', '2023-04-18 17:00:57', '2023-04-18 20:00:57', '', 289, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=294', 4, 'acf-field', '', 0),
(295, 1, '2023-04-18 16:58:20', '2023-04-18 19:58:20', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:15:"Adicionar Linha";s:13:"rows_per_page";i:20;}', 'Lista', 'lista_viagens', 'publish', 'closed', 'closed', '', 'field_643ef65c10fc1', '', '', '2023-04-18 17:01:14', '2023-04-18 20:01:14', '', 289, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=295', 6, 'acf-field', '', 0),
(296, 1, '2023-04-18 16:58:20', '2023-04-18 19:58:20', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_643ef65c1c0f7', '', '', '2023-04-18 16:58:20', '2023-04-18 19:58:20', '', 295, 'http://outsideco.com.br/site/?post_type=acf-field&p=296', 0, 'acf-field', '', 0),
(297, 1, '2023-04-18 16:58:20', '2023-04-18 19:58:20', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_643ef65c1fe10', '', '', '2023-04-18 17:00:57', '2023-04-18 20:00:57', '', 295, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=297', 2, 'acf-field', '', 0),
(298, 1, '2023-04-18 16:58:20', '2023-04-18 19:58:20', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:28:"Proporção ideal 585x712px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:6:"medium";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_643ef65c239db', '', '', '2023-04-18 17:00:57', '2023-04-18 20:00:57', '', 295, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=298', 3, 'acf-field', '', 0),
(299, 1, '2023-04-18 17:00:57', '2023-04-18 20:00:57', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Texto', 'texto_viagens', 'publish', 'closed', 'closed', '', 'field_643ef68ec56bf', '', '', '2023-04-18 17:00:57', '2023-04-18 20:00:57', '', 289, 'http://outsideco.com.br/site/?post_type=acf-field&p=299', 5, 'acf-field', '', 0),
(300, 1, '2023-04-18 17:00:57', '2023-04-18 20:00:57', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Descrição', 'descricao', 'publish', 'closed', 'closed', '', 'field_643ef6c1c56c0', '', '', '2023-04-18 17:00:57', '2023-04-18 20:00:57', '', 295, 'http://outsideco.com.br/site/?post_type=acf-field&p=300', 1, 'acf-field', '', 0),
(301, 1, '2023-04-18 17:06:45', '2023-04-18 20:06:45', '', 'Post Brunch Time Viagens', '', 'publish', 'open', 'open', '', 'post-brunch-time-viagens', '', '', '2023-04-18 17:14:17', '2023-04-18 20:14:17', '', 0, 'http://outsideco.com.br/site/?p=301', 0, 'post', '', 0),
(302, 1, '2023-04-18 17:03:00', '2023-04-18 20:03:00', '', 'banner-lunch-time', '', 'inherit', 'open', 'closed', '', 'banner-lunch-time', '', '', '2023-04-18 17:03:00', '2023-04-18 20:03:00', '', 301, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/banner-lunch-time.jpg', 0, 'attachment', 'image/jpeg', 0),
(303, 1, '2023-04-18 17:03:39', '2023-04-18 20:03:39', '', 'img-lunch-time1', '', 'inherit', 'open', 'closed', '', 'img-lunch-time1', '', '', '2023-04-18 17:03:39', '2023-04-18 20:03:39', '', 301, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time1.jpg', 0, 'attachment', 'image/jpeg', 0),
(304, 1, '2023-04-18 17:04:32', '2023-04-18 20:04:32', '', 'img-lunch-time', '', 'inherit', 'open', 'closed', '', 'img-lunch-time', '', '', '2023-04-18 17:04:32', '2023-04-18 20:04:32', '', 301, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/img-lunch-time.jpg', 0, 'attachment', 'image/jpeg', 0),
(305, 1, '2023-04-18 17:05:54', '2023-04-18 20:05:54', '', 'restaurante1', '', 'inherit', 'open', 'closed', '', 'restaurante1', '', '', '2023-04-18 17:05:54', '2023-04-18 20:05:54', '', 301, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/restaurante1.jpg', 0, 'attachment', 'image/jpeg', 0),
(306, 1, '2023-04-18 17:05:56', '2023-04-18 20:05:56', '', 'restaurante2', '', 'inherit', 'open', 'closed', '', 'restaurante2', '', '', '2023-04-18 17:05:56', '2023-04-18 20:05:56', '', 301, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/restaurante2.jpg', 0, 'attachment', 'image/jpeg', 0),
(307, 1, '2023-04-18 17:05:57', '2023-04-18 20:05:57', '', 'restaurante3', '', 'inherit', 'open', 'closed', '', 'restaurante3', '', '', '2023-04-18 17:05:57', '2023-04-18 20:05:57', '', 301, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/restaurante3.jpg', 0, 'attachment', 'image/jpeg', 0),
(308, 1, '2023-04-18 17:06:00', '2023-04-18 20:06:00', '', 'restaurante4', '', 'inherit', 'open', 'closed', '', 'restaurante4', '', '', '2023-04-18 17:06:00', '2023-04-18 20:06:00', '', 301, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/restaurante4.jpg', 0, 'attachment', 'image/jpeg', 0),
(309, 1, '2023-04-18 17:06:45', '2023-04-18 20:06:45', '', 'Post Brunch Time Viagens', '', 'inherit', 'closed', 'closed', '', '301-revision-v1', '', '', '2023-04-18 17:06:45', '2023-04-18 20:06:45', '', 301, 'http://outsideco.com.br/site/?p=309', 0, 'revision', '', 0),
(310, 1, '2023-04-18 17:12:49', '2023-04-18 20:12:49', '', 'Post Brunch Time Viagens', '', 'inherit', 'closed', 'closed', '', '301-revision-v1', '', '', '2023-04-18 17:12:49', '2023-04-18 20:12:49', '', 301, 'http://outsideco.com.br/site/?p=310', 0, 'revision', '', 0),
(311, 1, '2023-04-18 17:13:08', '2023-04-18 20:13:08', '', 'Post Brunch Time Viagens', '', 'inherit', 'closed', 'closed', '', '301-revision-v1', '', '', '2023-04-18 17:13:08', '2023-04-18 20:13:08', '', 301, 'http://outsideco.com.br/site/?p=311', 0, 'revision', '', 0),
(312, 1, '2023-04-18 17:13:51', '2023-04-18 20:13:51', '', 'Post Brunch Time Viagens', '', 'inherit', 'closed', 'closed', '', '301-revision-v1', '', '', '2023-04-18 17:13:51', '2023-04-18 20:13:51', '', 301, 'http://outsideco.com.br/site/?p=312', 0, 'revision', '', 0),
(313, 1, '2023-04-18 17:14:07', '2023-04-18 20:14:07', '', 'Post Brunch Time Viagens', '', 'inherit', 'closed', 'closed', '', '301-revision-v1', '', '', '2023-04-18 17:14:07', '2023-04-18 20:14:07', '', 301, 'http://outsideco.com.br/site/?p=313', 0, 'revision', '', 0),
(314, 1, '2023-04-18 17:14:17', '2023-04-18 20:14:17', '', 'Post Brunch Time Viagens', '', 'inherit', 'closed', 'closed', '', '301-revision-v1', '', '', '2023-04-18 17:14:17', '2023-04-18 20:14:17', '', 301, 'http://outsideco.com.br/site/?p=314', 0, 'revision', '', 0),
(315, 1, '2023-04-18 17:16:03', '2023-04-18 20:16:03', '<img class="size-medium wp-image-222 alignright" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog1-1-300x200.jpg" alt="" width="400" />\r\n<h2>Patagônia</h2>\r\nA Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma).\r\n\r\nA Patagônia é uma região que abrange uma vasta área no extremo sul da América do Sul ocupando partes da Argentina e do Chile.\r\n\r\nA Cordilheira dos Andes delimita a fronteira entre os dois países.\r\n\r\nO território possui desde pastagens, desertos, fiordes glaciais á florestas e cachoeiras. A famosa rodovia RN-40, na Argentina, passa pelos cumes do monte Fitz Roy e pela geleira Perito Moreno, no Parque Nacional Los Glaciares.\r\n\r\nA paisagem supera qualquer expectativa, não importa a trilha ou passeio, em qualquer lugar que estiver seja no meio da estrada ou dentro da cidade, ao redor o visual é incrível, de deixar a boca aberta! Ao longo do post vocês verão algumas fotos que tirei durante a viagem 😃\r\n\r\n<img class="size-medium wp-image-223 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog3-1-300x200.jpg" alt="" width="400" />\r\n<h3>THE TRIP</h3>\r\nFiz uma viagem de 15 dias totais, sendo 10 na Patagônia e 5 em Buenos Aires. Fui em Novembro, época de primavera quase verão, então o clima estava perfeito na medida certa! A temperatura varia muito, de 23 graus á sensação térmica de 5 graus. Por ser primavera, pegamos céu azul e sol na maior parte da viagem, dias lindos e ensolarados.', 'Post viagens', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2023-04-18 17:16:03', '2023-04-18 20:16:03', '', 164, 'http://outsideco.com.br/site/?p=315', 0, 'revision', '', 0),
(316, 1, '2023-04-18 17:17:06', '2023-04-18 20:17:06', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_template";s:8:"operator";s:2:"==";s:5:"value";s:41:"post-template-lunch-time-restaurantes.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Post Brunch Time Restaurantes', 'post-brunch-time-restaurantes', 'publish', 'closed', 'closed', '', 'group_643efac23c812', '', '', '2023-04-18 17:26:13', '2023-04-18 20:26:13', '', 0, 'http://outsideco.com.br/site/?p=316', 0, 'acf-field-group', '', 0),
(319, 1, '2023-04-18 17:17:06', '2023-04-18 20:17:06', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Publicações', '', 'publish', 'closed', 'closed', '', 'field_643efac249c7d', '', '', '2023-04-18 17:19:26', '2023-04-18 20:19:26', '', 316, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=319', 0, 'acf-field', '', 0),
(320, 1, '2023-04-18 17:17:06', '2023-04-18 20:17:06', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Subtítulo', 'subtitulo_restaurantes', 'publish', 'closed', 'closed', '', 'field_643efac24d76e', '', '', '2023-04-18 17:19:26', '2023-04-18 20:19:26', '', 316, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=320', 4, 'acf-field', '', 0),
(321, 1, '2023-04-18 17:17:06', '2023-04-18 20:17:06', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo_restaurantes', 'publish', 'closed', 'closed', '', 'field_643efac2510d9', '', '', '2023-04-18 17:19:26', '2023-04-18 20:19:26', '', 316, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=321', 3, 'acf-field', '', 0),
(322, 1, '2023-04-18 17:17:06', '2023-04-18 20:17:06', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Texto', 'texto_restaurantes', 'publish', 'closed', 'closed', '', 'field_643efac254d7a', '', '', '2023-04-18 17:19:26', '2023-04-18 20:19:26', '', 316, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=322', 5, 'acf-field', '', 0),
(323, 1, '2023-04-18 17:17:06', '2023-04-18 20:17:06', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:15:"Adicionar Linha";s:13:"rows_per_page";i:20;}', 'Lista', 'lista_restaurantes', 'publish', 'closed', 'closed', '', 'field_643efac2587be', '', '', '2023-04-18 17:19:26', '2023-04-18 20:19:26', '', 316, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=323', 1, 'acf-field', '', 0),
(324, 1, '2023-04-18 17:17:06', '2023-04-18 20:17:06', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_643efac2641a6', '', '', '2023-04-18 17:17:06', '2023-04-18 20:17:06', '', 323, 'http://outsideco.com.br/site/?post_type=acf-field&p=324', 0, 'acf-field', '', 0),
(325, 1, '2023-04-18 17:17:06', '2023-04-18 20:17:06', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Descrição', 'descricao', 'publish', 'closed', 'closed', '', 'field_643efac267c07', '', '', '2023-04-18 17:17:06', '2023-04-18 20:17:06', '', 323, 'http://outsideco.com.br/site/?post_type=acf-field&p=325', 1, 'acf-field', '', 0),
(326, 1, '2023-04-18 17:17:06', '2023-04-18 20:17:06', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_643efac26b8e7', '', '', '2023-04-18 17:17:06', '2023-04-18 20:17:06', '', 323, 'http://outsideco.com.br/site/?post_type=acf-field&p=326', 2, 'acf-field', '', 0),
(327, 1, '2023-04-18 17:17:06', '2023-04-18 20:17:06', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:28:"Proporção ideal 585x712px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:6:"medium";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_643efac26f289', '', '', '2023-04-18 17:17:06', '2023-04-18 20:17:06', '', 323, 'http://outsideco.com.br/site/?post_type=acf-field&p=327', 3, 'acf-field', '', 0),
(328, 1, '2023-04-18 17:19:26', '2023-04-18 20:19:26', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Texto', 'texto_restaurantes', 'publish', 'closed', 'closed', '', 'field_643efafdfc0a9', '', '', '2023-04-18 17:19:26', '2023-04-18 20:19:26', '', 316, 'http://outsideco.com.br/site/?post_type=acf-field&p=328', 2, 'acf-field', '', 0),
(329, 1, '2023-04-18 17:24:11', '2023-04-18 20:24:11', '', 'restaurante5', '', 'inherit', 'open', 'closed', '', 'restaurante5', '', '', '2023-04-18 17:24:11', '2023-04-18 20:24:11', '', 166, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/restaurante5.jpg', 0, 'attachment', 'image/jpeg', 0),
(330, 1, '2023-04-18 17:24:49', '2023-04-18 20:24:49', '', 'Post restaurante', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2023-04-18 17:24:49', '2023-04-18 20:24:49', '', 166, 'http://outsideco.com.br/site/?p=330', 0, 'revision', '', 0),
(331, 1, '2023-04-18 17:46:23', '2023-04-18 20:46:23', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Menu footer', 'menu_footer', 'publish', 'closed', 'closed', '', 'field_643f013a40ba1', '', '', '2023-04-18 17:46:23', '2023-04-18 20:46:23', '', 11, 'http://outsideco.com.br/site/?post_type=acf-field&p=331', 8, 'acf-field', '', 0),
(332, 1, '2023-04-18 17:46:23', '2023-04-18 20:46:23', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"pagination";i:0;s:3:"min";i:4;s:3:"max";i:4;s:9:"collapsed";s:0:"";s:12:"button_label";s:0:"";s:13:"rows_per_page";i:20;}', 'Lista', 'lista_menu_footer', 'publish', 'closed', 'closed', '', 'field_643f014940ba2', '', '', '2023-04-18 17:46:23', '2023-04-18 20:46:23', '', 11, 'http://outsideco.com.br/site/?post_type=acf-field&p=332', 9, 'acf-field', '', 0),
(333, 1, '2023-04-18 17:46:23', '2023-04-18 20:46:23', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_643f015940ba3', '', '', '2023-04-18 17:46:23', '2023-04-18 20:46:23', '', 332, 'http://outsideco.com.br/site/?post_type=acf-field&p=333', 0, 'acf-field', '', 0),
(334, 1, '2023-04-18 17:46:23', '2023-04-18 20:46:23', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_643f016340ba4', '', '', '2023-04-18 17:46:23', '2023-04-18 20:46:23', '', 332, 'http://outsideco.com.br/site/?post_type=acf-field&p=334', 1, 'acf-field', '', 0),
(335, 1, '2023-04-18 17:46:23', '2023-04-18 20:46:23', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:28:"Proporção ideal 350x240px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:11:"menu-footer";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_643f017040ba5', '', '', '2023-04-18 17:46:23', '2023-04-18 20:46:23', '', 332, 'http://outsideco.com.br/site/?post_type=acf-field&p=335', 2, 'acf-field', '', 0),
(336, 1, '2023-04-18 17:47:52', '2023-04-18 20:47:52', '', 'menu1', '', 'inherit', 'open', 'closed', '', 'menu1', '', '', '2023-04-18 17:47:52', '2023-04-18 20:47:52', '', 0, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/menu1.jpg', 0, 'attachment', 'image/jpeg', 0),
(337, 1, '2023-04-18 17:47:52', '2023-04-18 20:47:52', '', 'menu2', '', 'inherit', 'open', 'closed', '', 'menu2', '', '', '2023-04-18 17:47:52', '2023-04-18 20:47:52', '', 0, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/menu2.jpg', 0, 'attachment', 'image/jpeg', 0),
(338, 1, '2023-04-18 17:47:53', '2023-04-18 20:47:53', '', 'menu3', '', 'inherit', 'open', 'closed', '', 'menu3', '', '', '2023-04-18 17:47:53', '2023-04-18 20:47:53', '', 0, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/menu3.jpg', 0, 'attachment', 'image/jpeg', 0),
(339, 1, '2023-04-18 17:47:53', '2023-04-18 20:47:53', '', 'menu4', '', 'inherit', 'open', 'closed', '', 'menu4', '', '', '2023-04-18 17:47:53', '2023-04-18 20:47:53', '', 0, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/menu4.jpg', 0, 'attachment', 'image/jpeg', 0),
(340, 1, '2023-04-18 17:47:53', '2023-04-18 20:47:53', '', 'menu4', '', 'inherit', 'open', 'closed', '', 'menu4-2', '', '', '2023-04-18 17:47:53', '2023-04-18 20:47:53', '', 0, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/menu4.png', 0, 'attachment', 'image/png', 0),
(341, 1, '2023-04-18 17:47:54', '2023-04-18 20:47:54', '', 'menu5', '', 'inherit', 'open', 'closed', '', 'menu5', '', '', '2023-04-18 17:47:54', '2023-04-18 20:47:54', '', 0, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/menu5.jpg', 0, 'attachment', 'image/jpeg', 0),
(342, 1, '2023-04-18 17:47:54', '2023-04-18 20:47:54', '', 'menu6', '', 'inherit', 'open', 'closed', '', 'menu6', '', '', '2023-04-18 17:47:54', '2023-04-18 20:47:54', '', 0, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/menu6.jpg', 0, 'attachment', 'image/jpeg', 0),
(343, 1, '2023-04-18 18:03:40', '2023-04-18 21:03:37', ' ', '', '', 'publish', 'closed', 'closed', '', '343', '', '', '2023-04-18 18:03:40', '2023-04-18 21:03:40', '', 0, 'http://outsideco.com.br/site/?p=343', 1, 'nav_menu_item', '', 0),
(344, 1, '2023-04-18 18:03:40', '2023-04-18 21:03:37', ' ', '', '', 'publish', 'closed', 'closed', '', '344', '', '', '2023-04-18 18:03:40', '2023-04-18 21:03:40', '', 0, 'http://outsideco.com.br/site/?p=344', 2, 'nav_menu_item', '', 0),
(345, 1, '2023-04-18 18:03:40', '2023-04-18 21:03:37', ' ', '', '', 'publish', 'closed', 'closed', '', '345', '', '', '2023-04-18 18:03:40', '2023-04-18 21:03:40', '', 0, 'http://outsideco.com.br/site/?p=345', 3, 'nav_menu_item', '', 0),
(346, 1, '2023-04-18 18:03:40', '2023-04-18 21:03:37', ' ', '', '', 'publish', 'closed', 'closed', '', '346', '', '', '2023-04-18 18:03:40', '2023-04-18 21:03:40', '', 0, 'http://outsideco.com.br/site/?p=346', 4, 'nav_menu_item', '', 0),
(347, 1, '2023-04-18 18:03:40', '2023-04-18 21:03:37', ' ', '', '', 'publish', 'closed', 'closed', '', '347', '', '', '2023-04-18 18:03:40', '2023-04-18 21:03:40', '', 0, 'http://outsideco.com.br/site/?p=347', 5, 'nav_menu_item', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(348, 1, '2023-04-18 18:59:57', '2023-04-18 21:59:57', '', 'Post Marcas', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-04-18 18:59:57', '2023-04-18 21:59:57', '', 279, 'http://outsideco.com.br/site/?p=348', 0, 'revision', '', 0),
(349, 1, '2023-04-18 19:06:34', '2023-04-18 22:06:34', '', 'Receitas', '', 'publish', 'closed', 'closed', '', 'receitas', '', '', '2023-04-18 19:06:34', '2023-04-18 22:06:34', '', 0, 'http://outsideco.com.br/site/?page_id=349', 6, 'page', '', 0),
(350, 1, '2023-04-18 19:06:34', '2023-04-18 22:06:34', '', 'Receitas', '', 'inherit', 'closed', 'closed', '', '349-revision-v1', '', '', '2023-04-18 19:06:34', '2023-04-18 22:06:34', '', 349, 'http://outsideco.com.br/site/?p=350', 0, 'revision', '', 0),
(351, 1, '2023-04-18 19:07:16', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-18 19:07:16', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?page_id=351', 0, 'page', '', 0),
(352, 1, '2023-04-18 19:07:19', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-18 19:07:19', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=352', 0, 'post', '', 0),
(353, 1, '2023-04-18 19:08:38', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-18 19:08:38', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=353', 0, 'post', '', 0),
(354, 1, '2023-04-18 19:30:16', '2023-04-18 22:30:16', 'a:8:{s:8:"location";a:2:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:20:"category:brunch-time";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:17:"category:receitas";}}}s:8:"position";s:4:"side";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Post destaque Img + desc', 'post-destaque-img-desc', 'publish', 'closed', 'closed', '', 'group_643f1948ad311', '', '', '2023-04-18 19:32:25', '2023-04-18 22:32:25', '', 0, 'http://outsideco.com.br/site/?post_type=acf-field-group&#038;p=354', 0, 'acf-field-group', '', 0),
(355, 1, '2023-04-18 19:30:16', '2023-04-18 22:30:16', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Descrição', 'descricao', 'publish', 'closed', 'closed', '', 'field_643f1948b586c', '', '', '2023-04-18 19:30:47', '2023-04-18 22:30:47', '', 354, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=355', 0, 'acf-field', '', 0),
(356, 1, '2023-04-18 19:30:16', '2023-04-18 22:30:16', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:28:"Proporção ideal 585x712px.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:17:"carrossel-viagens";}', 'Imagem destaque', 'imagem', 'publish', 'closed', 'closed', '', 'field_643f196ab586d', '', '', '2023-04-18 19:32:25', '2023-04-18 22:32:25', '', 354, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=356', 1, 'acf-field', '', 0),
(357, 1, '2023-04-18 19:30:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-18 19:30:22', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?p=357', 0, 'post', '', 0),
(358, 1, '2023-04-18 19:33:11', '2023-04-18 22:33:11', '', 'Post restaurante', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2023-04-18 19:33:11', '2023-04-18 22:33:11', '', 166, 'http://outsideco.com.br/site/?p=358', 0, 'revision', '', 0),
(359, 1, '2023-04-18 19:40:37', '2023-04-18 22:40:37', '<img class="size-medium wp-image-222 alignright" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog1-1-300x200.jpg" alt="" width="400" />\r\n<h2>Patagônia</h2>\r\nA Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma).\r\n\r\nA Patagônia é uma região que abrange uma vasta área no extremo sul da América do Sul ocupando partes da Argentina e do Chile.\r\n\r\nA Cordilheira dos Andes delimita a fronteira entre os dois países.\r\n\r\nO território possui desde pastagens, desertos, fiordes glaciais á florestas e cachoeiras. A famosa rodovia RN-40, na Argentina, passa pelos cumes do monte Fitz Roy e pela geleira Perito Moreno, no Parque Nacional Los Glaciares.\r\n\r\nA paisagem supera qualquer expectativa, não importa a trilha ou passeio, em qualquer lugar que estiver seja no meio da estrada ou dentro da cidade, ao redor o visual é incrível, de deixar a boca aberta! Ao longo do post vocês verão algumas fotos que tirei durante a viagem 😃\r\n\r\n<img class="size-medium wp-image-223 alignleft" src="http://outsideco.com.br/site/wp-content/uploads/2023/04/blog3-1-300x200.jpg" alt="" width="400" />\r\n<h3>THE TRIP</h3>\r\nFiz uma viagem de 15 dias totais, sendo 10 na Patagônia e 5 em Buenos Aires. Fui em Novembro, época de primavera quase verão, então o clima estava perfeito na medida certa! A temperatura varia muito, de 23 graus á sensação térmica de 5 graus. Por ser primavera, pegamos céu azul e sol na maior parte da viagem, dias lindos e ensolarados.', 'Post viagens', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2023-04-18 19:40:37', '2023-04-18 22:40:37', '', 164, 'http://outsideco.com.br/site/?p=359', 0, 'revision', '', 0),
(360, 1, '2023-04-18 19:42:49', '2023-04-18 22:42:49', '', 'Nome da receira', '', 'publish', 'open', 'open', '', 'nome-da-receira', '', '', '2023-04-18 19:42:49', '2023-04-18 22:42:49', '', 0, 'http://outsideco.com.br/site/?p=360', 0, 'post', '', 0),
(361, 1, '2023-04-18 19:42:49', '2023-04-18 22:42:49', '', 'Nome da receira', '', 'inherit', 'closed', 'closed', '', '360-revision-v1', '', '', '2023-04-18 19:42:49', '2023-04-18 22:42:49', '', 360, 'http://outsideco.com.br/site/?p=361', 0, 'revision', '', 0),
(362, 1, '2023-04-18 19:44:03', '2023-04-18 22:44:03', '', 'Nome da receita', '', 'publish', 'open', 'open', '', 'nome-da-receita', '', '', '2023-04-18 19:44:03', '2023-04-18 22:44:03', '', 0, 'http://outsideco.com.br/site/?p=362', 0, 'post', '', 0),
(363, 1, '2023-04-18 19:44:03', '2023-04-18 22:44:03', '', 'Nome da receita', '', 'inherit', 'closed', 'closed', '', '362-revision-v1', '', '', '2023-04-18 19:44:03', '2023-04-18 22:44:03', '', 362, 'http://outsideco.com.br/site/?p=363', 0, 'revision', '', 0),
(364, 1, '2023-04-18 19:44:22', '2023-04-18 22:44:22', '', 'Nome da receira', '', 'publish', 'open', 'open', '', 'nome-da-receira-2', '', '', '2023-04-18 19:44:22', '2023-04-18 22:44:22', '', 0, 'http://outsideco.com.br/site/?p=364', 0, 'post', '', 0),
(365, 1, '2023-04-18 19:44:22', '2023-04-18 22:44:22', '', 'Nome da receira', '', 'inherit', 'closed', 'closed', '', '364-revision-v1', '', '', '2023-04-18 19:44:22', '2023-04-18 22:44:22', '', 364, 'http://outsideco.com.br/site/?p=365', 0, 'revision', '', 0),
(366, 1, '2023-04-18 19:44:40', '2023-04-18 22:44:40', '', 'Nome da receita', '', 'publish', 'open', 'open', '', 'nome-da-receita-2', '', '', '2023-04-18 19:44:40', '2023-04-18 22:44:40', '', 0, 'http://outsideco.com.br/site/?p=366', 0, 'post', '', 2),
(367, 1, '2023-04-18 19:44:40', '2023-04-18 22:44:40', '', 'Nome da receita', '', 'inherit', 'closed', 'closed', '', '366-revision-v1', '', '', '2023-04-18 19:44:40', '2023-04-18 22:44:40', '', 366, 'http://outsideco.com.br/site/?p=367', 0, 'revision', '', 0),
(368, 1, '2023-04-18 20:20:30', '2023-04-18 23:20:30', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Sobre', 'sobre', 'publish', 'closed', 'closed', '', 'field_643f252ce9731', '', '', '2023-04-18 20:20:30', '2023-04-18 23:20:30', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&p=368', 0, 'acf-field', '', 0),
(369, 1, '2023-04-18 20:20:30', '2023-04-18 23:20:30', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Patrocino', 'patrocino', 'publish', 'closed', 'closed', '', 'field_643f2540e9732', '', '', '2023-04-18 20:20:30', '2023-04-18 23:20:30', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&p=369', 5, 'acf-field', '', 0),
(370, 1, '2023-04-18 20:20:30', '2023-04-18 23:20:30', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:29:"Proporção ideal 1920x581px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:12:"medium_large";}', 'Banner', 'banner_patrocinio', 'publish', 'closed', 'closed', '', 'field_643f254ee9733', '', '', '2023-04-18 20:26:06', '2023-04-18 23:26:06', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=370', 6, 'acf-field', '', 0),
(371, 1, '2023-04-18 20:20:31', '2023-04-18 23:20:31', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Subtítulo', 'subtitulo_patrocinio', 'publish', 'closed', 'closed', '', 'field_643f2590e9734', '', '', '2023-04-18 20:22:56', '2023-04-18 23:22:56', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=371', 8, 'acf-field', '', 0),
(372, 1, '2023-04-18 20:20:31', '2023-04-18 23:20:31', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Título', 'titulo_patrocinio', 'publish', 'closed', 'closed', '', 'field_643f25a0e9735', '', '', '2023-04-18 20:22:56', '2023-04-18 23:22:56', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=372', 9, 'acf-field', '', 0),
(373, 1, '2023-04-18 20:20:31', '2023-04-18 23:20:31', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Texto', 'texto_patrocinio', 'publish', 'closed', 'closed', '', 'field_643f25ace9736', '', '', '2023-04-18 20:22:56', '2023-04-18 23:22:56', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=373', 10, 'acf-field', '', 0),
(374, 1, '2023-04-18 20:21:04', '2023-04-18 23:21:04', '', 'banner-contact', '', 'inherit', 'open', 'closed', '', 'banner-contact', '', '', '2023-04-18 20:21:04', '2023-04-18 23:21:04', '', 279, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/banner-contact.jpg', 0, 'attachment', 'image/jpeg', 0),
(375, 1, '2023-04-18 20:21:32', '2023-04-18 23:21:32', '', 'Post Marcas', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-04-18 20:21:32', '2023-04-18 23:21:32', '', 279, 'http://outsideco.com.br/site/?p=375', 0, 'revision', '', 0),
(376, 1, '2023-04-18 20:22:56', '2023-04-18 23:22:56', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"url";s:12:"instructions";s:29:"Proporção ideal 1920x581px.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link banner', 'link_banner_patrocinio', 'publish', 'closed', 'closed', '', 'field_643f2631adce6', '', '', '2023-04-18 20:23:09', '2023-04-18 23:23:09', '', 273, 'http://outsideco.com.br/site/?post_type=acf-field&#038;p=376', 7, 'acf-field', '', 0),
(377, 1, '2023-04-18 20:23:20', '2023-04-18 23:23:20', '', 'Post Marcas', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-04-18 20:23:20', '2023-04-18 23:23:20', '', 279, 'http://outsideco.com.br/site/?p=377', 0, 'revision', '', 0),
(378, 1, '2023-04-18 20:30:43', '2023-04-18 23:30:43', '<div class="frm_fields_container">\r\n                                            <div class="row">\r\n                                                <div class="col-md-6 col-sm-6">\r\n                                                    <div class="frm_form_field form-field  frm_required_field frm_none_container">\r\n                                                        [text* nome placeholder "Nome"]\r\n                                                    </div>\r\n                                                    <div class="frm_form_field form-field  frm_none_container">\r\n                                                       [text* whatsapp placeholder "WhatsApp"]\r\n                                                    </div>\r\n                                                    <div class="frm_form_field form-field  frm_required_field frm_none_container">\r\n                                                        [email* email placeholder "E-mail"]\r\n                                                    </div>\r\n                                                </div>\r\n                                                <div class="col-md-6 col-sm-6">\r\n                                                    <div class="frm_form_field form-field  frm_none_container">\r\n                                                        [textarea* mensagem placeholder "Mensagem"]\r\n                                                    </div>\r\n                                                </div>\r\n                                            </div>\r\n                                            \r\n                                            <div class="frm_submit">\r\n[submit id:enviar "Enviar"]\r\n                                                \r\n\r\n                                                <span class="arrow-right"></span>\r\n                                            </div>\r\n                                        </div>\n1\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@outsideco.local>\n[_site_admin_email]\nDe: [your-name] [your-email]\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@outsideco.local>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nPreencha este campo.\nEste campo tem uma entrada muito longa.\nEste campo tem uma entrada muito curta.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo enviado é muito grande.\nOcorreu um erro ao enviar o arquivo.\nDigite uma data no formato AAAA-MM-DD.\nEste campo tem uma data muito próxima.\nEste campo tem uma data muito distante.\nDigite um número.\nEste campo tem um número pequeno demais.\nEste campo tem um número grande demais.\nA resposta para o quiz está incorreta.\nDigite um endereço de e-mail.\nDigite um URL.\nDigite um número de telefone.', 'Contato', '', 'publish', 'closed', 'closed', '', 'sem-titulo', '', '', '2023-04-18 20:32:12', '2023-04-18 23:32:12', '', 0, 'http://outsideco.com.br/site/?post_type=wpcf7_contact_form&#038;p=378', 0, 'wpcf7_contact_form', '', 0),
(379, 1, '2023-04-18 22:46:41', '2023-04-19 01:46:41', '', 'outside.co', '', 'inherit', 'open', 'closed', '', 'outside-co', '', '', '2023-04-18 22:46:41', '2023-04-19 01:46:41', '', 9, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/outside.co_.svg', 0, 'attachment', 'image/svg+xml', 0),
(380, 1, '2023-04-18 22:46:45', '2023-04-19 01:46:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-04-18 22:46:45', '2023-04-19 01:46:45', '', 9, 'http://outsideco.com.br/site/?p=380', 0, 'revision', '', 0),
(381, 1, '2023-04-18 23:03:57', '2023-04-19 02:03:57', '', 'Portifólio', '', 'publish', 'closed', 'closed', '', 'portifolio', '', '', '2023-04-18 23:06:01', '2023-04-19 02:06:01', '', 0, 'http://outsideco.com.br/site/?page_id=381', 7, 'page', '', 0),
(382, 1, '2023-04-18 23:03:57', '2023-04-19 02:03:57', '7', 'Portfólio', '', 'inherit', 'closed', 'closed', '', '381-revision-v1', '', '', '2023-04-18 23:03:57', '2023-04-19 02:03:57', '', 381, 'http://outsideco.com.br/site/?p=382', 0, 'revision', '', 0),
(383, 1, '2023-04-18 23:04:01', '2023-04-19 02:04:01', '', 'Portfólio', '', 'inherit', 'closed', 'closed', '', '381-revision-v1', '', '', '2023-04-18 23:04:01', '2023-04-19 02:04:01', '', 381, 'http://outsideco.com.br/site/?p=383', 0, 'revision', '', 0),
(384, 1, '2023-04-18 23:06:01', '2023-04-19 02:06:01', '', 'Portifólio', '', 'inherit', 'closed', 'closed', '', '381-revision-v1', '', '', '2023-04-18 23:06:01', '2023-04-19 02:06:01', '', 381, 'http://outsideco.com.br/site/?p=384', 0, 'revision', '', 0),
(385, 1, '2023-04-18 23:30:37', '2023-04-19 02:30:37', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2023-04-18 23:30:37', '2023-04-19 02:30:37', '', 0, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(386, 1, '2023-04-18 23:30:39', '2023-04-19 02:30:39', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2023-04-18 23:30:39', '2023-04-19 02:30:39', '', 0, 'http://outsideco.com.br/site/shop/', 0, 'page', '', 0),
(387, 1, '2023-04-18 23:30:39', '2023-04-19 02:30:39', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2023-04-18 23:30:39', '2023-04-19 02:30:39', '', 0, 'http://outsideco.com.br/site/cart/', 0, 'page', '', 0),
(388, 1, '2023-04-18 23:30:39', '2023-04-19 02:30:39', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2023-04-18 23:30:39', '2023-04-19 02:30:39', '', 0, 'http://outsideco.com.br/site/checkout/', 0, 'page', '', 0),
(389, 1, '2023-04-18 23:30:39', '2023-04-19 02:30:39', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2023-04-18 23:30:39', '2023-04-19 02:30:39', '', 0, 'http://outsideco.com.br/site/my-account/', 0, 'page', '', 0),
(390, 1, '2023-04-18 23:30:39', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'draft', 'closed', 'closed', '', 'refund_returns', '', '', '2023-04-18 23:30:39', '0000-00-00 00:00:00', '', 0, 'http://outsideco.com.br/site/?page_id=390', 0, 'page', '', 0),
(391, 1, '2023-04-18 23:32:26', '2023-04-19 02:32:26', '', 'Camisa Linho', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'publish', 'open', 'closed', '', 'camisa-linho', '', '', '2023-04-19 00:21:18', '2023-04-19 03:21:18', '', 0, 'http://outsideco.com.br/site/?post_type=product&#038;p=391', 0, 'product', '', 0),
(392, 1, '2023-04-18 23:34:42', '2023-04-19 02:34:42', '', 'fashion8', '', 'inherit', 'open', 'closed', '', 'fashion8', '', '', '2023-04-18 23:34:42', '2023-04-19 02:34:42', '', 391, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion8.jpg', 0, 'attachment', 'image/jpeg', 0),
(393, 1, '2023-04-18 23:34:46', '2023-04-19 02:34:46', '', 'fashion9', '', 'inherit', 'open', 'closed', '', 'fashion9', '', '', '2023-04-18 23:34:46', '2023-04-19 02:34:46', '', 391, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion9.jpg', 0, 'attachment', 'image/jpeg', 0),
(394, 1, '2023-04-18 23:34:50', '2023-04-19 02:34:50', '', 'fashion10', '', 'inherit', 'open', 'closed', '', 'fashion10', '', '', '2023-04-18 23:34:50', '2023-04-19 02:34:50', '', 391, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/fashion10.jpg', 0, 'attachment', 'image/jpeg', 0),
(395, 1, '2023-04-18 23:35:28', '2023-04-19 02:35:28', '', 'produto1', '', 'inherit', 'open', 'closed', '', 'produto1', '', '', '2023-04-18 23:35:28', '2023-04-19 02:35:28', '', 391, 'http://outsideco.com.br/site/wp-content/uploads/2023/04/produto1.jpg', 0, 'attachment', 'image/jpeg', 0),
(396, 1, '2023-04-19 00:20:09', '2023-04-19 03:20:09', '', 'DROP/0001', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2023-04-19 00:20:09', '2023-04-19 03:20:09', '', 148, 'http://outsideco.com.br/site/?p=396', 0, 'revision', '', 0),
(397, 1, '2023-04-19 00:20:23', '2023-04-19 03:20:23', '', 'DROP/0002', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2023-04-19 00:20:23', '2023-04-19 03:20:23', '', 150, 'http://outsideco.com.br/site/?p=397', 0, 'revision', '', 0),
(398, 1, '2023-04-19 00:20:30', '2023-04-19 03:20:30', '', 'DROP/0003', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2023-04-19 00:20:30', '2023-04-19 03:20:30', '', 152, 'http://outsideco.com.br/site/?p=398', 0, 'revision', '', 0) ;

#
# Fim do conteúdo da tabela `wp_posts`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_term_relationships` existente
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Estrutura da tabela `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(141, 2, 0),
(143, 2, 0),
(145, 2, 0),
(148, 3, 0),
(150, 3, 0),
(152, 3, 0),
(155, 4, 0),
(157, 4, 0),
(159, 4, 0),
(164, 5, 0),
(166, 5, 0),
(221, 1, 0),
(244, 1, 0),
(279, 1, 0),
(289, 1, 0),
(301, 1, 0),
(316, 1, 0),
(343, 6, 0),
(344, 6, 0),
(345, 6, 0),
(346, 6, 0),
(347, 6, 0),
(360, 7, 0),
(362, 7, 0),
(364, 7, 0),
(366, 7, 0),
(391, 8, 0),
(391, 21, 0) ;

#
# Fim do conteúdo da tabela `wp_term_relationships`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_term_taxonomy` existente
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Estrutura da tabela `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 2),
(6, 6, 'nav_menu', '', 0, 5),
(7, 7, 'category', '', 0, 4),
(8, 8, 'product_type', '', 0, 1),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_type', '', 0, 0),
(11, 11, 'product_type', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_cat', '', 0, 1) ;

#
# Fim do conteúdo da tabela `wp_term_taxonomy`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_termmeta` existente
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Estrutura da tabela `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_termmeta`
#
INSERT INTO `wp_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 21, 'product_count_product_cat', '1') ;

#
# Fim do conteúdo da tabela `wp_termmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_terms` existente
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Estrutura da tabela `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categorias', 'sem-categorias', 0),
(2, 'Travel time', 'travel-time', 0),
(3, 'Nothing Basic', 'nothing-basic', 0),
(4, 'Hey Nutri', 'hey-nutri', 0),
(5, 'Brunch Time', 'brunch-time', 0),
(6, 'Menu Principal', 'menu-principal', 0),
(7, 'Receitas', 'receitas', 0),
(8, 'simple', 'simple', 0),
(9, 'grouped', 'grouped', 0),
(10, 'variable', 'variable', 0),
(11, 'external', 'external', 0),
(12, 'exclude-from-search', 'exclude-from-search', 0),
(13, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(14, 'featured', 'featured', 0),
(15, 'outofstock', 'outofstock', 0),
(16, 'rated-1', 'rated-1', 0),
(17, 'rated-2', 'rated-2', 0),
(18, 'rated-3', 'rated-3', 0),
(19, 'rated-4', 'rated-4', 0),
(20, 'rated-5', 'rated-5', 0),
(21, 'Uncategorized', 'uncategorized', 0) ;

#
# Fim do conteúdo da tabela `wp_terms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_usermeta` existente
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Estrutura da tabela `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', '123esite'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:17:{s:64:"8383e01917923aae5b7265c4863643a6f686409f95d18883b5631e5d80dd1b1b";a:4:{s:10:"expiration";i:1681908864;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681736064;}s:64:"904b7810fb289aa815148dae2429741ff7c14403086db091c39269d393b8ae89";a:4:{s:10:"expiration";i:1681909206;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681736406;}s:64:"a5cece9775ea750c6ea7ecc9c50c97828301bce641280da2b80a924ccf1d0a14";a:4:{s:10:"expiration";i:1681919812;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681747012;}s:64:"6c1b3f3165e152a05ab973f4e2e6f5f3f4795005eef70ec0a8c971aeda471a07";a:4:{s:10:"expiration";i:1681923507;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681750707;}s:64:"3b135ac0c2018fc25269fdc30a7d7fc5a41f55adfd1d12f3c73a3ff5a33b5361";a:4:{s:10:"expiration";i:1681949533;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681776733;}s:64:"40308a2918f835b8655f7facd27cf411fb838034e7e4b5fa9ddb381aa6b1b4d4";a:4:{s:10:"expiration";i:1682010515;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681837715;}s:64:"20c02b6eec54d50f5e8e573e2571c6243df80e865b136b12fa2b7815a8610a63";a:4:{s:10:"expiration";i:1682019033;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681846233;}s:64:"a9817f3af35387c51aff185b7229c23d3fbf041b9589ab7888b66103b67a9862";a:4:{s:10:"expiration";i:1682023284;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681850484;}s:64:"b554b81fb02422ce94476da8fc3281c0c13fa42f9f7225e60cb5e7ad47731f28";a:4:{s:10:"expiration";i:1682024770;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681851970;}s:64:"7e0f2a8838e59c46a47f31a4e5e39f05818768ab724cf51a187b30c5134283b8";a:4:{s:10:"expiration";i:1682025234;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681852434;}s:64:"d26628aa2f7f73290e90051247f88ebc095fb53a45f9b5594f01bc7089ca8dcd";a:4:{s:10:"expiration";i:1682031392;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681858592;}s:64:"a55d37521b0022bf54b67f0ec54c6364b31367c0d4694ff0f1c9f5eacc8a93e3";a:4:{s:10:"expiration";i:1682041891;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681869091;}s:64:"25b6746d6139220372831d74c030c06ad4fc3dd94dae40ed4ecce6041a52d6f4";a:4:{s:10:"expiration";i:1682041891;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681869091;}s:64:"50227cbdf1aaadcc09359cc7b6115b6009471276936284d3555594e0544cb340";a:4:{s:10:"expiration";i:1682042041;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681869241;}s:64:"b19f5b2b2438c9d27cf008990a4a3e0cd725efa4777380caa670198266c305a5";a:4:{s:10:"expiration";i:1682043772;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681870972;}s:64:"abb5e96a61bc6eacd30c6e38f08811c9fdda5943747b00bdadb7d32a88cc6dd5";a:4:{s:10:"expiration";i:1682043961;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681871161;}s:64:"956a39fee163950d6df3c4b9388bac8181c6b8478643644de8dcd8dc1a54df8a";a:4:{s:10:"expiration";i:1682048513;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1681875713;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'acf_user_settings', 'a:3:{s:15:"show_field_keys";s:1:"0";s:19:"post-type-first-run";b:1;s:20:"taxonomies-first-run";b:1;}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1681407186'),
(21, 1, 'meta-box-order_post', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:52:"pageparentdiv,submitdiv,categorydiv,tagsdiv-post_tag";s:6:"normal";s:60:"postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(22, 1, 'screen_layout_post', '2'),
(23, 1, 'wp_persisted_preferences', 'a:2:{s:14:"core/edit-post";a:4:{s:26:"isComplementaryAreaVisible";b:1;s:12:"welcomeGuide";b:0;s:10:"openPanels";a:1:{i:0;s:11:"post-status";}s:14:"inactivePanels";a:0:{}}s:9:"_modified";s:24:"2023-04-17T15:10:40.563Z";}'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";i:5;s:11:"commentsdiv";}'),
(26, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(27, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(28, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(29, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(30, 1, '_woocommerce_tracks_anon_id', 'woo:kFZgSR989Pq8JW9S+uR30wmy'),
(31, 1, 'wc_last_active', '1681862400'),
(32, 1, 'meta-box-order_product', 'a:3:{s:4:"side";s:84:"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag";s:6:"normal";s:55:"woocommerce-product-data,postcustom,slugdiv,postexcerpt";s:8:"advanced";s:0:"";}'),
(34, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}') ;

#
# Fim do conteúdo da tabela `wp_usermeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_users` existente
#

DROP TABLE IF EXISTS `wp_users`;


#
# Estrutura da tabela `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, '123esite', '$P$BrwKIcRfopcm4zPiSZ36BbxOaKyhfJ1', '123esite', 'suporte@123esite.com.br', 'http://outsideco.com.br/site', '2023-04-13 01:18:48', '', 0, '123esite') ;

#
# Fim do conteúdo da tabela `wp_users`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_admin_note_actions` existente
#

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;


#
# Estrutura da tabela `wp_wc_admin_note_actions`
#

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_admin_note_actions`
#
INSERT INTO `wp_wc_admin_note_actions` ( `action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(32, 27, 'notify-refund-returns-page', 'Edit page', 'http://outsideco.com.br/site/wp-admin/post.php?post=390&action=edit', 'actioned', '', NULL, NULL),
(61, 51, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', '', NULL, NULL),
(62, 1, 'browse_extensions', 'Browse extensions', 'http://outsideco.com.br/site/wp-admin/admin.php?page=wc-addons', 'unactioned', '', NULL, NULL),
(63, 2, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021', 'actioned', '', NULL, NULL),
(64, 3, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021', 'actioned', '', NULL, NULL),
(65, 4, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', '', NULL, NULL),
(66, 5, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'actioned', '', NULL, NULL),
(67, 6, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow', 'actioned', '', NULL, NULL),
(68, 7, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', '', NULL, NULL),
(69, 8, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', '', NULL, NULL),
(70, 9, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started', 'actioned', '', NULL, NULL),
(71, 10, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://outsideco.com.br/site/wp-admin/&page=wc-addons&section=helper', 'actioned', '', NULL, NULL),
(72, 11, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', '', NULL, NULL),
(73, 14, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(74, 15, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(75, 16, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(76, 16, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(77, 17, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(78, 17, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(79, 18, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(80, 18, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(81, 19, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(82, 19, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(83, 20, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', '', NULL, NULL),
(84, 21, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(85, 21, 'woocommerce-core-paypal-march-2022-dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(86, 22, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(87, 22, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(88, 23, 'pinterest_03_2022_update', 'Update Instructions', 'https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3', 'actioned', '', NULL, NULL),
(89, 24, 'store_setup_survey_survey_q2_2022_share_your_thoughts', 'Tell us how it’s going', 'https://automattic.survey.fm/store-setup-survey-2022', 'actioned', '', NULL, NULL),
(90, 25, 'wc-admin-wisepad3', 'Grow my business offline', 'https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3', 'actioned', '', NULL, NULL),
(91, 26, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(92, 26, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(93, 28, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(94, 28, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(95, 29, 'google_listings_ads_custom_attribute_mapping_q4_2022', 'Learn more', 'https://woocommerce.com/document/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_custom_attribute_mapping_q4_2022#attribute-mapping', 'actioned', '', NULL, NULL),
(96, 30, 'needs-update-eway-payment-gateway-rin-action-button-2022-12-20', 'See available updates', 'http://outsideco.com.br/site/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(97, 30, 'needs-update-eway-payment-gateway-rin-dismiss-button-2022-12-20', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(98, 31, 'updated-eway-payment-gateway-rin-action-button-2022-12-20', 'See all updates', 'http://outsideco.com.br/site/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(99, 31, 'updated-eway-payment-gateway-rin-dismiss-button-2022-12-20', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(100, 32, 'share-navigation-survey-feedback', 'Share feedback', 'https://automattic.survey.fm/new-ecommerce-plan-navigation', 'actioned', '', NULL, NULL),
(101, 33, 'google_listings_ads_pmax_i1_q1_2023_no_gla', 'Boost my business with Google', 'https://woocommerce.com/products/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_pmax_i1_q1_2023_no_gla', 'actioned', '', NULL, NULL),
(102, 34, 'google_listings_ads_pmax_i1_q1_2023_with_gla', 'Create a new ad', 'https://woocommerce.com/products/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_pmax_i1_q1_2023_with_gla', 'actioned', '', NULL, NULL),
(103, 35, 'woocommerce-wcpay-march-2023-update-needed-button', 'See Blog Post', 'https://developer.woocommerce.com/2023/03/23/critical-vulnerability-detected-in-woocommerce-payments-what-you-need-to-know', 'unactioned', '', NULL, NULL),
(104, 35, 'woocommerce-wcpay-march-2023-update-needed-dismiss-button', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(105, 36, 'tap_to_pay_iphone_q2_2023_no_wcpay', 'Simplify my payments', 'https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_no_wcpay', 'actioned', '', NULL, NULL),
(106, 37, 'tap_to_pay_iphone_q2_2023_with_wcpay', 'Set up Tap to Pay on iPhone', 'https://woocommerce.com/document/woocommerce-payments/in-person-payments/woocommerce-in-person-payments-tap-to-pay-on-iphone-quick-start-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_with_wcpay', 'actioned', '', NULL, NULL),
(107, 38, 'extension-settings', 'See available updates', 'http://outsideco.com.br/site/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(108, 38, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(109, 39, 'wc-admin-wcpay-denmark-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/denmark/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-denmark-Q2-2023', 'actioned', '', NULL, NULL),
(110, 40, 'wc-admin-wcpay-greece-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/greece/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-greece-Q2-2023', 'actioned', '', NULL, NULL),
(111, 41, 'wc-admin-wcpay-norway-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/norway/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-norway-Q2-2023', 'actioned', '', NULL, NULL),
(112, 42, 'wc-admin-wcpay-slovakia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/slovakia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-slovakia-Q2-2023', 'actioned', '', NULL, NULL),
(113, 43, 'wc-admin-wcpay-finland-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/finland/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-finland-Q2-2023', 'actioned', '', NULL, NULL),
(114, 44, 'wc-admin-wcpay-estonia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/estonia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-estonia-Q2-2023', 'actioned', '', NULL, NULL),
(115, 45, 'wc-admin-wcpay-lithuania-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/lithuania/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-lithuania-Q2-2023', 'actioned', '', NULL, NULL),
(116, 46, 'wc-admin-wcpay-slovenia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/slovenia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-slovenia-Q2-2023', 'actioned', '', NULL, NULL),
(117, 47, 'wc-admin-wcpay-latvia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/latvia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-latvia-Q2-2023', 'actioned', '', NULL, NULL),
(118, 48, 'wc-admin-wcpay-cyprus-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/cyprus/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-cyprus-Q2-2023', 'actioned', '', NULL, NULL),
(119, 49, 'wc-admin-wcpay-malta-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/malta/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-malta-Q2-2023', 'actioned', '', NULL, NULL),
(120, 50, 'wc-admin-wcpay-luxembourg-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/luxembourg/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-luxembourg-Q2-2023', 'actioned', '', NULL, NULL) ;

#
# Fim do conteúdo da tabela `wp_wc_admin_note_actions`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_admin_notes` existente
#

DROP TABLE IF EXISTS `wp_wc_admin_notes`;


#
# Estrutura da tabela `wp_wc_admin_notes`
#

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_admin_notes`
#
INSERT INTO `wp_wc_admin_notes` ( `note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'new_in_app_marketplace_2021', 'info', 'en_US', 'Customize your store with extensions', 'Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.', '[]', 'unactioned', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 1, 'info'),
(2, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(3, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href="https://woocommerce.com/woocommerce-shipping/">WooCommerce Shipping</a> – all directly from your mobile device!', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(4, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store "ready to sell" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(5, 'your-first-product', 'info', 'en_US', 'Your first product', 'That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href="https://href.li/?https://woocommerce.com/shipping" target="_blank">WooCommerce Shipping</a>.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(6, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(7, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(8, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(9, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(10, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href="https://woocommerce.com/my-dashboard">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href="https://woocommerce.com/my-account/create-a-ticket/">open a ticket</a>.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(11, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(12, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(13, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(14, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href="https://woocommerce.com/products/woocommerce-paypal-payments/" target="_blank">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(15, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href="https://woocommerce.com/products/woocommerce-paypal-payments/" target="_blank">latest PayPal today</a> to continue to receive support and updates.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(16, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(17, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(18, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(19, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(20, 'habit-moment-survey', 'marketing', 'en_US', 'We’re all ears! Share your experience so far with WooCommerce', 'We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(21, 'woocommerce-core-paypal-march-2022-updated', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href="https://woocommerce.com/products/woocommerce-paypal-payments/" target="_blank">PayPal Payments</a> to accept PayPal.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(22, 'woocommerce-core-paypal-march-2022-updated-nopp', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(23, 'pinterest_03_2022_update', 'marketing', 'en_US', 'Your Pinterest for WooCommerce plugin is out of date!', 'Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(24, 'store_setup_survey_survey_q2_2022', 'survey', 'en_US', 'How is your store setup going?', 'Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(25, 'wc-admin-wisepad3', 'marketing', 'en_US', 'Take your business on the go in Canada with WooCommerce In-Person Payments', 'Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(26, 'woocommerce-payments-august-2022-need-to-update', 'update', 'en_US', 'Action required: Please update WooCommerce Payments', 'An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(27, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '[]', 'unactioned', 'woocommerce-core', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 1, 'info'),
(28, 'woocommerce-payments-august-2022-store-patched', 'update', 'en_US', 'WooCommerce Payments has been automatically updated', 'You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(29, 'google_listings_ads_custom_attribute_mapping_q4_2022', 'marketing', 'en_US', 'Our latest improvement to the Google Listings & Ads extension: Attribute Mapping', 'You spoke, we listened. This new feature enables you to easily upload your products, customize your product attributes in one place, and target shoppers with more relevant ads. Extend how far your ad dollars go with each campaign.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(30, 'needs-update-eway-payment-gateway-rin-2022-12-20', 'update', 'en_US', 'Security vulnerability patched in WooCommerce Eway Gateway', 'In response to a potential vulnerability identified in WooCommerce Eway Gateway versions 3.1.0 to 3.5.0, we’ve worked to deploy security fixes and have released an updated version.\r\nNo external exploits have been detected, but we recommend you update to your latest supported version 3.1.26, 3.2.3, 3.3.1, 3.4.6, or 3.5.1', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(31, 'updated-eway-payment-gateway-rin-2022-12-20', 'update', 'en_US', 'WooCommerce Eway Gateway has been automatically updated', 'Your store is now running the latest secure version of WooCommerce Eway Gateway. We worked with the WordPress Plugins team to deploy a software update to stores running WooCommerce Eway Gateway (versions 3.1.0 to 3.5.0) in response to a security vulnerability that was discovered.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(32, 'ecomm-wc-navigation-survey-2023', 'info', 'en_US', 'Navigating WooCommerce on WordPress.com', 'We are improving the WooCommerce navigation on WordPress.com and would love your help to make it better! Please share your experience with us in this 2-minute survey.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(33, 'google_listings_ads_pmax_i1_q1_2023_no_gla', 'marketing', 'en_US', 'Create more engaging ads – without the hard work', 'Get in front of millions of shoppers searching for products like yours with Google Listings &amp; Ads. With new customization features, Google automatically tests multiple combinations of text and images to create the most engaging ad to boost your business. Plus, get up to $500 in ad credit – terms and conditions apply.', '[]', 'unactioned', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 1, 'info'),
(34, 'google_listings_ads_pmax_i1_q1_2023_with_gla', 'marketing', 'en_US', 'New customization features to boost your business', 'You can now add custom images, messaging, and URLs to campaigns in Google Listings &amp; Ads. Google then automatically tests multiple combinations to create the most engaging version to help boost your business. Get more sales with dynamic content – edit an existing campaign or create a new ad now.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(35, 'woocommerce-wcpay-march-2023-update-needed', 'update', 'en_US', 'Action required: Security update for WooCommerce Payments', '<strong>Your store requires a security update for WooCommerce Payments</strong>. Please update to the latest version of WooCommerce Payments immediately to address a potential vulnerability discovered on March 22. For more information on how to update, visit this WooCommerce Developer Blog Post.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(36, 'tap_to_pay_iphone_q2_2023_no_wcpay', 'marketing', 'en_US', 'Accept in-person contactless payments on your iPhone', 'Tap to Pay on iPhone and WooCommerce Payments is quick, secure, and simple to set up — no extra terminals or card readers are needed. Accept contactless debit and credit cards, Apple Pay, and other NFC digital wallets in person.', '[]', 'unactioned', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 1, 'info'),
(37, 'tap_to_pay_iphone_q2_2023_with_wcpay', 'marketing', 'en_US', 'New: accept in-person contactless payments on your iPhone', 'Tap to Pay on iPhone is quick, secure, and simple to set up in WooCommerce Payments — no extra terminals or card readers are needed. Accept contactless debit and credit cards, Apple Pay, and other NFC digital wallets in person in a few short steps!', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(38, 'woocommerce-WCPreOrders-april-2023-update-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce Pre-Orders extension', '<strong>Your store requires a security update for the WooCommerce Pre-Orders extension</strong>. Please update the WooCommerce Pre-Orders extension immediately to address a potential vulnerability discovered on April 11.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(39, 'wc-admin-wcpay-denmark-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Denmark!', 'We’ve recently released WooCommerce Payments in Denmark. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(40, 'wc-admin-wcpay-greece-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Greece!', 'We’ve recently released WooCommerce Payments in Greece. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(41, 'wc-admin-wcpay-norway-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Norway!', 'We’ve recently released WooCommerce Payments in Norway. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(42, 'wc-admin-wcpay-slovakia-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Slovakia!', 'We’ve recently released WooCommerce Payments in Slovakia. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(43, 'wc-admin-wcpay-finland-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Finland!', 'We’ve recently released WooCommerce Payments in Finland. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(44, 'wc-admin-wcpay-estonia-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Estonia!', 'We’ve recently released WooCommerce Payments in Estonia. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(45, 'wc-admin-wcpay-lithuania-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Lithuania!', 'We’ve recently released WooCommerce Payments in Lithuania. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(46, 'wc-admin-wcpay-slovenia-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Slovenia!', 'We’ve recently released WooCommerce Payments in Slovenia. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(47, 'wc-admin-wcpay-latvia-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Latvia!', 'We’ve recently released WooCommerce Payments in Latvia. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(48, 'wc-admin-wcpay-cyprus-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Cyprus!', 'We’ve recently released WooCommerce Payments in Cyprus. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(49, 'wc-admin-wcpay-malta-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Malta!', 'We’ve recently released WooCommerce Payments in Malta. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(50, 'wc-admin-wcpay-luxembourg-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Luxembourg!', 'We’ve recently released WooCommerce Payments in Luxembourg. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-19 02:30:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(51, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '[]', 'unactioned', 'woocommerce-admin', '2023-04-19 02:30:41', NULL, 0, 'plain', '', 0, 1, 'info') ;

#
# Fim do conteúdo da tabela `wp_wc_admin_notes`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_category_lookup` existente
#

DROP TABLE IF EXISTS `wp_wc_category_lookup`;


#
# Estrutura da tabela `wp_wc_category_lookup`
#

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_category_lookup`
#
INSERT INTO `wp_wc_category_lookup` ( `category_tree_id`, `category_id`) VALUES
(21, 21) ;

#
# Fim do conteúdo da tabela `wp_wc_category_lookup`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_customer_lookup` existente
#

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;


#
# Estrutura da tabela `wp_wc_customer_lookup`
#

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_customer_lookup`
#

#
# Fim do conteúdo da tabela `wp_wc_customer_lookup`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_download_log` existente
#

DROP TABLE IF EXISTS `wp_wc_download_log`;


#
# Estrutura da tabela `wp_wc_download_log`
#

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_download_log`
#

#
# Fim do conteúdo da tabela `wp_wc_download_log`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_order_coupon_lookup` existente
#

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;


#
# Estrutura da tabela `wp_wc_order_coupon_lookup`
#

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_order_coupon_lookup`
#

#
# Fim do conteúdo da tabela `wp_wc_order_coupon_lookup`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_order_product_lookup` existente
#

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;


#
# Estrutura da tabela `wp_wc_order_product_lookup`
#

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_order_product_lookup`
#

#
# Fim do conteúdo da tabela `wp_wc_order_product_lookup`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_order_stats` existente
#

DROP TABLE IF EXISTS `wp_wc_order_stats`;


#
# Estrutura da tabela `wp_wc_order_stats`
#

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_order_stats`
#

#
# Fim do conteúdo da tabela `wp_wc_order_stats`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_order_tax_lookup` existente
#

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;


#
# Estrutura da tabela `wp_wc_order_tax_lookup`
#

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_order_tax_lookup`
#

#
# Fim do conteúdo da tabela `wp_wc_order_tax_lookup`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_product_attributes_lookup` existente
#

DROP TABLE IF EXISTS `wp_wc_product_attributes_lookup`;


#
# Estrutura da tabela `wp_wc_product_attributes_lookup`
#

CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_product_attributes_lookup`
#

#
# Fim do conteúdo da tabela `wp_wc_product_attributes_lookup`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_product_download_directories` existente
#

DROP TABLE IF EXISTS `wp_wc_product_download_directories`;


#
# Estrutura da tabela `wp_wc_product_download_directories`
#

CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_product_download_directories`
#
INSERT INTO `wp_wc_product_download_directories` ( `url_id`, `url`, `enabled`) VALUES
(1, 'file://D:/Sites/outside/wp/app/public/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://outsideco.com.br/site/wp-content/uploads/woocommerce_uploads/', 1) ;

#
# Fim do conteúdo da tabela `wp_wc_product_download_directories`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_product_meta_lookup` existente
#

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;


#
# Estrutura da tabela `wp_wc_product_meta_lookup`
#

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_product_meta_lookup`
#
INSERT INTO `wp_wc_product_meta_lookup` ( `product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(391, '', 0, 0, '319.0000', '319.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '') ;

#
# Fim do conteúdo da tabela `wp_wc_product_meta_lookup`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_rate_limits` existente
#

DROP TABLE IF EXISTS `wp_wc_rate_limits`;


#
# Estrutura da tabela `wp_wc_rate_limits`
#

CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate_limit_expiry` bigint(20) unsigned NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rate_limit_id`),
  UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_rate_limits`
#

#
# Fim do conteúdo da tabela `wp_wc_rate_limits`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_reserved_stock` existente
#

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;


#
# Estrutura da tabela `wp_wc_reserved_stock`
#

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_reserved_stock`
#

#
# Fim do conteúdo da tabela `wp_wc_reserved_stock`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_tax_rate_classes` existente
#

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;


#
# Estrutura da tabela `wp_wc_tax_rate_classes`
#

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_tax_rate_classes`
#
INSERT INTO `wp_wc_tax_rate_classes` ( `tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate') ;

#
# Fim do conteúdo da tabela `wp_wc_tax_rate_classes`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wc_webhooks` existente
#

DROP TABLE IF EXISTS `wp_wc_webhooks`;


#
# Estrutura da tabela `wp_wc_webhooks`
#

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_wc_webhooks`
#

#
# Fim do conteúdo da tabela `wp_wc_webhooks`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_api_keys` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;


#
# Estrutura da tabela `wp_woocommerce_api_keys`
#

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_api_keys`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_api_keys`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_attribute_taxonomies` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;


#
# Estrutura da tabela `wp_woocommerce_attribute_taxonomies`
#

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_attribute_taxonomies`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_downloadable_product_permissions` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;


#
# Estrutura da tabela `wp_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_downloadable_product_permissions`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_log` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_log`;


#
# Estrutura da tabela `wp_woocommerce_log`
#

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_log`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_log`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_order_itemmeta` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;


#
# Estrutura da tabela `wp_woocommerce_order_itemmeta`
#

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_order_itemmeta`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_order_items` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;


#
# Estrutura da tabela `wp_woocommerce_order_items`
#

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_order_items`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_order_items`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_payment_tokenmeta` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;


#
# Estrutura da tabela `wp_woocommerce_payment_tokenmeta`
#

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_payment_tokenmeta`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_payment_tokenmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_payment_tokens` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;


#
# Estrutura da tabela `wp_woocommerce_payment_tokens`
#

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_payment_tokens`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_payment_tokens`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_sessions` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;


#
# Estrutura da tabela `wp_woocommerce_sessions`
#

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_sessions`
#
INSERT INTO `wp_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:744:"a:27:{s:2:"id";s:1:"1";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"SP";s:7:"country";s:2:"BR";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"SP";s:16:"shipping_country";s:2:"BR";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:23:"suporte@123esite.com.br";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";s:14:"shipping_phone";s:0:"";}";}', 1682044303) ;

#
# Fim do conteúdo da tabela `wp_woocommerce_sessions`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_shipping_zone_locations` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;


#
# Estrutura da tabela `wp_woocommerce_shipping_zone_locations`
#

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_shipping_zone_locations`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_shipping_zone_locations`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_shipping_zone_methods` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;


#
# Estrutura da tabela `wp_woocommerce_shipping_zone_methods`
#

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_shipping_zone_methods`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_shipping_zone_methods`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_shipping_zones` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;


#
# Estrutura da tabela `wp_woocommerce_shipping_zones`
#

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_shipping_zones`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_shipping_zones`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_tax_rate_locations` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;


#
# Estrutura da tabela `wp_woocommerce_tax_rate_locations`
#

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_tax_rate_locations`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_woocommerce_tax_rates` existente
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;


#
# Estrutura da tabela `wp_woocommerce_tax_rates`
#

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_woocommerce_tax_rates`
#

#
# Fim do conteúdo da tabela `wp_woocommerce_tax_rates`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#


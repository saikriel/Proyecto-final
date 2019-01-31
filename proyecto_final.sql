-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-01-2019 a las 14:30:20
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_commentmeta`
--

CREATE TABLE `mc_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_comments`
--

CREATE TABLE `mc_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `mc_comments`
--

INSERT INTO `mc_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un Comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-10 21:07:45', '2019-01-11 00:07:45', 'Hola, este es un comentario.\nPara empezar con la moderación, edición y eliminación de comentarios, por favor visita la pantalla de comentarios en el panel inicial.\nLos Avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_links`
--

CREATE TABLE `mc_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_options`
--

CREATE TABLE `mc_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `mc_options`
--

INSERT INTO `mc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wordpress', 'yes'),
(2, 'home', 'http://localhost:8888/wordpress', 'yes'),
(3, 'blogname', 'gulamor', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marianacabezasgt@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:109:{s:15:\"post_recetas/?$\";s:32:\"index.php?post_type=post_recetas\";s:45:\"post_recetas/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=post_recetas&feed=$matches[1]\";s:40:\"post_recetas/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=post_recetas&feed=$matches[1]\";s:32:\"post_recetas/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=post_recetas&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"post_recetas/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"post_recetas/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"post_recetas/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"post_recetas/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"post_recetas/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"post_recetas/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"post_recetas/([^/]+)/embed/?$\";s:45:\"index.php?post_recetas=$matches[1]&embed=true\";s:33:\"post_recetas/([^/]+)/trackback/?$\";s:39:\"index.php?post_recetas=$matches[1]&tb=1\";s:53:\"post_recetas/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_recetas=$matches[1]&feed=$matches[2]\";s:48:\"post_recetas/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_recetas=$matches[1]&feed=$matches[2]\";s:41:\"post_recetas/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?post_recetas=$matches[1]&paged=$matches[2]\";s:48:\"post_recetas/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?post_recetas=$matches[1]&cpage=$matches[2]\";s:37:\"post_recetas/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?post_recetas=$matches[1]&page=$matches[2]\";s:29:\"post_recetas/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"post_recetas/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"post_recetas/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"post_recetas/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"post_recetas/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"post_recetas/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gulamor', 'yes'),
(41, 'stylesheet', 'gulamor', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:3;a:4:{s:5:\"title\";s:11:\"Categorías\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'mc_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_CL', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:14:\"contact-widget\";a:0:{}s:14:\"sidebar-widget\";a:3:{i:0;s:13:\"custom_html-3\";i:1;s:13:\"media_image-2\";i:2;s:12:\"categories-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:2:{i:2;a:15:{s:13:\"attachment_id\";i:25;s:3:\"url\";s:104:\"http://localhost:8888/wordpress/wp-content/uploads/2019/01/photo-1517686469429-8bdb88b9f907-300x200.jpeg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:1050;s:6:\"height\";i:700;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:2:{i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:243:\"<div class=\"input-group search\">\r\n      <input type=\"text\" class=\"form-control\" placeholder=\"Busca tu receta\">\r\n      <span class=\"input-group-btn\">\r\n        <button class=\"btn btn-default\" type=\"button\">Go!</button>\r\n      </span>\r\n    </div>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1548947266;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1548968604;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548979666;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1548979837;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547165444;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Desafío Latam', 'yes'),
(141, 'theme_mods_gulamor', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:2;s:11:\"footer-menu\";i:13;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(143, 'page_navigation', 'a:6:{s:10:\"first_text\";s:14:\"&laquo; Inicio\";s:9:\"last_text\";s:11:\"Fin &raquo;\";s:9:\"prev_text\";s:7:\"&laquo;\";s:9:\"next_text\";s:7:\"&raquo;\";s:5:\"style\";s:7:\"default\";s:5:\"align\";s:4:\"left\";}', 'yes'),
(152, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(221, 'recently_activated', 'a:0:{}', 'yes'),
(228, 'acf_version', '5.7.10', 'yes'),
(363, '_transient_timeout_plugin_slugs', '1548986594', 'no'),
(364, '_transient_plugin_slugs', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:9:\"hello.php\";}', 'no'),
(365, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1548910937', 'no'),
(366, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4546;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3251;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2602;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2469;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1905;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1712;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1700;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1465;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1423;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1422;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1421;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1351;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1289;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1280;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1131;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1086;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1074;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1043;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:972;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:911;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:843;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:829;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:819;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:755;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:721;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:712;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:706;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:701;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:693;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:685;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:676;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:675;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:659;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:649;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:637;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:634;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:622;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:613;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:612;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:609;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:576;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:564;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:557;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:555;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:552;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:545;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:528;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:523;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:522;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:522;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:517;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:506;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:502;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:492;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:491;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:488;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:470;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:468;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:464;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:455;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:455;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:452;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:451;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:433;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:430;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:424;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:419;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:417;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:413;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:399;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:397;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:393;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:382;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:377;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:377;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:377;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:376;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:375;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:361;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:360;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:358;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:353;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:352;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:347;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:345;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:341;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:340;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:337;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:321;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:318;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:316;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:315;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:314;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:311;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:311;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:306;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:306;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:306;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:304;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:304;}}', 'no'),
(371, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1548889394;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(377, '_site_transient_timeout_theme_roots', '1548938529', 'no'),
(378, '_site_transient_theme_roots', 'a:4:{s:7:\"gulamor\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(379, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CL/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"es_CL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CL/wordpress-5.0.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1548936732;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(380, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1548936733;s:7:\"checked\";a:4:{s:7:\"gulamor\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentysixteen\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-01-29 00:58:00\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentysixteen/1.5/es_CL.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(381, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1548936734;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.7.10\";s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-09-06 16:48:55\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/es_CL.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.3.1\";s:7:\"updated\";s:19:\"2015-11-26 19:25:25\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.3.1/es_CL.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.7.10\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(384, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_postmeta`
--

CREATE TABLE `mc_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `mc_postmeta`
--

INSERT INTO `mc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-recetas.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1548102665:1'),
(4, 7, '_edit_lock', '1548201989:1'),
(5, 9, '_edit_lock', '1547326892:1'),
(15, 13, '_menu_item_type', 'post_type'),
(16, 13, '_menu_item_menu_item_parent', '0'),
(17, 13, '_menu_item_object_id', '7'),
(18, 13, '_menu_item_object', 'page'),
(19, 13, '_menu_item_target', ''),
(20, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(21, 13, '_menu_item_xfn', ''),
(22, 13, '_menu_item_url', ''),
(33, 16, '_edit_last', '1'),
(34, 16, '_edit_lock', '1548897126:1'),
(35, 24, '_edit_last', '1'),
(36, 24, '_edit_lock', '1548940796:1'),
(37, 25, '_wp_attached_file', '2019/01/photo-1517686469429-8bdb88b9f907.jpeg'),
(38, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:45:\"2019/01/photo-1517686469429-8bdb88b9f907.jpeg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"photo-1517686469429-8bdb88b9f907-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"photo-1517686469429-8bdb88b9f907-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"photo-1517686469429-8bdb88b9f907-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"photo-1517686469429-8bdb88b9f907-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:45:\"photo-1517686469429-8bdb88b9f907-800x600.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:45:\"photo-1517686469429-8bdb88b9f907-800x600.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 24, '_thumbnail_id', '25'),
(40, 24, 'tiempo_preparacion', '20'),
(41, 24, '_tiempo_preparacion', 'field_5c44aadffbd1a'),
(42, 24, 'ingredientes_ingrediente', 'Zanahoria'),
(43, 24, '_ingredientes_ingrediente', 'field_5c44aa8efbd16'),
(44, 24, 'ingredientes_ingrediente_copy', 'Harina'),
(45, 24, '_ingredientes_ingrediente_copy', 'field_5c44aaadfbd17'),
(46, 24, 'ingredientes_ingrediente_copy2', 'huevo'),
(47, 24, '_ingredientes_ingrediente_copy2', 'field_5c44aab5fbd18'),
(48, 24, 'ingredientes', ''),
(49, 24, '_ingredientes', 'field_5c44a9d1fbd15'),
(50, 24, 'preparacion', '1. sbfhasb\r\n<br>\r\n2. huivxifs\r\n3. hoahuf'),
(51, 24, '_preparacion', 'field_5c44aac7fbd19'),
(52, 24, 'dificultad', '2'),
(53, 24, '_dificultad', 'field_5c44ab0bfbd1b'),
(63, 27, '_menu_item_type', 'post_type'),
(64, 27, '_menu_item_menu_item_parent', '0'),
(65, 27, '_menu_item_object_id', '2'),
(66, 27, '_menu_item_object', 'page'),
(67, 27, '_menu_item_target', ''),
(68, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 27, '_menu_item_xfn', ''),
(70, 27, '_menu_item_url', ''),
(71, 27, '_menu_item_orphaned', '1548004572'),
(81, 29, '_edit_lock', '1548007268:1'),
(82, 1, '_edit_lock', '1548016790:1'),
(83, 31, '_menu_item_type', 'post_type'),
(84, 31, '_menu_item_menu_item_parent', '0'),
(85, 31, '_menu_item_object_id', '2'),
(86, 31, '_menu_item_object', 'page'),
(87, 31, '_menu_item_target', ''),
(88, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 31, '_menu_item_xfn', ''),
(90, 31, '_menu_item_url', ''),
(92, 24, 'ingrediente_1', ''),
(93, 24, '_ingrediente_1', 'field_5c4625f2c4f02'),
(94, 24, 'ingrediente_2', ''),
(95, 24, '_ingrediente_2', 'field_5c462600c4f03'),
(96, 24, 'ingrediente_3', ''),
(97, 24, '_ingrediente_3', 'field_5c462615c4f04'),
(98, 24, 'ingrediente_4', ''),
(99, 24, '_ingrediente_4', 'field_5c46261dc4f05'),
(100, 24, 'ingrediente_5', ''),
(101, 24, '_ingrediente_5', 'field_5c462623c4f06'),
(102, 24, 'ingrediente_6', ''),
(103, 24, '_ingrediente_6', 'field_5c46262ac4f07'),
(104, 24, 'ingrediente_7', ''),
(105, 24, '_ingrediente_7', 'field_5c462631c4f08'),
(106, 24, 'ingrediente_8', ''),
(107, 24, '_ingrediente_8', 'field_5c462637c4f09'),
(108, 24, 'imagen', '70'),
(109, 24, '_imagen', 'field_5c4638ba07eb4'),
(110, 45, '_edit_last', '1'),
(111, 45, 'imagen', '77'),
(112, 45, '_imagen', 'field_5c4638ba07eb4'),
(113, 45, 'tiempo_preparacion', '56'),
(114, 45, '_tiempo_preparacion', 'field_5c44aadffbd1a'),
(115, 45, 'ingrediente_1', '243'),
(116, 45, '_ingrediente_1', 'field_5c4625f2c4f02'),
(117, 45, 'ingrediente_2', ''),
(118, 45, '_ingrediente_2', 'field_5c462600c4f03'),
(119, 45, 'ingrediente_3', ''),
(120, 45, '_ingrediente_3', 'field_5c462615c4f04'),
(121, 45, 'ingrediente_4', ''),
(122, 45, '_ingrediente_4', 'field_5c46261dc4f05'),
(123, 45, 'ingrediente_5', ''),
(124, 45, '_ingrediente_5', 'field_5c462623c4f06'),
(125, 45, 'ingrediente_6', ''),
(126, 45, '_ingrediente_6', 'field_5c46262ac4f07'),
(127, 45, 'ingrediente_7', ''),
(128, 45, '_ingrediente_7', 'field_5c462631c4f08'),
(129, 45, 'ingrediente_8', ''),
(130, 45, '_ingrediente_8', 'field_5c462637c4f09'),
(131, 45, 'dificultad', '1'),
(132, 45, '_dificultad', 'field_5c44ab0bfbd1b'),
(133, 45, '_edit_lock', '1548940874:1'),
(134, 46, '_edit_last', '1'),
(135, 46, '_edit_lock', '1548940903:1'),
(136, 46, 'imagen', '74'),
(137, 46, '_imagen', 'field_5c4638ba07eb4'),
(138, 46, 'tiempo_preparacion', ''),
(139, 46, '_tiempo_preparacion', 'field_5c44aadffbd1a'),
(140, 46, 'ingrediente_1', ''),
(141, 46, '_ingrediente_1', 'field_5c4625f2c4f02'),
(142, 46, 'ingrediente_2', ''),
(143, 46, '_ingrediente_2', 'field_5c462600c4f03'),
(144, 46, 'ingrediente_3', ''),
(145, 46, '_ingrediente_3', 'field_5c462615c4f04'),
(146, 46, 'ingrediente_4', ''),
(147, 46, '_ingrediente_4', 'field_5c46261dc4f05'),
(148, 46, 'ingrediente_5', ''),
(149, 46, '_ingrediente_5', 'field_5c462623c4f06'),
(150, 46, 'ingrediente_6', ''),
(151, 46, '_ingrediente_6', 'field_5c46262ac4f07'),
(152, 46, 'ingrediente_7', ''),
(153, 46, '_ingrediente_7', 'field_5c462631c4f08'),
(154, 46, 'ingrediente_8', ''),
(155, 46, '_ingrediente_8', 'field_5c462637c4f09'),
(156, 46, 'dificultad', '1'),
(157, 46, '_dificultad', 'field_5c44ab0bfbd1b'),
(158, 47, '_edit_last', '1'),
(159, 47, '_edit_lock', '1548941151:1'),
(160, 47, 'imagen', '69'),
(161, 47, '_imagen', 'field_5c4638ba07eb4'),
(162, 47, 'tiempo_preparacion', ''),
(163, 47, '_tiempo_preparacion', 'field_5c44aadffbd1a'),
(164, 47, 'ingrediente_1', ''),
(165, 47, '_ingrediente_1', 'field_5c4625f2c4f02'),
(166, 47, 'ingrediente_2', ''),
(167, 47, '_ingrediente_2', 'field_5c462600c4f03'),
(168, 47, 'ingrediente_3', ''),
(169, 47, '_ingrediente_3', 'field_5c462615c4f04'),
(170, 47, 'ingrediente_4', ''),
(171, 47, '_ingrediente_4', 'field_5c46261dc4f05'),
(172, 47, 'ingrediente_5', ''),
(173, 47, '_ingrediente_5', 'field_5c462623c4f06'),
(174, 47, 'ingrediente_6', ''),
(175, 47, '_ingrediente_6', 'field_5c46262ac4f07'),
(176, 47, 'ingrediente_7', ''),
(177, 47, '_ingrediente_7', 'field_5c462631c4f08'),
(178, 47, 'ingrediente_8', ''),
(179, 47, '_ingrediente_8', 'field_5c462637c4f09'),
(180, 47, 'dificultad', '1'),
(181, 47, '_dificultad', 'field_5c44ab0bfbd1b'),
(182, 49, '_edit_last', '1'),
(183, 49, '_edit_lock', '1548163019:1'),
(184, 53, '_edit_last', '1'),
(185, 53, 'image', '25'),
(186, 53, '_image', 'field_5c4717ff8ec4b'),
(187, 53, 'link', 'http://www.gulamor.cl'),
(188, 53, '_link', 'field_5c4718278ec4c'),
(189, 53, 'texto_del_slider', 'Hola hola hola'),
(190, 53, '_texto_del_slider', 'field_5c4718478ec4d'),
(191, 53, '_edit_lock', '1548175744:1'),
(192, 49, '_wp_trash_meta_status', 'publish'),
(193, 49, '_wp_trash_meta_time', '1548175896'),
(194, 49, '_wp_desired_post_slug', 'group_5c4717e616557'),
(195, 50, '_wp_trash_meta_status', 'publish'),
(196, 50, '_wp_trash_meta_time', '1548175896'),
(197, 50, '_wp_desired_post_slug', 'field_5c4717ff8ec4b'),
(198, 51, '_wp_trash_meta_status', 'publish'),
(199, 51, '_wp_trash_meta_time', '1548175896'),
(200, 51, '_wp_desired_post_slug', 'field_5c4718278ec4c'),
(201, 52, '_wp_trash_meta_status', 'publish'),
(202, 52, '_wp_trash_meta_time', '1548175896'),
(203, 52, '_wp_desired_post_slug', 'field_5c4718478ec4d'),
(204, 54, '_edit_lock', '1548712940:1'),
(207, 7, '_wp_page_template', 'page-articulos.php'),
(210, 56, '_edit_last', '1'),
(211, 56, '_edit_lock', '1548615047:1'),
(212, 61, '_wp_attached_file', '2019/01/perfil.jpg'),
(213, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:18:\"2019/01/perfil.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"perfil-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 60, '_edit_last', '1'),
(215, 60, 'titulo', 'Conoceme :)'),
(216, 60, '_titulo', 'field_5c4df995d6808'),
(217, 60, 'descripcion', 'Lorem ipsum dolor sit amet consectetur adipiscing elit, viverra venenatis pulvinar sem vel non lectus tellus, ad lobortis tempor augue quam fusce. Facilisis interdum augue elementum velit luctus tellus, etiam laoreet fames dictumst id tempus a, et iaculis nulla ridiculus ante. Lectus ad eleifend torquent urna habitant ultrices conubia, ridiculus in dui dictumst vel erat.'),
(218, 60, '_descripcion', 'field_5c4df9acd6809'),
(219, 60, 'imagen', '61'),
(220, 60, '_imagen', 'field_5c4df9d1d680a'),
(221, 60, '_edit_lock', '1548614098:1'),
(224, 54, '_thumbnail_id', '25'),
(225, 47, 'categoria', 'a:2:{i:0;s:6:\"Postre\";i:1;s:5:\"Torta\";}'),
(226, 47, '_categoria', 'field_5c5242e756b8a'),
(227, 63, '_form', '<label> Nombre(required)\n    [text* your-name] </label>\n\n<label> Email (required)\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Mensaje\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(228, 63, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:24:\"gulamor \"[your-subject]\"\";s:6:\"sender\";s:36:\"gulamor <marianacabezasgt@gmail.com>\";s:9:\"recipient\";s:26:\"marianacabezasgt@gmail.com\";s:4:\"body\";s:177:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on gulamor (http://localhost:8888/wordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(229, 63, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"gulamor \"[your-subject]\"\";s:6:\"sender\";s:36:\"gulamor <marianacabezasgt@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:119:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on gulamor (http://localhost:8888/wordpress)\";s:18:\"additional_headers\";s:36:\"Reply-To: marianacabezasgt@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(230, 63, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(231, 63, '_additional_settings', ''),
(232, 63, '_locale', 'es_CL'),
(233, 64, '_edit_last', '1'),
(234, 64, '_edit_lock', '1548940159:1'),
(235, 65, '_wp_attached_file', '2019/01/DSC_0003.jpg'),
(236, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:20:\"2019/01/DSC_0003.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0003-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_0003-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_0003-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_0003-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:20:\"DSC_0003-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:20:\"DSC_0003-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"D5833\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1493242551\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"4.6\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"6\";s:8:\"keywords\";a:0:{}}}'),
(237, 66, '_wp_attached_file', '2019/01/DSC_0005.jpg'),
(238, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:20:\"2019/01/DSC_0005.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0005-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_0005-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_0005-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_0005-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:20:\"DSC_0005-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:20:\"DSC_0005-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"D5833\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1493242715\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"4.6\";s:3:\"iso\";s:2:\"64\";s:13:\"shutter_speed\";s:7:\"0.03125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"6\";s:8:\"keywords\";a:0:{}}}'),
(239, 67, '_wp_attached_file', '2019/01/DSC_0006.jpg'),
(240, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:20:\"2019/01/DSC_0006.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0006-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_0006-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_0006-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_0006-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:20:\"DSC_0006-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:20:\"DSC_0006-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"D5833\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1493242718\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"4.6\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"6\";s:8:\"keywords\";a:0:{}}}'),
(241, 68, '_wp_attached_file', '2019/01/DSC_0009.jpg'),
(242, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:20:\"2019/01/DSC_0009.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0009-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_0009-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_0009-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_0009-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:20:\"DSC_0009-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:20:\"DSC_0009-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"D5833\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1493243952\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"4.6\";s:3:\"iso\";s:2:\"80\";s:13:\"shutter_speed\";s:7:\"0.03125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"6\";s:8:\"keywords\";a:0:{}}}'),
(243, 69, '_wp_attached_file', '2019/01/DSC_0039-e1548941087734.jpg'),
(244, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2150;s:6:\"height\";i:2150;s:4:\"file\";s:35:\"2019/01/DSC_0039-e1548941087734.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"DSC_0039-e1548941087734-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"DSC_0039-e1548941087734-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"DSC_0039-e1548941087734-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"DSC_0039-e1548941087734-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:35:\"DSC_0039-e1548941087734-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:35:\"DSC_0039-e1548941087734-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"D5833\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1494451339\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"4.6\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.03125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(245, 70, '_wp_attached_file', '2019/01/DSC_0195_1-e1548940923673.jpg'),
(246, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2160;s:6:\"height\";i:2160;s:4:\"file\";s:37:\"2019/01/DSC_0195_1-e1548940923673.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"DSC_0195_1-e1548940923673-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"DSC_0195_1-e1548940923673-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"DSC_0195_1-e1548940923673-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"DSC_0195_1-e1548940923673-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:37:\"DSC_0195_1-e1548940923673-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:37:\"DSC_0195_1-e1548940923673-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"D5833\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1478373017\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"4.6\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:7:\"0.03125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(247, 71, '_wp_attached_file', '2019/01/IMG_20161225_115100_877.jpg'),
(248, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1152;s:6:\"height\";i:1152;s:4:\"file\";s:35:\"2019/01/IMG_20161225_115100_877.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"IMG_20161225_115100_877-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"IMG_20161225_115100_877-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"IMG_20161225_115100_877-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"IMG_20161225_115100_877-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:35:\"IMG_20161225_115100_877-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:35:\"IMG_20161225_115100_877-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(249, 72, '_wp_attached_file', '2019/01/IMG_20170322_232621_839.jpg'),
(250, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2160;s:6:\"height\";i:2160;s:4:\"file\";s:35:\"2019/01/IMG_20170322_232621_839.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"IMG_20170322_232621_839-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"IMG_20170322_232621_839-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"IMG_20170322_232621_839-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"IMG_20170322_232621_839-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:35:\"IMG_20170322_232621_839-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:35:\"IMG_20170322_232621_839-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 73, '_wp_attached_file', '2019/01/IMG_20170326_143735_951.jpg'),
(252, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2160;s:6:\"height\";i:2160;s:4:\"file\";s:35:\"2019/01/IMG_20170326_143735_951.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"IMG_20170326_143735_951-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"IMG_20170326_143735_951-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"IMG_20170326_143735_951-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"IMG_20170326_143735_951-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:35:\"IMG_20170326_143735_951-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:35:\"IMG_20170326_143735_951-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(253, 74, '_wp_attached_file', '2019/01/IMG_20170419_144941_137.jpg'),
(254, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2160;s:6:\"height\";i:2160;s:4:\"file\";s:35:\"2019/01/IMG_20170419_144941_137.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"IMG_20170419_144941_137-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"IMG_20170419_144941_137-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"IMG_20170419_144941_137-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"IMG_20170419_144941_137-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:35:\"IMG_20170419_144941_137-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:35:\"IMG_20170419_144941_137-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(255, 75, '_wp_attached_file', '2019/01/IMG-20160907-WA0003-e1548940425699.jpg'),
(256, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:636;s:6:\"height\";i:636;s:4:\"file\";s:46:\"2019/01/IMG-20160907-WA0003-e1548940425699.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"IMG-20160907-WA0003-e1548940425699-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"IMG-20160907-WA0003-e1548940425699-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG-20160907-WA0003-577x1024.jpg\";s:5:\"width\";i:577;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:46:\"IMG-20160907-WA0003-e1548940425699-636x600.jpg\";s:5:\"width\";i:636;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:46:\"IMG-20160907-WA0003-e1548940425699-636x600.jpg\";s:5:\"width\";i:636;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(257, 76, '_wp_attached_file', '2019/01/IMG-20161224-WA0003.jpeg'),
(258, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:32:\"2019/01/IMG-20161224-WA0003.jpeg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"IMG-20161224-WA0003-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"IMG-20161224-WA0003-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"IMG-20161224-WA0003-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"IMG-20161224-WA0003-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:32:\"IMG-20161224-WA0003-800x600.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:32:\"IMG-20161224-WA0003-800x600.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"D5833\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1482583743\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"4.6\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:7:\"0.03125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(259, 77, '_wp_attached_file', '2019/01/IMG-20170424-WA0011-e1548940981773.jpg'),
(260, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:584;s:6:\"height\";i:584;s:4:\"file\";s:46:\"2019/01/IMG-20170424-WA0011-e1548940981773.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"IMG-20170424-WA0011-e1548940981773-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"IMG-20170424-WA0011-e1548940981773-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG-20170424-WA0011-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG-20170424-WA0011-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:31:\"IMG-20170424-WA0011-800x585.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:31:\"IMG-20170424-WA0011-800x585.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 78, '_wp_attached_file', '2019/01/IMG-20170504-WA0011-e1548940337140.jpg'),
(262, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:46:\"2019/01/IMG-20170504-WA0011-e1548940337140.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"IMG-20170504-WA0011-e1548940337140-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"IMG-20170504-WA0011-e1548940337140-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"IMG-20170504-WA0011-e1548940337140-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG-20170504-WA0011-614x1024.jpg\";s:5:\"width\";i:614;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:46:\"IMG-20170504-WA0011-e1548940337140-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:46:\"IMG-20170504-WA0011-e1548940337140-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(263, 79, '_wp_attached_file', '2019/01/IMG-20170504-WA0013-e1548940222772.jpg'),
(264, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:46:\"2019/01/IMG-20170504-WA0013-e1548940222772.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"IMG-20170504-WA0013-e1548940222772-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"IMG-20170504-WA0013-e1548940222772-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"IMG-20170504-WA0013-e1548940222772-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG-20170504-WA0013-614x1024.jpg\";s:5:\"width\";i:614;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:46:\"IMG-20170504-WA0013-e1548940222772-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:46:\"IMG-20170504-WA0013-e1548940222772-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(265, 64, 'imagen', '79'),
(266, 64, '_imagen', 'field_5c4638ba07eb4'),
(267, 64, 'tiempo_preparacion', '90 minutos'),
(268, 64, '_tiempo_preparacion', 'field_5c44aadffbd1a'),
(269, 64, 'ingrediente_1', 'ingrediente 1'),
(270, 64, '_ingrediente_1', 'field_5c4625f2c4f02'),
(271, 64, 'ingrediente_2', 'ingrediente 2'),
(272, 64, '_ingrediente_2', 'field_5c462600c4f03'),
(273, 64, 'ingrediente_3', 'ingrediente 3'),
(274, 64, '_ingrediente_3', 'field_5c462615c4f04'),
(275, 64, 'ingrediente_4', ''),
(276, 64, '_ingrediente_4', 'field_5c46261dc4f05'),
(277, 64, 'ingrediente_5', ''),
(278, 64, '_ingrediente_5', 'field_5c462623c4f06'),
(279, 64, 'ingrediente_6', ''),
(280, 64, '_ingrediente_6', 'field_5c46262ac4f07'),
(281, 64, 'ingrediente_7', ''),
(282, 64, '_ingrediente_7', 'field_5c462631c4f08'),
(283, 64, 'ingrediente_8', ''),
(284, 64, '_ingrediente_8', 'field_5c462637c4f09'),
(285, 64, 'dificultad', '3'),
(286, 64, '_dificultad', 'field_5c44ab0bfbd1b'),
(287, 79, '_wp_attachment_backup_sizes', 'a:7:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:768;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"IMG-20170504-WA0013.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170504-WA0013-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170504-WA0013-180x300.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:32:\"IMG-20170504-WA0013-768x1280.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:32:\"IMG-20170504-WA0013-614x1024.jpg\";s:5:\"width\";i:614;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"slideshow-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170504-WA0013-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom_logo-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170504-WA0013-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(288, 78, '_wp_attachment_backup_sizes', 'a:7:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:768;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"IMG-20170504-WA0011.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170504-WA0011-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170504-WA0011-180x300.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:32:\"IMG-20170504-WA0011-768x1280.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:32:\"IMG-20170504-WA0011-614x1024.jpg\";s:5:\"width\";i:614;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"slideshow-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170504-WA0011-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom_logo-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170504-WA0011-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(289, 75, '_wp_attachment_backup_sizes', 'a:6:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:640;s:6:\"height\";i:1136;s:4:\"file\";s:23:\"IMG-20160907-WA0003.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20160907-WA0003-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20160907-WA0003-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:32:\"IMG-20160907-WA0003-577x1024.jpg\";s:5:\"width\";i:577;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"slideshow-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20160907-WA0003-640x600.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom_logo-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20160907-WA0003-640x600.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(290, 80, '_edit_last', '1'),
(291, 80, '_edit_lock', '1548940325:1'),
(292, 80, 'imagen', '75'),
(293, 80, '_imagen', 'field_5c4638ba07eb4'),
(294, 80, 'tiempo_preparacion', '60 minutos'),
(295, 80, '_tiempo_preparacion', 'field_5c44aadffbd1a'),
(296, 80, 'ingrediente_1', ''),
(297, 80, '_ingrediente_1', 'field_5c4625f2c4f02'),
(298, 80, 'ingrediente_2', ''),
(299, 80, '_ingrediente_2', 'field_5c462600c4f03'),
(300, 80, 'ingrediente_3', ''),
(301, 80, '_ingrediente_3', 'field_5c462615c4f04'),
(302, 80, 'ingrediente_4', ''),
(303, 80, '_ingrediente_4', 'field_5c46261dc4f05'),
(304, 80, 'ingrediente_5', ''),
(305, 80, '_ingrediente_5', 'field_5c462623c4f06'),
(306, 80, 'ingrediente_6', ''),
(307, 80, '_ingrediente_6', 'field_5c46262ac4f07'),
(308, 80, 'ingrediente_7', ''),
(309, 80, '_ingrediente_7', 'field_5c462631c4f08'),
(310, 80, 'ingrediente_8', ''),
(311, 80, '_ingrediente_8', 'field_5c462637c4f09'),
(312, 80, 'dificultad', '1'),
(313, 80, '_dificultad', 'field_5c44ab0bfbd1b'),
(314, 81, '_edit_last', '1'),
(315, 81, '_edit_lock', '1548940362:1'),
(316, 81, 'imagen', '72'),
(317, 81, '_imagen', 'field_5c4638ba07eb4'),
(318, 81, 'tiempo_preparacion', ''),
(319, 81, '_tiempo_preparacion', 'field_5c44aadffbd1a'),
(320, 81, 'ingrediente_1', ''),
(321, 81, '_ingrediente_1', 'field_5c4625f2c4f02'),
(322, 81, 'ingrediente_2', ''),
(323, 81, '_ingrediente_2', 'field_5c462600c4f03'),
(324, 81, 'ingrediente_3', ''),
(325, 81, '_ingrediente_3', 'field_5c462615c4f04'),
(326, 81, 'ingrediente_4', ''),
(327, 81, '_ingrediente_4', 'field_5c46261dc4f05'),
(328, 81, 'ingrediente_5', ''),
(329, 81, '_ingrediente_5', 'field_5c462623c4f06'),
(330, 81, 'ingrediente_6', ''),
(331, 81, '_ingrediente_6', 'field_5c46262ac4f07'),
(332, 81, 'ingrediente_7', ''),
(333, 81, '_ingrediente_7', 'field_5c462631c4f08'),
(334, 81, 'ingrediente_8', ''),
(335, 81, '_ingrediente_8', 'field_5c462637c4f09'),
(336, 81, 'dificultad', '1'),
(337, 81, '_dificultad', 'field_5c44ab0bfbd1b'),
(338, 82, '_edit_last', '1'),
(339, 82, '_edit_lock', '1548940742:1'),
(340, 82, 'imagen', '71'),
(341, 82, '_imagen', 'field_5c4638ba07eb4'),
(342, 82, 'tiempo_preparacion', ''),
(343, 82, '_tiempo_preparacion', 'field_5c44aadffbd1a'),
(344, 82, 'ingrediente_1', ''),
(345, 82, '_ingrediente_1', 'field_5c4625f2c4f02'),
(346, 82, 'ingrediente_2', ''),
(347, 82, '_ingrediente_2', 'field_5c462600c4f03'),
(348, 82, 'ingrediente_3', ''),
(349, 82, '_ingrediente_3', 'field_5c462615c4f04'),
(350, 82, 'ingrediente_4', ''),
(351, 82, '_ingrediente_4', 'field_5c46261dc4f05'),
(352, 82, 'ingrediente_5', ''),
(353, 82, '_ingrediente_5', 'field_5c462623c4f06'),
(354, 82, 'ingrediente_6', ''),
(355, 82, '_ingrediente_6', 'field_5c46262ac4f07'),
(356, 82, 'ingrediente_7', ''),
(357, 82, '_ingrediente_7', 'field_5c462631c4f08'),
(358, 82, 'ingrediente_8', ''),
(359, 82, '_ingrediente_8', 'field_5c462637c4f09'),
(360, 82, 'dificultad', '1'),
(361, 82, '_dificultad', 'field_5c44ab0bfbd1b'),
(362, 70, '_wp_attachment_backup_sizes', 'a:7:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:14:\"DSC_0195_1.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:22:\"DSC_0195_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:22:\"DSC_0195_1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:22:\"DSC_0195_1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:23:\"DSC_0195_1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"slideshow-orig\";a:4:{s:4:\"file\";s:22:\"DSC_0195_1-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom_logo-orig\";a:4:{s:4:\"file\";s:22:\"DSC_0195_1-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(363, 77, '_wp_attachment_backup_sizes', 'a:7:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1040;s:6:\"height\";i:585;s:4:\"file\";s:23:\"IMG-20170424-WA0011.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170424-WA0011-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170424-WA0011-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170424-WA0011-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:32:\"IMG-20170424-WA0011-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"slideshow-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170424-WA0011-800x585.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom_logo-orig\";a:4:{s:4:\"file\";s:31:\"IMG-20170424-WA0011-800x585.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(364, 69, '_wp_attachment_backup_sizes', 'a:7:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:12:\"DSC_0039.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:20:\"DSC_0039-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:20:\"DSC_0039-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:20:\"DSC_0039-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:21:\"DSC_0039-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"slideshow-orig\";a:4:{s:4:\"file\";s:20:\"DSC_0039-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom_logo-orig\";a:4:{s:4:\"file\";s:20:\"DSC_0039-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(365, 84, '_menu_item_type', 'post_type'),
(366, 84, '_menu_item_menu_item_parent', '0'),
(367, 84, '_menu_item_object_id', '7'),
(368, 84, '_menu_item_object', 'page'),
(369, 84, '_menu_item_target', ''),
(370, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(371, 84, '_menu_item_xfn', ''),
(372, 84, '_menu_item_url', ''),
(374, 85, '_menu_item_type', 'post_type'),
(375, 85, '_menu_item_menu_item_parent', '0'),
(376, 85, '_menu_item_object_id', '2'),
(377, 85, '_menu_item_object', 'page'),
(378, 85, '_menu_item_target', ''),
(379, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(380, 85, '_menu_item_xfn', ''),
(381, 85, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_posts`
--

CREATE TABLE `mc_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `mc_posts`
--

INSERT INTO `mc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-10 21:07:45', '2019-01-11 00:07:45', '<!-- wp:paragraph -->\n<p>Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2019-01-10 21:07:45', '2019-01-11 00:07:45', '', 0, 'http://localhost:8888/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-10 21:07:45', '2019-01-11 00:07:45', '', 'Recetas', '', 'publish', 'closed', 'open', '', 'recetas', '', '', '2019-01-20 18:12:46', '2019-01-20 21:12:46', '', 0, 'http://localhost:8888/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-10 21:07:45', '2019-01-11 00:07:45', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nuestra dirección de sitio web es: http://localhost:8888/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recopilamos y por qué lo recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en el sitio recopilamos los datos mostrados en el formulario de comentarios, y también la dirección IP del visitante y la cadena del agente de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se puede proporcionar una cadena anonimizada creada a partir de su dirección de correo electrónico (también denominada hash) al servicio gravatar para ver si la está utilizando. La política de privacidad del servicio gravar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, su imagen de perfil es visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Multimedia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes al sitio web, debes evitar cargar imágenes con datos de ubicación incrustados (EXIF GPS). Los visitantes del sitio web pueden descargar y extraer los datos de la ubicación de las imágenes en el sitio Web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de Contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si deja un Comentario en nuestro sitio puedes optar por guardar tu nombre, dirección de correo electrónico y sitio web en cookies. Éstos son para tu conveniencia de modo que no tengas que rellenar tus datos otra vez cuando dejes otro comentario. Estas cookies durarán un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta e inicias sesión en este sitio, configuraremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se descarta al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicies sesión, también configuraremos varias cookies para guardar tu información de inicio de sesión y sus opciones de visualización en pantalla. Las cookies de inicio de sesión duran dos días y las cookies de opciones de pantalla duran un año. Si selecciona &quot;Recordarme&quot; en tu inicio de sesión se mantendrá durante dos semanas. Si cierra la sesión de tu cuenta, se eliminarán las cookies de inicio de sesión.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo, una cookie adicional se guardará en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID de correo del artículo que acabas de editar. Expira después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos en este sitio pueden incluir contenido incrustado (por ejemplo, videos, imágenes, artículos, etc.). El contenido incrustado de otros sitios web se comporta de la misma manera que si el visitante hubiera visitado el otro sitio web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estos sitios web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tiene una cuenta y está conectado a dicho sitio web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analíticas</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar automáticamente cualquier comentario de seguimiento en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para los usuarios que se registren en nuestro sitio web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o borrar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de sitios web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienen sobre sus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta en este sitio, o ha dejado comentarios, puedes solicitar recibir un archivo exportado de los datos personales que tengamos sobre usted, incluyendo cualquier dato que nos haya proporcionado. También puede solicitar que borremos cualquier dato personal que mantengamos sobre usted. Esto no incluye los datos que estamos obligados a mantener para fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes se pueden verificar a través de un servicio automático de detección de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos sus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos de violación de datos tenemos en marcha</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué toma de decisiones y/o perfiles automatizados haremos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos de divulgación regulatoria de la industria</h3><!-- /wp:heading -->', 'Políticas de Privacidad', '', 'draft', 'closed', 'open', '', 'politica-de-privacidad', '', '', '2019-01-10 21:07:45', '2019-01-11 00:07:45', '', 0, 'http://localhost:8888/wordpress/?page_id=3', 0, 'page', '', 0),
(6, 1, '2019-01-12 18:03:20', '2019-01-12 21:03:20', '', 'Recetas', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-12 18:03:20', '2019-01-12 21:03:20', '', 2, 'http://localhost:8888/wordpress/2019/01/12/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-01-12 18:03:34', '2019-01-12 21:03:34', '', 'Artículos', '', 'publish', 'closed', 'closed', '', 'articulos', '', '', '2019-01-22 21:05:34', '2019-01-23 00:05:34', '', 0, 'http://localhost:8888/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-01-12 18:03:34', '2019-01-12 21:03:34', '', 'Artículos', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-01-12 18:03:34', '2019-01-12 21:03:34', '', 7, 'http://localhost:8888/wordpress/2019/01/12/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-01-12 18:03:45', '2019-01-12 21:03:45', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2019-01-12 18:03:45', '2019-01-12 21:03:45', '', 0, 'http://localhost:8888/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-01-12 18:03:45', '2019-01-12 21:03:45', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-01-12 18:03:45', '2019-01-12 21:03:45', '', 9, 'http://localhost:8888/wordpress/2019/01/12/9-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-01-20 13:20:54', '2019-01-20 16:20:54', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2019-01-30 22:56:51', '2019-01-31 01:56:51', '', 0, 'http://localhost:8888/wordpress/?p=13', 1, 'nav_menu_item', '', 0),
(16, 1, '2019-01-20 14:10:35', '2019-01-20 17:10:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"post_recetas\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Recetas', 'recetas', 'publish', 'closed', 'closed', '', 'group_5c44a98d25383', '', '', '2019-01-30 22:05:15', '2019-01-31 01:05:15', '', 0, 'http://localhost:8888/wordpress/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2019-01-20 14:10:35', '2019-01-20 17:10:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:15:\"recetas__tiempo\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiempo preparación', 'tiempo_preparacion', 'publish', 'closed', 'closed', '', 'field_5c44aadffbd1a', '', '', '2019-01-21 18:27:07', '2019-01-21 21:27:07', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=17', 1, 'acf-field', '', 0),
(23, 1, '2019-01-20 14:10:35', '2019-01-20 17:10:35', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:19:\"recetas__dificultad\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:5:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Dificultad', 'dificultad', 'publish', 'closed', 'closed', '', 'field_5c44ab0bfbd1b', '', '', '2019-01-21 18:27:07', '2019-01-21 21:27:07', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=23', 10, 'acf-field', '', 0),
(24, 1, '2019-01-20 14:12:34', '2019-01-20 17:12:34', '<ol>\r\n 	<li>qnb</li>\r\n 	<li>sfheh</li>\r\n 	<li>fvjv</li>\r\n</ol>', 'Muffins de arandanos', '', 'publish', 'closed', 'closed', '', 'muffins-de-zanahoria', '', '', '2019-01-31 10:22:18', '2019-01-31 13:22:18', '', 0, 'http://localhost:8888/wordpress/?post_type=post_recetas&#038;p=24', 0, 'post_recetas', '', 0),
(25, 1, '2019-01-20 14:12:27', '2019-01-20 17:12:27', '', 'photo-1517686469429-8bdb88b9f907', '', 'inherit', 'open', 'closed', '', 'photo-1517686469429-8bdb88b9f907', '', '', '2019-01-20 14:12:27', '2019-01-20 17:12:27', '', 24, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/photo-1517686469429-8bdb88b9f907.jpeg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-01-20 14:16:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-20 14:16:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?p=27', 1, 'nav_menu_item', '', 0),
(29, 1, '2019-01-20 15:03:22', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-20 15:03:22', '2019-01-20 18:03:22', '', 0, 'http://localhost:8888/wordpress/?page_id=29', 0, 'page', '', 0),
(31, 1, '2019-01-20 17:44:30', '2019-01-20 20:44:30', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-01-30 22:56:51', '2019-01-31 01:56:51', '', 0, 'http://localhost:8888/wordpress/?p=31', 2, 'nav_menu_item', '', 0),
(35, 1, '2019-01-21 18:07:48', '2019-01-21 21:07:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ingrediente 1', 'ingrediente_1', 'publish', 'closed', 'closed', '', 'field_5c4625f2c4f02', '', '', '2019-01-21 18:27:07', '2019-01-21 21:27:07', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=35', 2, 'acf-field', '', 0),
(36, 1, '2019-01-21 18:07:48', '2019-01-21 21:07:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ingrediente 2', 'ingrediente_2', 'publish', 'closed', 'closed', '', 'field_5c462600c4f03', '', '', '2019-01-21 18:27:07', '2019-01-21 21:27:07', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=36', 3, 'acf-field', '', 0),
(37, 1, '2019-01-21 18:07:48', '2019-01-21 21:07:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ingrediente 3', 'ingrediente_3', 'publish', 'closed', 'closed', '', 'field_5c462615c4f04', '', '', '2019-01-21 18:27:07', '2019-01-21 21:27:07', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=37', 4, 'acf-field', '', 0),
(38, 1, '2019-01-21 18:07:48', '2019-01-21 21:07:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ingrediente 4', 'ingrediente_4', 'publish', 'closed', 'closed', '', 'field_5c46261dc4f05', '', '', '2019-01-21 18:27:07', '2019-01-21 21:27:07', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=38', 5, 'acf-field', '', 0),
(39, 1, '2019-01-21 18:07:48', '2019-01-21 21:07:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ingrediente 5', 'ingrediente_5', 'publish', 'closed', 'closed', '', 'field_5c462623c4f06', '', '', '2019-01-21 18:27:07', '2019-01-21 21:27:07', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=39', 6, 'acf-field', '', 0),
(40, 1, '2019-01-21 18:07:48', '2019-01-21 21:07:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ingrediente 6', 'ingrediente_6', 'publish', 'closed', 'closed', '', 'field_5c46262ac4f07', '', '', '2019-01-21 18:27:07', '2019-01-21 21:27:07', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=40', 7, 'acf-field', '', 0),
(41, 1, '2019-01-21 18:07:48', '2019-01-21 21:07:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ingrediente 7', 'ingrediente_7', 'publish', 'closed', 'closed', '', 'field_5c462631c4f08', '', '', '2019-01-21 18:27:07', '2019-01-21 21:27:07', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=41', 8, 'acf-field', '', 0),
(42, 1, '2019-01-21 18:07:48', '2019-01-21 21:07:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ingrediente 8', 'ingrediente_8', 'publish', 'closed', 'closed', '', 'field_5c462637c4f09', '', '', '2019-01-21 18:27:07', '2019-01-21 21:27:07', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=42', 9, 'acf-field', '', 0),
(44, 1, '2019-01-21 18:27:07', '2019-01-21 21:27:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5c4638ba07eb4', '', '', '2019-01-30 21:43:09', '2019-01-31 00:43:09', '', 16, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=44', 0, 'acf-field', '', 0),
(45, 1, '2019-01-21 22:05:30', '2019-01-22 01:05:30', '<ol>\r\n 	<li>234234</li>\r\n</ol>\r\n243\r\n\r\n24\r\n\r\n324\r\n\r\n&nbsp;', 'Sopa de champiñones', '', 'publish', 'closed', 'closed', '', '45', '', '', '2019-01-31 10:23:36', '2019-01-31 13:23:36', '', 0, 'http://localhost:8888/wordpress/?post_type=post_recetas&#038;p=45', 0, 'post_recetas', '', 0),
(46, 1, '2019-01-21 22:05:55', '2019-01-22 01:05:55', '', 'Sopa brocoli', '', 'publish', 'closed', 'closed', '', 'muffins-frambuesa', '', '', '2019-01-31 10:24:03', '2019-01-31 13:24:03', '', 0, 'http://localhost:8888/wordpress/?post_type=post_recetas&#038;p=46', 0, 'post_recetas', '', 0),
(47, 1, '2019-01-21 22:06:12', '2019-01-22 01:06:12', '', 'Profiteroles', '', 'publish', 'closed', 'closed', '', 'tartaleta', '', '', '2019-01-31 10:25:06', '2019-01-31 13:25:06', '', 0, 'http://localhost:8888/wordpress/?post_type=post_recetas&#038;p=47', 0, 'post_recetas', '', 0),
(49, 1, '2019-01-22 10:19:21', '2019-01-22 13:19:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"post_slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Slider', 'slider', 'trash', 'closed', 'closed', '', 'group_5c4717e616557__trashed', '', '', '2019-01-22 13:51:36', '2019-01-22 16:51:36', '', 0, 'http://localhost:8888/wordpress/?post_type=acf-field-group&#038;p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2019-01-22 10:19:21', '2019-01-22 13:19:21', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'trash', 'closed', 'closed', '', 'field_5c4717ff8ec4b__trashed', '', '', '2019-01-22 13:51:36', '2019-01-22 16:51:36', '', 49, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=50', 0, 'acf-field', '', 0),
(51, 1, '2019-01-22 10:19:21', '2019-01-22 13:19:21', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:45:\"Poner el link al que debe redirigir el slider\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'trash', 'closed', 'closed', '', 'field_5c4718278ec4c__trashed', '', '', '2019-01-22 13:51:36', '2019-01-22 16:51:36', '', 49, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(52, 1, '2019-01-22 10:19:21', '2019-01-22 13:19:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto del slider', 'texto_del_slider', 'trash', 'closed', 'closed', '', 'field_5c4718478ec4d__trashed', '', '', '2019-01-22 13:51:36', '2019-01-22 16:51:36', '', 49, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=52', 2, 'acf-field', '', 0),
(53, 1, '2019-01-22 10:21:29', '2019-01-22 13:21:29', '', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2019-01-22 10:21:29', '2019-01-22 13:21:29', '', 0, 'http://localhost:8888/wordpress/?post_type=post_slider&#038;p=53', 0, 'post_slider', '', 0),
(54, 1, '2019-01-22 21:05:16', '2019-01-23 00:05:16', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut ligula libero. Duis nibh est, consequat blandit elit in, porttitor feugiat augue. Aliquam ut nunc tristique, faucibus est et, faucibus lorem. Vestibulum pulvinar ipsum sed erat maximus condimentum. Nunc iaculis pellentesque luctus. Morbi sollicitudin imperdiet diam ut cursus. Pellentesque tellus justo, consequat vitae consectetur id, dapibus nec diam. Sed a quam a dui mattis vehicula vitae id leo. Nam at interdum neque. Nunc nulla magna, congue nec sapien in, fermentum vehicula risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut viverra, purus vitae molestie mattis, lorem tortor viverra ipsum, eleifend porttitor ex purus ut nisl. Curabitur vel purus id mi mollis tincidunt vel nec augue. Maecenas posuere posuere elit. Ut nec eros non velit rutrum porta at nec dolor. Vestibulum in orci ut mi auctor placerat. Praesent pulvinar massa in imperdiet cursus. Morbi ullamcorper leo ut risus vehicula feugiat. Donec sit amet lobortis sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam id odio ut urna pretium blandit. Vivamus ullamcorper metus ex, lobortis dignissim ante porta nec. Mauris rhoncus lacinia est. Praesent id commodo libero, non facilisis nisi. Duis sed augue non ante venenatis commodo. Ut id dui porta lacus molestie feugiat. Phasellus quam eros, vehicula rhoncus nisl id, euismod porttitor elit. Donec accumsan arcu a congue efficitur. Sed eu suscipit tortor, eu interdum nisi. Pellentesque ac orci lobortis, venenatis nulla nec, pretium neque. Pellentesque maximus metus metus, sed tincidunt leo pellentesque vel. Curabitur consequat, massa quis faucibus ultrices, tellus turpis ullamcorper orci, eget feugiat purus tellus vitae neque. Nullam malesuada aliquam mi, ac semper nibh vestibulum ac. Fusce vestibulum, tortor vel gravida rutrum, sem felis blandit arcu, sed molestie nisl augue sed augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam aliquet feugiat nisl, at tempor ante tempus sit amet. Curabitur nec tristique lectus. Sed in neque sem. Duis volutpat, turpis at tincidunt tristique, ipsum ligula ultrices orci, quis finibus odio ante ut est. Proin elementum mauris a dolor auctor, sit amet malesuada nunc rhoncus. Sed vitae mattis sapien. Vivamus suscipit risus nisi, ac laoreet diam dignissim in. Quisque lobortis libero neque, a auctor tellus hendrerit et. Donec leo sapien, porttitor vel vestibulum interdum, vestibulum ut leo. Nullam fermentum ut dolor in consectetur. Nunc convallis suscipit ex. Ut finibus ut elit id cursus. Pellentesque lorem diam, euismod fringilla porta eu, imperdiet nec nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc maximus neque a luctus pulvinar. Proin congue justo et magna scelerisque, et consequat felis commodo. Duis maximus, neque eget egestas porta, mi arcu varius ligula, eget gravida augue lacus in justo. Phasellus ullamcorper nisl nec quam dapibus, at feugiat quam porttitor. Curabitur lacinia tortor vitae arcu pulvinar aliquam. Sed nec mauris nulla. Nulla quis urna congue, rutrum nunc a, fermentum sem. Nulla finibus, lacus quis condimentum feugiat, libero mi consequat risus, eget luctus erat diam eget quam. Cras vestibulum est ut posuere dictum. Cras a mauris vel mi rutrum dapibus vitae et libero. Duis feugiat pellentesque tellus, sed sodales massa tincidunt a. Suspendisse facilisis lacus sit amet eros tincidunt, eget aliquam tellus gravida. Sed nec ultrices mauris. Nullam nisl ipsum, euismod condimentum justo at, lacinia ultrices massa. Nam id vestibulum ante. Vivamus suscipit felis at nunc lacinia bibendum.</p>\n<!-- /wp:paragraph -->', 'articulo 1', '', 'publish', 'open', 'open', '', 'articulo-1', '', '', '2019-01-27 22:56:53', '2019-01-28 01:56:53', '', 0, 'http://localhost:8888/wordpress/?p=54', 0, 'post', '', 0),
(55, 1, '2019-01-22 21:05:16', '2019-01-23 00:05:16', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut ligula libero. Duis nibh est, consequat blandit elit in, porttitor feugiat augue. Aliquam ut nunc tristique, faucibus est et, faucibus lorem. Vestibulum pulvinar ipsum sed erat maximus condimentum. Nunc iaculis pellentesque luctus. Morbi sollicitudin imperdiet diam ut cursus. Pellentesque tellus justo, consequat vitae consectetur id, dapibus nec diam. Sed a quam a dui mattis vehicula vitae id leo. Nam at interdum neque. Nunc nulla magna, congue nec sapien in, fermentum vehicula risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut viverra, purus vitae molestie mattis, lorem tortor viverra ipsum, eleifend porttitor ex purus ut nisl. Curabitur vel purus id mi mollis tincidunt vel nec augue. Maecenas posuere posuere elit. Ut nec eros non velit rutrum porta at nec dolor. Vestibulum in orci ut mi auctor placerat. Praesent pulvinar massa in imperdiet cursus. Morbi ullamcorper leo ut risus vehicula feugiat. Donec sit amet lobortis sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam id odio ut urna pretium blandit. Vivamus ullamcorper metus ex, lobortis dignissim ante porta nec. Mauris rhoncus lacinia est. Praesent id commodo libero, non facilisis nisi. Duis sed augue non ante venenatis commodo. Ut id dui porta lacus molestie feugiat. Phasellus quam eros, vehicula rhoncus nisl id, euismod porttitor elit. Donec accumsan arcu a congue efficitur. Sed eu suscipit tortor, eu interdum nisi. Pellentesque ac orci lobortis, venenatis nulla nec, pretium neque. Pellentesque maximus metus metus, sed tincidunt leo pellentesque vel. Curabitur consequat, massa quis faucibus ultrices, tellus turpis ullamcorper orci, eget feugiat purus tellus vitae neque. Nullam malesuada aliquam mi, ac semper nibh vestibulum ac. Fusce vestibulum, tortor vel gravida rutrum, sem felis blandit arcu, sed molestie nisl augue sed augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam aliquet feugiat nisl, at tempor ante tempus sit amet. Curabitur nec tristique lectus. Sed in neque sem. Duis volutpat, turpis at tincidunt tristique, ipsum ligula ultrices orci, quis finibus odio ante ut est. Proin elementum mauris a dolor auctor, sit amet malesuada nunc rhoncus. Sed vitae mattis sapien. Vivamus suscipit risus nisi, ac laoreet diam dignissim in. Quisque lobortis libero neque, a auctor tellus hendrerit et. Donec leo sapien, porttitor vel vestibulum interdum, vestibulum ut leo. Nullam fermentum ut dolor in consectetur. Nunc convallis suscipit ex. Ut finibus ut elit id cursus. Pellentesque lorem diam, euismod fringilla porta eu, imperdiet nec nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc maximus neque a luctus pulvinar. Proin congue justo et magna scelerisque, et consequat felis commodo. Duis maximus, neque eget egestas porta, mi arcu varius ligula, eget gravida augue lacus in justo. Phasellus ullamcorper nisl nec quam dapibus, at feugiat quam porttitor. Curabitur lacinia tortor vitae arcu pulvinar aliquam. Sed nec mauris nulla. Nulla quis urna congue, rutrum nunc a, fermentum sem. Nulla finibus, lacus quis condimentum feugiat, libero mi consequat risus, eget luctus erat diam eget quam. Cras vestibulum est ut posuere dictum. Cras a mauris vel mi rutrum dapibus vitae et libero. Duis feugiat pellentesque tellus, sed sodales massa tincidunt a. Suspendisse facilisis lacus sit amet eros tincidunt, eget aliquam tellus gravida. Sed nec ultrices mauris. Nullam nisl ipsum, euismod condimentum justo at, lacinia ultrices massa. Nam id vestibulum ante. Vivamus suscipit felis at nunc lacinia bibendum.</p>\n<!-- /wp:paragraph -->', 'articulo 1', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-01-22 21:05:16', '2019-01-23 00:05:16', '', 54, 'http://localhost:8888/wordpress/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-01-27 15:35:34', '2019-01-27 18:35:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"about-me\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About me', 'about-me', 'publish', 'closed', 'closed', '', 'group_5c4df99000ce1', '', '', '2019-01-27 15:35:34', '2019-01-27 18:35:34', '', 0, 'http://localhost:8888/wordpress/?post_type=acf-field-group&#038;p=56', 0, 'acf-field-group', '', 0),
(57, 1, '2019-01-27 15:35:34', '2019-01-27 18:35:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'titulo', 'publish', 'closed', 'closed', '', 'field_5c4df995d6808', '', '', '2019-01-27 15:35:34', '2019-01-27 18:35:34', '', 56, 'http://localhost:8888/wordpress/?post_type=acf-field&p=57', 0, 'acf-field', '', 0),
(58, 1, '2019-01-27 15:35:34', '2019-01-27 18:35:34', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Descripción', 'descripcion', 'publish', 'closed', 'closed', '', 'field_5c4df9acd6809', '', '', '2019-01-27 15:35:34', '2019-01-27 18:35:34', '', 56, 'http://localhost:8888/wordpress/?post_type=acf-field&p=58', 1, 'acf-field', '', 0),
(59, 1, '2019-01-27 15:35:34', '2019-01-27 18:35:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5c4df9d1d680a', '', '', '2019-01-27 15:35:34', '2019-01-27 18:35:34', '', 56, 'http://localhost:8888/wordpress/?post_type=acf-field&p=59', 2, 'acf-field', '', 0),
(60, 1, '2019-01-27 15:36:26', '2019-01-27 18:36:26', '', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2019-01-27 15:37:20', '2019-01-27 18:37:20', '', 0, 'http://localhost:8888/wordpress/?post_type=about-me&#038;p=60', 0, 'about-me', '', 0),
(61, 1, '2019-01-27 15:36:05', '2019-01-27 18:36:05', '', 'perfil', '', 'inherit', 'open', 'closed', '', 'perfil', '', '', '2019-01-27 15:36:05', '2019-01-27 18:36:05', '', 60, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/perfil.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-01-30 23:03:14', '2019-01-31 02:03:14', '<label> Nombre(required)\r\n    [text* your-name] </label>\r\n\r\n<label> Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Asunto\r\n    [text your-subject] </label>\r\n\r\n<label> Mensaje\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\ngulamor \"[your-subject]\"\ngulamor <marianacabezasgt@gmail.com>\nmarianacabezasgt@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on gulamor (http://localhost:8888/wordpress)\nReply-To: [your-email]\n\n\n\n\ngulamor \"[your-subject]\"\ngulamor <marianacabezasgt@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on gulamor (http://localhost:8888/wordpress)\nReply-To: marianacabezasgt@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-01-30 23:04:06', '2019-01-31 02:04:06', '', 0, 'http://localhost:8888/wordpress/?post_type=wpcf7_contact_form&#038;p=63', 0, 'wpcf7_contact_form', '', 0),
(64, 1, '2019-01-31 09:56:30', '2019-01-31 12:56:30', '<ol>\r\n 	<li>Batir la mantequilla a temperatura ambiente con la manteca y se agrega el azúcar, los huevos y el harina con polvos de hornear alternando con la leche.</li>\r\n 	<li>Agregar las esencias, nueces y fruta confitada previamente mezclada con una cucharada de harina.</li>\r\n 	<li>Enmantequillar un molde y vaciar la mezcla.</li>\r\n 	<li>Llevar a horno a 180° durante al menos una hora o hasta que al enterrar un palito salga seco.</li>\r\n</ol>', 'Torta de Hojarasca', '', 'publish', 'closed', 'closed', '', 'torta-de-hojarasca', '', '', '2019-01-31 10:09:23', '2019-01-31 13:09:23', '', 0, 'http://localhost:8888/wordpress/?post_type=post_recetas&#038;p=64', 0, 'post_recetas', '', 0),
(65, 1, '2019-01-31 09:54:55', '2019-01-31 12:54:55', '', 'DSC_0003', '', 'inherit', 'open', 'closed', '', 'dsc_0003', '', '', '2019-01-31 09:54:55', '2019-01-31 12:54:55', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/DSC_0003.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-01-31 09:54:58', '2019-01-31 12:54:58', '', 'DSC_0005', '', 'inherit', 'open', 'closed', '', 'dsc_0005', '', '', '2019-01-31 09:54:58', '2019-01-31 12:54:58', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/DSC_0005.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-01-31 09:55:01', '2019-01-31 12:55:01', '', 'DSC_0006', '', 'inherit', 'open', 'closed', '', 'dsc_0006', '', '', '2019-01-31 09:55:01', '2019-01-31 12:55:01', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/DSC_0006.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-01-31 09:55:07', '2019-01-31 12:55:07', '', 'DSC_0009', '', 'inherit', 'open', 'closed', '', 'dsc_0009', '', '', '2019-01-31 09:55:07', '2019-01-31 12:55:07', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/DSC_0009.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-01-31 09:55:14', '2019-01-31 12:55:14', '', 'DSC_0039', '', 'inherit', 'open', 'closed', '', 'dsc_0039', '', '', '2019-01-31 09:55:14', '2019-01-31 12:55:14', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/DSC_0039.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-01-31 09:55:19', '2019-01-31 12:55:19', '', 'DSC_0195_1', '', 'inherit', 'open', 'closed', '', 'dsc_0195_1', '', '', '2019-01-31 09:55:19', '2019-01-31 12:55:19', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/DSC_0195_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2019-01-31 09:55:24', '2019-01-31 12:55:24', '', 'IMG_20161225_115100_877', '', 'inherit', 'open', 'closed', '', 'img_20161225_115100_877', '', '', '2019-01-31 09:55:24', '2019-01-31 12:55:24', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/IMG_20161225_115100_877.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-01-31 09:55:27', '2019-01-31 12:55:27', '', 'IMG_20170322_232621_839', '', 'inherit', 'open', 'closed', '', 'img_20170322_232621_839', '', '', '2019-01-31 09:55:27', '2019-01-31 12:55:27', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/IMG_20170322_232621_839.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2019-01-31 09:55:30', '2019-01-31 12:55:30', '', 'IMG_20170326_143735_951', '', 'inherit', 'open', 'closed', '', 'img_20170326_143735_951', '', '', '2019-01-31 09:55:30', '2019-01-31 12:55:30', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/IMG_20170326_143735_951.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2019-01-31 09:55:33', '2019-01-31 12:55:33', '', 'IMG_20170419_144941_137', '', 'inherit', 'open', 'closed', '', 'img_20170419_144941_137', '', '', '2019-01-31 09:55:33', '2019-01-31 12:55:33', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/IMG_20170419_144941_137.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2019-01-31 09:55:36', '2019-01-31 12:55:36', '', 'IMG-20160907-WA0003', '', 'inherit', 'open', 'closed', '', 'img-20160907-wa0003', '', '', '2019-01-31 09:55:36', '2019-01-31 12:55:36', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/IMG-20160907-WA0003.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-01-31 09:55:38', '2019-01-31 12:55:38', '', 'IMG-20161224-WA0003', '', 'inherit', 'open', 'closed', '', 'img-20161224-wa0003', '', '', '2019-01-31 09:55:38', '2019-01-31 12:55:38', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/IMG-20161224-WA0003.jpeg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-01-31 09:55:42', '2019-01-31 12:55:42', '', 'IMG-20170424-WA0011', '', 'inherit', 'open', 'closed', '', 'img-20170424-wa0011', '', '', '2019-01-31 09:55:42', '2019-01-31 12:55:42', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/IMG-20170424-WA0011.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2019-01-31 09:55:44', '2019-01-31 12:55:44', '', 'IMG-20170504-WA0011', '', 'inherit', 'open', 'closed', '', 'img-20170504-wa0011', '', '', '2019-01-31 09:55:44', '2019-01-31 12:55:44', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/IMG-20170504-WA0011.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2019-01-31 09:55:46', '2019-01-31 12:55:46', '', 'IMG-20170504-WA0013', '', 'inherit', 'open', 'closed', '', 'img-20170504-wa0013', '', '', '2019-01-31 09:55:46', '2019-01-31 12:55:46', '', 64, 'http://localhost:8888/wordpress/wp-content/uploads/2019/01/IMG-20170504-WA0013.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-01-31 10:14:26', '2019-01-31 13:14:26', '', 'Pastas frescas', '', 'publish', 'closed', 'closed', '', 'pastas-frescas', '', '', '2019-01-31 10:14:26', '2019-01-31 13:14:26', '', 0, 'http://localhost:8888/wordpress/?post_type=post_recetas&#038;p=80', 0, 'post_recetas', '', 0),
(81, 1, '2019-01-31 10:15:03', '2019-01-31 13:15:03', '', 'Tartaletas', '', 'publish', 'closed', 'closed', '', 'tartaletas', '', '', '2019-01-31 10:15:03', '2019-01-31 13:15:03', '', 0, 'http://localhost:8888/wordpress/?post_type=post_recetas&#038;p=81', 0, 'post_recetas', '', 0),
(82, 1, '2019-01-31 10:15:30', '2019-01-31 13:15:30', '', 'Galletas de navidad', '', 'publish', 'closed', 'closed', '', 'galletas-de-navidad', '', '', '2019-01-31 10:15:30', '2019-01-31 13:15:30', '', 0, 'http://localhost:8888/wordpress/?post_type=post_recetas&#038;p=82', 0, 'post_recetas', '', 0),
(83, 1, '2019-01-31 10:23:26', '2019-01-31 13:23:26', '<ol>\n 	<li>234234</li>\n</ol>\n243\n\n24\n\n324\n\n&nbsp;', 'Sopa de champiñones', '', 'inherit', 'closed', 'closed', '', '45-autosave-v1', '', '', '2019-01-31 10:23:26', '2019-01-31 13:23:26', '', 45, 'http://localhost:8888/wordpress/45-autosave-v1/', 0, 'revision', '', 0),
(84, 1, '2019-01-31 10:28:57', '2019-01-31 13:28:57', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2019-01-31 10:28:57', '2019-01-31 13:28:57', '', 0, 'http://localhost:8888/wordpress/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2019-01-31 10:28:57', '2019-01-31 13:28:57', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2019-01-31 10:28:57', '2019-01-31 13:28:57', '', 0, 'http://localhost:8888/wordpress/?p=85', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_termmeta`
--

CREATE TABLE `mc_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_terms`
--

CREATE TABLE `mc_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `mc_terms`
--

INSERT INTO `mc_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menú header', 'menu-header', 0),
(3, 'Recetas', 'recetas', 0),
(4, 'articulo', 'articulo', 0),
(7, 'Postres', 'postres', 0),
(8, 'Vegana', 'vegana', 0),
(9, 'Galletas', 'galletas', 0),
(10, 'Tortas', 'tortas', 0),
(11, 'Almuerzo', 'almuerzo', 0),
(12, 'Cena', 'cena', 0),
(13, 'Menú footer', 'menu-footer', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_term_relationships`
--

CREATE TABLE `mc_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `mc_term_relationships`
--

INSERT INTO `mc_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(24, 3, 0),
(24, 8, 0),
(31, 2, 0),
(45, 11, 0),
(45, 12, 0),
(46, 11, 0),
(46, 12, 0),
(47, 7, 0),
(54, 4, 0),
(64, 10, 0),
(80, 1, 0),
(81, 7, 0),
(82, 9, 0),
(84, 13, 0),
(85, 13, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_term_taxonomy`
--

CREATE TABLE `mc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `mc_term_taxonomy`
--

INSERT INTO `mc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 2),
(12, 12, 'category', '', 0, 2),
(13, 13, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_usermeta`
--

CREATE TABLE `mc_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `mc_usermeta`
--

INSERT INTO `mc_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'saikriel'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'mc_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'mc_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"e191362b945d3c4b555ca8027e7c847d65f24ee8c964bd3b8982917063ee0b94\";a:4:{s:10:\"expiration\";i:1549066627;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1548893827;}}'),
(17, 1, 'mc_user-settings', 'libraryContent=browse'),
(18, 1, 'mc_user-settings-time', '1547165333'),
(19, 1, 'mc_dashboard_quick_press_last_post_id', '11'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mc_users`
--

CREATE TABLE `mc_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `mc_users`
--

INSERT INTO `mc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'saikriel', '$P$BRRAJcLgXIn/24AmV2G/4r9l9PZGJJ0', 'saikriel', 'marianacabezasgt@gmail.com', '', '2019-01-11 00:07:45', '', 0, 'saikriel');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mc_commentmeta`
--
ALTER TABLE `mc_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `mc_comments`
--
ALTER TABLE `mc_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `mc_links`
--
ALTER TABLE `mc_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `mc_options`
--
ALTER TABLE `mc_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `mc_postmeta`
--
ALTER TABLE `mc_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `mc_posts`
--
ALTER TABLE `mc_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `mc_termmeta`
--
ALTER TABLE `mc_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `mc_terms`
--
ALTER TABLE `mc_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `mc_term_relationships`
--
ALTER TABLE `mc_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `mc_term_taxonomy`
--
ALTER TABLE `mc_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `mc_usermeta`
--
ALTER TABLE `mc_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `mc_users`
--
ALTER TABLE `mc_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mc_commentmeta`
--
ALTER TABLE `mc_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mc_comments`
--
ALTER TABLE `mc_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mc_links`
--
ALTER TABLE `mc_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mc_options`
--
ALTER TABLE `mc_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT de la tabla `mc_postmeta`
--
ALTER TABLE `mc_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT de la tabla `mc_posts`
--
ALTER TABLE `mc_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `mc_termmeta`
--
ALTER TABLE `mc_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mc_terms`
--
ALTER TABLE `mc_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `mc_term_taxonomy`
--
ALTER TABLE `mc_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `mc_usermeta`
--
ALTER TABLE `mc_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `mc_users`
--
ALTER TABLE `mc_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

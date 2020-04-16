-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2020 pada 13.14
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esinar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `coba`
--

CREATE TABLE `coba` (
  `id` int(10) NOT NULL,
  `nama` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `coba`
--

INSERT INTO `coba` (`id`, `nama`) VALUES
(1, 'andre taulanyyyy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_seminar`
--

CREATE TABLE `daftar_seminar` (
  `id` bigint(35) NOT NULL,
  `id_user` bigint(30) NOT NULL,
  `nama_seminar` varchar(150) NOT NULL,
  `id_post` bigint(20) NOT NULL,
  `id_author` bigint(20) NOT NULL,
  `tgl_seminar` varchar(20) NOT NULL,
  `status` int(3) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_verifikasi`
--

CREATE TABLE `file_verifikasi` (
  `id` bigint(30) NOT NULL,
  `id_daftar` bigint(35) NOT NULL,
  `id_author` bigint(20) NOT NULL,
  `id_post` bigint(20) NOT NULL,
  `file_foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pdf_verifikasi_daftar`
--

CREATE TABLE `pdf_verifikasi_daftar` (
  `id` bigint(30) NOT NULL,
  `id_verifikasi` bigint(30) DEFAULT NULL,
  `file_pdf` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id` int(20) NOT NULL,
  `id_user` int(20) DEFAULT NULL,
  `file_foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id`, `id_user`, `file_foto`) VALUES
(1, 6, '6.jpg'),
(2, 35, '35.jpg'),
(3, 44, '44.jpg'),
(4, 45, '45.jpg'),
(5, 58, '58.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening_pemilik`
--

CREATE TABLE `rekening_pemilik` (
  `id` bigint(35) NOT NULL,
  `id_user` bigint(30) NOT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `rekening` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekening_pemilik`
--

INSERT INTO `rekening_pemilik` (`id`, `id_user`, `bank`, `rekening`) VALUES
(1, 2, NULL, NULL),
(2, 49, NULL, NULL),
(3, 54, 'BNI', '123456789'),
(4, 57, NULL, NULL),
(5, 59, NULL, NULL),
(6, 61, NULL, NULL),
(7, 62, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar`
--

CREATE TABLE `seminar` (
  `id` bigint(30) NOT NULL,
  `id_user` bigint(30) NOT NULL,
  `nama_seminar` varchar(150) DEFAULT NULL,
  `nama_pendaftar` varchar(60) NOT NULL,
  `handphone` varchar(15) DEFAULT NULL,
  `file_foto` varchar(25) NOT NULL,
  `id_author` bigint(20) NOT NULL,
  `id_post` bigint(20) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `status` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_esinar`
--

CREATE TABLE `user_esinar` (
  `id` bigint(20) NOT NULL,
  `user_login` varchar(60) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_esinar`
--

INSERT INTO `user_esinar` (`id`, `user_login`, `firstname`, `lastname`, `status`, `user_id`, `created_at`) VALUES
(1, 'jamrud', 'jamrud', 'jamrud', 'subscriber', 37, '2019-11-29 16:53:01'),
(2, 'pongkibr', 'pngki', 'barata', 'subscriber', 38, '2019-11-30 00:02:25'),
(3, 'testes', 'tes', 'tes', 'subscriber', 39, '2019-11-30 00:08:34'),
(4, 'rogape160', 'Rogape', 'Iansen', 'subscriber', 40, '2019-11-30 17:04:30'),
(5, 'cobacoba', 'coba', 'coba', 'subscriber', 41, '2019-11-30 17:10:08'),
(6, 'rizkafit21', 'rizka', 'fitrianty', 'subscriber', 42, '2019-12-10 23:08:22'),
(7, 'des333', 'desta', 'des', 'subscriber', 43, '2019-12-10 23:19:10'),
(8, 'blaise14', 'blaise', 'matuidi', 'subscriber', 44, '2019-12-13 01:51:37'),
(9, 'bambang', 'bambang', 'pamungkas', 'subscriber', 45, '2019-12-13 09:03:43'),
(10, 'iky2102', 'iky', 'febryan', 'subscriber', 46, '2019-12-13 10:58:27'),
(11, 'ridwanto', 'ridwan', 'aja', 'subscriber', 47, '2019-12-14 10:07:25'),
(12, 'psrhyu', 'Putri', 'Sri Rahayu', 'subscriber', 48, '2019-12-14 10:47:57'),
(13, 'pemilik17032225', 'pemilik', '17032225', 'subscriber', 49, '2020-03-17 22:25:35'),
(14, 'pm2242', 'pemilik', '2242', 'subscriber', 50, '2020-03-17 22:42:34'),
(15, 'pemilik23', 'pemilik', '23', 'subscriber', 52, '2020-03-17 23:04:11'),
(16, 'onipmpm', 'oni', 'pm', 'subscriber', 53, '2020-03-17 23:12:49'),
(17, 'pemilik1803', 'pemilik', '', 'subscriber', 55, '2020-03-18 11:45:35'),
(18, 'pm1330', 'pemilik', '', 'subscriber', 56, '2020-03-18 13:30:26'),
(19, 'pemilik1331', 'pemilik', '', 'subscriber', 57, '2020-03-18 13:31:59'),
(20, 'tiasambar', 'tias', 'ambar', 'subcriber', 58, '2020-03-19 15:06:36'),
(21, 'pmrogape', 'rogape', 'pm', 'author', 59, '2020-03-19 15:07:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-27 17:59:18', '2019-09-27 17:59:18', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/e_sinar', 'yes'),
(2, 'home', 'http://localhost/e_sinar', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'rizkyfebryan21@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=52&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:26:\"custom-form/CustomForm.php\";i:2;s:45:\"easy-custom-sidebars/easy-custom-sidebars.php\";i:3;s:21:\"pemilik-list/init.php\";i:4;s:37:\"recent-posts-widget-extended/rpwe.php\";i:5;s:23:\"report-seminar/init.php\";i:6;s:20:\"report-user/init.php\";i:7;s:34:\"report-verifikasi-seminar/init.php\";i:8;s:45:\"restrict-user-access/restrict-user-access.php\";i:9;s:29:\"seminar-list/seminar-list.php\";i:10;s:53:\"wp-custom-register-login/wp-custom-register-login.php\";i:11;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'talon', 'yes'),
(41, 'stylesheet', 'talon', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '52', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:12:\"guest_author\";a:2:{s:4:\"name\";s:12:\"Guest Author\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:0;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:13:\"rpwe_widget-2\";}s:8:\"footer-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:7:{i:1587038361;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1587059960;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587059961;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587059983;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587059986;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587063600;a:1:{s:26:\"wpca/cache_condition_types\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:1:{s:22:\"uma5oyAAs6y0G4htRii76a\";a:2:{s:10:\"hashed_key\";s:34:\"$P$Bmof/9Sws7D3tdK6cYknDhOlWWO.Yt/\";s:10:\"created_at\";i:1587031197;}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.5-partial-3.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.5-rollback-3.zip\";}s:7:\"current\";s:5:\"5.2.5\";s:7:\"version\";s:5:\"5.2.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.2.3\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1587029519;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1569607761;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'current_theme', 'Talon', 'yes'),
(147, 'theme_mods_talon', 'a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:17:\"front_header_type\";s:9:\"has-image\";s:16:\"site_header_type\";s:9:\"has-image\";s:12:\"header_image\";s:74:\"http://localhost/e_sinar/wp-content/uploads/2019/09/cropped-janEE_16x9.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:42;s:3:\"url\";s:74:\"http://localhost/e_sinar/wp-content/uploads/2019/09/cropped-janEE_16x9.jpg\";s:13:\"thumbnail_url\";s:74:\"http://localhost/e_sinar/wp-content/uploads/2019/09/cropped-janEE_16x9.jpg\";s:6:\"height\";i:1079;s:5:\"width\";i:1920;}s:19:\"footer_widget_areas\";s:1:\"1\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570369198;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:13:\"rpwe_widget-4\";}s:8:\"footer-1\";a:0:{}}}s:11:\"custom_logo\";i:134;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(150, 'widget_athemes_blog', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, 'widget_athemes_button', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'widget_athemes_clients', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(153, 'widget_athemes_employees', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(154, 'widget_athemes_facts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'widget_athemes_image', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'widget_athemes_portfolio', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'widget_athemes_separator', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(158, 'widget_athemes_services', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(159, 'widget_athemes_skills', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(160, 'widget_athemes_testimonials', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'widget_athemes_video', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:4;}}', 'yes'),
(202, 'acf_version', '5.8.7', 'yes'),
(203, 'widget_rpwe_widget', 'a:2:{i:2;a:32:{s:5:\"title\";s:0:\"\";s:9:\"title_url\";s:0:\"\";s:13:\"ignore_sticky\";b:1;s:15:\"exclude_current\";b:1;s:5:\"limit\";i:8;s:6:\"offset\";i:0;s:5:\"order\";s:4:\"DESC\";s:7:\"orderby\";s:4:\"date\";s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:11:\"post_status\";s:7:\"publish\";s:3:\"cat\";a:1:{i:0;s:1:\"5\";}s:3:\"tag\";N;s:8:\"taxonomy\";s:0:\"\";s:7:\"excerpt\";b:0;s:6:\"length\";i:10;s:4:\"date\";b:0;s:13:\"date_relative\";b:0;s:13:\"date_modified\";b:0;s:8:\"readmore\";b:0;s:13:\"readmore_text\";s:12:\"Read More »\";s:13:\"comment_count\";b:0;s:5:\"thumb\";b:1;s:12:\"thumb_height\";i:400;s:11:\"thumb_width\";i:400;s:13:\"thumb_default\";s:36:\"http://placehold.it/45x45/f0f0f0/ccc\";s:11:\"thumb_align\";s:16:\"rpwe-aligncenter\";s:14:\"styles_default\";b:0;s:5:\"cssID\";s:10:\"ls-sm-home\";s:9:\"css_class\";s:0:\"\";s:3:\"css\";s:1157:\".rpwe-block ul{\r\nlist-style: none !important;\r\nmargin-left: 0 !important;\r\npadding-left: 0 !important;\r\n}\r\n\r\n.rpwe-block li{\r\nborder-bottom: 1px solid #eee;\r\nmargin-bottom: 10px;\r\npadding-bottom: 10px;\r\nlist-style-type: none;\r\n}\r\n\r\n.rpwe-block a{\r\ndisplay: inline !important;\r\ntext-decoration: none;\r\n}\r\n\r\n.rpwe-block h3{\r\nbackground: none !important;\r\nclear: none;\r\nmargin-bottom: 0 !important;\r\nmargin-top: 0 !important;\r\nfont-weight: 400;\r\nfont-size: 12px !important;\r\nline-height: 1.5em;\r\n}\r\n\r\n.rpwe-thumb{\r\nborder: 1px solid #eee !important;\r\nbox-shadow: none !important;\r\nmargin: 2px 10px 2px 0;\r\npadding: 3px !important;\r\n}\r\n\r\n.rpwe-summary{\r\nfont-size: 12px;\r\n}\r\n\r\n.rpwe-time{\r\ncolor: #bbb;\r\nfont-size: 11px;\r\n}\r\n\r\n.rpwe-comment{\r\ncolor: #bbb;\r\nfont-size: 11px;\r\npadding-left: 5px;\r\n}\r\n\r\n.rpwe-alignleft{\r\ndisplay: inline;\r\nfloat: left;\r\n}\r\n\r\n.rpwe-alignright{\r\ndisplay: inline;\r\nfloat: right;\r\n}\r\n\r\n.rpwe-aligncenter{\r\ndisplay: block;\r\nmargin-left: auto;\r\nmargin-right: auto;\r\n}\r\n\r\n.rpwe-clearfix:before,\r\n.rpwe-clearfix:after{\r\ncontent: \"\";\r\ndisplay: table !important;\r\n}\r\n\r\n.rpwe-clearfix:after{\r\nclear: both;\r\n}\r\n\r\n.rpwe-clearfix{\r\nzoom: 1;\r\n}\r\n\";s:6:\"before\";s:0:\"\";s:5:\"after\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(210, 'theme_mods_spacious', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570369865;s:4:\"data\";a:14:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:22:\"spacious_right_sidebar\";a:1:{i:0;s:13:\"rpwe_widget-4\";}s:21:\"spacious_left_sidebar\";a:0:{}s:23:\"spacious_header_sidebar\";a:0:{}s:42:\"spacious_business_page_top_section_sidebar\";a:0:{}s:55:\"spacious_business_page_middle_section_left_half_sidebar\";a:0:{}s:56:\"spacious_business_page_middle_section_right_half_sidebar\";a:0:{}s:45:\"spacious_business_page_bottom_section_sidebar\";a:0:{}s:29:\"spacious_contact_page_sidebar\";a:0:{}s:31:\"spacious_error_404_page_sidebar\";a:0:{}s:27:\"spacious_footer_sidebar_one\";a:0:{}s:27:\"spacious_footer_sidebar_two\";a:0:{}s:29:\"spacious_footer_sidebar_three\";a:0:{}s:28:\"spacious_footer_sidebar_four\";a:0:{}}}}', 'yes'),
(213, 'spacious_site_header_migrate', '1', 'yes'),
(214, 'spacious_site_footer_eliminate', '1', 'yes'),
(216, 'widget_spacious_featured_single_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(217, 'widget_spacious_service_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(218, 'widget_spacious_call_to_action_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(219, 'widget_spacious_testimonial_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(220, 'widget_spacious_recent_work_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(222, 'spacious_admin_notice_welcome', '1', 'yes'),
(313, 'category_children', 'a:0:{}', 'yes'),
(352, 'wpcrl_redirect_settings', 'a:2:{s:20:\"wpcrl_login_redirect\";s:2:\"-1\";s:21:\"wpcrl_logout_redirect\";s:2:\"52\";}', 'yes'),
(353, 'wpcrl_display_settings', 'a:10:{s:25:\"wpcrl_email_error_message\";s:46:\"Could not able to send the email notification.\";s:31:\"wpcrl_account_activated_message\";s:51:\"Your account has been activated. You can login now.\";s:34:\"wpcrl_account_notactivated_message\";s:72:\"Your account has not been activated yet, please verify your email first.\";s:25:\"wpcrl_login_error_message\";s:34:\"Username or password is incorrect.\";s:27:\"wpcrl_login_success_message\";s:31:\"You are successfully logged in.\";s:42:\"wpcrl_password_reset_invalid_email_message\";s:44:\"We cannot identify any user with this email.\";s:38:\"wpcrl_password_reset_link_sent_message\";s:51:\"A link to reset your password has been sent to you.\";s:41:\"wpcrl_password_reset_link_notsent_message\";s:29:\"Password reset link not sent.\";s:36:\"wpcrl_password_reset_success_message\";s:44:\"Your password has been changed successfully.\";s:42:\"wpcrl_invalid_password_reset_token_message\";s:33:\"This token appears to be invalid.\";}', 'yes'),
(354, 'wpcrl_form_settings', 'a:10:{s:20:\"wpcrl_signup_heading\";s:8:\"Register\";s:20:\"wpcrl_signin_heading\";s:5:\"Login\";s:27:\"wpcrl_resetpassword_heading\";s:14:\"Reset Password\";s:24:\"wpcrl_signin_button_text\";s:5:\"Login\";s:24:\"wpcrl_signup_button_text\";s:8:\"Register\";s:31:\"wpcrl_returntologin_button_text\";s:15:\"Return to Login\";s:33:\"wpcrl_forgot_password_button_text\";s:15:\"Forgot Password\";s:31:\"wpcrl_resetpassword_button_text\";s:14:\"Reset Password\";s:20:\"wpcrl_enable_captcha\";s:1:\"1\";s:28:\"wpcrl_enable_forgot_password\";s:1:\"1\";}', 'yes'),
(355, 'wpcrl_email_settings', 'a:8:{s:26:\"wpcrl_notification_subject\";s:21:\"Welcome to %BLOGNAME%\";s:26:\"wpcrl_notification_message\";s:390:\"Thank you for registering on %BLOGNAME%.\n<br><br>\n<strong>First Name :</strong> %FIRSTNAME%<br>\n<strong>Last Name : </strong>%LASTNAME%<br>\n<strong>Username :</strong> %USERNAME%<br>\n<strong>Email :</strong> %USEREMAIL%<br>\n<strong>Password :</strong> As choosen at the time of registration.\n<br><br>\nPlease visit %BLOGURL% to login.\n<br><br>\nThanks and regards,\n<br>\nThe team at %BLOGNAME%\";s:30:\"wpcrl_admin_email_notification\";s:1:\"1\";s:29:\"wpcrl_user_email_confirmation\";s:1:\"1\";s:44:\"wpcrl_new_account_verification_email_subject\";s:38:\"%BLOGNAME% | Please confirm your email\";s:44:\"wpcrl_new_account_verification_email_message\";s:186:\"Thank you for registering on %BLOGNAME%.\n<br><br>\nPlease confirm your email by clicking on below link :\n<br><br>\n%ACTIVATIONLINK%\n<br><br>\nThanks and regards,\n<br>\nThe team at %BLOGNAME%\";s:34:\"wpcrl_password_reset_email_subject\";s:27:\"%BLOGNAME% | Password Reset\";s:34:\"wpcrl_password_reset_email_message\";s:204:\"Hello %USERNAME%,\n<br><br>\nWe have received a request to change your password.\nClick on the link to change your password : \n<br><br>\n%RECOVERYLINK%\n<br><br>\nThanks and regards,\n<br>\nThe team at %BLOGNAME%\";}', 'yes'),
(388, 'wp_mail_smtp_initial_version', '1.6.2', 'no'),
(389, 'wp_mail_smtp_version', '1.8.1', 'no'),
(390, 'wp_mail_smtp', 'a:7:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:20:\"esinar.rry@gmail.com\";s:9:\"from_name\";s:7:\"E-Sinar\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:1;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:0;s:4:\"auth\";b:1;s:4:\"host\";s:14:\"smtp.gmail.com\";s:10:\"encryption\";s:3:\"ssl\";s:4:\"port\";i:465;s:4:\"user\";s:20:\"esinar.rry@gmail.com\";s:4:\"pass\";s:12:\"esinardotcom\";}s:10:\"sendinblue\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:11:\"pepipostapi\";a:1:{s:7:\"api_key\";s:0:\"\";}}', 'no'),
(391, '_amn_smtp_last_checked', '1584896400', 'yes'),
(392, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(396, 'WPLANG', '', 'yes'),
(397, 'new_admin_email', 'rizkyfebryan21@gmail.com', 'yes'),
(559, 'recovery_mode_email_last_sent', '1587031197', 'yes'),
(974, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:33:\"restrict-user-access/lib/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1576177771;s:11:\"plugin_path\";s:45:\"restrict-user-access/restrict-user-access.php\";}}s:7:\"abspath\";s:24:\"C:\\xampp\\htdocs\\e_sinar/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:45:\"restrict-user-access/restrict-user-access.php\";s:8:\"sdk_path\";s:33:\"restrict-user-access/lib/freemius\";s:7:\"version\";s:5:\"2.3.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1576177771;}}', 'yes'),
(975, 'fs_debug_mode', '', 'yes'),
(976, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:1538;a:3:{s:4:\"slug\";s:20:\"restrict-user-access\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:45:\"restrict-user-access/restrict-user-access.php\";}}s:11:\"plugin_data\";a:1:{s:20:\"restrict-user-access\";a:14:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:45:\"restrict-user-access/restrict-user-access.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1576177771;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.2.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:0;s:9:\"timestamp\";i:1576177771;s:7:\"version\";s:5:\"1.2.1\";}}}s:13:\"file_slug_map\";a:1:{s:45:\"restrict-user-access/restrict-user-access.php\";s:20:\"restrict-user-access\";}s:7:\"plugins\";a:1:{s:20:\"restrict-user-access\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:20:\"Restrict User Access\";s:4:\"slug\";s:20:\"restrict-user-access\";s:12:\"premium_slug\";s:28:\"restrict-user-access-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:45:\"restrict-user-access/restrict-user-access.php\";s:7:\"version\";s:5:\"1.2.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_606dec7b339c246a1bad6a6a04c52\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1538\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"57525293c5251a6cb8765204bda833da\";s:6:\"addons\";a:1:{i:1538;a:4:{i:0;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:5:\"title\";s:16:\"Date Restriction\";s:4:\"slug\";s:17:\"rua-restrict-date\";s:12:\"premium_slug\";s:25:\"rua-restrict-date-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:5;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"1539\";s:11:\"description\";s:334:\"<p>You can now easily restrict content based on the time it was added to your membership site!</p>\n<p>This add-on enables a new <b>Date Access Condition</b> that you can add to your Access Levels. Limit access to any content published at a select time, or combine the condition to limit only posts, pages, or any custom post type.</p>\";s:17:\"short_description\";s:90:\"New Access Condition to easily restrict content published on a select day, month, or year!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/card_banner.png\";s:15:\"selling_point_0\";s:39:\"Give exclusive access to upcoming posts\";s:15:\"selling_point_1\";s:42:\"Drip content from last year to new members\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/2.png\";}s:2:\"id\";s:2:\"93\";s:7:\"updated\";s:19:\"2020-01-14 09:19:31\";s:7:\"created\";s:19:\"2017-11-15 23:39:13\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_825ac0fd17eed5ce23c5e981ab061\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1539\";s:7:\"updated\";s:19:\"2020-04-09 07:35:15\";s:7:\"created\";s:19:\"2017-11-15 00:14:38\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:5:\"title\";s:15:\"URL Restriction\";s:4:\"slug\";s:16:\"rua-restrict-url\";s:12:\"premium_slug\";s:24:\"rua-restrict-url-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:6;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"1716\";s:11:\"description\";s:356:\"<p>You can now easily restrict any page on your membership site, no matter what URL it has!</p>\n<p>This add-on enables a new <b>URL Access Condition</b> that you can add to your Access Levels. Limit access to specific custom pages, or restrict content with dynamic URLs.</p>\n<p></p>\n<p><b>This add-on does currently not limit access to asset files.</b></p>\";s:17:\"short_description\";s:92:\"New Access Condition to easily restrict any custom WordPress URL, with support of wildcards!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/card_banner.png\";s:15:\"selling_point_0\";s:36:\"Limit access to any URL in WordPress\";s:15:\"selling_point_1\";s:41:\"Use wildcards to target specific keywords\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/2.png\";}s:2:\"id\";s:3:\"141\";s:7:\"updated\";s:19:\"2020-04-11 19:21:21\";s:7:\"created\";s:19:\"2018-02-09 19:31:48\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_91089dff383d3e4c66d1a37b625ac\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1716\";s:7:\"updated\";s:19:\"2020-04-10 06:41:49\";s:7:\"created\";s:19:\"2018-02-09 19:20:50\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:2;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:5:\"title\";s:8:\"Timelock\";s:4:\"slug\";s:12:\"rua-timelock\";s:12:\"premium_slug\";s:20:\"rua-timelock-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:4;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"1740\";s:11:\"description\";s:500:\"<p>This add-on is perfect for site owners who wants an easy way to make content become restricted and/or unrestricted at a certain time and date automatically.</p>\n<p>Simply specify a date and a time for any restrictions in your levels. Make content freely accessible at first, then restrict it to members only after a select time, or limit access to members at first, and then unlock it for everyone. It\'s even possible to combine the times so content is only restricted in a certain time range.</p>\";s:17:\"short_description\";s:63:\"Set a date and a time to activate/deactivate Access Conditions!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/card_banner.png\";s:15:\"selling_point_0\";s:36:\"Lock content for a limited time only\";s:15:\"selling_point_1\";s:66:\"Give early access to premium content before unlocking for everyone\";s:15:\"selling_point_2\";s:32:\"Works with all Access Conditions\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/2.png\";}s:2:\"id\";s:3:\"147\";s:7:\"updated\";s:19:\"2020-01-14 09:24:46\";s:7:\"created\";s:19:\"2018-02-15 20:10:47\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_9bddbbc0d3a534ca5241873a0aa8b\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1740\";s:7:\"updated\";s:19:\"2020-04-14 06:23:24\";s:7:\"created\";s:19:\"2018-02-14 23:58:02\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:3;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:5:\"title\";s:15:\"ACF Restriction\";s:4:\"slug\";s:16:\"rua-restrict-acf\";s:12:\"premium_slug\";s:24:\"rua-restrict-acf-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:1;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"5849\";s:11:\"description\";s:426:\"<p>You can now easily restrict content based on data from Advanced Custom Fields!</p>\n<p>This add-on enables a new <b>ACF Access Condition</b> that you can add to your Access Levels. Limit access to any content with a specific custom field and value, or combine the condition to limit only posts, pages, or any custom post type.</p>\n<p></p>\n<p><b>This add-on requires the Advanced Custom Fields plugin to be installed.</b></p>\";s:17:\"short_description\";s:88:\"New Access Condition to easily restrict content with select Advanced Custom Fields data!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5849/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5849/card_banner.png\";s:15:\"selling_point_0\";s:44:\"Give exclusive access to pages with ACF data\";s:15:\"selling_point_1\";s:45:\"Protect custom fields from unauthorized users\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";N;s:2:\"id\";s:4:\"1542\";s:7:\"updated\";s:19:\"2020-04-11 19:16:52\";s:7:\"created\";s:19:\"2020-04-10 22:21:40\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_05cf5773ce8afcbb36084c30e884e\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"5849\";s:7:\"updated\";s:19:\"2020-04-11 19:06:16\";s:7:\"created\";s:19:\"2020-04-08 07:22:48\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}}', 'yes'),
(977, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(978, 'fs_api_cache', 'a:1:{s:55:\"get:/v1/plugins/1538/addons.json?enriched=true&count=50\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":38:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:12:\"developer_id\";s:3:\"172\";s:10:\"install_id\";s:7:\"1008295\";s:4:\"slug\";s:17:\"rua-restrict-date\";s:5:\"title\";s:16:\"Date Restriction\";s:11:\"environment\";i:0;s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/icons/a75f709c8d753a13ffb1e57e6f3d5955.png\";s:15:\"default_plan_id\";s:4:\"2226\";s:5:\"plans\";i:2226;s:8:\"features\";N;s:17:\"money_back_period\";i:14;s:13:\"refund_policy\";s:8:\"moderate\";s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:0:\"\";s:11:\"is_released\";b:1;s:18:\"is_pricing_visible\";b:1;s:19:\"is_wp_org_compliant\";b:0;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:14:\"installs_count\";i:17;s:21:\"active_installs_count\";i:9;s:19:\"free_releases_count\";i:0;s:22:\"premium_releases_count\";i:5;s:15:\"total_purchases\";i:0;s:19:\"total_subscriptions\";i:6;s:14:\"total_renewals\";i:2;s:8:\"earnings\";d:181.96;s:10:\"commission\";s:35:\"{\"1000\":0.3,\"5000\":0.2,\"above\":0.1}\";s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:10:\"public_key\";s:32:\"pk_825ac0fd17eed5ce23c5e981ab061\";s:2:\"id\";s:4:\"1539\";s:7:\"created\";s:19:\"2017-11-15 00:14:38\";s:7:\"updated\";s:19:\"2020-04-09 07:35:15\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"1539\";s:3:\"url\";N;s:11:\"description\";s:334:\"<p>You can now easily restrict content based on the time it was added to your membership site!</p>\n<p>This add-on enables a new <b>Date Access Condition</b> that you can add to your Access Levels. Limit access to any content published at a select time, or combine the condition to limit only posts, pages, or any custom post type.</p>\";s:17:\"short_description\";s:90:\"New Access Condition to easily restrict content published on a select day, month, or year!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/card_banner.png\";s:15:\"selling_point_0\";s:39:\"Give exclusive access to upcoming posts\";s:15:\"selling_point_1\";s:42:\"Drip content from last year to new members\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/2.png\";}s:2:\"id\";s:2:\"93\";s:7:\"created\";s:19:\"2017-11-15 23:39:13\";s:7:\"updated\";s:19:\"2020-01-14 09:19:31\";}s:12:\"premium_slug\";s:25:\"rua-restrict-date-premium\";}i:1;O:8:\"stdClass\":38:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:12:\"developer_id\";s:3:\"172\";s:10:\"install_id\";s:7:\"1236410\";s:4:\"slug\";s:16:\"rua-restrict-url\";s:5:\"title\";s:15:\"URL Restriction\";s:11:\"environment\";i:0;s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/icons/8d40b0659f9982b00bc6291176bae8b6.png\";s:15:\"default_plan_id\";s:4:\"2508\";s:5:\"plans\";i:2508;s:8:\"features\";N;s:17:\"money_back_period\";i:14;s:13:\"refund_policy\";s:8:\"moderate\";s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:0:\"\";s:11:\"is_released\";b:1;s:18:\"is_pricing_visible\";b:1;s:19:\"is_wp_org_compliant\";b:0;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:14:\"installs_count\";i:84;s:21:\"active_installs_count\";i:46;s:19:\"free_releases_count\";i:0;s:22:\"premium_releases_count\";i:6;s:15:\"total_purchases\";i:0;s:19:\"total_subscriptions\";i:42;s:14:\"total_renewals\";i:10;s:8:\"earnings\";d:1389.49;s:10:\"commission\";s:35:\"{\"1000\":0.3,\"5000\":0.2,\"above\":0.1}\";s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:10:\"public_key\";s:32:\"pk_91089dff383d3e4c66d1a37b625ac\";s:2:\"id\";s:4:\"1716\";s:7:\"created\";s:19:\"2018-02-09 19:20:50\";s:7:\"updated\";s:19:\"2020-04-10 06:41:49\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"1716\";s:3:\"url\";N;s:11:\"description\";s:356:\"<p>You can now easily restrict any page on your membership site, no matter what URL it has!</p>\n<p>This add-on enables a new <b>URL Access Condition</b> that you can add to your Access Levels. Limit access to specific custom pages, or restrict content with dynamic URLs.</p>\n<p></p>\n<p><b>This add-on does currently not limit access to asset files.</b></p>\";s:17:\"short_description\";s:92:\"New Access Condition to easily restrict any custom WordPress URL, with support of wildcards!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/card_banner.png\";s:15:\"selling_point_0\";s:36:\"Limit access to any URL in WordPress\";s:15:\"selling_point_1\";s:41:\"Use wildcards to target specific keywords\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/2.png\";}s:2:\"id\";s:3:\"141\";s:7:\"created\";s:19:\"2018-02-09 19:31:48\";s:7:\"updated\";s:19:\"2020-04-11 19:21:21\";}s:12:\"premium_slug\";s:24:\"rua-restrict-url-premium\";}i:2;O:8:\"stdClass\":37:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:12:\"developer_id\";s:3:\"172\";s:10:\"install_id\";s:7:\"1251974\";s:4:\"slug\";s:12:\"rua-timelock\";s:5:\"title\";s:8:\"Timelock\";s:11:\"environment\";i:0;s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/icons/7b1b697f68dbeba88f94c212984ba3e1.png\";s:15:\"default_plan_id\";s:4:\"2543\";s:5:\"plans\";i:2543;s:8:\"features\";N;s:17:\"money_back_period\";i:14;s:13:\"refund_policy\";s:8:\"moderate\";s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:0:\"\";s:11:\"is_released\";b:1;s:18:\"is_pricing_visible\";b:1;s:19:\"is_wp_org_compliant\";b:0;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:14:\"installs_count\";i:23;s:21:\"active_installs_count\";i:12;s:19:\"free_releases_count\";i:0;s:22:\"premium_releases_count\";i:4;s:15:\"total_purchases\";i:0;s:19:\"total_subscriptions\";i:9;s:14:\"total_renewals\";i:1;s:8:\"earnings\";d:221.96;s:10:\"commission\";s:35:\"{\"1000\":0.3,\"5000\":0.2,\"above\":0.1}\";s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:10:\"public_key\";s:32:\"pk_9bddbbc0d3a534ca5241873a0aa8b\";s:2:\"id\";s:4:\"1740\";s:7:\"created\";s:19:\"2018-02-14 23:58:02\";s:7:\"updated\";s:19:\"2020-04-14 06:23:24\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"1740\";s:3:\"url\";N;s:11:\"description\";s:500:\"<p>This add-on is perfect for site owners who wants an easy way to make content become restricted and/or unrestricted at a certain time and date automatically.</p>\n<p>Simply specify a date and a time for any restrictions in your levels. Make content freely accessible at first, then restrict it to members only after a select time, or limit access to members at first, and then unlock it for everyone. It\'s even possible to combine the times so content is only restricted in a certain time range.</p>\";s:17:\"short_description\";s:63:\"Set a date and a time to activate/deactivate Access Conditions!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/card_banner.png\";s:15:\"selling_point_0\";s:36:\"Lock content for a limited time only\";s:15:\"selling_point_1\";s:66:\"Give early access to premium content before unlocking for everyone\";s:15:\"selling_point_2\";s:32:\"Works with all Access Conditions\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/2.png\";}s:2:\"id\";s:3:\"147\";s:7:\"created\";s:19:\"2018-02-15 20:10:47\";s:7:\"updated\";s:19:\"2020-01-14 09:24:46\";}}i:3;O:8:\"stdClass\":38:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:12:\"developer_id\";s:3:\"172\";s:10:\"install_id\";s:7:\"4307165\";s:4:\"slug\";s:16:\"rua-restrict-acf\";s:5:\"title\";s:15:\"ACF Restriction\";s:11:\"environment\";i:0;s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5849/icons/98aa990e179ef86ffb229429d32fbd46.png\";s:15:\"default_plan_id\";s:4:\"9573\";s:5:\"plans\";i:9573;s:8:\"features\";N;s:17:\"money_back_period\";i:14;s:13:\"refund_policy\";s:8:\"moderate\";s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:0:\"\";s:11:\"is_released\";b:1;s:18:\"is_pricing_visible\";b:1;s:19:\"is_wp_org_compliant\";b:0;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:14:\"installs_count\";i:2;s:21:\"active_installs_count\";i:1;s:19:\"free_releases_count\";i:0;s:22:\"premium_releases_count\";i:1;s:15:\"total_purchases\";i:0;s:19:\"total_subscriptions\";i:0;s:14:\"total_renewals\";i:0;s:8:\"earnings\";i:0;s:10:\"commission\";s:0:\"\";s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:10:\"public_key\";s:32:\"pk_05cf5773ce8afcbb36084c30e884e\";s:2:\"id\";s:4:\"5849\";s:7:\"created\";s:19:\"2020-04-08 07:22:48\";s:7:\"updated\";s:19:\"2020-04-11 19:06:16\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"5849\";s:3:\"url\";N;s:11:\"description\";s:426:\"<p>You can now easily restrict content based on data from Advanced Custom Fields!</p>\n<p>This add-on enables a new <b>ACF Access Condition</b> that you can add to your Access Levels. Limit access to any content with a specific custom field and value, or combine the condition to limit only posts, pages, or any custom post type.</p>\n<p></p>\n<p><b>This add-on requires the Advanced Custom Fields plugin to be installed.</b></p>\";s:17:\"short_description\";s:88:\"New Access Condition to easily restrict content with select Advanced Custom Fields data!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5849/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5849/card_banner.png\";s:15:\"selling_point_0\";s:44:\"Give exclusive access to pages with ACF data\";s:15:\"selling_point_1\";s:45:\"Protect custom fields from unauthorized users\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";N;s:2:\"id\";s:4:\"1542\";s:7:\"created\";s:19:\"2020-04-10 22:21:40\";s:7:\"updated\";s:19:\"2020-04-11 19:16:52\";}s:12:\"premium_slug\";s:24:\"rua-restrict-acf-premium\";}}}s:7:\"created\";i:1587029519;s:9:\"timestamp\";i:1587115919;}}', 'no'),
(981, 'rua_plugin_version', '1.2.1', 'yes'),
(982, '_ca_condition_type_cache', 'a:1:{s:11:\"restriction\";a:1:{i:0;s:9:\"post_type\";}}', 'yes'),
(1363, '_site_transient_timeout_browser_e21c002aaded6c25fda15f77141984ba', '1587133672', 'no'),
(1364, '_site_transient_browser_e21c002aaded6c25fda15f77141984ba', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"74.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1397, '_site_transient_timeout_browser_a268ddfa53fe4d80d5ea5e2249b86c3b', '1587378036', 'no'),
(1398, '_site_transient_browser_a268ddfa53fe4d80d5ea5e2249b86c3b', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"75.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1400, '_site_transient_timeout_php_check_141a8d7da406be785ba26084a46e1c00', '1587378038', 'no'),
(1401, '_site_transient_php_check_141a8d7da406be785ba26084a46e1c00', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1403, '_transient_is_multi_author', '1', 'yes'),
(1404, '_transient_talon_categories', '2', 'yes'),
(1426, '_site_transient_timeout_theme_roots', '1587031315', 'no'),
(1427, '_site_transient_theme_roots', 'a:2:{s:5:\"talon\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1429, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587029526;s:7:\"checked\";a:2:{s:5:\"talon\";s:4:\"1.07\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:2:{s:5:\"talon\";a:6:{s:5:\"theme\";s:5:\"talon\";s:11:\"new_version\";s:4:\"1.08\";s:3:\"url\";s:35:\"https://wordpress.org/themes/talon/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/theme/talon.1.08.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.1.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1430, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1587033104;s:7:\"checked\";a:14:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:26:\"custom-form/CustomForm.php\";s:3:\"1.0\";s:45:\"easy-custom-sidebars/easy-custom-sidebars.php\";s:6:\"1.0.10\";s:9:\"hello.php\";s:5:\"1.7.2\";s:21:\"pemilik-list/init.php\";s:1:\"1\";s:37:\"recent-posts-widget-extended/rpwe.php\";s:7:\"0.9.9.7\";s:23:\"report-seminar/init.php\";s:1:\"1\";s:45:\"restrict-user-access/restrict-user-access.php\";s:5:\"1.2.1\";s:29:\"seminar-list/seminar-list.php\";s:3:\"1.0\";s:20:\"report-user/init.php\";s:1:\"1\";s:34:\"report-verifikasi-seminar/init.php\";s:1:\"1\";s:53:\"wp-custom-register-login/wp-custom-register-login.php\";s:5:\"2.0.0\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"1.8.1\";}s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"restrict-user-access/restrict-user-access.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/restrict-user-access\";s:4:\"slug\";s:20:\"restrict-user-access\";s:6:\"plugin\";s:45:\"restrict-user-access/restrict-user-access.php\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/restrict-user-access/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/restrict-user-access.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/restrict-user-access/assets/icon-256x256.png?rev=1815922\";s:2:\"1x\";s:73:\"https://ps.w.org/restrict-user-access/assets/icon-128x128.png?rev=1815922\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/restrict-user-access/assets/banner-1544x500.png?rev=1815922\";s:2:\"1x\";s:75:\"https://ps.w.org/restrict-user-access/assets/banner-772x250.png?rev=1815922\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.9.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.1.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:45:\"easy-custom-sidebars/easy-custom-sidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/easy-custom-sidebars\";s:4:\"slug\";s:20:\"easy-custom-sidebars\";s:6:\"plugin\";s:45:\"easy-custom-sidebars/easy-custom-sidebars.php\";s:11:\"new_version\";s:6:\"1.0.10\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/easy-custom-sidebars/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/easy-custom-sidebars.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/easy-custom-sidebars/assets/icon-256x256.png?rev=991222\";s:2:\"1x\";s:72:\"https://ps.w.org/easy-custom-sidebars/assets/icon-128x128.png?rev=991222\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/easy-custom-sidebars/assets/banner-1544x500.png?rev=987596\";s:2:\"1x\";s:74:\"https://ps.w.org/easy-custom-sidebars/assets/banner-772x250.png?rev=987596\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"recent-posts-widget-extended/rpwe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/recent-posts-widget-extended\";s:4:\"slug\";s:28:\"recent-posts-widget-extended\";s:6:\"plugin\";s:37:\"recent-posts-widget-extended/rpwe.php\";s:11:\"new_version\";s:7:\"0.9.9.7\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/recent-posts-widget-extended/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/recent-posts-widget-extended.0.9.9.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/recent-posts-widget-extended/assets/icon-128x128.png?rev=1240338\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/recent-posts-widget-extended/assets/banner-772x250.png?rev=900647\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"wp-custom-register-login/wp-custom-register-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/wp-custom-register-login\";s:4:\"slug\";s:24:\"wp-custom-register-login\";s:6:\"plugin\";s:53:\"wp-custom-register-login/wp-custom-register-login.php\";s:11:\"new_version\";s:5:\"2.0.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/wp-custom-register-login/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/wp-custom-register-login.2.0.0.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/wp-custom-register-login/assets/icon-128x128.jpg?rev=1269330\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/wp-custom-register-login/assets/banner-772x250.jpg?rev=1269252\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1431, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1587072734', 'no'),
(1432, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(1433, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1587072745', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1434, '_transient_feed_9bbd59226dc36b9b26cd43f15694c5c3', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"News –  – WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 08 Apr 2020 00:57:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.5-alpha-47584\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"People of WordPress: Mario Peshev\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2020/04/people-of-wordpress-mario-peshev/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 08 Apr 2020 00:57:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8536\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:158:\"In the April edition of our \"People of WordPress\" series, you\'ll find out how Mario Peshev went from self-taught developer to teaching basic digital literacy.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12069:\"\n<p><em>You’ve probably heard that WordPress is open source software, and may know that it’s created and run by volunteers. Enthusiasts share many examples of how WordPress has changed people’s lives for the better. In this monthly series, we share some of those lesser-known, amazing stories.</em></p>\n\n\n\n<h2><strong>Computer science in the nineties</strong></h2>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" src=\"https://i2.wp.com/wordpress.org/news/files/2020/04/25de575216d3743f80181b2dca2cd7d9.jpeg?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-8539\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2020/04/25de575216d3743f80181b2dca2cd7d9.jpeg?w=200&amp;ssl=1 200w, https://i2.wp.com/wordpress.org/news/files/2020/04/25de575216d3743f80181b2dca2cd7d9.jpeg?resize=150%2C150&amp;ssl=1 150w\" sizes=\"(max-width: 200px) 100vw, 200px\" data-recalc-dims=\"1\" /><figcaption>Mario Peshev</figcaption></figure></div>\n\n\n\n<p>Mario has been hooked on computers ever since he&nbsp;got his first one in 1996. He started with digging into MS-DOS and Windows 3.1 first and learned tons by trial and error. Following that adventure, Mario built his first HTML site in 1999. He found development so exciting that he spent day and night learning QBasic and started working at the local PC game club. Mario got involved with several other things related to website administration (translating security bulletins, setting up simple sites, etc) and soon found the technology field was full of activities he really enjoyed.</p>\n\n\n\n<h2><strong>The Corporate Lifestyle</strong></h2>\n\n\n\n<p>Mario started studying programming including an intensive high-level course for C#, Java development, and software engineering, and eventually got a job in a corporate environment. He soon became a team lead there, managing all the planning and paperwork for their projects.</p>\n\n\n\n<p>But he continued freelancing on the side. He grew his own network of technical experts through attending, volunteering at, and organizing conferences. He also ran a technical forum and regularly spoke at universities and enterprise companies.</p>\n\n\n\n<h2><strong>Remote Working and Business Opportunity</strong></h2>\n\n\n\n<p>The combination of a high workload and a daily three-hour-long commute made Mario’s life difficult. Many of his friends were still studying, traveling or unemployed. The blissful and calm lives they lived seemed like a fairy tale to him. And even while both his managers and his clients were abroad, he was unable to obtain permission to work remotely.&nbsp;</p>\n\n\n\n<p>So Mario decided to leave his job and start freelancing full time. But he found he faced a massive challenge.&nbsp;</p>\n\n\n\n<p>He discovered Java projects were pretty large and required an established team of people working together in an office. All job opportunities were on-site, and some even required relocation abroad. Certified Java programmers weren’t being hired on a remote basis.&nbsp;</p>\n\n\n\n<p>As Mario had some PHP experience from previous jobs, he used this to start his freelance career. For his projects, he used both plain PHP and PHP frameworks like CakePHP and CodeIgniter.&nbsp;</p>\n\n\n\n<p>For a while, Mario accepted work using commonly known platforms including Joomla, Drupal, and WordPress. In addition, he worked on PHP, Java, Python and some C# projects for a couple of years, after which he decided to switch to WordPress completely.</p>\n\n\n\n<h2><strong>Building products</strong></h2>\n\n\n\n<p>One of his projects involved a technically challenging charity backed by several international organizations. Unexpected shortages in the team put him in the technical lead position. As a result, Mario found himself planning the next phases, meeting with the client regularly, and renegotiating the terms. The team completed the project successfully, and after the launch, a TV campaign led millions of visitors to the website.</p>\n\n\n\n<p>As a result of the successful launch, this client invited Mario to participate in more WordPress projects, including building a custom framework.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>“I wasn’t that acquainted with WordPress back then. For me, a conventional person trained in architectural design patterns and best practices, WordPress seemed like an eccentric young hipster somewhere on the line between insane and genius at the same time. I had to spend a couple of months learning WordPress from the inside out.”</em></p><cite>Mario Peshev</cite></blockquote>\n\n\n\n<p>As his interest in WordPress grew, Mario stopped delivering other custom platforms, and converted clients to WordPress.&nbsp;</p>\n\n\n\n<h2><strong>European Community</strong></h2>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?fit=632%2C356&amp;ssl=1\" alt=\"Mario presenting to an audience\" class=\"wp-image-8546\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?w=2560&amp;ssl=1 2560w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=1024%2C576&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=768%2C432&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=1536%2C864&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=2048%2C1152&amp;ssl=1 2048w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" /><figcaption>Mario presenting at a WordCamp</figcaption></figure>\n\n\n\n<p>For Mario, one of the key selling points of WordPress was the international openness. He had previously been involved with other open source communities, some of which were US-focused. He felt they were more reliant on meeting people in person. With events only taking place in the US, this made building relationships much harder for people living in other countries.</p>\n\n\n\n<p>While the WordPress project started out in the US, the WordPress community quickly globalized. Dozens of WordCamps and hundreds of Meetup events take place around the globe every year.&nbsp; All of these events bring a wide variety of people sharing their enthusiasm for WordPress together.</p>\n\n\n\n<p>For Mario, the birth of WordCamp Europe was something magical. The fact that hundreds, and later on thousands, of people from all over the world gathered around the topic of WordPress speaks for itself. Mario has been involved with organizing WordCamp Europe twice (in 2014 and 2015).&nbsp;</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>“There’s nothing like meeting WordPress enthusiasts and professionals from more than 50 countries brainstorming and working together at a WordCamp. You simply have to be there to understand how powerful it all is.”</em></p><cite>Mario Peshev</cite></blockquote>\n\n\n\n<h2><strong>Growing businesses and teams</strong></h2>\n\n\n\n<p>A key WordPress benefit is its popularity – an ever growing project currently powering <a href=\"https://w3techs.com/technologies/details/cm-wordpress\">more than 35% of the Internet [2020].</a> It’s popular enough to be a de facto standard for websites, platforms, e-commerce and blogs.&nbsp;</p>\n\n\n\n<p>WordPress has a low barrier to entry. You can achieve a lot without being an expert, meaning most people can start gaining experience without having to spend years learning how to code. That also makes it easier to build businesses and teams.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>“Being able to use a tool that is user-friendly, not overly complicated and easily extensible makes introducing it to team members faster and easier. It requires less time for adjustment, and as a result makes a team stronger and faster. The fact that this tool is cost-effective also allows more startups to enter the market. It requires&nbsp; less time and investments to launch an MVP. This boosts the entire ecosystem.”</em></p><cite>Mario Peshev</cite></blockquote>\n\n\n\n<h2><strong>Helping Others</strong></h2>\n\n\n\n<p>Mario also introduced WordPress to children and young people. He taught them how to use WordPress as a tool for homework and class assignments. By using WordPress, they were able to learn the basics of designing themes, developing plugins, marketing statistics, social media, copywriting, and so much more. This approachable introduction to the software meant technical skills were not needed.</p>\n\n\n\n<p>He was also part of a team of volunteers who helped a group of young people living at a foster home struggling to provide for themselves. The team taught the basic digital literacy skills necessary in the modern workplace and potentially pay for their rent and basic needs. This included working with Microsoft Word, Excel and WordPress, as well as some basic design and marketing skills. </p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>“When you look at that from another perspective, a platform that could save lives &#8211; literally &#8211; and change the world for better is worth contributing to, in any possible manner.”</em></p><cite>Mario Peshev</cite></blockquote>\n\n\n\n<h2><strong>Contributing to the WordPress community</strong></h2>\n\n\n\n<p>From the core team to supporting and organizing WordCamps, Mario has long been an active contributor to the global WordPress project. He is passionate about the connections fostered by people who are involved in building both the WordPress software and the community around it.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>“The WordPress community consists of people of all race and color, living all around the world, working as teachers, developers, bloggers, designers, business owners. Let’s work together to help each other. Let’s stick together and show&nbsp; the world WordPress can help make it a better place.”</em></p><cite>Mario Peshev</cite></blockquote>\n\n\n\n<h2><strong>Contributors</strong></h2>\n\n\n\n<p>Thanks to Alison Rothwell (<a href=\'https://profiles.wordpress.org/wpfiddlybits/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>wpfiddlybits</a>), Yvette Sonneveld (<a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a>), Abha Thakor (<a href=\'https://profiles.wordpress.org/webcommsat/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>webcommsat</a>), Josepha Haden (<a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a>) and Topher DeRosia (<a href=\'https://profiles.wordpress.org/topher1kenobe/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>topher1kenobe</a>). Thank you to Mario Peshev (<a href=\'https://profiles.wordpress.org/nofearinc/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>nofearinc</a>) for sharing his #ContributorStory.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/heropress_logo_180.png?w=632&#038;ssl=1\" alt=\"HeroPress logo\" class=\"wp-image-8409\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p><em>This post is based on </em><a href=\"https://heropress.com/essays/wordpress-gave-perfect-identity/\"><em>an article originally published on HeroPress.com</em></a><em>, a community initiative created by </em><a href=\"https://profiles.wordpress.org/topher1kenobe/\"><em>Topher DeRosia</em></a><em>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>\n\n\n\n<p><em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8536\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: March 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2020/04/the-month-in-wordpress-march-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Apr 2020 12:01:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8532\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:363:\"The month of March was both a tough and exciting time for the WordPress open-source project. With COVID-19 declared a pandemic, in-person events have had to adapt quickly &#8211; a challenge for any community. March culminated with the release of WordPress 5.4, an exhilarating milestone only made possible by dedicated contributors. For all the latest, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8588:\"\n<p>The month of March was both a tough and exciting time for the WordPress open-source project. With COVID-19 declared a pandemic, in-person events have had to adapt quickly &#8211; a challenge for any community. March culminated with the release of WordPress 5.4, an exhilarating milestone only made possible by dedicated contributors. For all the latest, read on.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.4 “Adderley”</h2>\n\n\n\n<p>WordPress 5.4 “Adderley” <a href=\"https://wordpress.org/news/2020/03/adderley/\">was released on March 31</a> and includes a robust list of new blocks, enhancements, and new features for both users and developers. The primary focus areas of this release included the block editor, privacy, accessibility, and developer improvements, with the full list of enhancements covered in <a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">the 5.4 field guide</a>.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Releases of Gutenberg 7.7 and 7.8</h2>\n\n\n\n<p>It’s been another busy month for Gutenberg, this time with the release of Gutenberg <a href=\"https://make.wordpress.org/core/2020/03/11/whats-new-in-gutenberg-11-march/\">7.7</a> and <a href=\"https://make.wordpress.org/core/2020/03/26/whats-new-in-gutenberg-25-march/\">7.8</a>. Gutenberg 7.7 introduced block patterns &#8211; predefined block layouts that are ready to use and tweak. This is an important step towards Full Site Editing, which is currently targeted for inclusion in WordPress 5.6. As a first iteration, you can pick and insert patterns from the Block Patterns UI, which has been added as a sidebar plugin.</p>\n\n\n\n<p>Gutenberg 7.7 also includes a refresh of the Block UI, which better responds to the ways users interact with the editor. For more information on the User UI and Block Patterns, read <a href=\"https://make.wordpress.org/themes/2020/03/18/block-based-themes-meeting-notes/\">this summary of the most recent Block-Based Themes meeting</a>. Gutenberg 7.8, introduced on March 25, further enhanced this Block UI redesign. Both releases also included a suite of improvements, bug fixes, new APIs, documentation, and more!</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>WordCamp cancellations and shift to online events</h2>\n\n\n\n<p>In early March, the Community team issued <a href=\"https://make.wordpress.org/community/2020/03/11/new-recommendations-for-event-organizers-in-light-of-covid-19/\">new recommendations for event organizers</a> in light of growing concerns around COVID-19. Following this guidance, and with COVID-19 declared a pandemic, WordPress community organizers reluctantly but responsibly <a href=\"https://make.wordpress.org/community/2020/03/12/latest-updates-on-changes-to-wordcamps/\">postponed or canceled their upcoming WordCamps</a> and meetups.</p>\n\n\n\n<p>As community events are an important part of the WordPress open-source project, the Community team made suggestions for <a href=\"https://make.wordpress.org/community/2020/03/20/taking-charity-hackathons-online/\">taking charity hackathons online</a>, <a href=\"https://make.wordpress.org/community/2020/03/24/community-events-in-the-time-of-covid-19/\">proposed interim adjustments</a> to existing community event guidelines, and provided <a href=\"https://make.wordpress.org/community/2020/03/13/online-conference-organizer-training/\">training for online conference organizing</a> with Crowdcast. The team is currently working on building a <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">Virtual Events Handbook</a> that will continue to support WordPress community organizers at this time.&nbsp;</p>\n\n\n\n<p>Want to get involved with the WordPress Community team, host your own virtual WordPress event, or help improve the documentation for all of this? Follow <a href=\"https://make.wordpress.org/community/\">the Community team blog</a>, learn more about <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">virtual events</a>, and join the #community-events channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Link your GitHub profile to WordPress.org</h2>\n\n\n\n<p>Last month, <a href=\"https://make.wordpress.org/core/2020/02/21/working-on-trac-tickets-using-github-pull-requests/\">an experimental feature</a> was added to Trac, WordPress Core’s bug-tracking system, to improve collaboration between Trac and GitHub. This month, to help make tracking contributions to the WordPress project across multiple locations easier, there is <a href=\"https://make.wordpress.org/core/2020/03/19/associating-github-accounts-with-wordpress-org-profiles/\">a new option</a> to connect your GitHub account to your WordPress.org profile. This connection allows for more accurate acknowledgement and recognition of contributors. You can connect your GitHub account to your WordPress.org account by editing your WordPress.org profile.</p>\n\n\n\n<p>For more information and instructions on how to connect your accounts, <a href=\"https://make.wordpress.org/core/2020/03/19/associating-github-accounts-with-wordpress-org-profiles/\">read the announcement post</a>.</p>\n\n\n\n<h2>Modernizing WordPress coding standards</h2>\n\n\n\n<p>Defined coding standards is an important step in creating the consistent codebase needed to prepare for requiring PHP 7.x for WordPress Core. As such, <a href=\"https://make.wordpress.org/core/2020/03/20/updating-the-coding-standards-for-modern-php/\">coding standards have been proposed</a> for implementation in WordPress Coding Standards 3.0.0. This includes new proposed standards for namespace declarations, import use statements, fully qualified names in inline code, traits and interfaces, type declarations, declare statements/strict typing, the ::class constant, operators, and more.&nbsp;</p>\n\n\n\n<p>Want to get involved or view the full list of currently proposed new coding standards? Visit and add your feedback to the post on <a href=\"https://make.wordpress.org/core/2020/03/20/updating-the-coding-standards-for-modern-php/\">updating the Coding standards for modern PHP</a> and follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>On March 16, <a href=\"https://make.wordpress.org/core/2020/03/18/auto-updates-feature-meeting-summary-march-17th-2020/\">Version 0.3 of the auto-updates feature was released</a>, including fixes to a number of issues and the introduction of email notifications.&nbsp;</li><li>WordCamp US announced that <a href=\"https://2020.us.wordcamp.org/2020/03/26/wcus-is-happening/\">the 2020 event will happen</a>, one way or another. But the team need your help to make sure that it’s another fantastic event. <a href=\"https://2020.us.wordcamp.org/2020/03/16/call-for-speakers-is-now-open/\">Consider applying to be a speaker</a>!</li><li>Speaking of WordCamp US, <a href=\"https://2020.us.wordcamp.org/2020/03/23/call-for-cities-for-wcus-2021-2022/\">the Call for Cities for WCUS 2021/2022</a> is now open. If your community is interested in being a future WCUS host, <a href=\"https://wordcampcentral.survey.fm/wcus-2021-2022\">apply today</a>!</li><li>With COVID-19 preventing in-person community events, the Diverse Speaker Training (#wpdiversity) Group encourages you to <a href=\"https://make.wordpress.org/community/2020/03/17/covid-19-and-the-diverse-speaker-training-wpdiversity-group/\">host a virtual Diverse Speaker Workshop</a> to prepare speakers for when we are able to meet in person again. To get started, <a href=\"https://tiny.cc/wpdiversity\">visit this page</a>.&nbsp;</li><li>An <a href=\"https://make.wordpress.org/updates/2020/03/06/update-progress-on-goals/\">update for progress on 2020 goals</a> has been posted, sharing some more defined targets and schedule.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8532\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:58:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"WordPress 5.4 “Adderley”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://wordpress.org/news/2020/03/adderley/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Mar 2020 19:04:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8455\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:255:\"Version 5.4 \"Adderley\" of WordPress is available for download or update in your WordPress dashboard. This version brings you more ways to make content come alive with your best images and helps make your vision real by putting blocks in the perfect place.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:45:\"https://s.w.org/images/core/5.4/textcolor.mp4\";s:6:\"length\";s:6:\"440616\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:52015:\"\n<p class=\"has-text-color has-very-dark-gray-color\">Here it is! Named “Adderley” in honor of Nat Adderley, the latest and greatest version of WordPress is available for&nbsp;<a href=\"https://wordpress.org/download/\">download</a>&nbsp;or update in your dashboard.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=632%2C632&#038;ssl=1\" alt=\"\" class=\"wp-image-8484\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=1024%2C1024&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=300%2C300&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=150%2C150&amp;ssl=1 150w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=768%2C768&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=1536%2C1536&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=2048%2C2048&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#0400e0\"><div class=\"wp-block-cover__inner-container\">\n<p style=\"font-size:32px\" class=\"has-text-align-center\"><strong>Say hello to more and better.</strong></p>\n\n\n\n<p class=\"has-text-align-center has-medium-font-size\">More ways to make your pages come alive. With easier ways to get it all done and looking better than ever—and boosts in speed you can feel.</p>\n</div></div>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"has-text-align-left\"><strong>Welcome to WordPress 5.4</strong></h2>\n\n\n\n<p style=\"font-size:15px\" class=\"has-text-align-left\"><strong>Every major release adds more to the block editor.</strong></p>\n\n\n\n<p style=\"font-size:18px\">More ways to make posts and pages come alive with your best images. More ways to bring your visitors in, and keep them engaged, with the richness of embedded media from the web’s top services.</p>\n\n\n\n<p style=\"font-size:18px\">More ways to make your vision real, and put blocks in the perfect place—even if a particular kind of block is new to you. More efficient processes.</p>\n\n\n\n<p style=\"font-size:18px\">And more speed everywhere, so as you build sections or galleries, or just type in a line of prose, you can feel how much faster your work flows.</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=632%2C316&#038;ssl=1\" alt=\"\" class=\"wp-image-8480\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=1024%2C512&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=300%2C150&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=768%2C384&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=1536%2C768&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?w=2000&amp;ssl=1 2000w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<h3>Two new blocks. And better blocks overall.</h3>\n\n\n\n<ul><li>Two brand-new blocks: Social Icons and Buttons make adding interactive features fast and easy.</li><li>New ways with color: Gradients in the Buttons and Cover block, toolbar access to color options in Rich Text blocks, and for the first time, color options in the Group and Columns blocks.</li><li>Guess a whole lot less! Version 5.4 streamlines the whole process for placing and replacing multimedia in every block. Now it works the same way in almost every block!</li><li>And if you’ve ever thought your image in the Media+Text block should link to something else—perhaps a picture of a brochure should download that brochure as a document? Well, now it can.</li></ul>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.4/textcolor.mp4\"></video></figure>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h3>Cleaner UI, clearer navigation—and easier tabbing!</h3>\n\n\n\n<ul><li>Clearer block navigation with block breadcrumbs. And easier selection once you get there.</li><li>For when you need to navigate with the keyboard, better tabbing and focus. Plus, you can tab over to the sidebar of nearly any block.</li><li>Speed! 14% faster loading of the editor, 51% faster time-to-type!</li><li>Tips are gone. In their place, a Welcome Guide window you can bring up when you need it—and only when you need it—again and again.</li><li>Know at a glance whether you’re in a block’s Edit or Navigation mode. Or, if you have restricted vision, your screen reader will tell you which mode you’re in.</li></ul>\n\n\n\n<p style=\"background-color:#f8f8f9\" class=\"has-background\">Of course, if you want to work with the very latest tools and features, <strong><a href=\"https://wordpress.org/plugins/gutenberg/\">install the Gutenberg plugin</a></strong>. You’ll get to be the first to use new and exciting features in the block editor before anyone else has seen them!</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=632%2C316&#038;ssl=1\" alt=\"\" class=\"wp-image-8481\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=1024%2C512&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=300%2C150&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=768%2C384&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=1536%2C768&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?w=2000&amp;ssl=1 2000w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<h3>Your fundamental right: privacy</h3>\n\n\n\n<p>5.4 helps with a variety of privacy issues around the world. So when users and stakeholders ask about regulatory compliance, or how your team handles user data, the answers should be a lot easier to get right.</p>\n\n\n\n<p>Take a look:</p>\n\n\n\n<ul><li>Now personal data exports include users session information and users location data from the community events widget. Plus, a table of contents!</li><li>See progress as you process export and erasure requests through the privacy tools.</li><li>Plus, little enhancements throughout give the privacy tools a little cleaner look. Your eyes will thank you!</li></ul>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=632%2C316&#038;ssl=1\" alt=\"\" class=\"wp-image-8482\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=1024%2C512&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=300%2C150&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=768%2C384&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=1536%2C768&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?w=2000&amp;ssl=1 2000w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h2><strong>Just for developers</strong></h2>\n\n\n\n<h3>Add custom fields to menu items—natively</h3>\n\n\n\n<p>Two new actions let you add custom fields to menu items—without a plugin and without writing custom walkers.</p>\n\n\n\n<p>On the Menus admin screen, <code>wp_nav_menu_item_custom_fields</code> fires just before the move buttons of a nav menu item in the menu editor.</p>\n\n\n\n<p>In the Customizer, <code>wp_nav_menu_item_custom_fields_customize_template</code> fires at the end of the menu-items form-fields template.</p>\n\n\n\n<p>Check your code and see where these new actions can replace your custom code, and if you’re concerned about duplication, add a check for the WordPress version.</p>\n\n\n\n<h3>Blocks! Simpler styling, new APIs and embeds</h3>\n\n\n\n<ul><li>Radically simpler block styling. Negative margins and default padding are gone! Now you can style blocks the way you need them. And, a refactor got rid of four redundant wrapper divs.</li><li>If you build plugins, now you can register collections of your blocks by namespace across categories—a great way to get more brand visibility.</li><li>Let users do more with two new APIs: block variations and gradients.</li><li>In embeds, now the block editor supports TikTok—and CollegeHumor is gone.</li></ul>\n\n\n\n<p style=\"background-color:#f8f8f9\" class=\"has-background\">There’s lots more for developers to love in WordPress 5.4. To discover more and learn how to make these changes shine on your sites, themes, plugins and more, check the <strong><a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a></strong>.</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2><strong>The Squad</strong></h2>\n\n\n\n<p>This release was led by&nbsp;<a href=\"http://ma.tt/\">Matt Mullenweg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/francina\">Francesca Marano</a>, and&nbsp;<a href=\"https://dream-encode.com/blog/\">David Baumwald</a>. They were enthusiastically supported by a release squad:</p>\n\n\n\n<ul><li><strong>Editor Tech</strong>: Jorge Filipe Costa (<strong><a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">@jorgefelipecosta</a></strong>)</li><li><strong>Editor Design</strong>: Mark Uraine (<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://profiles.wordpress.org/mapk/\"><strong>@mapk</strong></a>)</li><li><strong>Core Tech</strong>: Sergey Biryukov (<a href=\"https://profiles.wordpress.org/sergeybiryukov/\"><strong>@sergeybiryukov</strong></a>)</li><li><strong>Design</strong>: Tammie Lister (<strong><a href=\"https://profiles.wordpress.org/karmatosed/\">@karmatosed</a></strong>)</li><li><strong>Docs Coordinator</strong>:&nbsp;JB Audras (<a href=\"https://profiles.wordpress.org/audrasjb/\"><strong>@audrasjb</strong></a>)</li><li><strong>Docs &amp; Comms Wrangler</strong>: Mary Baum (<strong><a href=\"https://profiles.wordpress.org/marybaum/\">@marybaum</a></strong>)</li></ul>\n\n\n\n<p>The squad was joined throughout the release cycle by <strong>552 generous volunteer contributors</strong> who collectively worked on <strong><a href=\"https://core.trac.wordpress.org/milestone/5.4\">361</a> tickets on Trac</strong> and <strong>1226 pull requests on GitHub</strong>.</p>\n\n\n\n<p>Put on a Nat Adderley playlist, click that update button (or&nbsp;<a href=\"https://wordpress.org/download/\">download it directly</a>), and check the profiles of the fine folks that helped:</p>\n\n\n<a href=\"https://profiles.wordpress.org/0v3rth3d4wn/\">0v3rth3d4wn</a>, <a href=\"https://profiles.wordpress.org/123host/\">123host</a>, <a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abhijitrakas/\">Abhijit Rakas</a>, <a href=\"https://profiles.wordpress.org/abrightclearweb/\">abrightclearweb</a>, <a href=\"https://profiles.wordpress.org/acosmin/\">acosmin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/adamboro/\">adamboro</a>, <a href=\"https://profiles.wordpress.org/addiestavlo/\">Addie</a>, <a href=\"https://profiles.wordpress.org/adnanlimdi/\">adnan.limdi</a>, <a href=\"https://profiles.wordpress.org/shaikhaezaz80/\">Aezaz Shaikh</a>, <a href=\"https://profiles.wordpress.org/aftabmuni/\">Aftab Ali Muni</a>, <a href=\"https://profiles.wordpress.org/akibjorklund/\">Aki Bj&#246;rklund</a>, <a href=\"https://profiles.wordpress.org/smallprogrammers/\">Akib</a>, <a href=\"https://profiles.wordpress.org/atachibana/\">Akira Tachibana</a>, <a href=\"https://profiles.wordpress.org/akshayar/\">akshayar</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/aljullu/\">Albert Juh&#233; Lluveras</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/viper007bond/\">Alex Mills</a>, <a href=\"https://profiles.wordpress.org/alexholsgrove/\">AlexHolsgrove</a>, <a href=\"https://profiles.wordpress.org/alexischenal/\">alexischenal</a>, <a href=\"https://profiles.wordpress.org/alextran/\">alextran</a>, <a href=\"https://profiles.wordpress.org/alishankhan/\">alishankhan</a>, <a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>, <a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/alpipego/\">alpipego</a>, <a href=\"https://profiles.wordpress.org/amirs17/\">Amir Seljubac</a>, <a href=\"https://profiles.wordpress.org/wpamitkumar/\">Amit Dudhat</a>, <a href=\"https://profiles.wordpress.org/amolv/\">Amol Vhankalas</a>, <a href=\"https://profiles.wordpress.org/agawish/\">Amr Gawish</a>, <a href=\"https://profiles.wordpress.org/amykamala/\">Amy Kamala</a>, <a href=\"https://profiles.wordpress.org/anantajitjg/\">Anantajit JG</a>, <a href=\"https://profiles.wordpress.org/anlino/\">Anders Nor&#233;n</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">Andr&#233;s</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/dontdream/\">Andrea Tarantini</a>, <a href=\"https://profiles.wordpress.org/andreaitm/\">andreaitm</a>, <a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>, <a href=\"https://profiles.wordpress.org/aandrewdixon/\">Andrew Dixon</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andrewserong/\">Andrew Serong</a>, <a href=\"https://profiles.wordpress.org/eatingrules/\">Andrew Wilder</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey Savchenko</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/andizer/\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>, <a href=\"https://profiles.wordpress.org/la-geek/\">Angelika Reisiger</a>, <a href=\"https://profiles.wordpress.org/ankitmaru/\">Ankit Panchal</a>, <a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/paranoia1906/\">Anthony Ledesma</a>, <a href=\"https://profiles.wordpress.org/apedog/\">apedog</a>, <a href=\"https://profiles.wordpress.org/apermo/\">Apermo</a>, <a href=\"https://profiles.wordpress.org/apieschel/\">apieschel</a>, <a href=\"https://profiles.wordpress.org/aravindajith/\">Aravind Ajith</a>, <a href=\"https://profiles.wordpress.org/archon810/\">archon810</a>, <a href=\"https://profiles.wordpress.org/arenddeboer/\">arenddeboer</a>, <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/passoniate/\">Arslan Ahmed</a>, <a href=\"https://profiles.wordpress.org/ashokrd2013/\">ashokrd2013</a>, <a href=\"https://profiles.wordpress.org/ataurr/\">Ataur R</a>, <a href=\"https://profiles.wordpress.org/ate-up-with-motor/\">Ate Up With Motor</a>, <a href=\"https://profiles.wordpress.org/autotutorial/\">autotutorial</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/backups/\">BackuPs</a>, <a href=\"https://profiles.wordpress.org/bahia0019/\">bahia0019</a>, <a href=\"https://profiles.wordpress.org/b-07/\">Bappi</a>, <a href=\"https://profiles.wordpress.org/bartczyz/\">Bart Czyz</a>, <a href=\"https://profiles.wordpress.org/bengreeley/\">ben.greeley</a>, <a href=\"https://profiles.wordpress.org/benedictsinger/\">benedictsinger</a>, <a href=\"https://profiles.wordpress.org/bfintal/\">Benjamin Intal</a>, <a href=\"https://profiles.wordpress.org/bibliofille/\">bibliofille</a>, <a href=\"https://profiles.wordpress.org/bilgilabs/\">bilgilabs</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson</a>, <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/skypressatx/\">BMO</a>, <a href=\"https://profiles.wordpress.org/boga86/\">Boga86</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bwmarkle/\">Brad Markle</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/cvoell/\">Cameron Voell</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/ceyhun0/\">ceyhun0</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/ketuchetan/\">Chetan Satasiya</a>, <a href=\"https://profiles.wordpress.org/chinteshprajapati/\">Chintesh Prajapati</a>, <a href=\"https://profiles.wordpress.org/chipsnyder/\">Chip Snyder</a>, <a href=\"https://profiles.wordpress.org/cklosows/\">Chris Klosowski</a>, <a href=\"https://profiles.wordpress.org/eclare/\">Chris Trynkiewicz (Sukces Strony)</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/pixelverbieger/\">Christian Sabo</a>, <a href=\"https://profiles.wordpress.org/christianamohr/\">Christiana Mohr</a>, <a href=\"https://profiles.wordpress.org/clayisland/\">clayisland</a>, <a href=\"https://profiles.wordpress.org/copons/\">Copons</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/crdunst/\">crdunst</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/xendo/\">Dademaru</a>, <a href=\"https://profiles.wordpress.org/retrofox/\">Damián Suárez</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danieltj/\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/diddledan/\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/daniloercoli/\">daniloercoli</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/darrenlambert/\">darrenlambert</a>, <a href=\"https://profiles.wordpress.org/davidshq/\">Dave Mackey</a>, <a href=\"https://profiles.wordpress.org/get_dave/\">Dave Smith</a>, <a href=\"https://profiles.wordpress.org/daveslaughter/\">daveslaughter</a>, <a href=\"https://profiles.wordpress.org/davewp196/\">DaveWP196</a>, <a href=\"https://profiles.wordpress.org/dartiss/\">David Artiss</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dryanpress/\">David Ryan</a>, <a href=\"https://profiles.wordpress.org/dshanske/\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/superdav42/\">David Stone</a>, <a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>, <a href=\"https://profiles.wordpress.org/dekervit/\">dekervit</a>, <a href=\"https://profiles.wordpress.org/delowardev/\">Delowar Hossain</a>, <a href=\"https://profiles.wordpress.org/denisco/\">Denis Yanchevskiy</a>, <a href=\"https://profiles.wordpress.org/dhavalkasvala/\">Dhaval kasavala</a>, <a href=\"https://profiles.wordpress.org/dhurlburtusa/\">dhurlburtusa</a>, <a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a>, <a href=\"https://profiles.wordpress.org/dingo_d/\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dipeshkakadiya/\">dipeshkakadiya</a>, <a href=\"https://profiles.wordpress.org/djp424/\">djp424</a>, <a href=\"https://profiles.wordpress.org/dominic_ks/\">dominic_ks</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dotancohen/\">Dotan Cohen</a>, <a href=\"https://profiles.wordpress.org/dphiffer/\">dphiffer</a>, <a href=\"https://profiles.wordpress.org/dragosh635/\">dragosh635</a>, <a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/eclev91/\">eclev91</a>, <a href=\"https://profiles.wordpress.org/seedsca/\">ecotechie</a>, <a href=\"https://profiles.wordpress.org/eden159/\">eden159</a>, <a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>, <a href=\"https://profiles.wordpress.org/disillusia/\">edmundcwm</a>, <a href=\"https://profiles.wordpress.org/etoledom/\">Eduardo Toledo</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/elmastudio/\">Ellen Bauer</a>, <a href=\"https://profiles.wordpress.org/aliveic/\">Emil E</a>, <a href=\"https://profiles.wordpress.org/epiqueras/\">Enrique Piqueras</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique Sánchez</a>, <a href=\"https://profiles.wordpress.org/equin0x80/\">equin0x80</a>, <a href=\"https://profiles.wordpress.org/erikkroes/\">erikkroes</a>, <a href=\"https://profiles.wordpress.org/estelaris/\">Estela Rueda</a>, <a href=\"https://profiles.wordpress.org/fabifott/\">Fabian</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian K&#228;gy</a>, <a href=\"https://profiles.wordpress.org/fahimmurshed/\">Fahim Murshed</a>, <a href=\"https://profiles.wordpress.org/faisal03/\">Faisal Alvi</a>, <a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a>, <a href=\"https://profiles.wordpress.org/felipeloureirosantos/\">Felipe Santos</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/fernandovbsouza/\">Fernando Souza</a>, <a href=\"https://profiles.wordpress.org/fervillz/\">fervillz</a>, <a href=\"https://profiles.wordpress.org/fgiannar/\">fgiannar</a>, <a href=\"https://profiles.wordpress.org/flaviozavan/\">flaviozavan</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/fotisps/\">Fotis Pastrakis</a>, <a href=\"https://profiles.wordpress.org/efarem/\">Frank Martin</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/guddu1315/\">Gaurang Dabhi</a>, <a href=\"https://profiles.wordpress.org/georgestephanis/\">George Stephanis</a>, <a href=\"https://profiles.wordpress.org/geriux/\">geriux</a>, <a href=\"https://profiles.wordpress.org/girishpanchal/\">Girish Panchal</a>, <a href=\"https://profiles.wordpress.org/glebkema/\">Gleb Kemarsky</a>, <a href=\"https://profiles.wordpress.org/hometowntrailers/\">Glenn</a>, <a href=\"https://profiles.wordpress.org/gh640/\">Goto Hayato</a>, <a href=\"https://profiles.wordpress.org/grafruessel/\">grafruessel</a>, <a href=\"https://profiles.wordpress.org/gregrickaby/\">Greg Rickaby</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Grzegorz Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/grzegorzjanoszka/\">Grzegorz.Janoszka</a>, <a href=\"https://profiles.wordpress.org/bordoni/\">Gustavo Bordoni</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">gwwar</a>, <a href=\"https://profiles.wordpress.org/hamedmoodi/\">hamedmoodi</a>, <a href=\"https://profiles.wordpress.org/hampzter/\">hAmpzter</a>, <a href=\"https://profiles.wordpress.org/happiryu/\">happiryu</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh Pillai</a>, <a href=\"https://profiles.wordpress.org/harry-milatz/\">Harry Milatz</a>, <a href=\"https://profiles.wordpress.org/hazdiego/\">Haz</a>, <a href=\"https://profiles.wordpress.org/helgatheviking/\">helgatheviking</a>, <a href=\"https://profiles.wordpress.org/henryholtgeerts/\">Henry Holtgeerts</a>, <a href=\"https://profiles.wordpress.org/imani3011/\">Himani Lotia</a>, <a href=\"https://profiles.wordpress.org/krynes/\">Hubert Kubiak</a>, <a href=\"https://profiles.wordpress.org/i3anaan/\">i3anaan</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianatkins/\">ianatkins</a>, <a href=\"https://profiles.wordpress.org/ianmjones/\">ianmjones</a>, <a href=\"https://profiles.wordpress.org/ideaboxcreations/\">IdeaBox Creations</a>, <a href=\"https://profiles.wordpress.org/shaampk1/\">Ihtisham Zahoor</a>, <a href=\"https://profiles.wordpress.org/intimez/\">intimez</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/ispreview/\">ispreview</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jbinda/\">Jakub Binda</a>, <a href=\"https://profiles.wordpress.org/macmanx/\">James Huff</a>, <a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jameslnewell/\">jameslnewell</a>, <a href=\"https://profiles.wordpress.org/jankimoradiya/\">Janki Moradiya</a>, <a href=\"https://profiles.wordpress.org/jarretc/\">Jarret</a>, <a href=\"https://profiles.wordpress.org/studiotwee/\">Jasper van der Meer</a>, <a href=\"https://profiles.wordpress.org/jaydeep23290/\">jaydeep23290</a>, <a href=\"https://profiles.wordpress.org/jdy68/\">jdy68</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>, <a href=\"https://profiles.wordpress.org/jean-david/\">Jean-David Daviet</a>, <a href=\"https://profiles.wordpress.org/jblz/\">Jeff Bowen</a>, <a href=\"https://profiles.wordpress.org/jffng/\">Jeff Ong</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/phpbits/\">Jeffrey Carandang</a>, <a href=\"https://profiles.wordpress.org/jeichorn/\">jeichorn</a>, <a href=\"https://profiles.wordpress.org/jenilk/\">Jenil Kanani</a>, <a href=\"https://profiles.wordpress.org/miss_jwo/\">Jenny Wong</a>, <a href=\"https://profiles.wordpress.org/jepperask/\">jepperask</a>, <a href=\"https://profiles.wordpress.org/jeremyclarke/\">Jer Clarke</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jeherve/\">Jeremy Herve</a>, <a href=\"https://profiles.wordpress.org/jeroenrotty/\">Jeroen Rotty</a>, <a href=\"https://profiles.wordpress.org/jeryj/\">Jerry Jones</a>, <a href=\"https://profiles.wordpress.org/luminuu/\">Jessica Lyschik</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnwatkins0/\">John Watkins</a>, <a href=\"https://profiles.wordpress.org/jon81/\">Jon</a>, <a href=\"https://profiles.wordpress.org/itsjonq/\">Jon Quach</a>, <a href=\"https://profiles.wordpress.org/jonsurrell/\">Jon Surrell</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jg-visual/\">Jonathan Goldford</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joonasvanhatapio/\">Joonas Vanhatapio</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/koke/\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>, <a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/jqz/\">jqz</a>, <a href=\"https://profiles.wordpress.org/jsnajdr/\">jsnajdr</a>, <a href=\"https://profiles.wordpress.org/juanfra/\">Juanfra Aldasoro</a>, <a href=\"https://profiles.wordpress.org/derweili/\">Julian Weiland</a>, <a href=\"https://profiles.wordpress.org/juliankimmig/\">julian.kimmig</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>, <a href=\"https://profiles.wordpress.org/nukaga/\">Junko Nukaga</a>, <a href=\"https://profiles.wordpress.org/jurgen/\">jurgen</a>, <a href=\"https://profiles.wordpress.org/justdaiv/\">justdaiv</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kaggdesign/\">kaggdesign</a>, <a href=\"https://profiles.wordpress.org/kalpshit/\">KalpShit Akabari</a>, <a href=\"https://profiles.wordpress.org/leprincenoir/\">Kantari Samy</a>, <a href=\"https://profiles.wordpress.org/kasparsd/\">Kaspars</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kennithnichol/\">Kennith Nichol</a>, <a href=\"https://profiles.wordpress.org/khag7/\">Kevin Hagerty</a>, <a href=\"https://profiles.wordpress.org/kharisblank/\">Kharis Sulistiyono</a>, <a href=\"https://profiles.wordpress.org/khushbu19/\">Khushbu Modi</a>, <a href=\"https://profiles.wordpress.org/killerbishop/\">killerbishop</a>, <a href=\"https://profiles.wordpress.org/kinjaldalwadi/\">kinjaldalwadi</a>, <a href=\"https://profiles.wordpress.org/kitchin/\">kitchin</a>, <a href=\"https://profiles.wordpress.org/ixkaito/\">Kite</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/kkarpieszuk/\">kkarpieszuk</a>, <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/kokkieh/\">KokkieH</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/klopez8/\">Krystyna</a>, <a href=\"https://profiles.wordpress.org/kubiq/\">kubiq</a>, <a href=\"https://profiles.wordpress.org/wpkuf/\">kuflievskiy</a>, <a href=\"https://profiles.wordpress.org/sainthkh/\">Kukhyeon Heo</a>, <a href=\"https://profiles.wordpress.org/kyliesabra/\">kyliesabra</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/leandroalonso/\">leandroalonso</a>, <a href=\"https://profiles.wordpress.org/leogermani/\">leogermani</a>, <a href=\"https://profiles.wordpress.org/lgrev01/\">lgrev01</a>, <a href=\"https://profiles.wordpress.org/linuxologos/\">linuxologos</a>, <a href=\"https://profiles.wordpress.org/lisota/\">lisota</a>, <a href=\"https://profiles.wordpress.org/lorenzof/\">Lorenzo Fracassi</a>, <a href=\"https://profiles.wordpress.org/luisherranz/\">luisherranz</a>, <a href=\"https://profiles.wordpress.org/luisrivera/\">luisrivera</a>, <a href=\"https://profiles.wordpress.org/lukaswaudentio/\">lukaswaudentio</a>, <a href=\"https://profiles.wordpress.org/ljasinskipl/\">Lukasz Jasinski</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/wodarekly/\">Lydia Wodarek</a>, <a href=\"https://profiles.wordpress.org/vinoth06/\">M A Vinoth Kumar</a>, <a href=\"https://profiles.wordpress.org/maciejmackowiak/\">maciejmackowiak</a>, <a href=\"https://profiles.wordpress.org/mahesh901122/\">Mahesh Waghmare</a>, <a href=\"https://profiles.wordpress.org/manzoorwanijk/\">Manzoor Wani</a>, <a href=\"https://profiles.wordpress.org/marcelo2605/\">marcelo2605</a>, <a href=\"https://profiles.wordpress.org/marcio-zebedeu/\">Marcio Zebedeu</a>, <a href=\"https://profiles.wordpress.org/marcoz/\">MarcoZ</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/marekdedic/\">Marek Dědič</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius Jensen</a>, <a href=\"https://profiles.wordpress.org/marius84/\">Marius84</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/mmarzeotti/\">Mark Marzeotti</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/hinjiriyo/\">Martin Stehle</a>, <a href=\"https://profiles.wordpress.org/m-e-h/\">Marty Helmick</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>, <a href=\"https://profiles.wordpress.org/matstars/\">Mat Gargano</a>, <a href=\"https://profiles.wordpress.org/mat-lipe/\">Mat Lipe</a>, <a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/mattkeys/\">Matt Keys</a>, <a href=\"https://profiles.wordpress.org/veraxus/\">Matt van Andel</a>, <a href=\"https://profiles.wordpress.org/mattchowning/\">mattchowning</a>, <a href=\"https://profiles.wordpress.org/snapfractalpop/\">Matthew Kevins</a>, <a href=\"https://profiles.wordpress.org/mattnyeus/\">mattnyeus</a>, <a href=\"https://profiles.wordpress.org/maxme/\">maxme</a>, <a href=\"https://profiles.wordpress.org/mayanksonawat/\">mayanksonawat</a>, <a href=\"https://profiles.wordpress.org/mbrailer/\">mbrailer</a>, <a href=\"https://profiles.wordpress.org/mehidi258/\">Mehidi Hassan</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/mensmaximus/\">mensmaximus</a>, <a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/michaelecklund/\">Michael Ecklund</a>, <a href=\"https://profiles.wordpress.org/donmhico/\">Michael Panaga</a>, <a href=\"https://profiles.wordpress.org/marktimemedia/\">Michelle Schulp</a>, <a href=\"https://profiles.wordpress.org/mickaelperrin/\">mickaelperrin</a>, <a href=\"https://profiles.wordpress.org/miette49/\">miette49</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mmtr86/\">Miguel Torres</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">mihdan</a>, <a href=\"https://profiles.wordpress.org/miinasikk/\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/simison/\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mauteri/\">Mike Auteri</a>, <a href=\"https://profiles.wordpress.org/mikehansenme/\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikeschinkel/\">Mike Schinkel [WPLib Box project lead]</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikejdent/\">mikejdent</a>, <a href=\"https://profiles.wordpress.org/msaari/\">Mikko Saari</a>, <a href=\"https://profiles.wordpress.org/iihglobal/\">Milan Patel</a>, <a href=\"https://profiles.wordpress.org/gdragon/\">Milan Petrovic</a>, <a href=\"https://profiles.wordpress.org/mimitips/\">mimi</a>, <a href=\"https://profiles.wordpress.org/mircoraffinetti/\">mircoraffinetti</a>, <a href=\"https://profiles.wordpress.org/mjnewman/\">mjnewman</a>, <a href=\"https://profiles.wordpress.org/mlbrgl/\">mlbrgl</a>, <a href=\"https://profiles.wordpress.org/morganestes/\">Morgan Estes</a>, <a href=\"https://profiles.wordpress.org/man4toman/\">Morteza Geransayeh</a>, <a href=\"https://profiles.wordpress.org/mppfeiffer/\">mppfeiffer</a>, <a href=\"https://profiles.wordpress.org/mryoga/\">mryoga</a>, <a href=\"https://profiles.wordpress.org/musamamasood/\">Muhammad Usama Masood</a>, <a href=\"https://profiles.wordpress.org/mujuonly/\">mujuonly</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/assassinateur/\">Nadir Seghir</a>, <a href=\"https://profiles.wordpress.org/nagoke/\">nagoke</a>, <a href=\"https://profiles.wordpress.org/nfmohit/\">Nahid Ferdous Mohit</a>, <a href=\"https://profiles.wordpress.org/finchps/\">Nate Finch</a>, <a href=\"https://profiles.wordpress.org/mukto90/\">Nazmul Ahsan</a>, <a href=\"https://profiles.wordpress.org/nekomajin/\">nekomajin</a>, <a href=\"https://profiles.wordpress.org/nextscripts/\">NextScripts</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/nsundberg/\">Nicklas Sundberg</a>, <a href=\"https://profiles.wordpress.org/nickylimjj/\">Nicky Lim</a>, <a href=\"https://profiles.wordpress.org/vadimnicolai/\">nicolad</a>, <a href=\"https://profiles.wordpress.org/rahe/\">Nicolas Juen</a>, <a href=\"https://profiles.wordpress.org/nicole2292/\">nicole2292</a>, <a href=\"https://profiles.wordpress.org/nielslange/\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/nikhilgupte/\">nikhilgupte</a>, <a href=\"https://profiles.wordpress.org/nilamacharya/\">nilamacharya</a>, <a href=\"https://profiles.wordpress.org/noahtallen/\">noahtallen</a>, <a href=\"https://profiles.wordpress.org/noyle/\">noyle</a>, <a href=\"https://profiles.wordpress.org/nsubugak/\">nsubugak</a>, <a href=\"https://profiles.wordpress.org/oakesjosh/\">oakesjosh</a>, <a href=\"https://profiles.wordpress.org/oldenburg/\">oldenburg</a>, <a href=\"https://profiles.wordpress.org/alshakero/\">Omar Alshaker</a>, <a href=\"https://profiles.wordpress.org/ottok/\">Otto Kek&#228;l&#228;inen</a>, <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/iaaxpage/\">page-carbajal</a>, <a href=\"https://profiles.wordpress.org/pagewidth/\">pagewidth</a>, <a href=\"https://profiles.wordpress.org/paragoninitiativeenterprises/\">Paragon Initiative Enterprises</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/rixeo/\">Paul Kevin</a>, <a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/pcarvalho/\">pcarvalho</a>, <a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendon&#231;a</a>, <a href=\"https://profiles.wordpress.org/perrywagle/\">perrywagle</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/philipmjackson/\">Philip Jackson</a>, <a href=\"https://profiles.wordpress.org/pierlo/\">Pierre Gordon</a>, <a href=\"https://profiles.wordpress.org/pierrelannoy/\">Pierre Lannoy</a>, <a href=\"https://profiles.wordpress.org/pikamander2/\">pikamander2</a>, <a href=\"https://profiles.wordpress.org/prashantvatsh/\">Prashant Singh</a>, <a href=\"https://profiles.wordpress.org/pratik-jain/\">Pratik Jain</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/priyankabehera155/\">Priyanka Behera</a>, <a href=\"https://profiles.wordpress.org/raamdev/\">Raam Dev</a>, <a href=\"https://profiles.wordpress.org/bamadesigner/\">Rachel Cherry</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/ragnarokatz/\">ragnarokatz</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/raoulunger/\">raoulunger</a>, <a href=\"https://profiles.wordpress.org/razamalik/\">razamalik</a>, <a href=\"https://profiles.wordpress.org/remcotolsma/\">Remco Tolsma</a>, <a href=\"https://profiles.wordpress.org/rephotsirch/\">rephotsirch</a>, <a href=\"https://profiles.wordpress.org/rheinardkorf/\">rheinardkorf</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/quicoto/\">Ricard Torres</a>, <a href=\"https://profiles.wordpress.org/richtabor/\">Rich Tabor</a>, <a href=\"https://profiles.wordpress.org/rimadoshi/\">rimadoshi</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/rcutmore/\">Rob Cutmore</a>, <a href=\"https://profiles.wordpress.org/rob006/\">rob006</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/rconde/\">Roi Conde</a>, <a href=\"https://profiles.wordpress.org/murgroland/\">Roland Murg</a>, <a href=\"https://profiles.wordpress.org/costasovo/\">Rostislav Woln&#253;</a>, <a href=\"https://profiles.wordpress.org/roytanck/\">Roy Tanck</a>, <a href=\"https://profiles.wordpress.org/kingkool68/\">Russell Heimlich</a>, <a href=\"https://profiles.wordpress.org/rryyaanndd/\">Ryan</a>, <a href=\"https://profiles.wordpress.org/bookdude13/\">Ryan Fredlund</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/looswebstudio/\">Ryo</a>, <a href=\"https://profiles.wordpress.org/sebastienserre/\">S&#233;bastien SERRE</a>, <a href=\"https://profiles.wordpress.org/sablednah/\">sablednah</a>, <a href=\"https://profiles.wordpress.org/viralsampat/\">Sampat Viral</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/samuelfernandez/\">SamuelFernandez</a>, <a href=\"https://profiles.wordpress.org/zanderz/\">Sander</a>, <a href=\"https://profiles.wordpress.org/santilinwp/\">santilinwp</a>, <a href=\"https://profiles.wordpress.org/sathyapulse/\">Sathiyamoorthy V</a>, <a href=\"https://profiles.wordpress.org/tivus/\">Schuhwerk</a>, <a href=\"https://profiles.wordpress.org/coffee2code/\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/scruffian/\">scruffian</a>, <a href=\"https://profiles.wordpress.org/scvleon/\">scvleon</a>, <a href=\"https://profiles.wordpress.org/sebastianpisula/\">Sebastian Pisula</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sgr33n/\">Sergio de Falco</a>, <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>, <a href=\"https://profiles.wordpress.org/sgastard/\">sgastard</a>, <a href=\"https://profiles.wordpress.org/sgoen/\">sgoen</a>, <a href=\"https://profiles.wordpress.org/shahariaazam/\">Shaharia Azam</a>, <a href=\"https://profiles.wordpress.org/cafenoirdesign/\">Shannon Smith</a>, <a href=\"https://profiles.wordpress.org/shariqkhan2012/\">shariqkhan2012</a>, <a href=\"https://profiles.wordpress.org/sncoker/\">Shawntelle Coker</a>, <a href=\"https://profiles.wordpress.org/sheparddw/\">sheparddw</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/shizumi/\">Shizumi Yoshiaki</a>, <a href=\"https://profiles.wordpress.org/simonjanin/\">simonjanin</a>, <a href=\"https://profiles.wordpress.org/sinatrateam/\">sinatrateam</a>, <a href=\"https://profiles.wordpress.org/sirreal/\">sirreal</a>, <a href=\"https://profiles.wordpress.org/skorasaurus/\">skorasaurus</a>, <a href=\"https://profiles.wordpress.org/smerriman/\">smerriman</a>, <a href=\"https://profiles.wordpress.org/socalchristina/\">socalchristina</a>, <a href=\"https://profiles.wordpress.org/soean/\">Soren Wrede</a>, <a href=\"https://profiles.wordpress.org/spenserhale/\">spenserhale</a>, <a href=\"https://profiles.wordpress.org/sproutchris/\">sproutchris</a>, <a href=\"https://profiles.wordpress.org/squarecandy/\">squarecandy</a>, <a href=\"https://profiles.wordpress.org/starvoters1/\">starvoters1</a>, <a href=\"https://profiles.wordpress.org/steelwagstaff/\">SteelWagstaff</a>, <a href=\"https://profiles.wordpress.org/steevithak/\">steevithak</a>, <a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>, <a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>, <a href=\"https://profiles.wordpress.org/steffanhalv/\">steffanhalv</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/dufresnesteven/\">Steve Dufresne</a>, <a href=\"https://profiles.wordpress.org/stevegrunwell/\">Steve Grunwell</a>, <a href=\"https://profiles.wordpress.org/stevenlinx/\">stevenlinx</a>, <a href=\"https://profiles.wordpress.org/stiofansisland/\">Stiofan</a>, <a href=\"https://profiles.wordpress.org/matthias-reuter/\">straightvisions GmbH</a>, <a href=\"https://profiles.wordpress.org/stroona/\">stroona.com</a>, <a href=\"https://profiles.wordpress.org/subratamal/\">Subrata Mal</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/swapnild/\">swapnild</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/sergioestevao/\">Sérgio Estêvão</a>, <a href=\"https://profiles.wordpress.org/miyauchi/\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/takeshifurusato/\">Takeshi Furusato</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tanvirul/\">Tanvirul Haque</a>, <a href=\"https://profiles.wordpress.org/tbschen/\">TBschen</a>, <a href=\"https://profiles.wordpress.org/tdlewis77/\">tdlewis77</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Tellyworth</a>, <a href=\"https://profiles.wordpress.org/thamaraiselvam/\">Thamaraiselvam</a>, <a href=\"https://profiles.wordpress.org/thefarlilacfield/\">thefarlilacfield</a>, <a href=\"https://profiles.wordpress.org/themezee/\">ThemeZee</a>, <a href=\"https://profiles.wordpress.org/timhavinga/\">Tim Havinga</a>, <a href=\"https://profiles.wordpress.org/hedgefield/\">Tim Hengeveld</a>, <a href=\"https://profiles.wordpress.org/timon33/\">timon33</a>, <a href=\"https://profiles.wordpress.org/spaceshipone/\">Timoth&#233;e Brosille</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tkama/\">Tkama</a>, <a href=\"https://profiles.wordpress.org/tmanoilov/\">tmanoilov</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>, <a href=\"https://profiles.wordpress.org/tomgreer/\">Tom Greer</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tommix/\">tommix</a>, <a href=\"https://profiles.wordpress.org/skithund/\">Toni Viemer&#246;</a>, <a href=\"https://profiles.wordpress.org/toro_unit/\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/torres126/\">torres126</a>, <a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/tristangemus/\">tristangemus</a>, <a href=\"https://profiles.wordpress.org/tristanleboss/\">tristanleboss</a>, <a href=\"https://profiles.wordpress.org/tsuyoring/\">tsuyoring</a>, <a href=\"https://profiles.wordpress.org/dinhtungdu/\">Tung Du</a>, <a href=\"https://profiles.wordpress.org/desaiuditd/\">Udit Desai</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/upadalavipul/\">upadalavipul</a>, <a href=\"https://profiles.wordpress.org/utsav72640/\">Utsav tilava</a>, <a href=\"https://profiles.wordpress.org/vaishalipanchal/\">Vaishali Panchal</a>, <a href=\"https://profiles.wordpress.org/valentinbora/\">Valentin Bora</a>, <a href=\"https://profiles.wordpress.org/varunshanbhag/\">Varun Shanbhag</a>, <a href=\"https://profiles.wordpress.org/veminom/\">Veminom</a>, <a href=\"https://profiles.wordpress.org/vinita29/\">Vinita Tandulkar</a>, <a href=\"https://profiles.wordpress.org/virgodesign/\">virgodesign</a>, <a href=\"https://profiles.wordpress.org/vsamoletov/\">Vlad. S.</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, <a href=\"https://profiles.wordpress.org/waleedt93/\">waleedt93</a>, <a href=\"https://profiles.wordpress.org/webmandesign/\">WebMan Design &#124; Oliver Juhas</a>, <a href=\"https://profiles.wordpress.org/websupporter/\">websupporter</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/williampatton/\">William Patton</a>, <a href=\"https://profiles.wordpress.org/wpgurudev/\">wpgurudev</a>, <a href=\"https://profiles.wordpress.org/alexandreb3/\">WPMarmite</a>, <a href=\"https://profiles.wordpress.org/wptoolsdev/\">wptoolsdev</a>, <a href=\"https://profiles.wordpress.org/xedinunknown-1/\">xedinunknown-1</a>, <a href=\"https://profiles.wordpress.org/yale01/\">yale01</a>, <a href=\"https://profiles.wordpress.org/collet/\">Yannicki</a>, <a href=\"https://profiles.wordpress.org/yordansoares/\">Yordan Soares</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/zachflauaus/\">zachflauaus</a>, <a href=\"https://profiles.wordpress.org/tollmanz/\">Zack Tollman</a>, <a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a>, <a href=\"https://profiles.wordpress.org/zaffarn/\">Zee</a>, and <a href=\"https://profiles.wordpress.org/zsusag/\">zsusag</a>.\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p>Many thanks to all of the community volunteers who contribute in the&nbsp;<a href=\"https://wordpress.org/support/\">support forums</a>. They answer questions from people across the world, whether they are using WordPress for the first time or since the first release. These releases are more successful for their efforts!</p>\n\n\n\n<p>Finally, thanks to all the community translators who worked on WordPress 5.4. Their efforts bring WordPress fully translated to&nbsp;46 languages at release time, with more on the way.</p>\n\n\n\n<p>If you want to learn more about volunteering with WordPress, check out&nbsp;<a href=\"https://make.wordpress.org/\">Make WordPress</a>&nbsp;or the&nbsp;<a href=\"https://make.wordpress.org/core/\">core development blog</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8455\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2020/03/wordpress-5-4-rc5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 28 Mar 2020 00:47:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8451\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:379:\"The fifth release candidate for WordPress 5.4 is live! WordPress 5.4 is currently scheduled to land on&#160;March 31 2020, and we need&#160;your&#160;help to get there—if you haven’t tried 5.4 yet, now is the time! You can test the WordPress 5.4 release candidate in two ways: Try the WordPress Beta Tester plugin (choose the “bleeding edge nightlies” option) [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"David Baumwald\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2181:\"\n<p><br>The fifth release candidate for WordPress 5.4 is live!</p>\n\n\n\n<p>WordPress 5.4 is currently scheduled to land on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-4/\">March 31 2020</a></strong>, and we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.4 yet, now is the time!</p>\n\n\n\n<p>You can test the WordPress 5.4 release candidate in two ways:</p>\n\n\n\n<ul><li>Try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (choose the “bleeding edge nightlies” option)</li><li>Or <a href=\"https://wordpress.org/wordpress-5.4-RC5.zip\">download the release candidate here</a> (zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.4, please see the&nbsp;<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.4 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.4. The priority in testing is compatibility. If you find issues, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure them out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a>&nbsp;is also out! It’s your source for details on all the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language besides English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8451\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2020/03/wordpress-5-4-rc4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Mar 2020 22:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8444\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"The fourth release candidate for WordPress 5.4 is live! WordPress 5.4 is currently scheduled to land on&#160;March 31 2020, and we need&#160;your&#160;help to get there—if you haven’t tried 5.4 yet, now is the time! You can test the WordPress 5.4 release candidate in two ways: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge nightlies” option) [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2395:\"\n<p>The fourth release candidate for WordPress 5.4 is live!</p>\n\n\n\n<p>WordPress 5.4 is currently scheduled to land on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-4/\">March 31 2020</a></strong>, and we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.4 yet, now is the time!</p>\n\n\n\n<p>You can test the WordPress 5.4 release candidate in two ways:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.4-RC4.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.4, please see the&nbsp;<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<p>RC4 commits the new <a href=\"https://core.trac.wordpress.org/ticket/49295\">About page</a> and&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/49688\">updates the editor packages</a>.</p>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.4 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.4. The priority in testing is compatibility. If you find issues, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure them out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a>&nbsp;is also out! It&#8217;s your source for details on all the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language besides English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8444\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2020/03/wordpress-5-4-rc3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Mar 2020 21:24:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8432\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"The third release candidate for WordPress 5.4 is now available! WordPress 5.4 is currently scheduled to be released on&#160;March 31 2020, and we need&#160;your&#160;help to get there—if you haven’t tried 5.4 yet, now is the time! There are two ways to test the WordPress 5.4 release candidate: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"David Baumwald\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4104:\"\n<p>The third release candidate for WordPress 5.4 is now available!</p>\n\n\n\n<p>WordPress 5.4 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-4/\">March 31 2020</a></strong>, and we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.4 yet, now is the time!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.4 release candidate:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.4-RC3.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.4, please see the&nbsp;<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<p>RC3 addresses improvements to the new About page and&nbsp;<a href=\"https://core.trac.wordpress.org/query?id=49657%2C49621%2C48164%2C49577%2C47053%2C48303%2C49374%2C49619&amp;milestone=5.4&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">8 fixes</a>&nbsp;for the following bugs and regressions:</p>\n\n\n\n<ul><li><a href=\"https://core.trac.wordpress.org/ticket/49657\"></a><a href=\"https://core.trac.wordpress.org/ticket/49657\">49657</a> &#8211; <a href=\"https://core.trac.wordpress.org/ticket/49657\">Block Editor: Update WordPress Packages WordPress 5.4 RC 3</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/49621\"></a><a href=\"https://core.trac.wordpress.org/ticket/49621\">49621</a> &#8211; <a href=\"https://core.trac.wordpress.org/ticket/49621\">Travis: Download Chromium for E2E Tests Only</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/49164\"></a><a href=\"https://core.trac.wordpress.org/ticket/48164\">48164</a> &#8211; <a href=\"https://core.trac.wordpress.org/ticket/48164\">media_sideload_image Should Store Original URL and Optionally Check for Dupes</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/49577\">49577 &#8211; Site Health Status Dashboard Provides Incorrect Items Count on Initial Load</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/47053\">47053 &#8211; Accessibility: Need to set proper &#8216;tabindex&#8217; in &#8216;Skip To Toolbar&#8217; HTML</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/48303\">48303 &#8211; Docblock Improvements for 5.4</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/49374\">49374 &#8211; Use get_post_states to Denote Special Pages on the Added Menu Item Accordions</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/49619\">49619 &#8211; Use &lt;hr /&gt; Instead of Margin on Freedoms Page</a></li></ul>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.4 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.4. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8432\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2020/03/wordpress-5-4-rc2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Mar 2020 21:40:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8422\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:385:\"The second release candidate for WordPress 5.4 is now available! WordPress 5.4 is currently scheduled to be released on&#160;March 31 2020, and we need&#160;your&#160;help to get there—if you haven’t tried 5.4 yet, now is the time! There are two ways to test the WordPress 5.4 release candidate: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3311:\"\n<p>The second release candidate for WordPress 5.4 is now available!</p>\n\n\n\n<p>WordPress 5.4 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-4/\">March 31 2020</a></strong>, and we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.4 yet, now is the time!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.4 release candidate:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.4-RC2.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.4, please see the&nbsp;<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<p>RC2 addresses improvements to the new About page and <a href=\"https://core.trac.wordpress.org/query?id=49611%2C49318%2C49295%2C49585%2C49568%2C49549&amp;milestone=5.4&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">5 fixes</a> for the following bugs and regressions:</p>\n\n\n\n<ul><li><a href=\"https://core.trac.wordpress.org/ticket/49611\">49611</a> &#8211; Block Editor: Update WordPress Packages WordPress 5.4 RC 2</li><li><a href=\"https://core.trac.wordpress.org/ticket/49318\">49318</a> &#8211; Bundled Themes: Twenty Twenty content font CSS selector is too important</li><li><a href=\"https://core.trac.wordpress.org/ticket/49585\">49585</a> &#8211; REST API: Fix typo in disable-custom-gradients theme feature description</li><li><a href=\"https://core.trac.wordpress.org/ticket/49568\">49568</a> &#8211; Block Editor: Fix visual regression in editor&#8217;s color picker</li><li><a href=\"https://core.trac.wordpress.org/ticket/49549\">49549</a> &#8211; Bundled Themes: Calendar widget CSS fixes on various Bundled themes</li></ul>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.4 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.4. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8422\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:79:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"People of WordPress: Mary Job\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/news/2020/03/people-of-wordpress-mary-job/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wordpress.org/news/2020/03/people-of-wordpress-mary-job/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Mar 2020 16:30:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Interviews\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8406\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:189:\"In the March edition of our \"People of WordPress\" series, you\'ll find out how Mary Job grew from a timid, curious cat into a public speaker and organizer of WordPress Meetups and WordCamps.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9720:\"\n<p><em>You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories.&nbsp;</em></p>\n\n\n\n<h2>How it all began</h2>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/02/At-WordCamp-Kampala-2020.jpeg?resize=632%2C844&#038;ssl=1\" alt=\"Mary Job at WordCamp Kampala 2020\" class=\"wp-image-8410\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/02/At-WordCamp-Kampala-2020.jpeg?resize=767%2C1024&amp;ssl=1 767w, https://i1.wp.com/wordpress.org/news/files/2020/02/At-WordCamp-Kampala-2020.jpeg?resize=225%2C300&amp;ssl=1 225w, https://i1.wp.com/wordpress.org/news/files/2020/02/At-WordCamp-Kampala-2020.jpeg?resize=768%2C1025&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2020/02/At-WordCamp-Kampala-2020.jpeg?w=809&amp;ssl=1 809w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /><figcaption>Mary Job at WordCamp Kampala 2020</figcaption></figure>\n\n\n\n<p>Mary remembers when cybercafés started trending in Nigeria. She had just finished high school and was awaiting her results for admission to university. She spent all of her time (10 hours a day) and all of her pocket money buying bulk time online at cafes. All the way through university that was true, until in 2008 she graduated with a degree in philosophy and bought her own computer and modem.</p>\n\n\n\n<p>She started blogging in 2009. Initially, she tried out Blogger, Hubpages, and WordPress—but found WordPress too complicated.&nbsp;</p>\n\n\n\n<h2>Growing up as a timid but curious cat</h2>\n\n\n\n<p>Mary is one of four kids, and the only girl among her siblings. Throughout her childhood she felt shy, even though others didn’t always see her that way. </p>\n\n\n\n<p>When she first started her personal blog, it was mostly an opportunity for her to speak her mind where she was comfortable. Blogging gave her a medium to express her thoughts and with every new post she became a better writer.</p>\n\n\n\n<h2>Rediscovering WordPress</h2>\n\n\n\n<p>After completing a postgraduate diploma in mass communication, Mary started a Masters degree in Information Management. This required a three month internship. She decided to volunteer in Ghana in 2015 at the headquarters of the Salesians of Don Bosco in West Africa (SDBAFW<strong>)</strong> where her uncle was based.</p>\n\n\n\n<p>While she was there, her uncle asked Mary why she was not blogging on WordPress, which also happened to be the software the organisation used. She explained how difficult and complicated it was so he shared a group of beginner-level tutorial videos with her.</p>\n\n\n\n<p>After two weeks of watching those videos, she started to realize she could have a full-time career doing this. So she immediately joined a number of online training groups so she could learn everything.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>I saw a lot of people earning an income from things I knew and did for the fun of it. I found myself asking why I had not turned my passion into a business.</em></p><cite>Mary Job</cite></blockquote>\n\n\n\n<p>Not long after that, she was contacted by a website editor who was impressed by her blog. With the information available online for WordPress, she was able to learn everything she needed to improve and redesign a site for what turned into her first client.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/my-home-office-in-2016.jpeg?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-8412\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/03/my-home-office-in-2016.jpeg?w=512&amp;ssl=1 512w, https://i1.wp.com/wordpress.org/news/files/2020/03/my-home-office-in-2016.jpeg?resize=300%2C169&amp;ssl=1 300w\" sizes=\"(max-width: 512px) 100vw, 512px\" data-recalc-dims=\"1\" /><figcaption>Mary&#8217;s home office in 2016</figcaption></figure>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>I visited the <a href=\"https://wordpress.org/showcase/\">WordPress.org showcase</a> and was wowed with all the good things I could do with WordPress.</em></p><cite>Mary Job</cite></blockquote>\n\n\n\n<p>In 2016 after a year of deep WordPress learning, she had fallen in love with the CMS and wanted to give back to the <a href=\"https://make.wordpress.org/\">WordPress open source project</a>.&nbsp;</p>\n\n\n\n<p>She volunteered to help the Community team. And when she moved to Lagos later that year, she discovered there was an active WordPress Meetup community. This started her journey toward becoming a WordPress Meetup Co-organizer and a Global Community Team Deputy.</p>\n\n\n\n<p>Today the Nigerian WordPress community continues to grow, as has the <a href=\"https://www.meetup.com/Lagos-WordPress-Meetup-Group\">Lagos WordPress Meetup</a> group. The first Nigerian WordCamp took place in Lagos in 2018 and a <a href=\"https://2020.lagos.wordcamp.org/\">2020 event is being planned</a>. A local WordPress community also developed in Mary’s hometown in Ijebu.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>I have made great friends and met co-organizers in the community who are dedicated to building and sharing their WordPress knowledge with the community like I am.</em></p><cite>Mary Job</cite></blockquote>\n\n\n\n<h2>What did Mary gain from using and contributing to WordPress?</h2>\n\n\n\n<ul><li>She <strong>overcame her stage fright</strong> by getting up in front of an audience at her local Meetup to introduce speakers and to talk about the WordPress community.&nbsp;</li><li>She <strong>attended her first of many African WordCamps </strong>in Cape Town, South Africa. Coincidentally this was also her first time outside West Africa. Before that, she had not been in an aircraft for more than one hour.</li><li>She <strong>earned money</strong> from WordPress web design projects to sustain her during her learning period. Mary continues to use WordPress in her work and says she is still learning every day!</li><li>She got to <strong>jump off</strong> Signal Hill in Cape Town when visiting a WordCamp!&nbsp;</li></ul>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?fit=632%2C422&amp;ssl=1\" alt=\"\" class=\"wp-image-8413\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?w=1683&amp;ssl=1 1683w, https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?resize=300%2C200&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?resize=1024%2C683&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?resize=768%2C512&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?resize=1536%2C1024&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" /><figcaption>Mary moderating a panel at WordCamp Lagos in 2019</figcaption></figure>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>Essentially, the community has taught me to be a better communicator, and a better person. I’ve made friends across the world that have become like a family to me.</em></p><cite>Mary Job</cite></blockquote>\n\n\n\n<p>She now runs a village hub in Ijebu,&nbsp; where she teaches girls digital skills and WordPress as a way of giving back to her town.</p>\n\n\n\n<p>Since she started on this journey, Mary has gotten a fulltime job supporting a WordPress plugin. She’s also become a Community Team Rep and continues to build and foster communities.</p>\n\n\n\n<h2>Mary’s advice to others</h2>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>Always seek to understand the basics of whatever knowledge you seek. Never jump in too fast, wanting to spiral to the top while ignoring the learning curve. You will likely crash down effortlessly if you do so, and would have learned nothing.</em></p><cite>Mary Job</cite></blockquote>\n\n\n\n<h2>Contributors</h2>\n\n\n\n<p>Thanks to Alison Rothwell (<a href=\"https://profiles.wordpress.org/wpfiddlybits/\">@wpfiddlybits</a>), Yvette Sonneveld (<a href=\"https://profiles.wordpress.org/yvettesonneveld/\">@yvettesonneveld</a>), Abha Thakor (<a href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a>), Josepha Haden (<a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a>), Topher DeRosia (<a href=\"https://profiles.wordpress.org/topher1kenobe/\">@topher1kenobe</a>). Thank you to Mary Job (<a href=\"https://profiles.wordpress.org/mariaojob/\">@maryojob</a>) for sharing her #ContributorStory.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/heropress_logo_180.png?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-8409\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p><em>This post is based on </em><a href=\"https://heropress.com/essays/wordpress-gave-perfect-identity/\"><em>an article originally published on HeroPress.com</em></a><em>, a community initiative created by </em><a href=\"https://profiles.wordpress.org/topher1kenobe/\"><em>Topher DeRosia</em></a><em>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>\n\n\n\n<p><em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2020/03/people-of-wordpress-mary-job/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"18\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8406\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"WordPress 5.4 Release Candidate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Mar 2020 21:59:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8399\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"The first release candidate for WordPress 5.4 is now available! This is an important milestone as we progress toward the WordPress 5.4 release date. “Release Candidate” means that the new version is ready for release, but with millions of users and thousands of plugins and themes, it’s possible something was missed. WordPress 5.4 is currently [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"David Baumwald\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2714:\"\n<p>The first release candidate for WordPress 5.4 is now available!</p>\n\n\n\n<p>This is an important milestone as we progress toward the WordPress 5.4 release date. “Release Candidate” means that the new version is ready for release, but with millions of users and thousands of plugins and themes, it’s possible something was missed. WordPress 5.4 is currently scheduled to be released on <strong>March 31, 2020</strong>, but we need <em>your</em> help to get there—if you haven’t tried 5.4 yet, <strong>now is the time</strong>!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.4 release candidate:</p>\n\n\n\n<ul><li>Try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (choose the “bleeding edge nightlies” option)</li><li>Or <a href=\"https://wordpress.org/wordpress-5.4-RC1.zip\">download the release candidate here</a> (zip).</li></ul>\n\n\n\n<h2>What’s in WordPress 5.4?</h2>\n\n\n\n<p>WordPress 5.4 has lots of refinements to polish the developer experience. To keep up, subscribe to the&nbsp;<a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a>&nbsp;and pay special attention to the&nbsp;<a href=\"https://make.wordpress.org/core/tag/5-4+dev-notes/\">developer notes</a>&nbsp;tag for updates on those and other changes that could affect your products.</p>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.4 and update the <em>Tested up to</em> version in the readme file to 5.4. If you find compatibility problems, please be sure to post to the <a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a> so we can figure those out before the final release.</p>\n\n\n\n<p>The WordPress 5.4 Field Guide will be published within the next 24 hours with a more detailed dive into the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a> This release also marks the <a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">hard string freeze</a> point of the 5.4 release schedule.</p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8399\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"The Month in WordPress: February 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2020/03/the-month-in-wordpress-february-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Mar 2020 09:15:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8393\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:337:\"February 2020 was a busy month in the WordPress project! Most notably, there was an outpouring of sentiment in response to the unfortunate cancellation of WordCamp Asia. However, the team continues to work hard in the hopes of making WordCamp Asia 2021 happen. In addition, there were a number of releases and some exciting new [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9167:\"\n<p>February 2020 was a busy month in the WordPress project! Most notably, there was an outpouring of sentiment in response to the unfortunate cancellation of WordCamp Asia. However, the team continues to work hard in the hopes of making WordCamp Asia 2021 happen. In addition, there were a number of releases and some exciting new news during the month of February. Read on for more information!</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordCamp Asia 2020 Cancelled &amp; Pop-up Livestream</h2>\n\n\n\n<p>There was a ton of excitement around WordCamp Asia, not to mention all the effort from organizers, speakers, sponsors and volunteers. Unfortunately, on February 12th, <a href=\"https://wordpress.org/news/2020/02/wordcamp-asia-cancelled-due-to-covid-19/\">WordCamp Asia was cancelled</a> due to concern and uncertainty around COVID-19. Since then, the organizing team has worked to <a href=\"https://2020.asia.wordcamp.org/2020/02/12/cancellation/\">refund tickets and to support hotel and air refunds</a>. In addition, a <a href=\"https://wordpress.org/news/2020/02/pop-up-livestream-on-february-22/\">pop-up livestream</a> featuring some WordCamp Asia speakers and a Fireside Chat and Q&amp;A with Matt Mullenweg took place on February 22nd.</p>\n\n\n\n<p>For a personal take on the cancellation of WordCamp Asia, read <a href=\"https://naoko.blog/2020/02/13/wordcamp-asia-2020-recap/\">this post from Naoko Takano</a>, the global lead organizer. Many thanks to the volunteers who worked hard to deliver WordCamp Asia. They’ve not only handled logistics associated with cancellation but have also announced that they’ve started <a href=\"https://2020.asia.wordcamp.org/2020/02/18/wordcamp-asia-2021/\">working on WordCamp Asia 2021</a> with some January dates in mind! To get the latest on WordCamp Asia, subscribe to updates <a href=\"https://2021.asia.wordcamp.org/\">here</a>.&nbsp;</p>\n\n\n\n<h2>WordPress 5.4 Beta is Now Available</h2>\n\n\n\n<p><a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-1/\">WordPress 5.4 Beta 1</a> was released on February 11 and quickly followed by <a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-2/\">Beta 2</a> on February 18 and <a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-3/\">Beta 3</a> on February 25. These two releases get us closer to our primary goal for 2020: full-site editing with blocks. WordPress 5.4 will merge ten releases of the Gutenberg plugin and is scheduled to be released on March 31, 2020. It will come with many new features, such as two new blocks for social links and buttons, and easier navigation in the block breadcrumbs. There are also a number of accessibility improvements, such as easier multi-block selection and easier tabbing, one of the editor’s biggest accessibility issues. <a href=\"https://make.wordpress.org/core/tag/5-4/\">5.4 will also include</a> many developer-focused changes, such as improved favicon handling and many new hooks and filters.</p>\n\n\n\n<p>Want to get involved in building WordPress? There are a number of ways to help right now! If you speak a language other than English, <a href=\"https://translate.wordpress.org/projects/wp/dev/\">help us translate WordPress</a>. Found a bug? Post it to the<a href=\"https://wordpress.org/support/forum/alphabeta/\"> Alpha/Beta area</a> in the support forums. You can also help us test the current beta by installing <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">the WordPress Beta Tester plugin</a>. Just remember that the software is still in development, so we recommend against running it on a production site.&nbsp;</p>\n\n\n\n<h2>WordCamp Centroamérica is Looking for Speakers and Sponsors!</h2>\n\n\n\n<p><a href=\"https://2020.centroamerica.wordcamp.org/\">WordCamp Centroamérica</a> is the first regional WordCamp for Central America and will be held on September 17-19, 2020, in Managua, Nicaragua. The <a href=\"https://2020.centroamerica.wordcamp.org/2020/01/28/llamado-a-ponentes-call-for-speakers/#more-5\">Call for Speakers</a> and <a href=\"https://2020.centroamerica.wordcamp.org/2020/01/16/call-for-sponsors/\">Call for Sponsors</a> are now open, so if you’re interested in speaking at or sponsoring WordCamp Centroamérica, now is your chance! To learn more about the eent, visit and subscribe to updates on their <a href=\"https://2020.centroamerica.wordcamp.org/\">website</a>, or follow their <a href=\"https://www.facebook.com/WordCampCA\">Facebook</a>, <a href=\"https://twitter.com/WordCampCA\">Twitter</a>, and <a href=\"https://instagram.com/wccentroamerica\">Instagram</a> accounts.&nbsp;&nbsp;</p>\n\n\n\n<p>Want to get involved in the Community team and help make more amazing WordCamps happen? <a href=\"https://make.wordpress.org/community/\">Follow the blog</a> and join the #community-events channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>! You can also find out about other <a href=\"https://central.wordcamp.org/\">upcoming WordCamps here</a>.</p>\n\n\n\n<h2>Contribute to WordPress Core via GitHub</h2>\n\n\n\n<p>An experimental feature has been added to Trac to help improve collaboration between Trac and GitHub. This feature allows contributors to link GitHub pull requests opened against the official <a href=\"https://github.com/wordpress/wordpress-develop\">WordPress Develop Git mirror</a> to tickets, which will make GitHub contributions more visible in the related Trac ticket. To learn all the details and to see how it works, read <a href=\"https://make.wordpress.org/core/2020/02/21/working-on-trac-tickets-using-github-pull-requests/\">this post</a>.</p>\n\n\n\n<h2>Gutenberg Development Continues</h2>\n\n\n\n<p>There are many new exciting additions to Gutenberg! On February 5, <a href=\"https://make.wordpress.org/core/2020/02/05/whats-new-in-gutenberg-5-february/\">Gutenberg 7.4 saw two new features added</a>, including background color support to the Columns block and text color support for the Group block. Many enhancements were made, including a number of improvements to the Navigation Block.</p>\n\n\n\n<p>Gutenberg 7.5 was released on February 12, <a href=\"https://make.wordpress.org/core/2020/02/26/whats-new-in-gutenberg-26-february/\">with 7.6 following</a> on February 27. They introduced even more features, including the Social Links block as a stable block and a number of additional blocks for full-site editing, not to mention the many enhancements, new APIs, bug fixes, documentation, and updates.</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>Aside from WordCamp Asia, two other WordCamps have been postponed due to COVID-19: <a href=\"https://2020-soltau.retreat.wordcamp.org/2020/02/29/verschiebung-des-wordcamp-retreat-postponing-of-wordcamp-retreat/\">WordCamp Retreat Soltau</a> and <a href=\"https://2020.geneve.wordcamp.org/wordcamp-geneve-reporte/\">WordCamp Genève</a>. News about further postponements or cancellations will be posted on <a href=\"https://central.wordcamp.org/news/\">the WordCamp Central blog</a>.</li><li>Automatic updates for themes and plugins <a href=\"https://make.wordpress.org/core/2020/02/26/feature-plugin-wp-auto-updates/\">are being planned</a> for inclusion in WordPress 5.5.</li><li>Version 2.2.1 of the WordPress Coding Standards has been released.</li><li>The Community Team <a href=\"https://make.wordpress.org/community/2020/02/06/community-team-reps-for-2020-2/\">has selected new team representatives</a> for 2020.</li><li>The Core team <a href=\"https://make.wordpress.org/core/2020/02/09/what-does-it-mean-to-be-a-component-maintainer-a-refresher/\">published a useful refresher</a> on what it means to be a component maintainer, along with some tips and best practices.</li><li><a href=\"https://make.wordpress.org/support/2020/02/changes-to-the-support-guidelines-for-linking-to-off-site-resources/\">The Support Team has announced</a> some amendments to their guidelines for linking to external resources when using the support forums.</li><li>The WordPress Foundation <a href=\"https://wordpressfoundation.org/2020/wordpress-foundation-donates-to-black-girls-code-and-internet-archive/\">has published financial information</a> regarding their charitable donations from 2019.</li><li>The Core XML Sitemaps project kicked off with <a href=\"https://make.wordpress.org/core/2020/02/24/xml-sitemaps-meeting-february-25th-2020/\">their first meeting</a> this month.</li><li>The Gutenberg team have created <a href=\"https://make.wordpress.org/core/2020/02/28/new-wordpress-create-block-package-for-block-scaffolding/\">a new @wordpress/create-block package</a> for scaffolding new blocks.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8393\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 16 Apr 2020 09:32:19 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 08 Apr 2020 00:57:03 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130910210210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1435, '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1587072745', 'no'),
(1436, '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1587029545', 'no'),
(1437, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1587072755', 'no'),
(1438, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2020/04/people-of-wordpress-mario-peshev/\'>People of WordPress: Mario Peshev</a></li></ul></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 114369 bytes received</p></div>', 'no'),
(1440, '_transient_timeout_plugin_slugs', '1587119572', 'no'),
(1441, '_transient_plugin_slugs', 'a:14:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:26:\"custom-form/CustomForm.php\";i:3;s:45:\"easy-custom-sidebars/easy-custom-sidebars.php\";i:4;s:9:\"hello.php\";i:5;s:21:\"pemilik-list/init.php\";i:6;s:37:\"recent-posts-widget-extended/rpwe.php\";i:7;s:23:\"report-seminar/init.php\";i:8;s:45:\"restrict-user-access/restrict-user-access.php\";i:9;s:29:\"seminar-list/seminar-list.php\";i:10;s:20:\"report-user/init.php\";i:11;s:34:\"report-verifikasi-seminar/init.php\";i:12;s:53:\"wp-custom-register-login/wp-custom-register-login.php\";i:13;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'no');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(74, 25, '_edit_lock', '1569608258:1'),
(75, 27, '_edit_lock', '1575561245:1'),
(76, 29, '_edit_lock', '1576176126:1'),
(78, 33, '_menu_item_type', 'post_type'),
(79, 33, '_menu_item_menu_item_parent', '0'),
(80, 33, '_menu_item_object_id', '25'),
(81, 33, '_menu_item_object', 'page'),
(82, 33, '_menu_item_target', ''),
(83, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 33, '_menu_item_xfn', ''),
(85, 33, '_menu_item_url', ''),
(86, 34, '_menu_item_type', 'post_type'),
(87, 34, '_menu_item_menu_item_parent', '0'),
(88, 34, '_menu_item_object_id', '29'),
(89, 34, '_menu_item_object', 'page'),
(90, 34, '_menu_item_target', ''),
(91, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 34, '_menu_item_xfn', ''),
(93, 34, '_menu_item_url', ''),
(94, 35, '_menu_item_type', 'post_type'),
(95, 35, '_menu_item_menu_item_parent', '0'),
(96, 35, '_menu_item_object_id', '27'),
(97, 35, '_menu_item_object', 'page'),
(98, 35, '_menu_item_target', ''),
(99, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 35, '_menu_item_xfn', ''),
(101, 35, '_menu_item_url', ''),
(107, 37, '_wp_attached_file', '2019/09/Presentasi-Kelompok-6-AUDIT-Terlambat.pptx'),
(110, 39, '_wp_attached_file', '2019/09/cropped-download.jpg'),
(111, 39, '_wp_attachment_context', 'custom-header'),
(112, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1078;s:4:\"file\";s:28:\"2019/09/cropped-download.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-download-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-download-768x431.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-download-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:28:\"cropped-download-200x112.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-large\";a:4:{s:4:\"file\";s:28:\"cropped-download-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-blog-image\";a:4:{s:4:\"file\";s:28:\"cropped-download-690x387.jpg\";s:5:\"width\";i:690;s:6:\"height\";i:387;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:38;}'),
(113, 39, '_wp_attachment_custom_header_last_used_talon', '1569608660'),
(114, 39, '_wp_attachment_is_custom_header', 'talon'),
(119, 41, '_wp_attached_file', '2019/09/janEE_16x9.jpg'),
(120, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:253;s:4:\"file\";s:22:\"2019/09/janEE_16x9.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"janEE_16x9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"janEE_16x9-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:22:\"janEE_16x9-200x112.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-large\";a:4:{s:4:\"file\";s:22:\"janEE_16x9-280x253.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:18:\"Jennifer McCormick\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 42, '_wp_attached_file', '2019/09/cropped-janEE_16x9.jpg'),
(122, 42, '_wp_attachment_context', 'custom-header'),
(123, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1079;s:4:\"file\";s:30:\"2019/09/cropped-janEE_16x9.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-janEE_16x9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-janEE_16x9-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-janEE_16x9-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"cropped-janEE_16x9-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:30:\"cropped-janEE_16x9-200x112.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-large\";a:4:{s:4:\"file\";s:30:\"cropped-janEE_16x9-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-blog-image\";a:4:{s:4:\"file\";s:30:\"cropped-janEE_16x9-690x388.jpg\";s:5:\"width\";i:690;s:6:\"height\";i:388;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:41;}'),
(124, 42, '_wp_attachment_custom_header_last_used_talon', '1569608789'),
(125, 42, '_wp_attachment_is_custom_header', 'talon'),
(142, 50, 'sidebar_id', 'custom-sidebar-90'),
(143, 50, 'sidebar_replacement_id', '0'),
(144, 50, 'sidebar_description', ''),
(145, 50, 'sidebar_attachments', 'a:0:{}'),
(148, 52, '_edit_lock', '1570373163:1'),
(149, 53, '_menu_item_type', 'post_type'),
(150, 53, '_menu_item_menu_item_parent', '0'),
(151, 53, '_menu_item_object_id', '52'),
(152, 53, '_menu_item_object', 'page'),
(153, 53, '_menu_item_target', ''),
(154, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 53, '_menu_item_xfn', ''),
(156, 53, '_menu_item_url', ''),
(161, 1, '_edit_lock', '1586530286:1'),
(162, 57, '_wp_attached_file', '2019/09/oracle.jpg'),
(163, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:860;s:4:\"file\";s:18:\"2019/09/oracle.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"oracle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"oracle-300x287.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:287;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"oracle-768x734.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:734;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:18:\"oracle-200x191.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-large\";a:4:{s:4:\"file\";s:18:\"oracle-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-blog-image\";a:4:{s:4:\"file\";s:18:\"oracle-690x659.jpg\";s:5:\"width\";i:690;s:6:\"height\";i:659;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:16:\"oracle-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 1, '_thumbnail_id', '82'),
(166, 61, '_edit_lock', '1586444362:1'),
(167, 63, '_wp_attached_file', '2019/10/oracle2.jpg'),
(168, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:19:\"2019/10/oracle2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"oracle2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:19:\"oracle2-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:17:\"oracle2-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(175, 61, '_thumbnail_id', '63'),
(176, 66, '_edit_lock', '1586449147:1'),
(177, 66, '_edit_last', '1'),
(179, 1, '_edit_last', '1'),
(181, 1, 'tempat', 'Univ Mercubuana'),
(182, 1, '_tempat', 'field_5dd94df5703f6'),
(183, 68, 'tempat', 'Univ Mercubuana'),
(184, 68, '_tempat', 'field_5dd94df5703f6'),
(186, 61, '_edit_last', '1'),
(188, 61, 'tempat', 'Univ Mercu Buana'),
(189, 61, '_tempat', 'field_5dd94df5703f6'),
(190, 69, 'tempat', 'Univ Mercu Buana'),
(191, 69, '_tempat', 'field_5dd94df5703f6'),
(194, 1, 'date', '20200430'),
(195, 1, '_date', 'field_5dd9624ae2349'),
(196, 1, 'waktu_mulai', '13:00:00'),
(197, 1, '_waktu_mulai', 'field_5dd96280b6cfd'),
(198, 73, 'tempat', 'Univ Mercubuana'),
(199, 73, '_tempat', 'field_5dd94df5703f6'),
(200, 73, 'date', '20191220'),
(201, 73, '_date', 'field_5dd9624ae2349'),
(202, 73, 'waktu_mulai', '13:00:00'),
(203, 73, '_waktu_mulai', 'field_5dd96280b6cfd'),
(206, 1, 'waktu_selesai', '17:00:00'),
(207, 1, '_waktu_selesai', 'field_5dd963c5c48e2'),
(208, 75, 'tempat', 'Univ Mercubuana'),
(209, 75, '_tempat', 'field_5dd94df5703f6'),
(210, 75, 'date', '20191220'),
(211, 75, '_date', 'field_5dd9624ae2349'),
(212, 75, 'waktu_mulai', '13:00:00'),
(213, 75, '_waktu_mulai', 'field_5dd96280b6cfd'),
(214, 75, 'waktu_selesai', '17:00:00'),
(215, 75, '_waktu_selesai', 'field_5dd963c5c48e2'),
(218, 61, 'date', '20200430'),
(219, 61, '_date', 'field_5dd9624ae2349'),
(220, 61, 'waktu_mulai', '09:00:00'),
(221, 61, '_waktu_mulai', 'field_5dd96280b6cfd'),
(222, 61, 'waktu_selesai', '12:00:00'),
(223, 61, '_waktu_selesai', 'field_5dd963c5c48e2'),
(224, 76, 'tempat', 'Univ Mercu Buana'),
(225, 76, '_tempat', 'field_5dd94df5703f6'),
(226, 76, 'date', '20191120'),
(227, 76, '_date', 'field_5dd9624ae2349'),
(228, 76, 'waktu_mulai', '09:00:00'),
(229, 76, '_waktu_mulai', 'field_5dd96280b6cfd'),
(230, 76, 'waktu_selesai', '12:00:00'),
(231, 76, '_waktu_selesai', 'field_5dd963c5c48e2'),
(234, 77, 'tempat', 'Univ Mercu Buana'),
(235, 77, '_tempat', 'field_5dd94df5703f6'),
(236, 77, 'date', '20191120'),
(237, 77, '_date', 'field_5dd9624ae2349'),
(238, 77, 'waktu_mulai', '09:00:00'),
(239, 77, '_waktu_mulai', 'field_5dd96280b6cfd'),
(240, 77, 'waktu_selesai', '12:00:00'),
(241, 77, '_waktu_selesai', 'field_5dd963c5c48e2'),
(244, 78, 'tempat', 'Univ Mercu Buana'),
(245, 78, '_tempat', 'field_5dd94df5703f6'),
(246, 78, 'date', '20191220'),
(247, 78, '_date', 'field_5dd9624ae2349'),
(248, 78, 'waktu_mulai', '09:00:00'),
(249, 78, '_waktu_mulai', 'field_5dd96280b6cfd'),
(250, 78, 'waktu_selesai', '12:00:00'),
(251, 78, '_waktu_selesai', 'field_5dd963c5c48e2'),
(253, 81, '_wp_attached_file', '2019/09/download.jpg'),
(254, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:20:\"2019/09/download.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:18:\"download-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(265, 82, '_wp_attached_file', '2019/09/download-1.jpg'),
(266, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:218;s:6:\"height\";i:231;s:4:\"file\";s:22:\"2019/09/download-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:22:\"download-1-200x212.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:20:\"download-1-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(271, 84, 'tempat', 'Univ Mercubuana'),
(272, 84, '_tempat', 'field_5dd94df5703f6'),
(273, 84, 'date', '20191220'),
(274, 84, '_date', 'field_5dd9624ae2349'),
(275, 84, 'waktu_mulai', '13:00:00'),
(276, 84, '_waktu_mulai', 'field_5dd96280b6cfd'),
(277, 84, 'waktu_selesai', '17:00:00'),
(278, 84, '_waktu_selesai', 'field_5dd963c5c48e2'),
(281, 85, 'tempat', 'Univ Mercubuana'),
(282, 85, '_tempat', 'field_5dd94df5703f6'),
(283, 85, 'date', '20191220'),
(284, 85, '_date', 'field_5dd9624ae2349'),
(285, 85, 'waktu_mulai', '13:00:00'),
(286, 85, '_waktu_mulai', 'field_5dd96280b6cfd'),
(287, 85, 'waktu_selesai', '17:00:00'),
(288, 85, '_waktu_selesai', 'field_5dd963c5c48e2'),
(289, 2, '_edit_lock', '1575476536:1'),
(299, 94, '_wp_attached_file', '2019/12/logo-esinar.jpg'),
(300, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:496;s:6:\"height\";i:253;s:4:\"file\";s:23:\"2019/12/logo-esinar.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-esinar-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"logo-esinar-300x153.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:23:\"logo-esinar-200x102.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-large\";a:4:{s:4:\"file\";s:23:\"logo-esinar-280x253.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-esinar-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(301, 95, '_wp_attached_file', '2019/12/cropped-logo-esinar.jpg'),
(302, 95, '_wp_attachment_context', 'custom-logo'),
(303, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:87;s:4:\"file\";s:31:\"2019/12/cropped-logo-esinar.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-logo-esinar-150x87.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:30:\"cropped-logo-esinar-200x87.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-logo-esinar-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 98, 'tempat', 'Univ Mercu Buana'),
(311, 98, '_tempat', 'field_5dd94df5703f6'),
(312, 98, 'date', '20191220'),
(313, 98, '_date', 'field_5dd9624ae2349'),
(314, 98, 'waktu_mulai', '09:00:00'),
(315, 98, '_waktu_mulai', 'field_5dd96280b6cfd'),
(316, 98, 'waktu_selesai', '12:00:00'),
(317, 98, '_waktu_selesai', 'field_5dd963c5c48e2'),
(319, 1, '_wp_old_slug', 'hello-world'),
(321, 99, 'tempat', 'Univ Mercubuana'),
(322, 99, '_tempat', 'field_5dd94df5703f6'),
(323, 99, 'date', '20191220'),
(324, 99, '_date', 'field_5dd9624ae2349'),
(325, 99, 'waktu_mulai', '13:00:00'),
(326, 99, '_waktu_mulai', 'field_5dd96280b6cfd'),
(327, 99, 'waktu_selesai', '17:00:00'),
(328, 99, '_waktu_selesai', 'field_5dd963c5c48e2'),
(330, 61, '_wp_old_slug', 'post-ke-2'),
(332, 100, '_edit_lock', '1575991628:1'),
(341, 108, '_edit_lock', '1576005778:1'),
(364, 121, '_edit_lock', '1576179781:1'),
(373, 121, '_edit_last', '1'),
(374, 121, 'nama', 'tes'),
(375, 121, '_nama', 'field_5defbdbef471a'),
(376, 124, 'nama', 'tes'),
(377, 124, '_nama', 'field_5defbdbef471a'),
(387, 125, '_edit_lock', '1576171399:1'),
(399, 130, '_edit_lock', '1576071698:1'),
(400, 130, '_edit_last', '1'),
(402, 133, '_wp_attached_file', '2019/12/logo-esinar.png'),
(403, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:496;s:6:\"height\";i:253;s:4:\"file\";s:23:\"2019/12/logo-esinar.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-esinar-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"logo-esinar-300x153.png\";s:5:\"width\";i:300;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:23:\"logo-esinar-200x102.png\";s:5:\"width\";i:200;s:6:\"height\";i:102;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"talon-home-large\";a:4:{s:4:\"file\";s:23:\"logo-esinar-280x253.png\";s:5:\"width\";i:280;s:6:\"height\";i:253;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-esinar-45x45.png\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(404, 134, '_wp_attached_file', '2019/12/cropped-logo-esinar.png'),
(405, 134, '_wp_attachment_context', 'custom-logo'),
(406, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:80;s:4:\"file\";s:31:\"2019/12/cropped-logo-esinar.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-logo-esinar-150x80.png\";s:5:\"width\";i:150;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:30:\"cropped-logo-esinar-200x80.png\";s:5:\"width\";i:200;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-logo-esinar-45x45.png\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(410, 137, '_edit_lock', '1576083778:1'),
(411, 139, '_edit_lock', '1576161066:1'),
(420, 139, '_edit_last', '1'),
(421, 139, 'nama', ''),
(422, 139, '_nama', 'field_5df0f13ad9583'),
(423, 141, 'nama', ''),
(424, 141, '_nama', 'field_5df0f13ad9583'),
(425, 142, 'nama', ''),
(426, 142, '_nama', 'field_5df0f13ad9583'),
(429, 125, '_edit_last', '1'),
(430, 125, 'nama', ''),
(431, 125, '_nama', 'field_5df0f13ad9583'),
(432, 144, 'nama', ''),
(433, 144, '_nama', 'field_5df0f13ad9583'),
(434, 145, '_edit_lock', '1576164701:1'),
(443, 145, '_edit_last', '1'),
(444, 145, 'nama', ''),
(445, 145, '_nama', 'field_5df0f13ad9583'),
(446, 147, 'nama', ''),
(447, 147, '_nama', 'field_5df0f13ad9583'),
(448, 148, 'nama', ''),
(449, 148, '_nama', 'field_5df0f13ad9583'),
(453, 151, '_edit_lock', '1576170408:1'),
(462, 151, '_edit_last', '1'),
(463, 151, 'nama', ''),
(464, 151, '_nama', 'field_5df0f13ad9583'),
(465, 153, 'nama', ''),
(466, 153, '_nama', 'field_5df0f13ad9583'),
(467, 154, 'nama', ''),
(468, 154, '_nama', 'field_5df0f13ad9583'),
(471, 156, '_edit_lock', '1576172123:1'),
(480, 156, '_edit_last', '1'),
(481, 156, 'nama', ''),
(482, 156, '_nama', 'field_5df0f13ad9583'),
(483, 158, 'nama', ''),
(484, 158, '_nama', 'field_5df0f13ad9583'),
(488, 29, '_edit_last', '1'),
(489, 29, 'nama', ''),
(490, 29, '_nama', 'field_5df0f13ad9583'),
(491, 161, 'nama', ''),
(492, 161, '_nama', 'field_5df0f13ad9583'),
(494, 163, '_ca_post_type', '125'),
(495, 163, '_ca_post_type', '121'),
(497, 163, '_ca_post_type', '156'),
(498, 163, '_ca_post_type', '100'),
(499, 163, '_ca_post_type', '145'),
(500, 163, '_ca_post_type', '151'),
(501, 163, '_ca_post_type', '139'),
(502, 162, '_edit_last', '1'),
(503, 162, '_ca_role', '-1'),
(504, 162, '_ca_handle', '0'),
(505, 162, '_ca_page', '164'),
(506, 162, '_ca_duration', 'a:2:{s:5:\"count\";s:1:\"0\";s:4:\"unit\";s:3:\"day\";}'),
(507, 162, '_edit_lock', '1584811975:1'),
(508, 164, '_edit_lock', '1576178080:1'),
(517, 164, '_edit_last', '1'),
(518, 164, 'nama', ''),
(519, 164, '_nama', 'field_5df0f13ad9583'),
(520, 166, 'nama', ''),
(521, 166, '_nama', 'field_5df0f13ad9583'),
(524, 168, '_edit_lock', '1584800094:1'),
(525, 169, '_wp_attached_file', '2019/12/seminar-nasional-fintech.jpeg'),
(526, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:295;s:6:\"height\";i:600;s:4:\"file\";s:37:\"2019/12/seminar-nasional-fintech.jpeg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"seminar-nasional-fintech-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"seminar-nasional-fintech-148x300.jpeg\";s:5:\"width\";i:148;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:37:\"seminar-nasional-fintech-200x407.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:407;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-large\";a:4:{s:4:\"file\";s:37:\"seminar-nasional-fintech-280x280.jpeg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:35:\"seminar-nasional-fintech-45x45.jpeg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(528, 168, '_thumbnail_id', '169'),
(529, 168, '_edit_last', '1'),
(531, 168, 'tempat', 'Jl. Medan merdeka selatan no.11, Jakarta Pusat'),
(532, 168, '_tempat', 'field_5dd94df5703f6'),
(533, 168, 'date', '20191203'),
(534, 168, '_date', 'field_5dd9624ae2349'),
(535, 168, 'waktu_mulai', '09:00:00'),
(536, 168, '_waktu_mulai', 'field_5dd96280b6cfd'),
(537, 168, 'waktu_selesai', '16:00:00'),
(538, 168, '_waktu_selesai', 'field_5dd963c5c48e2'),
(539, 171, 'tempat', 'Jl. Medan merdeka selatan no.11, Jakarta Pusat'),
(540, 171, '_tempat', 'field_5dd94df5703f6'),
(541, 171, 'date', '20191203'),
(542, 171, '_date', 'field_5dd9624ae2349'),
(543, 171, 'waktu_mulai', '09:00:00'),
(544, 171, '_waktu_mulai', 'field_5dd96280b6cfd'),
(545, 171, 'waktu_selesai', '16:00:00'),
(546, 171, '_waktu_selesai', 'field_5dd963c5c48e2'),
(547, 172, '_edit_lock', '1576204723:1'),
(548, 176, '_edit_lock', '1584459297:49'),
(550, 176, '_edit_last', '49'),
(552, 176, 'nama', ''),
(553, 176, '_nama', 'field_5df0f13ad9583'),
(554, 177, 'nama', ''),
(555, 177, '_nama', 'field_5df0f13ad9583'),
(558, 168, 'harga', '50000'),
(559, 168, '_harga', 'field_5e7620ec73bc0'),
(560, 180, 'tempat', 'Jl. Medan merdeka selatan no.11, Jakarta Pusat'),
(561, 180, '_tempat', 'field_5dd94df5703f6'),
(562, 180, 'date', '20191203'),
(563, 180, '_date', 'field_5dd9624ae2349'),
(564, 180, 'waktu_mulai', '09:00:00'),
(565, 180, '_waktu_mulai', 'field_5dd96280b6cfd'),
(566, 180, 'waktu_selesai', '16:00:00'),
(567, 180, '_waktu_selesai', 'field_5dd963c5c48e2'),
(568, 180, 'harga', '50000'),
(569, 180, '_harga', 'field_5e7620ec73bc0'),
(572, 61, 'harga', '50000'),
(573, 61, '_harga', 'field_5e7620ec73bc0'),
(574, 181, 'tempat', 'Univ Mercu Buana'),
(575, 181, '_tempat', 'field_5dd94df5703f6'),
(576, 181, 'date', '20191220'),
(577, 181, '_date', 'field_5dd9624ae2349'),
(578, 181, 'waktu_mulai', '09:00:00'),
(579, 181, '_waktu_mulai', 'field_5dd96280b6cfd'),
(580, 181, 'waktu_selesai', '12:00:00'),
(581, 181, '_waktu_selesai', 'field_5dd963c5c48e2'),
(582, 181, 'harga', '50000'),
(583, 181, '_harga', 'field_5e7620ec73bc0'),
(586, 1, 'harga', '50000'),
(587, 1, '_harga', 'field_5e7620ec73bc0'),
(588, 182, 'tempat', 'Univ Mercubuana'),
(589, 182, '_tempat', 'field_5dd94df5703f6'),
(590, 182, 'date', '20191220'),
(591, 182, '_date', 'field_5dd9624ae2349'),
(592, 182, 'waktu_mulai', '13:00:00'),
(593, 182, '_waktu_mulai', 'field_5dd96280b6cfd'),
(594, 182, 'waktu_selesai', '17:00:00'),
(595, 182, '_waktu_selesai', 'field_5dd963c5c48e2'),
(596, 182, 'harga', '50000'),
(597, 182, '_harga', 'field_5e7620ec73bc0'),
(598, 163, '_ca_post_type', '108'),
(601, 183, 'tempat', 'Univ Mercu Buana'),
(602, 183, '_tempat', 'field_5dd94df5703f6'),
(603, 183, 'date', '20190328'),
(604, 183, '_date', 'field_5dd9624ae2349'),
(605, 183, 'waktu_mulai', '09:00:00'),
(606, 183, '_waktu_mulai', 'field_5dd96280b6cfd'),
(607, 183, 'waktu_selesai', '12:00:00'),
(608, 183, '_waktu_selesai', 'field_5dd963c5c48e2'),
(609, 183, 'harga', '50000'),
(610, 183, '_harga', 'field_5e7620ec73bc0'),
(613, 184, 'tempat', 'Univ Mercu Buana'),
(614, 184, '_tempat', 'field_5dd94df5703f6'),
(615, 184, 'date', '20200328'),
(616, 184, '_date', 'field_5dd9624ae2349'),
(617, 184, 'waktu_mulai', '09:00:00'),
(618, 184, '_waktu_mulai', 'field_5dd96280b6cfd'),
(619, 184, 'waktu_selesai', '12:00:00'),
(620, 184, '_waktu_selesai', 'field_5dd963c5c48e2'),
(621, 184, 'harga', '50000'),
(622, 184, '_harga', 'field_5e7620ec73bc0'),
(625, 186, 'tempat', 'Univ Mercu Buana'),
(626, 186, '_tempat', 'field_5dd94df5703f6'),
(627, 186, 'date', '20200408'),
(628, 186, '_date', 'field_5dd9624ae2349'),
(629, 186, 'waktu_mulai', '09:00:00'),
(630, 186, '_waktu_mulai', 'field_5dd96280b6cfd'),
(631, 186, 'waktu_selesai', '12:00:00'),
(632, 186, '_waktu_selesai', 'field_5dd963c5c48e2'),
(633, 186, 'harga', '50000'),
(634, 186, '_harga', 'field_5e7620ec73bc0'),
(637, 188, 'tempat', 'Univ Mercu Buana'),
(638, 188, '_tempat', 'field_5dd94df5703f6'),
(639, 188, 'date', '20200430'),
(640, 188, '_date', 'field_5dd9624ae2349'),
(641, 188, 'waktu_mulai', '09:00:00'),
(642, 188, '_waktu_mulai', 'field_5dd96280b6cfd'),
(643, 188, 'waktu_selesai', '12:00:00'),
(644, 188, '_waktu_selesai', 'field_5dd963c5c48e2'),
(645, 188, 'harga', '50000'),
(646, 188, '_harga', 'field_5e7620ec73bc0'),
(649, 189, 'tempat', 'Univ Mercubuana'),
(650, 189, '_tempat', 'field_5dd94df5703f6'),
(651, 189, 'date', '20200430'),
(652, 189, '_date', 'field_5dd9624ae2349'),
(653, 189, 'waktu_mulai', '13:00:00'),
(654, 189, '_waktu_mulai', 'field_5dd96280b6cfd'),
(655, 189, 'waktu_selesai', '17:00:00'),
(656, 189, '_waktu_selesai', 'field_5dd963c5c48e2'),
(657, 189, 'harga', '50000'),
(658, 189, '_harga', 'field_5e7620ec73bc0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-09-27 17:59:18', '2019-09-27 17:59:18', '<!-- wp:paragraph -->\n<p>HIMPUNAN MAHASISWA SISTEM INFORMASI UNIVERSITAS GUNADARMA&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🎉🎉proudly present🎉🎉&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>SEMINAR NASIONAL FINTECH</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💡\"Embracing Cashless Society\"💡</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Keynote Speakers:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>‍🗣 Muhammad Yoza Pratama (Digital Marketing &amp; Social Media Expert)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒fintech secara umum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗣 Fahmi Pangestu S.Kom (Departemen Komunikasi Bank Indonesia)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒cashless</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Save the date :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📆 Thursday, December 3th 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⏰ 09.00 WIB - end</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🏡 Perpustakaan Nasional RI lt.4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jl. Medan merdeka selatan no.11, Jakarta Pusat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲Harga tiket presale :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 50.000&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(Lewat dari tanggal 2 Desember 2019 mendapatkan e-sertifkat)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲OTS :&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 70.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>❗Info lebih lengkap hubungi CP terkait</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⚪INCLUDE⚪</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Knowledge</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Souvenir</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Snack</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Doorprize</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Certificate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Yuk segera daftarkan diri kamu dan dapatkan banyak ilmu!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⁉️Information details :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*intan : 085770769622 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : intaanftr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*wynona : 081284351392 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : 27wynona</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*nevarda : 085711912771 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Information and Update :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram : @himsi.ug</p>\n<!-- /wp:paragraph -->', 'Seminar-2', '', 'publish', 'open', 'open', '', 'seminar-2', '', '', '2020-04-10 14:29:10', '2020-04-10 14:29:10', '', 0, 'http://localhost/e_sinar/?p=1', 0, 'post', '', 1),
(2, 1, '2019-09-27 17:59:18', '2019-09-27 17:59:18', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/e_sinar/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-09-27 17:59:18', '2019-09-27 17:59:18', '', 0, 'http://localhost/e_sinar/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-27 17:59:18', '2019-09-27 17:59:18', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/e_sinar.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-09-27 17:59:18', '2019-09-27 17:59:18', '', 0, 'http://localhost/e_sinar/?page_id=3', 0, 'page', '', 0),
(25, 1, '2019-09-27 18:19:54', '2019-09-27 18:19:54', '', 'Seminar', '', 'publish', 'closed', 'closed', '', 'seminar', '', '', '2019-09-27 18:19:54', '2019-09-27 18:19:54', '', 0, 'http://localhost/e_sinar/?page_id=25', 0, 'page', '', 0),
(26, 1, '2019-09-27 18:19:54', '2019-09-27 18:19:54', '', 'Seminar', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-09-27 18:19:54', '2019-09-27 18:19:54', '', 25, 'http://localhost/e_sinar/2019/09/27/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-09-27 18:20:18', '2019-09-27 18:20:18', '<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-12-05 15:56:27', '2019-12-05 15:56:27', '', 0, 'http://localhost/e_sinar/?page_id=27', 0, 'page', '', 0),
(28, 1, '2019-09-27 18:20:18', '2019-09-27 18:20:18', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-09-27 18:20:18', '2019-09-27 18:20:18', '', 27, 'http://localhost/e_sinar/2019/09/27/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-09-27 18:20:30', '2019-09-27 18:20:30', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2019-12-12 18:31:29', '2019-12-12 18:31:29', '', 0, 'http://localhost/e_sinar/?page_id=29', 0, 'page', '', 0),
(30, 1, '2019-09-27 18:20:30', '2019-09-27 18:20:30', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-09-27 18:20:30', '2019-09-27 18:20:30', '', 29, 'http://localhost/e_sinar/2019/09/27/29-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-09-27 18:21:32', '2019-09-27 18:21:32', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-09-27 18:21:32', '2019-09-27 18:21:32', '', 0, 'http://localhost/e_sinar/2019/09/27/33/', 2, 'nav_menu_item', '', 0),
(34, 1, '2019-09-27 18:21:33', '2019-09-27 18:21:33', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-09-27 18:21:33', '2019-09-27 18:21:33', '', 0, 'http://localhost/e_sinar/2019/09/27/34/', 3, 'nav_menu_item', '', 0),
(35, 1, '2019-09-27 18:21:34', '2019-09-27 18:21:34', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-09-27 18:21:34', '2019-09-27 18:21:34', '', 0, 'http://localhost/e_sinar/2019/09/27/35/', 4, 'nav_menu_item', '', 0),
(37, 1, '2019-09-27 18:23:49', '2019-09-27 18:23:49', '', 'Presentasi Kelompok 6 AUDIT Terlambat', '', 'inherit', 'open', 'closed', '', 'presentasi-kelompok-6-audit-terlambat', '', '', '2019-09-27 18:23:49', '2019-09-27 18:23:49', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/09/Presentasi-Kelompok-6-AUDIT-Terlambat.pptx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 0),
(39, 1, '2019-09-27 18:24:11', '2019-09-27 18:24:11', '', 'cropped-download.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-download-jpg', '', '', '2019-09-27 18:24:11', '2019-09-27 18:24:11', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/09/cropped-download.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-09-27 18:26:12', '2019-09-27 18:26:12', '', 'janEE_16x9', '', 'inherit', 'open', 'closed', '', 'janee_16x9', '', '', '2019-09-27 18:26:12', '2019-09-27 18:26:12', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/09/janEE_16x9.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-09-27 18:26:18', '2019-09-27 18:26:18', '', 'cropped-janEE_16x9.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-janee_16x9-jpg', '', '', '2019-09-27 18:26:18', '2019-09-27 18:26:18', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/09/cropped-janEE_16x9.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-10-06 14:42:57', '2019-10-06 14:42:57', '', 'rpwe_home', '', 'publish', 'closed', 'closed', '', 'rpwe_home', '', '', '2019-10-06 14:42:57', '2019-10-06 14:42:57', '', 0, 'http://localhost/e_sinar/?post_type=sidebar_instance&p=50', 0, 'sidebar_instance', '', 0),
(52, 1, '2019-10-06 14:48:20', '2019-10-06 14:48:20', '', 'beranda', '', 'publish', 'closed', 'closed', '', 'beranda', '', '', '2019-10-06 14:48:20', '2019-10-06 14:48:20', '', 0, 'http://localhost/e_sinar/?page_id=52', 0, 'page', '', 0),
(53, 1, '2019-10-06 14:48:20', '2019-10-06 14:48:20', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2019-10-06 14:53:49', '2019-10-06 14:53:49', '', 0, 'http://localhost/e_sinar/2019/10/06/53/', 1, 'nav_menu_item', '', 0),
(54, 1, '2019-10-06 14:48:20', '2019-10-06 14:48:20', '', 'beranda', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-10-06 14:48:20', '2019-10-06 14:48:20', '', 52, 'http://localhost/e_sinar/2019/10/06/52-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-10-06 14:57:05', '2019-10-06 14:57:05', '', 'oracle', '', 'inherit', 'open', 'closed', '', 'oracle', '', '', '2019-10-06 14:57:05', '2019-10-06 14:57:05', '', 1, 'http://localhost/e_sinar/wp-content/uploads/2019/09/oracle.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-10-06 14:57:12', '2019-10-06 14:57:12', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-06 14:57:12', '2019-10-06 14:57:12', '', 1, 'http://localhost/e_sinar/2019/10/06/1-revision-v1/', 0, 'revision', '', 0),
(61, 2, '2019-10-06 15:09:29', '2019-10-06 15:09:29', '', 'seminar-1', '', 'publish', 'open', 'open', '', 'seminar-1', '', '', '2020-04-09 14:37:05', '2020-04-09 14:37:05', '', 0, 'http://localhost/e_sinar/?p=61', 0, 'post', '', 0),
(62, 2, '2019-10-06 15:08:15', '2019-10-06 15:08:15', '', 'post ke 2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-10-06 15:08:15', '2019-10-06 15:08:15', '', 61, 'http://localhost/e_sinar/2019/10/06/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-10-09 15:22:59', '2019-10-09 15:22:59', '', 'oracle2', '', 'inherit', 'open', 'closed', '', 'oracle2', '', '', '2019-10-09 15:22:59', '2019-10-09 15:22:59', '', 61, 'http://localhost/e_sinar/wp-content/uploads/2019/10/oracle2.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-11-23 15:20:48', '2019-11-23 15:20:48', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"category:seminar\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"category:seminar\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'custom_seminar', 'custom_seminar', 'publish', 'closed', 'closed', '', 'group_5dd94de297d7a', '', '', '2020-03-21 14:13:45', '2020-03-21 14:13:45', '', 0, 'http://localhost/e_sinar/?post_type=acf-field-group&#038;p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2019-11-23 15:20:48', '2019-11-23 15:20:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Tempat Lokasi Seminar\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tempat', 'tempat', 'publish', 'closed', 'closed', '', 'field_5dd94df5703f6', '', '', '2019-11-23 15:35:42', '2019-11-23 15:35:42', '', 66, 'http://localhost/e_sinar/?post_type=acf-field&#038;p=67', 0, 'acf-field', '', 0),
(68, 1, '2019-11-23 15:21:17', '2019-11-23 15:21:17', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-23 15:21:17', '2019-11-23 15:21:17', '', 1, 'http://localhost/e_sinar/2019/11/23/1-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-11-23 15:21:45', '2019-11-23 15:21:45', '', 'post ke 2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-11-23 15:21:45', '2019-11-23 15:21:45', '', 61, 'http://localhost/e_sinar/2019/11/23/61-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-11-23 16:46:53', '2019-11-23 16:46:53', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'date', 'date', 'publish', 'closed', 'closed', '', 'field_5dd9624ae2349', '', '', '2019-11-23 16:46:53', '2019-11-23 16:46:53', '', 66, 'http://localhost/e_sinar/?post_type=acf-field&p=70', 1, 'acf-field', '', 0),
(71, 1, '2019-11-23 16:49:22', '2019-11-23 16:49:22', 'a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'waktu_mulai', 'waktu_mulai', 'publish', 'closed', 'closed', '', 'field_5dd96280b6cfd', '', '', '2019-11-23 16:49:22', '2019-11-23 16:49:22', '', 66, 'http://localhost/e_sinar/?post_type=acf-field&p=71', 2, 'acf-field', '', 0),
(73, 1, '2019-11-23 16:50:08', '2019-11-23 16:50:08', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-23 16:50:08', '2019-11-23 16:50:08', '', 1, 'http://localhost/e_sinar/2019/11/23/1-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-11-23 16:53:01', '2019-11-23 16:53:01', 'a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'waktu_selesai', 'waktu_selesai', 'publish', 'closed', 'closed', '', 'field_5dd963c5c48e2', '', '', '2019-11-23 16:53:01', '2019-11-23 16:53:01', '', 66, 'http://localhost/e_sinar/?post_type=acf-field&p=74', 3, 'acf-field', '', 0),
(75, 1, '2019-11-23 16:53:24', '2019-11-23 16:53:24', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-23 16:53:24', '2019-11-23 16:53:24', '', 1, 'http://localhost/e_sinar/2019/11/23/1-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-11-23 16:57:55', '2019-11-23 16:57:55', '', 'post ke 2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-11-23 16:57:55', '2019-11-23 16:57:55', '', 61, 'http://localhost/e_sinar/2019/11/23/61-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-11-23 16:58:20', '2019-11-23 16:58:20', '', 'post ke 2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-11-23 16:58:20', '2019-11-23 16:58:20', '', 61, 'http://localhost/e_sinar/2019/11/23/61-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-11-23 16:58:50', '2019-11-23 16:58:50', '', 'post ke 2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-11-23 16:58:50', '2019-11-23 16:58:50', '', 61, 'http://localhost/e_sinar/2019/11/23/61-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-11-23 18:19:03', '2019-11-23 18:19:03', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2019-11-23 18:19:03', '2019-11-23 18:19:03', '', 1, 'http://localhost/e_sinar/wp-content/uploads/2019/09/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2019-11-23 18:20:23', '2019-11-23 18:20:23', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2019-11-23 18:20:23', '2019-11-23 18:20:23', '', 1, 'http://localhost/e_sinar/wp-content/uploads/2019/09/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2019-11-29 17:58:50', '2019-11-29 17:58:50', '<!-- wp:paragraph -->\n<p>BEM KBM POLINELA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Seminar Nasional]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hidup Mahasiswa!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hidup Rakyat Indonesia!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>TABIK PUN !!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📢📢 Badan Eksekutif Mahasiswa Polinela Proudly Present❗\"SEMINAR NASIONAL\" .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rangkaian Kegiatan SARASEHAN NASIONAL KE - 20 Forum Komunikasi Mahasiswa Politeknik se-Indonesia dengan tema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Arah Baru Pendidikan dan Kepemimpinan Nasional Dalam Menghasilkan Sumber Daya Manusia Yang Berkompeten Menghadapi Society 5.0\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pemateri yang sangat luar biasa :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. Dr.H. Al Muzzammil Yusuf, M.Si. ( Anggota Komisi I DPR RI )</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. Dr. Didin Wahidin, M.Pd. ( Direktur Kemahasiswaan Kemenristekdikti)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Turut Mengundang :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. Drs. Hi. Herman HN, M.M.( Walikota Bandarlampung ) .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Seminar Nasional akan dilaksanakan pada :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗓 Sabtu, 30 November 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🕰 07.00 WIB sd SELESAI</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🏢 Gedung Serba Guna Politeknik Negeri Lampung.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Umum :&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💸 HTM 15K</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mahasiswa/i :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💸 HTM 15K</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ayo, Langsung daftarkan diri mu !!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fasilitas :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Sertifikat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Snack</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Doorprize</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Ilmu dan Relasi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>CP:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📲 0858-4012-2488 (Tris Andoni)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📲 0813-6828-4639 (Supariyanto)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>YA PUN !!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>#SARNASFKMPIXX</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>#PoliteknikNegeriLampung</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>#FkmpiBerkaryaPoliteknikBerjaya</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>#bemkbmpolinela</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>#Inisiator_Kolaborasi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>@sarnasfkmpi20</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Terimakasih</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>. ---------------------------------------------------------------------</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Portal media BEM Polinela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🌍Web : bem.kemahasiswaan.polinela.ac.id</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📧 Email : bem@polinela.ac.id</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📱 Facebook : bemkbmpolinela</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📷 IG : @bemkbmpolinela</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>☎ Twitter : @bemkbmpolinela</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🖥 Line : @xrs9220i</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>#BEMKBMPOLINELA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>#KabinetTapis</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>#Inisiator_kolaborasi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>#kementeriankomunikasidaninformasi</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-29 17:58:50', '2019-11-29 17:58:50', '', 1, 'http://localhost/e_sinar/2019/11/29/1-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-11-29 18:00:29', '2019-11-29 18:00:29', '<!-- wp:paragraph -->\n<p>HIMPUNAN MAHASISWA SISTEM INFORMASI UNIVERSITAS GUNADARMA&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🎉🎉proudly present🎉🎉&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>SEMINAR NASIONAL FINTECH</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💡\"Embracing Cashless Society\"💡</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Keynote Speakers:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>‍🗣 Muhammad Yoza Pratama (Digital Marketing &amp; Social Media Expert)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒fintech secara umum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗣 Fahmi Pangestu S.Kom (Departemen Komunikasi Bank Indonesia)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒cashless</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Save the date :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📆 Thursday, December 3th 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⏰ 09.00 WIB - end</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🏡 Perpustakaan Nasional RI lt.4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jl. Medan merdeka selatan no.11, Jakarta Pusat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲Harga tiket presale :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 50.000&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(Lewat dari tanggal 2 Desember 2019 mendapatkan e-sertifkat)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲OTS :&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 70.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>❗Info lebih lengkap hubungi CP terkait</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⚪INCLUDE⚪</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Knowledge</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Souvenir</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Snack</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Doorprize</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Certificate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Yuk segera daftarkan diri kamu dan dapatkan banyak ilmu!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⁉️Information details :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*intan : 085770769622 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : intaanftr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*wynona : 081284351392 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : 27wynona</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*nevarda : 085711912771 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Information and Update :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram : @himsi.ug</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-29 18:00:29', '2019-11-29 18:00:29', '', 1, 'http://localhost/e_sinar/2019/11/29/1-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-11-29 18:02:06', '2019-11-29 18:02:06', '<!-- wp:paragraph -->\n<p>ini berisi halaman faq</p>\n<!-- /wp:paragraph -->', 'FAQ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-11-29 18:02:06', '2019-11-29 18:02:06', '', 29, 'http://localhost/e_sinar/2019/11/29/29-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2019-12-04 16:25:03', '2019-12-04 16:25:03', '<!-- wp:shortcode -->\n[custom_form id=31]\n<!-- /wp:shortcode -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-12-04 16:25:03', '2019-12-04 16:25:03', '', 27, 'http://localhost/e_sinar/2019/12/04/27-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-12-05 15:29:07', '2019-12-05 15:29:07', '<!-- wp:shortcode -->\n[custom_form id=21]\n<!-- /wp:shortcode -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-12-05 15:29:07', '2019-12-05 15:29:07', '', 27, 'http://localhost/e_sinar/2019/12/05/27-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-12-05 15:56:27', '2019-12-05 15:56:27', '<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-12-05 15:56:27', '2019-12-05 15:56:27', '', 27, 'http://localhost/e_sinar/2019/12/05/27-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-12-09 16:47:31', '2019-12-09 16:47:31', '', 'logo-esinar', '', 'inherit', 'open', 'closed', '', 'logo-esinar', '', '', '2019-12-09 16:47:31', '2019-12-09 16:47:31', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/12/logo-esinar.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2019-12-09 16:47:45', '2019-12-09 16:47:45', 'http://localhost/e_sinar/wp-content/uploads/2019/12/cropped-logo-esinar.jpg', 'cropped-logo-esinar.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-esinar-jpg', '', '', '2019-12-09 16:47:45', '2019-12-09 16:47:45', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/12/cropped-logo-esinar.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2019-12-10 12:57:09', '2019-12-10 12:57:09', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-12-10 12:57:09', '2019-12-10 12:57:09', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-12-10 12:58:06', '2019-12-10 12:58:06', '<!-- wp:paragraph -->\n<p>HIMPUNAN MAHASISWA SISTEM INFORMASI UNIVERSITAS GUNADARMA&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🎉🎉proudly present🎉🎉&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>SEMINAR NASIONAL FINTECH</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💡\"Embracing Cashless Society\"💡</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Keynote Speakers:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>‍🗣 Muhammad Yoza Pratama (Digital Marketing &amp; Social Media Expert)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒fintech secara umum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗣 Fahmi Pangestu S.Kom (Departemen Komunikasi Bank Indonesia)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒cashless</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Save the date :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📆 Thursday, December 3th 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⏰ 09.00 WIB - end</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🏡 Perpustakaan Nasional RI lt.4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jl. Medan merdeka selatan no.11, Jakarta Pusat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲Harga tiket presale :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 50.000&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(Lewat dari tanggal 2 Desember 2019 mendapatkan e-sertifkat)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲OTS :&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 70.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>❗Info lebih lengkap hubungi CP terkait</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⚪INCLUDE⚪</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Knowledge</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Souvenir</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Snack</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Doorprize</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Certificate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Yuk segera daftarkan diri kamu dan dapatkan banyak ilmu!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⁉️Information details :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*intan : 085770769622 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : intaanftr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*wynona : 081284351392 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : 27wynona</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*nevarda : 085711912771 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Information and Update :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram : @himsi.ug</p>\n<!-- /wp:paragraph -->', 'Seminar-2', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-12-10 12:58:06', '2019-12-10 12:58:06', '', 1, 'http://localhost/e_sinar/1-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-12-10 13:44:27', '2019-12-10 13:44:27', '<!-- wp:shortcode -->\n[custom_form id=22]\n<!-- /wp:shortcode -->', 'history', '', 'publish', 'closed', 'closed', '', 'history', '', '', '2019-12-10 14:12:48', '2019-12-10 14:12:48', '', 0, 'http://localhost/e_sinar/?page_id=100', 0, 'page', '', 0),
(102, 1, '2019-12-10 13:44:27', '2019-12-10 13:44:27', '', 'history', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-12-10 13:44:27', '2019-12-10 13:44:27', '', 100, 'http://localhost/e_sinar/100-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-12-10 13:53:46', '2019-12-10 13:53:46', '<!-- wp:shortcode -->\nhistory\n<!-- /wp:shortcode -->', 'history', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-12-10 13:53:46', '2019-12-10 13:53:46', '', 100, 'http://localhost/e_sinar/100-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-12-10 14:01:58', '2019-12-10 14:01:58', '<!-- wp:shortcode -->\nkuisoner_v2\n<!-- /wp:shortcode -->', 'history', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-12-10 14:01:58', '2019-12-10 14:01:58', '', 100, 'http://localhost/e_sinar/100-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-12-10 14:08:16', '2019-12-10 14:08:16', '<!-- wp:shortcode -->\nkuisoner\n<!-- /wp:shortcode -->', 'history', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-12-10 14:08:16', '2019-12-10 14:08:16', '', 100, 'http://localhost/e_sinar/100-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-12-10 14:12:48', '2019-12-10 14:12:48', '<!-- wp:shortcode -->\n[custom_form id=22]\n<!-- /wp:shortcode -->', 'history', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-12-10 14:12:48', '2019-12-10 14:12:48', '', 100, 'http://localhost/e_sinar/100-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-12-10 15:30:00', '2019-12-10 15:30:00', '<!-- wp:shortcode -->\n[custom_form id=23]\n<!-- /wp:shortcode -->', 'profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2019-12-10 15:30:00', '2019-12-10 15:30:00', '', 0, 'http://localhost/e_sinar/?page_id=108', 0, 'page', '', 0),
(110, 1, '2019-12-10 15:30:00', '2019-12-10 15:30:00', '<!-- wp:shortcode -->\n[custom_form id=23]\n<!-- /wp:shortcode -->', 'profile', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-12-10 15:30:00', '2019-12-10 15:30:00', '', 108, 'http://localhost/e_sinar/108-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2019-12-10 17:25:10', '2019-12-10 17:25:10', '<!-- wp:paragraph -->\n<p>selamat anda telah berhasil mendaftar seminar ini,silahkan tunggu verifikasi dari pihak e-sinar. cek history agar tau pembayaran kamu sudah di verifikasi</p>\n<!-- /wp:paragraph -->', 'sukses_daftar', '', 'publish', 'closed', 'closed', '', 'sukses_daftar', '', '', '2019-12-10 17:25:13', '2019-12-10 17:25:13', '', 0, 'http://localhost/e_sinar/?page_id=121', 0, 'page', '', 0),
(123, 1, '2019-12-10 17:25:10', '2019-12-10 17:25:10', '<!-- wp:paragraph -->\n<p>selamat anda telah berhasil mendaftar seminar ini,silahkan tunggu verifikasi dari pihak e-sinar. cek history agar tau pembayaran kamu sudah di verifikasi</p>\n<!-- /wp:paragraph -->', 'sukses_daftar', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2019-12-10 17:25:10', '2019-12-10 17:25:10', '', 121, 'http://localhost/e_sinar/121-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-12-10 17:25:13', '2019-12-10 17:25:13', '<!-- wp:paragraph -->\n<p>selamat anda telah berhasil mendaftar seminar ini,silahkan tunggu verifikasi dari pihak e-sinar. cek history agar tau pembayaran kamu sudah di verifikasi</p>\n<!-- /wp:paragraph -->', 'sukses_daftar', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2019-12-10 17:25:13', '2019-12-10 17:25:13', '', 121, 'http://localhost/e_sinar/121-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2019-12-10 19:30:42', '2019-12-10 19:30:42', '<!-- wp:shortcode -->\n[custom_form id=1]\n<!-- /wp:shortcode -->', 'daftar_sm', '', 'publish', 'closed', 'closed', '', 'daftar_sm', '', '', '2019-12-12 14:34:11', '2019-12-12 14:34:11', '', 0, 'http://localhost/e_sinar/?page_id=125', 0, 'page', '', 0),
(127, 1, '2019-12-10 19:30:42', '2019-12-10 19:30:42', '<!-- wp:shortcode -->\n[custom_form id=21]\n<!-- /wp:shortcode -->', 'daftar_sm', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2019-12-10 19:30:42', '2019-12-10 19:30:42', '', 125, 'http://localhost/e_sinar/125-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2019-12-11 13:38:36', '2019-12-11 13:38:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"category:uncategorized\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'new form', 'new-form', 'publish', 'closed', 'closed', '', 'group_5df0f11f30197', '', '', '2019-12-11 13:38:37', '2019-12-11 13:38:37', '', 0, 'http://localhost/e_sinar/?post_type=acf-field-group&#038;p=130', 0, 'acf-field-group', '', 0),
(131, 1, '2019-12-11 13:38:36', '2019-12-11 13:38:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'nama', 'nama', 'publish', 'closed', 'closed', '', 'field_5df0f13ad9583', '', '', '2019-12-11 13:38:36', '2019-12-11 13:38:36', '', 130, 'http://localhost/e_sinar/?post_type=acf-field&p=131', 0, 'acf-field', '', 0),
(133, 1, '2019-12-11 14:24:27', '2019-12-11 14:24:27', '', 'logo-esinar', '', 'inherit', 'open', 'closed', '', 'logo-esinar-2', '', '', '2019-12-11 14:24:27', '2019-12-11 14:24:27', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/12/logo-esinar.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2019-12-11 14:24:35', '2019-12-11 14:24:35', 'http://localhost/e_sinar/wp-content/uploads/2019/12/cropped-logo-esinar.png', 'cropped-logo-esinar.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-esinar-png', '', '', '2019-12-11 14:24:35', '2019-12-11 14:24:35', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/12/cropped-logo-esinar.png', 0, 'attachment', 'image/png', 0),
(137, 1, '2019-12-11 16:50:48', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Detail seminar /  isi seminar</p>\n<!-- /wp:paragraph -->', 'Judul', '', 'draft', 'open', 'open', '', '', '', '', '2019-12-11 16:50:48', '2019-12-11 16:50:48', '', 0, 'http://localhost/e_sinar/?p=137', 0, 'post', '', 0),
(139, 1, '2019-12-12 13:37:14', '2019-12-12 13:37:14', '<!-- wp:shortcode -->\n[custom_form id=24]\n<!-- /wp:shortcode -->', 'editbukti', '', 'publish', 'closed', 'closed', '', 'editbukti', '', '', '2019-12-12 13:55:20', '2019-12-12 13:55:20', '', 0, 'http://localhost/e_sinar/?page_id=139', 0, 'page', '', 0),
(141, 1, '2019-12-12 13:37:14', '2019-12-12 13:37:14', '', 'editbukti', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2019-12-12 13:37:14', '2019-12-12 13:37:14', '', 139, 'http://localhost/e_sinar/139-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2019-12-12 13:55:17', '2019-12-12 13:55:17', '<!-- wp:shortcode -->\n[custom_form id=24]\n<!-- /wp:shortcode -->', 'editbukti', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2019-12-12 13:55:17', '2019-12-12 13:55:17', '', 139, 'http://localhost/e_sinar/139-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2019-12-12 14:34:08', '2019-12-12 14:34:08', '<!-- wp:shortcode -->\n[custom_form id=1]\n<!-- /wp:shortcode -->', 'daftar_sm', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2019-12-12 14:34:08', '2019-12-12 14:34:08', '', 125, 'http://localhost/e_sinar/125-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2019-12-12 15:27:32', '2019-12-12 15:27:32', '<!-- wp:paragraph -->\n<p>maaf anda gagal mendaftar seminar, mungkin anda sudah pernah mendaftar seminar atau ukuran file foto terlalu besar. Silahkan Daftar Kembali seminar anda</p>\n<!-- /wp:paragraph -->', 'gagal', '', 'publish', 'closed', 'closed', '', 'gagal', '', '', '2019-12-12 15:31:15', '2019-12-12 15:31:15', '', 0, 'http://localhost/e_sinar/?page_id=145', 0, 'page', '', 0),
(147, 1, '2019-12-12 15:27:32', '2019-12-12 15:27:32', '<!-- wp:paragraph -->\n<p>maaf anda gagal mendaftar seminar, mungkin anda sudah pernah mendaftar seminar atau ukuran file foto terlalu besar</p>\n<!-- /wp:paragraph -->', 'gagal', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2019-12-12 15:27:32', '2019-12-12 15:27:32', '', 145, 'http://localhost/e_sinar/145-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-12-12 15:31:13', '2019-12-12 15:31:13', '<!-- wp:paragraph -->\n<p>maaf anda gagal mendaftar seminar, mungkin anda sudah pernah mendaftar seminar atau ukuran file foto terlalu besar. Silahkan Daftar Kembali seminar anda</p>\n<!-- /wp:paragraph -->', 'gagal', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2019-12-12 15:31:13', '2019-12-12 15:31:13', '', 145, 'http://localhost/e_sinar/145-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-12-12 16:41:50', '2019-12-12 16:41:50', '<!-- wp:shortcode -->\n[custom_form id=2]\n<!-- /wp:shortcode -->', 'foto_profile', '', 'publish', 'closed', 'closed', '', 'foto_profile', '', '', '2019-12-12 16:46:38', '2019-12-12 16:46:38', '', 0, 'http://localhost/e_sinar/?page_id=151', 0, 'page', '', 0),
(153, 1, '2019-12-12 16:41:50', '2019-12-12 16:41:50', '', 'foto_profile', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2019-12-12 16:41:50', '2019-12-12 16:41:50', '', 151, 'http://localhost/e_sinar/151-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2019-12-12 16:46:35', '2019-12-12 16:46:35', '<!-- wp:shortcode -->\n[custom_form id=2]\n<!-- /wp:shortcode -->', 'foto_profile', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2019-12-12 16:46:35', '2019-12-12 16:46:35', '', 151, 'http://localhost/e_sinar/151-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2019-12-12 17:27:54', '2019-12-12 17:27:54', '<!-- wp:shortcode -->\n[custom_form id=7]\n<!-- /wp:shortcode -->', 'edit_foto_profile', '', 'publish', 'closed', 'closed', '', 'edit_foto_profile', '', '', '2019-12-12 17:27:57', '2019-12-12 17:27:57', '', 0, 'http://localhost/e_sinar/?page_id=156', 0, 'page', '', 0),
(158, 1, '2019-12-12 17:27:54', '2019-12-12 17:27:54', '<!-- wp:shortcode -->\n[custom_form id=7]\n<!-- /wp:shortcode -->', 'edit_foto_profile', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2019-12-12 17:27:54', '2019-12-12 17:27:54', '', 156, 'http://localhost/e_sinar/156-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2019-12-12 18:31:27', '2019-12-12 18:31:27', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-12-12 18:31:27', '2019-12-12 18:31:27', '', 29, 'http://localhost/e_sinar/29-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2019-12-12 19:12:50', '2019-12-12 19:12:50', '', 'akses', '', 'publish', 'closed', 'closed', '', 'akses', '', '', '2020-03-21 17:32:53', '2020-03-21 17:32:53', '', 0, 'http://localhost/e_sinar/?post_type=restriction&#038;p=162', 0, 'restriction', '', 0),
(163, 1, '2019-12-12 19:10:49', '2019-12-12 19:10:49', '', '', '', 'publish', 'closed', 'closed', '', '163', '', '', '2020-03-21 17:32:47', '2020-03-21 17:32:47', '', 162, 'http://localhost/e_sinar/?post_type=condition_group&#038;p=163', 1, 'condition_group', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(164, 1, '2019-12-12 19:14:34', '2019-12-12 19:14:34', '<!-- wp:paragraph -->\n<p>silahkan login terlebih dahulu</p>\n<!-- /wp:paragraph -->', 'no_login', '', 'publish', 'closed', 'closed', '', 'no_login', '', '', '2019-12-12 19:14:37', '2019-12-12 19:14:37', '', 0, 'http://localhost/e_sinar/?page_id=164', 0, 'page', '', 0),
(166, 1, '2019-12-12 19:14:34', '2019-12-12 19:14:34', '<!-- wp:paragraph -->\n<p>silahkan login terlebih dahulu</p>\n<!-- /wp:paragraph -->', 'no_login', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2019-12-12 19:14:34', '2019-12-12 19:14:34', '', 164, 'http://localhost/e_sinar/164-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2019-12-13 01:52:35', '2019-12-13 01:52:35', '<!-- wp:paragraph -->\n<p>HIMPUNAN MAHASISWA SISTEM INFORMASI UNIVERSITAS GUNADARMA&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🎉🎉proudly present🎉🎉&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>SEMINAR NASIONAL FINTECH</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💡\"Embracing Cashless Society\"💡</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Keynote Speakers:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>‍🗣 Muhammad Yoza Pratama (Digital Marketing &amp; Social Media Expert)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒fintech secara umum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗣 Fahmi Pangestu S.Kom (Departemen Komunikasi Bank Indonesia)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒cashless</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Save the date :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📆 Thursday, December 3th 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⏰ 09.00 WIB - end</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🏡 Perpustakaan Nasional RI lt.4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jl. Medan merdeka selatan no.11, Jakarta Pusat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲Harga tiket presale :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 50.000&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(Lewat dari tanggal 2 Desember 2019 mendapatkan e-sertifkat)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲OTS :&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 70.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>❗Info lebih lengkap hubungi CP terkait</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⚪INCLUDE⚪</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Knowledge</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Souvenir</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Snack</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Doorprize</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Certificate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Yuk segera daftarkan diri kamu dan dapatkan banyak ilmu!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⁉️Information details :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*intan : 085770769622 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : intaanftr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*wynona : 081284351392 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : 27wynona</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*nevarda : 085711912771 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Information and Update :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram : @himsi.ug</p>\n<!-- /wp:paragraph -->', 'SEMINAR NASIONAL FINTECH', '', 'publish', 'open', 'open', '', 'seminar-nasional-fintech', '', '', '2020-03-21 14:14:51', '2020-03-21 14:14:51', '', 0, 'http://192.168.43.17/e_sinar/?p=168', 0, 'post', '', 0),
(169, 1, '2019-12-13 01:48:53', '2019-12-13 01:48:53', '', 'seminar-nasional-fintech', '', 'inherit', 'open', 'closed', '', 'seminar-nasional-fintech', '', '', '2019-12-13 01:48:53', '2019-12-13 01:48:53', '', 168, 'http://192.168.43.17/e_sinar/wp-content/uploads/2019/12/seminar-nasional-fintech.jpeg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2019-12-13 01:52:35', '2019-12-13 01:52:35', '<!-- wp:paragraph -->\n<p>HIMPUNAN MAHASISWA SISTEM INFORMASI UNIVERSITAS GUNADARMA&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🎉🎉proudly present🎉🎉&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>SEMINAR NASIONAL FINTECH</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💡\"Embracing Cashless Society\"💡</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Keynote Speakers:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>‍🗣 Muhammad Yoza Pratama (Digital Marketing &amp; Social Media Expert)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒fintech secara umum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗣 Fahmi Pangestu S.Kom (Departemen Komunikasi Bank Indonesia)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒cashless</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Save the date :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📆 Thursday, December 3th 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⏰ 09.00 WIB - end</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🏡 Perpustakaan Nasional RI lt.4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jl. Medan merdeka selatan no.11, Jakarta Pusat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲Harga tiket presale :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 50.000&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(Lewat dari tanggal 2 Desember 2019 mendapatkan e-sertifkat)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲OTS :&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 70.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>❗Info lebih lengkap hubungi CP terkait</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⚪INCLUDE⚪</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Knowledge</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Souvenir</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Snack</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Doorprize</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Certificate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Yuk segera daftarkan diri kamu dan dapatkan banyak ilmu!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⁉️Information details :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*intan : 085770769622 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : intaanftr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*wynona : 081284351392 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : 27wynona</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*nevarda : 085711912771 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Information and Update :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram : @himsi.ug</p>\n<!-- /wp:paragraph -->', 'SEMINAR NASIONAL FINTECH', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2019-12-13 01:52:35', '2019-12-13 01:52:35', '', 168, 'http://192.168.43.17/e_sinar/168-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2019-12-13 01:52:39', '2019-12-13 01:52:39', '<!-- wp:paragraph -->\n<p>HIMPUNAN MAHASISWA SISTEM INFORMASI UNIVERSITAS GUNADARMA&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🎉🎉proudly present🎉🎉&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>SEMINAR NASIONAL FINTECH</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💡\"Embracing Cashless Society\"💡</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Keynote Speakers:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>‍🗣 Muhammad Yoza Pratama (Digital Marketing &amp; Social Media Expert)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒fintech secara umum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗣 Fahmi Pangestu S.Kom (Departemen Komunikasi Bank Indonesia)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒cashless</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Save the date :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📆 Thursday, December 3th 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⏰ 09.00 WIB - end</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🏡 Perpustakaan Nasional RI lt.4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jl. Medan merdeka selatan no.11, Jakarta Pusat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲Harga tiket presale :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 50.000&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(Lewat dari tanggal 2 Desember 2019 mendapatkan e-sertifkat)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲OTS :&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 70.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>❗Info lebih lengkap hubungi CP terkait</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⚪INCLUDE⚪</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Knowledge</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Souvenir</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Snack</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Doorprize</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Certificate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Yuk segera daftarkan diri kamu dan dapatkan banyak ilmu!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⁉️Information details :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*intan : 085770769622 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : intaanftr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*wynona : 081284351392 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : 27wynona</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*nevarda : 085711912771 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Information and Update :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram : @himsi.ug</p>\n<!-- /wp:paragraph -->', 'SEMINAR NASIONAL FINTECH', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2019-12-13 01:52:39', '2019-12-13 01:52:39', '', 168, 'http://192.168.43.17/e_sinar/168-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2019-12-13 02:40:46', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>detail keterangan</p>\n<!-- /wp:paragraph -->', 'JUDUL', '', 'draft', 'open', 'open', '', '', '', '', '2019-12-13 02:40:46', '2019-12-13 02:40:46', '', 0, 'http://192.168.43.17/e_sinar/?p=172', 0, 'post', '', 0),
(176, 49, '2020-03-17 15:34:49', '2020-03-17 15:34:49', '<!-- wp:paragraph -->\n<p>dasdasdadasda</p>\n<!-- /wp:paragraph -->', 'pemilik 17032225', '', 'publish', 'open', 'open', '', 'pemilik-17032225', '', '', '2020-03-17 15:34:53', '2020-03-17 15:34:53', '', 0, 'http://192.168.43.17/e_sinar/?p=176', 0, 'post', '', 0),
(177, 49, '2020-03-17 15:34:49', '2020-03-17 15:34:49', '<!-- wp:paragraph -->\n<p>dasdasdadasda</p>\n<!-- /wp:paragraph -->', 'pemilik 17032225', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2020-03-17 15:34:49', '2020-03-17 15:34:49', '', 176, 'http://192.168.43.17/e_sinar/176-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2020-03-21 14:13:45', '2020-03-21 14:13:45', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'harga', 'harga', 'publish', 'closed', 'closed', '', 'field_5e7620ec73bc0', '', '', '2020-03-21 14:13:45', '2020-03-21 14:13:45', '', 66, 'http://localhost/e_sinar/?post_type=acf-field&p=179', 4, 'acf-field', '', 0),
(180, 1, '2020-03-21 14:14:51', '2020-03-21 14:14:51', '<!-- wp:paragraph -->\n<p>HIMPUNAN MAHASISWA SISTEM INFORMASI UNIVERSITAS GUNADARMA&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🎉🎉proudly present🎉🎉&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>SEMINAR NASIONAL FINTECH</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💡\"Embracing Cashless Society\"💡</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Keynote Speakers:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>‍🗣 Muhammad Yoza Pratama (Digital Marketing &amp; Social Media Expert)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒fintech secara umum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗣 Fahmi Pangestu S.Kom (Departemen Komunikasi Bank Indonesia)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒cashless</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Save the date :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📆 Thursday, December 3th 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⏰ 09.00 WIB - end</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🏡 Perpustakaan Nasional RI lt.4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jl. Medan merdeka selatan no.11, Jakarta Pusat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲Harga tiket presale :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 50.000&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(Lewat dari tanggal 2 Desember 2019 mendapatkan e-sertifkat)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲OTS :&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 70.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>❗Info lebih lengkap hubungi CP terkait</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⚪INCLUDE⚪</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Knowledge</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Souvenir</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Snack</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Doorprize</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Certificate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Yuk segera daftarkan diri kamu dan dapatkan banyak ilmu!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⁉️Information details :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*intan : 085770769622 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : intaanftr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*wynona : 081284351392 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : 27wynona</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*nevarda : 085711912771 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Information and Update :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram : @himsi.ug</p>\n<!-- /wp:paragraph -->', 'SEMINAR NASIONAL FINTECH', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2020-03-21 14:14:51', '2020-03-21 14:14:51', '', 168, 'http://localhost/e_sinar/168-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2020-03-21 14:15:41', '2020-03-21 14:15:41', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-03-21 14:15:41', '2020-03-21 14:15:41', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2020-03-21 14:16:32', '2020-03-21 14:16:32', '<!-- wp:paragraph -->\n<p>HIMPUNAN MAHASISWA SISTEM INFORMASI UNIVERSITAS GUNADARMA&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🎉🎉proudly present🎉🎉&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>SEMINAR NASIONAL FINTECH</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💡\"Embracing Cashless Society\"💡</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Keynote Speakers:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>‍🗣 Muhammad Yoza Pratama (Digital Marketing &amp; Social Media Expert)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒fintech secara umum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗣 Fahmi Pangestu S.Kom (Departemen Komunikasi Bank Indonesia)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒cashless</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Save the date :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📆 Thursday, December 3th 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⏰ 09.00 WIB - end</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🏡 Perpustakaan Nasional RI lt.4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jl. Medan merdeka selatan no.11, Jakarta Pusat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲Harga tiket presale :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 50.000&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(Lewat dari tanggal 2 Desember 2019 mendapatkan e-sertifkat)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲OTS :&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 70.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>❗Info lebih lengkap hubungi CP terkait</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⚪INCLUDE⚪</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Knowledge</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Souvenir</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Snack</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Doorprize</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Certificate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Yuk segera daftarkan diri kamu dan dapatkan banyak ilmu!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⁉️Information details :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*intan : 085770769622 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : intaanftr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*wynona : 081284351392 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : 27wynona</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*nevarda : 085711912771 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Information and Update :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram : @himsi.ug</p>\n<!-- /wp:paragraph -->', 'Seminar-2', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-03-21 14:16:32', '2020-03-21 14:16:32', '', 1, 'http://localhost/e_sinar/1-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2020-03-21 17:48:11', '2020-03-21 17:48:11', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-03-21 17:48:11', '2020-03-21 17:48:11', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2020-03-21 17:48:49', '2020-03-21 17:48:49', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-03-21 17:48:49', '2020-03-21 17:48:49', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2020-03-31 03:25:24', '2020-03-31 03:25:24', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-03-31 03:25:24', '2020-03-31 03:25:24', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2020-04-09 14:37:05', '2020-04-09 14:37:05', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-09 14:37:05', '2020-04-09 14:37:05', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2020-04-10 14:29:10', '2020-04-10 14:29:10', '<!-- wp:paragraph -->\n<p>HIMPUNAN MAHASISWA SISTEM INFORMASI UNIVERSITAS GUNADARMA&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🎉🎉proudly present🎉🎉&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>SEMINAR NASIONAL FINTECH</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💡\"Embracing Cashless Society\"💡</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Keynote Speakers:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>‍🗣 Muhammad Yoza Pratama (Digital Marketing &amp; Social Media Expert)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒fintech secara umum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗣 Fahmi Pangestu S.Kom (Departemen Komunikasi Bank Indonesia)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Subtema :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🗒cashless</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Save the date :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>📆 Thursday, December 3th 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⏰ 09.00 WIB - end</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>🏡 Perpustakaan Nasional RI lt.4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jl. Medan merdeka selatan no.11, Jakarta Pusat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲Harga tiket presale :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 50.000&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(Lewat dari tanggal 2 Desember 2019 mendapatkan e-sertifkat)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>💲OTS :&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rp 70.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>❗Info lebih lengkap hubungi CP terkait</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⚪INCLUDE⚪</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Knowledge</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Souvenir</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Snack</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Doorprize</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>✔Certificate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Yuk segera daftarkan diri kamu dan dapatkan banyak ilmu!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>⁉️Information details :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*intan : 085770769622 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : intaanftr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*wynona : 081284351392 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Line : 27wynona</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>*nevarda : 085711912771 (WA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Information and Update :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram : @himsi.ug</p>\n<!-- /wp:paragraph -->', 'Seminar-2', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-04-10 14:29:10', '2020-04-10 14:29:10', '', 1, 'http://localhost/e_sinar/1-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2020-04-13 10:20:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-13 10:20:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/e_sinar/?p=190', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(4, 'primary', 'primary', 0),
(5, 'Seminar', 'seminar', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 5, 0),
(33, 4, 0),
(34, 4, 0),
(35, 4, 0),
(53, 4, 0),
(61, 5, 0),
(137, 1, 0),
(168, 5, 0),
(172, 1, 0),
(176, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin_esinar'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'coffee'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '190'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1569608689'),
(20, 2, 'nickname', 'onifebryan'),
(21, 2, 'first_name', 'oni'),
(22, 2, 'last_name', 'febryan'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(32, 2, 'wp_user_level', '2'),
(33, 2, 'dismissed_wp_pointers', ''),
(35, 2, 'wp_dashboard_quick_press_last_post_id', '59'),
(43, 3, 'nickname', 'rogape'),
(44, 3, 'first_name', 'rogape'),
(45, 3, 'last_name', 'iansen'),
(46, 3, 'description', ''),
(47, 3, 'rich_editing', 'true'),
(48, 3, 'syntax_highlighting', 'true'),
(49, 3, 'comment_shortcuts', 'false'),
(50, 3, 'admin_color', 'fresh'),
(51, 3, 'use_ssl', '0'),
(52, 3, 'show_admin_bar_front', 'true'),
(53, 3, 'locale', ''),
(54, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(55, 3, 'wp_user_level', '0'),
(56, 3, 'dismissed_wp_pointers', ''),
(59, 4, 'nickname', 'yulia13'),
(60, 4, 'first_name', 'yulia'),
(61, 4, 'last_name', 'wardaningsih'),
(62, 4, 'description', ''),
(63, 4, 'rich_editing', 'true'),
(64, 4, 'syntax_highlighting', 'true'),
(65, 4, 'comment_shortcuts', 'false'),
(66, 4, 'admin_color', 'fresh'),
(67, 4, 'use_ssl', '0'),
(68, 4, 'show_admin_bar_front', 'true'),
(69, 4, 'locale', ''),
(70, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(71, 4, 'wp_user_level', '0'),
(72, 4, 'dismissed_wp_pointers', ''),
(73, 4, 'dismissed_wp_pointers', ''),
(74, 4, 'wpcrl_email_verification_token', '9b93360c77915ce039019c6220af6624'),
(75, 3, 'session_tokens', 'a:1:{s:64:\"b4e5f82ce3f2232dbf2750c5f2e736b8bf8a85ad32d10a4d66b68e1b2826c47b\";a:4:{s:10:\"expiration\";i:1571755848;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571583048;}}'),
(76, 5, 'nickname', 'onifebryan21'),
(77, 5, 'first_name', 'iky'),
(78, 5, 'last_name', 'febryan'),
(79, 5, 'description', ''),
(80, 5, 'rich_editing', 'true'),
(81, 5, 'syntax_highlighting', 'true'),
(82, 5, 'comment_shortcuts', 'false'),
(83, 5, 'admin_color', 'fresh'),
(84, 5, 'use_ssl', '0'),
(85, 5, 'show_admin_bar_front', 'true'),
(86, 5, 'locale', ''),
(87, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(88, 5, 'wp_user_level', '0'),
(89, 5, 'dismissed_wp_pointers', ''),
(90, 5, 'dismissed_wp_pointers', ''),
(91, 5, 'wpcrl_email_verification_token', '69164fb8ba74c5644874f420dc454839'),
(92, 6, 'nickname', 'dedidesta'),
(93, 6, 'first_name', 'desta'),
(94, 6, 'last_name', 'dedi'),
(95, 6, 'description', ''),
(96, 6, 'rich_editing', 'true'),
(97, 6, 'syntax_highlighting', 'true'),
(98, 6, 'comment_shortcuts', 'false'),
(99, 6, 'admin_color', 'fresh'),
(100, 6, 'use_ssl', '0'),
(101, 6, 'show_admin_bar_front', 'true'),
(102, 6, 'locale', ''),
(103, 6, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(104, 6, 'wp_user_level', '0'),
(105, 6, 'dismissed_wp_pointers', ''),
(106, 6, 'dismissed_wp_pointers', ''),
(107, 6, 'session_tokens', 'a:2:{s:64:\"a25469809d4eac47e29aaa04533e9e27c3990e185ec59d0c5482b59406b9299e\";a:4:{s:10:\"expiration\";i:1580126167;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1579953367;}s:64:\"6d799763ebc605e9ec3386b0ecc38b517f735412f5eaba0619ff5ad09b002345\";a:4:{s:10:\"expiration\";i:1580126167;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1579953367;}}'),
(108, 7, 'nickname', 'rizka21'),
(109, 7, 'first_name', 'ine'),
(110, 7, 'last_name', 'rizka'),
(111, 7, 'description', ''),
(112, 7, 'rich_editing', 'true'),
(113, 7, 'syntax_highlighting', 'true'),
(114, 7, 'comment_shortcuts', 'false'),
(115, 7, 'admin_color', 'fresh'),
(116, 7, 'use_ssl', '0'),
(117, 7, 'show_admin_bar_front', 'true'),
(118, 7, 'locale', ''),
(119, 7, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(120, 7, 'wp_user_level', '0'),
(121, 7, 'dismissed_wp_pointers', ''),
(122, 7, 'dismissed_wp_pointers', ''),
(123, 7, 'wpcrl_email_verification_token', '44da598d00e83e75facbb1f376694a8f'),
(124, 8, 'nickname', 'octa11'),
(125, 8, 'first_name', 'octa'),
(126, 8, 'last_name', 'pangestu'),
(127, 8, 'description', ''),
(128, 8, 'rich_editing', 'true'),
(129, 8, 'syntax_highlighting', 'true'),
(130, 8, 'comment_shortcuts', 'false'),
(131, 8, 'admin_color', 'fresh'),
(132, 8, 'use_ssl', '0'),
(133, 8, 'show_admin_bar_front', 'true'),
(134, 8, 'locale', ''),
(135, 8, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(136, 8, 'wp_user_level', '0'),
(137, 8, 'dismissed_wp_pointers', ''),
(138, 8, 'dismissed_wp_pointers', ''),
(139, 9, 'nickname', 'adniadni'),
(140, 9, 'first_name', 'adni'),
(141, 9, 'last_name', 'adni'),
(142, 9, 'description', ''),
(143, 9, 'rich_editing', 'true'),
(144, 9, 'syntax_highlighting', 'true'),
(145, 9, 'comment_shortcuts', 'false'),
(146, 9, 'admin_color', 'fresh'),
(147, 9, 'use_ssl', '0'),
(148, 9, 'show_admin_bar_front', 'true'),
(149, 9, 'locale', ''),
(150, 9, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(151, 9, 'wp_user_level', '0'),
(152, 9, 'dismissed_wp_pointers', ''),
(153, 9, 'dismissed_wp_pointers', ''),
(154, 9, 'wpcrl_email_verification_token', '1b33b268b2548be4d0f7cd2d36aa17ce'),
(155, 10, 'nickname', 'ikydedi'),
(156, 10, 'first_name', 'iky'),
(157, 10, 'last_name', 'dedi'),
(158, 10, 'description', ''),
(159, 10, 'rich_editing', 'true'),
(160, 10, 'syntax_highlighting', 'true'),
(161, 10, 'comment_shortcuts', 'false'),
(162, 10, 'admin_color', 'fresh'),
(163, 10, 'use_ssl', '0'),
(164, 10, 'show_admin_bar_front', 'true'),
(165, 10, 'locale', ''),
(166, 10, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(167, 10, 'wp_user_level', '0'),
(168, 10, 'dismissed_wp_pointers', ''),
(169, 10, 'dismissed_wp_pointers', ''),
(170, 10, 'wpcrl_email_verification_token', '042da15100307bb61832b95d40da1525'),
(171, 11, 'nickname', 'wida17'),
(172, 11, 'first_name', 'wida'),
(173, 11, 'last_name', 'widi'),
(174, 11, 'description', ''),
(175, 11, 'rich_editing', 'true'),
(176, 11, 'syntax_highlighting', 'true'),
(177, 11, 'comment_shortcuts', 'false'),
(178, 11, 'admin_color', 'fresh'),
(179, 11, 'use_ssl', '0'),
(180, 11, 'show_admin_bar_front', 'true'),
(181, 11, 'locale', ''),
(182, 11, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(183, 11, 'wp_user_level', '0'),
(184, 11, 'dismissed_wp_pointers', ''),
(185, 11, 'dismissed_wp_pointers', ''),
(186, 12, 'nickname', 'adhi13'),
(187, 12, 'first_name', 'adhi'),
(188, 12, 'last_name', 'wiraw'),
(189, 12, 'description', ''),
(190, 12, 'rich_editing', 'true'),
(191, 12, 'syntax_highlighting', 'true'),
(192, 12, 'comment_shortcuts', 'false'),
(193, 12, 'admin_color', 'fresh'),
(194, 12, 'use_ssl', '0'),
(195, 12, 'show_admin_bar_front', 'true'),
(196, 12, 'locale', ''),
(197, 12, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(198, 12, 'wp_user_level', '0'),
(199, 12, 'dismissed_wp_pointers', ''),
(200, 12, 'session_tokens', 'a:1:{s:64:\"335aeabc3bde596bf6c6ce5f3b3f78e01230fbc1be127397346c52d26a9f28d9\";a:4:{s:10:\"expiration\";i:1571843556;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571670756;}}'),
(201, 13, 'nickname', 'pemiliksm'),
(202, 13, 'first_name', 'pemilik'),
(203, 13, 'last_name', 'seminer'),
(204, 13, 'description', ''),
(205, 13, 'rich_editing', 'true'),
(206, 13, 'syntax_highlighting', 'true'),
(207, 13, 'comment_shortcuts', 'false'),
(208, 13, 'admin_color', 'fresh'),
(209, 13, 'use_ssl', '0'),
(210, 13, 'show_admin_bar_front', 'true'),
(211, 13, 'locale', ''),
(212, 13, 'wp_capabilities', 'a:0:{}'),
(213, 13, 'wp_user_level', '0'),
(214, 13, 'dismissed_wp_pointers', ''),
(215, 13, 'dismissed_wp_pointers', ''),
(216, 13, 'wpcrl_email_verification_token', '07fce51b82a4024e4c560702846fe9fd'),
(217, 14, 'nickname', 'jajang21'),
(218, 14, 'first_name', 'jajang'),
(219, 14, 'last_name', 'jajang'),
(220, 14, 'description', ''),
(221, 14, 'rich_editing', 'true'),
(222, 14, 'syntax_highlighting', 'true'),
(223, 14, 'comment_shortcuts', 'false'),
(224, 14, 'admin_color', 'fresh'),
(225, 14, 'use_ssl', '0'),
(226, 14, 'show_admin_bar_front', 'true'),
(227, 14, 'locale', ''),
(228, 14, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(229, 14, 'wp_user_level', '0'),
(230, 14, 'dismissed_wp_pointers', ''),
(231, 14, 'dismissed_wp_pointers', ''),
(232, 14, 'wpcrl_email_verification_token', 'a40a049e1f452e3f5df571df908f6080'),
(233, 15, 'nickname', 'sugeng'),
(234, 15, 'first_name', 'sugeng'),
(235, 15, 'last_name', 'sugeng'),
(236, 15, 'description', ''),
(237, 15, 'rich_editing', 'true'),
(238, 15, 'syntax_highlighting', 'true'),
(239, 15, 'comment_shortcuts', 'false'),
(240, 15, 'admin_color', 'fresh'),
(241, 15, 'use_ssl', '0'),
(242, 15, 'show_admin_bar_front', 'true'),
(243, 15, 'locale', ''),
(244, 15, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(245, 15, 'wp_user_level', '0'),
(246, 15, 'dismissed_wp_pointers', ''),
(247, 15, 'dismissed_wp_pointers', ''),
(248, 15, 'wpcrl_email_verification_token', '342c88f3c4acbba573e1aea11592b5f9'),
(249, 16, 'nickname', 'debby21'),
(250, 16, 'first_name', 'debby'),
(251, 16, 'last_name', 'debby'),
(252, 16, 'description', ''),
(253, 16, 'rich_editing', 'true'),
(254, 16, 'syntax_highlighting', 'true'),
(255, 16, 'comment_shortcuts', 'false'),
(256, 16, 'admin_color', 'fresh'),
(257, 16, 'use_ssl', '0'),
(258, 16, 'show_admin_bar_front', 'true'),
(259, 16, 'locale', ''),
(260, 16, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(261, 16, 'wp_user_level', '0'),
(262, 16, 'dismissed_wp_pointers', ''),
(263, 16, 'dismissed_wp_pointers', ''),
(264, 16, 'wpcrl_email_verification_token', 'ec44df184fb879e398f6344621c5c9b9'),
(265, 17, 'nickname', 'dinidini'),
(266, 17, 'first_name', 'dini'),
(267, 17, 'last_name', 'dini'),
(268, 17, 'description', ''),
(269, 17, 'rich_editing', 'true'),
(270, 17, 'syntax_highlighting', 'true'),
(271, 17, 'comment_shortcuts', 'false'),
(272, 17, 'admin_color', 'fresh'),
(273, 17, 'use_ssl', '0'),
(274, 17, 'show_admin_bar_front', 'true'),
(275, 17, 'locale', ''),
(276, 17, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(277, 17, 'wp_user_level', '0'),
(278, 17, 'dismissed_wp_pointers', ''),
(279, 17, 'dismissed_wp_pointers', ''),
(280, 17, 'wpcrl_email_verification_token', 'ed1f09bef5dd0f90b4e46a03bfe6da58'),
(281, 18, 'nickname', 'danadana'),
(282, 18, 'first_name', 'dana'),
(283, 18, 'last_name', 'dana'),
(284, 18, 'description', ''),
(285, 18, 'rich_editing', 'true'),
(286, 18, 'syntax_highlighting', 'true'),
(287, 18, 'comment_shortcuts', 'false'),
(288, 18, 'admin_color', 'fresh'),
(289, 18, 'use_ssl', '0'),
(290, 18, 'show_admin_bar_front', 'true'),
(291, 18, 'locale', ''),
(292, 18, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(293, 18, 'wp_user_level', '0'),
(294, 18, 'dismissed_wp_pointers', ''),
(295, 18, 'dismissed_wp_pointers', ''),
(296, 18, 'session_tokens', 'a:1:{s:64:\"cfa21286d3bbd8e210bf3854b21128bf7bea3c8d14760a1181e1632528eab10f\";a:4:{s:10:\"expiration\";i:1571927128;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571754328;}}'),
(297, 19, 'nickname', 'rompies21'),
(298, 19, 'first_name', 'rompies'),
(299, 19, 'last_name', 'vincent'),
(300, 19, 'description', ''),
(301, 19, 'rich_editing', 'true'),
(302, 19, 'syntax_highlighting', 'true'),
(303, 19, 'comment_shortcuts', 'false'),
(304, 19, 'admin_color', 'fresh'),
(305, 19, 'use_ssl', '0'),
(306, 19, 'show_admin_bar_front', 'true'),
(307, 19, 'locale', ''),
(308, 19, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(309, 19, 'wp_user_level', '0'),
(310, 19, 'dismissed_wp_pointers', ''),
(311, 19, 'dismissed_wp_pointers', ''),
(312, 19, 'session_tokens', 'a:1:{s:64:\"5f0fbb27e69197c06e19912231d0971583d25f7f214d485fd8405881756c73b6\";a:4:{s:10:\"expiration\";i:1571927238;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571754438;}}'),
(313, 20, 'nickname', 'sulefebian'),
(314, 20, 'first_name', 'sule'),
(315, 20, 'last_name', 'febian'),
(316, 20, 'description', ''),
(317, 20, 'rich_editing', 'true'),
(318, 20, 'syntax_highlighting', 'true'),
(319, 20, 'comment_shortcuts', 'false'),
(320, 20, 'admin_color', 'fresh'),
(321, 20, 'use_ssl', '0'),
(322, 20, 'show_admin_bar_front', 'true'),
(323, 20, 'locale', ''),
(324, 20, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(325, 20, 'wp_user_level', '0'),
(326, 20, 'dismissed_wp_pointers', ''),
(327, 20, 'dismissed_wp_pointers', ''),
(328, 20, 'session_tokens', 'a:1:{s:64:\"c097420eef3278efab170102a10a29f79c42b338d9ad00d456c4096a4ef2e350\";a:4:{s:10:\"expiration\";i:1571927393;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571754593;}}'),
(329, 21, 'nickname', 'pemiliksm21'),
(330, 21, 'first_name', 'pemilik'),
(331, 21, 'last_name', 'sm'),
(332, 21, 'description', ''),
(333, 21, 'rich_editing', 'true'),
(334, 21, 'syntax_highlighting', 'true'),
(335, 21, 'comment_shortcuts', 'false'),
(336, 21, 'admin_color', 'fresh'),
(337, 21, 'use_ssl', '0'),
(338, 21, 'show_admin_bar_front', 'true'),
(339, 21, 'locale', ''),
(340, 21, 'wp_capabilities', 'a:1:{s:6:\"Author\";b:1;}'),
(341, 21, 'wp_user_level', '0'),
(342, 21, 'dismissed_wp_pointers', ''),
(343, 21, 'dismissed_wp_pointers', ''),
(344, 21, 'session_tokens', 'a:1:{s:64:\"3f68d2eea84632b3183dfff8c07c8279b4141d44620b21d8fca65e22038b8a75\";a:4:{s:10:\"expiration\";i:1584631708;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1584458908;}}'),
(345, 22, 'nickname', 'sm2121'),
(346, 22, 'first_name', 'smsm'),
(347, 22, 'last_name', 'smsms'),
(348, 22, 'description', ''),
(349, 22, 'rich_editing', 'true'),
(350, 22, 'syntax_highlighting', 'true'),
(351, 22, 'comment_shortcuts', 'false'),
(352, 22, 'admin_color', 'fresh'),
(353, 22, 'use_ssl', '0'),
(354, 22, 'show_admin_bar_front', 'true'),
(355, 22, 'locale', ''),
(356, 22, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(357, 22, 'wp_user_level', '0'),
(358, 22, 'dismissed_wp_pointers', ''),
(359, 22, 'dismissed_wp_pointers', ''),
(360, 23, 'nickname', 'brahmayasa'),
(361, 23, 'first_name', 'brahmayasa'),
(362, 23, 'last_name', 'brah'),
(363, 23, 'description', ''),
(364, 23, 'rich_editing', 'true'),
(365, 23, 'syntax_highlighting', 'true'),
(366, 23, 'comment_shortcuts', 'false'),
(367, 23, 'admin_color', 'fresh'),
(368, 23, 'use_ssl', '0'),
(369, 23, 'show_admin_bar_front', 'true'),
(370, 23, 'locale', ''),
(371, 23, 'wp_capabilities', 'a:1:{s:6:\"Author\";b:1;}'),
(372, 23, 'wp_user_level', '0'),
(373, 23, 'dismissed_wp_pointers', ''),
(374, 23, 'dismissed_wp_pointers', ''),
(375, 24, 'nickname', 'satria12'),
(376, 24, 'first_name', 'satria'),
(377, 24, 'last_name', 'dwi'),
(378, 24, 'description', ''),
(379, 24, 'rich_editing', 'true'),
(380, 24, 'syntax_highlighting', 'true'),
(381, 24, 'comment_shortcuts', 'false'),
(382, 24, 'admin_color', 'fresh'),
(383, 24, 'use_ssl', '0'),
(384, 24, 'show_admin_bar_front', 'true'),
(385, 24, 'locale', ''),
(386, 24, 'wp_capabilities', 'a:1:{s:11:\" Subscriber\";b:1;}'),
(387, 24, 'wp_user_level', '0'),
(388, 24, 'dismissed_wp_pointers', ''),
(389, 24, 'dismissed_wp_pointers', ''),
(390, 25, 'nickname', 'rogapebgst'),
(391, 25, 'first_name', 'rogape'),
(392, 25, 'last_name', 'iansen'),
(393, 25, 'description', ''),
(394, 25, 'rich_editing', 'true'),
(395, 25, 'syntax_highlighting', 'true'),
(396, 25, 'comment_shortcuts', 'false'),
(397, 25, 'admin_color', 'fresh'),
(398, 25, 'use_ssl', '0'),
(399, 25, 'show_admin_bar_front', 'true'),
(400, 25, 'locale', ''),
(401, 25, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(402, 25, 'wp_user_level', '0'),
(403, 25, 'dismissed_wp_pointers', ''),
(404, 25, 'dismissed_wp_pointers', ''),
(405, 25, 'session_tokens', 'a:9:{s:64:\"1c96ec4aa2624e143421d4c9b588d087e62d8bb319c8ee432023eea899654f3e\";a:4:{s:10:\"expiration\";i:1587028944;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586856144;}s:64:\"adfe9d7fb81388d7ad42b345b7f4eb39288f0ba1b868e0ef4eced94fb829dff2\";a:4:{s:10:\"expiration\";i:1587029107;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586856307;}s:64:\"e379cd62db4ac6c0a8ab5a4cdb0a72b29a8f22757b2fe84ebdfb8868cd117926\";a:4:{s:10:\"expiration\";i:1587029449;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586856649;}s:64:\"e9233afb31b8af4d543bfe526ddbf8f4c3f0b8154457d28b421a81d4a7bd0dfb\";a:4:{s:10:\"expiration\";i:1587029548;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586856748;}s:64:\"0152244157e7e50be3d8021407c295c5bbc3d6d946374dec3e4bd8e7d24d3a85\";a:4:{s:10:\"expiration\";i:1587029651;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586856851;}s:64:\"3a76c388346a27c424c35ed6ee98cabd2e5d942b646dba8c99275d6f3461bd8b\";a:4:{s:10:\"expiration\";i:1587030009;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586857209;}s:64:\"88184544f72b5bf20b8790fbccfd41b75309913f5de7e93ee5d09ec476d612d7\";a:4:{s:10:\"expiration\";i:1587032716;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1586859916;}s:64:\"d7e7782ed52349f565c0a2b68b4a734713600b8f56f6ff2c6b9be1d6c55bc0de\";a:4:{s:10:\"expiration\";i:1587035094;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1586862294;}s:64:\"fe9618c4c11b033834c441e39b98d406fd2106abb6710acf152b57f61916662a\";a:4:{s:10:\"expiration\";i:1587035094;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1586862294;}}'),
(406, 26, 'nickname', 'fitri2102'),
(407, 26, 'first_name', 'rizka'),
(408, 26, 'last_name', 'fitri'),
(409, 26, 'description', ''),
(410, 26, 'rich_editing', 'true'),
(411, 26, 'syntax_highlighting', 'true'),
(412, 26, 'comment_shortcuts', 'false'),
(413, 26, 'admin_color', 'fresh'),
(414, 26, 'use_ssl', '0'),
(415, 26, 'show_admin_bar_front', 'true'),
(416, 26, 'locale', ''),
(417, 26, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(418, 26, 'wp_user_level', '0'),
(419, 26, 'dismissed_wp_pointers', ''),
(420, 26, 'dismissed_wp_pointers', ''),
(421, 27, 'nickname', 'wira1212'),
(422, 27, 'first_name', 'andih'),
(423, 27, 'last_name', 'wir'),
(424, 27, 'description', ''),
(425, 27, 'rich_editing', 'true'),
(426, 27, 'syntax_highlighting', 'true'),
(427, 27, 'comment_shortcuts', 'false'),
(428, 27, 'admin_color', 'fresh'),
(429, 27, 'use_ssl', '0'),
(430, 27, 'show_admin_bar_front', 'true'),
(431, 27, 'locale', ''),
(432, 27, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(433, 27, 'wp_user_level', '0'),
(434, 27, 'dismissed_wp_pointers', ''),
(435, 27, 'dismissed_wp_pointers', ''),
(436, 28, 'nickname', 'ddd2121'),
(437, 28, 'first_name', 'iky'),
(438, 28, 'last_name', 'dedi'),
(439, 28, 'description', ''),
(440, 28, 'rich_editing', 'true'),
(441, 28, 'syntax_highlighting', 'true'),
(442, 28, 'comment_shortcuts', 'false'),
(443, 28, 'admin_color', 'fresh'),
(444, 28, 'use_ssl', '0'),
(445, 28, 'show_admin_bar_front', 'true'),
(446, 28, 'locale', ''),
(447, 28, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(448, 28, 'wp_user_level', '0'),
(449, 28, 'dismissed_wp_pointers', ''),
(450, 28, 'dismissed_wp_pointers', ''),
(451, 29, 'nickname', 'sri2121'),
(452, 29, 'first_name', 'putri'),
(453, 29, 'last_name', 'sri rahayu'),
(454, 29, 'description', ''),
(455, 29, 'rich_editing', 'true'),
(456, 29, 'syntax_highlighting', 'true'),
(457, 29, 'comment_shortcuts', 'false'),
(458, 29, 'admin_color', 'fresh'),
(459, 29, 'use_ssl', '0'),
(460, 29, 'show_admin_bar_front', 'true'),
(461, 29, 'locale', ''),
(462, 29, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(463, 29, 'wp_user_level', '0'),
(464, 29, 'dismissed_wp_pointers', ''),
(465, 29, 'dismissed_wp_pointers', ''),
(466, 30, 'nickname', 'auliafajar'),
(467, 30, 'first_name', 'fajar'),
(468, 30, 'last_name', 'aulia'),
(469, 30, 'description', ''),
(470, 30, 'rich_editing', 'true'),
(471, 30, 'syntax_highlighting', 'true'),
(472, 30, 'comment_shortcuts', 'false'),
(473, 30, 'admin_color', 'fresh'),
(474, 30, 'use_ssl', '0'),
(475, 30, 'show_admin_bar_front', 'true'),
(476, 30, 'locale', ''),
(477, 30, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(478, 30, 'wp_user_level', '0'),
(479, 30, 'dismissed_wp_pointers', ''),
(480, 30, 'dismissed_wp_pointers', ''),
(481, 31, 'nickname', 'jejeje'),
(482, 31, 'first_name', 'jeje'),
(483, 31, 'last_name', 'jeje'),
(484, 31, 'description', ''),
(485, 31, 'rich_editing', 'true'),
(486, 31, 'syntax_highlighting', 'true'),
(487, 31, 'comment_shortcuts', 'false'),
(488, 31, 'admin_color', 'fresh'),
(489, 31, 'use_ssl', '0'),
(490, 31, 'show_admin_bar_front', 'true'),
(491, 31, 'locale', ''),
(492, 31, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(493, 31, 'wp_user_level', '0'),
(494, 31, 'dismissed_wp_pointers', ''),
(495, 31, 'dismissed_wp_pointers', ''),
(496, 32, 'nickname', 'imamdd'),
(497, 32, 'first_name', 'imam'),
(498, 32, 'last_name', 'dedi'),
(499, 32, 'description', ''),
(500, 32, 'rich_editing', 'true'),
(501, 32, 'syntax_highlighting', 'true'),
(502, 32, 'comment_shortcuts', 'false'),
(503, 32, 'admin_color', 'fresh'),
(504, 32, 'use_ssl', '0'),
(505, 32, 'show_admin_bar_front', 'true'),
(506, 32, 'locale', ''),
(507, 32, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(508, 32, 'wp_user_level', '0'),
(509, 32, 'dismissed_wp_pointers', ''),
(510, 32, 'dismissed_wp_pointers', ''),
(511, 33, 'nickname', 'pemiliksmsm'),
(512, 33, 'first_name', 'pemilik'),
(513, 33, 'last_name', 'febryan'),
(514, 33, 'description', ''),
(515, 33, 'rich_editing', 'true'),
(516, 33, 'syntax_highlighting', 'true'),
(517, 33, 'comment_shortcuts', 'false'),
(518, 33, 'admin_color', 'fresh'),
(519, 33, 'use_ssl', '0'),
(520, 33, 'show_admin_bar_front', 'true'),
(521, 33, 'locale', ''),
(522, 33, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(523, 33, 'wp_user_level', '0'),
(524, 33, 'dismissed_wp_pointers', ''),
(525, 33, 'dismissed_wp_pointers', ''),
(526, 34, 'nickname', 'sotdut'),
(527, 34, 'first_name', 'duta'),
(528, 34, 'last_name', 'sot'),
(529, 34, 'description', ''),
(530, 34, 'rich_editing', 'true'),
(531, 34, 'syntax_highlighting', 'true'),
(532, 34, 'comment_shortcuts', 'false'),
(533, 34, 'admin_color', 'fresh'),
(534, 34, 'use_ssl', '0'),
(535, 34, 'show_admin_bar_front', 'true'),
(536, 34, 'locale', ''),
(537, 34, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(538, 34, 'wp_user_level', '0'),
(539, 34, 'dismissed_wp_pointers', ''),
(540, 35, 'nickname', 'andre21'),
(541, 35, 'first_name', 'andre'),
(542, 35, 'last_name', 'taulany'),
(543, 35, 'description', ''),
(544, 35, 'rich_editing', 'true'),
(545, 35, 'syntax_highlighting', 'true'),
(546, 35, 'comment_shortcuts', 'false'),
(547, 35, 'admin_color', 'fresh'),
(548, 35, 'use_ssl', '0'),
(549, 35, 'show_admin_bar_front', 'true'),
(550, 35, 'locale', ''),
(551, 35, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(552, 35, 'wp_user_level', '0'),
(553, 35, 'dismissed_wp_pointers', ''),
(554, 36, 'nickname', 'desdesss'),
(555, 36, 'first_name', 'desta'),
(556, 36, 'last_name', 'rizka'),
(557, 36, 'description', ''),
(558, 36, 'rich_editing', 'true'),
(559, 36, 'syntax_highlighting', 'true'),
(560, 36, 'comment_shortcuts', 'false'),
(561, 36, 'admin_color', 'fresh'),
(562, 36, 'use_ssl', '0'),
(563, 36, 'show_admin_bar_front', 'true'),
(564, 36, 'locale', ''),
(565, 36, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(566, 36, 'wp_user_level', '0'),
(567, 36, 'dismissed_wp_pointers', ''),
(568, 37, 'nickname', 'jamrud'),
(569, 37, 'first_name', 'jamrud'),
(570, 37, 'last_name', 'jamrud'),
(571, 37, 'description', ''),
(572, 37, 'rich_editing', 'true'),
(573, 37, 'syntax_highlighting', 'true'),
(574, 37, 'comment_shortcuts', 'false'),
(575, 37, 'admin_color', 'fresh'),
(576, 37, 'use_ssl', '0'),
(577, 37, 'show_admin_bar_front', 'true'),
(578, 37, 'locale', ''),
(579, 37, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(580, 37, 'wp_user_level', '0'),
(581, 37, 'dismissed_wp_pointers', ''),
(582, 37, 'dismissed_wp_pointers', ''),
(583, 38, 'nickname', 'pongkibr'),
(584, 38, 'first_name', 'pngki'),
(585, 38, 'last_name', 'barata'),
(586, 38, 'description', ''),
(587, 38, 'rich_editing', 'true'),
(588, 38, 'syntax_highlighting', 'true'),
(589, 38, 'comment_shortcuts', 'false'),
(590, 38, 'admin_color', 'fresh'),
(591, 38, 'use_ssl', '0'),
(592, 38, 'show_admin_bar_front', 'true'),
(593, 38, 'locale', ''),
(594, 38, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(595, 38, 'wp_user_level', '0'),
(596, 38, 'dismissed_wp_pointers', ''),
(597, 38, 'dismissed_wp_pointers', ''),
(598, 39, 'nickname', 'testes'),
(599, 39, 'first_name', 'tes'),
(600, 39, 'last_name', 'tes'),
(601, 39, 'description', ''),
(602, 39, 'rich_editing', 'true'),
(603, 39, 'syntax_highlighting', 'true'),
(604, 39, 'comment_shortcuts', 'false'),
(605, 39, 'admin_color', 'fresh'),
(606, 39, 'use_ssl', '0'),
(607, 39, 'show_admin_bar_front', 'true'),
(608, 39, 'locale', ''),
(609, 39, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(610, 39, 'wp_user_level', '0'),
(611, 39, 'dismissed_wp_pointers', ''),
(612, 39, 'dismissed_wp_pointers', ''),
(613, 40, 'nickname', 'rogape160'),
(614, 40, 'first_name', 'Rogape'),
(615, 40, 'last_name', 'Iansen'),
(616, 40, 'description', ''),
(617, 40, 'rich_editing', 'true'),
(618, 40, 'syntax_highlighting', 'true'),
(619, 40, 'comment_shortcuts', 'false'),
(620, 40, 'admin_color', 'fresh'),
(621, 40, 'use_ssl', '0'),
(622, 40, 'show_admin_bar_front', 'true'),
(623, 40, 'locale', ''),
(624, 40, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(625, 40, 'wp_user_level', '0'),
(626, 40, 'dismissed_wp_pointers', ''),
(627, 40, 'dismissed_wp_pointers', ''),
(628, 40, 'session_tokens', 'a:1:{s:64:\"6849c71e8338256bc43a9ccd5ab833a453679675d491cb3579fb68a94c89a6e9\";a:4:{s:10:\"expiration\";i:1575281121;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575108321;}}'),
(629, 41, 'nickname', 'cobacoba'),
(630, 41, 'first_name', 'coba'),
(631, 41, 'last_name', 'coba'),
(632, 41, 'description', ''),
(633, 41, 'rich_editing', 'true'),
(634, 41, 'syntax_highlighting', 'true'),
(635, 41, 'comment_shortcuts', 'false'),
(636, 41, 'admin_color', 'fresh'),
(637, 41, 'use_ssl', '0'),
(638, 41, 'show_admin_bar_front', 'true'),
(639, 41, 'locale', ''),
(640, 41, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(641, 41, 'wp_user_level', '0'),
(642, 41, 'dismissed_wp_pointers', ''),
(643, 41, 'dismissed_wp_pointers', ''),
(644, 41, 'session_tokens', 'a:1:{s:64:\"ed616f44e34a4b08a6201118dc754702057fd85901ba0bb74293b14236efde53\";a:4:{s:10:\"expiration\";i:1575281435;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575108635;}}'),
(645, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"192.168.43.0\";}'),
(646, 35, 'session_tokens', 'a:9:{s:64:\"d87be4ed5d3127da8b3e4af6d52e1db36b25074a30ebed5d6d0e88c7aaac59bd\";a:4:{s:10:\"expiration\";i:1576252216;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576079416;}s:64:\"2c2a64e90a4bc6fe2fe4d5f2b583ca6bedb3982b574b7088402ae4dbc8f807b5\";a:4:{s:10:\"expiration\";i:1576252674;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576079874;}s:64:\"af446c1772d0cc4b431b4837fb3688f009191f6fb5ce480cf44220dd016eb8ea\";a:4:{s:10:\"expiration\";i:1576253247;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576080447;}s:64:\"95284269fc08cbef47118bdd19547ca73b7c4879381e12eff4844cc5023f98e3\";a:4:{s:10:\"expiration\";i:1576254358;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576081558;}s:64:\"ad2b46d50f1db2397d72206a4a393ebeea11b1a9f26b2148079e9e121459b59a\";a:4:{s:10:\"expiration\";i:1576333741;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576160941;}s:64:\"3ae645d470e14df1da546396502d295691350abd1df3718b0142b65ba93df409\";a:4:{s:10:\"expiration\";i:1576343392;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576170592;}s:64:\"11b8d9748d6b001313094969c52a7b218313f81f157c1f59383ba63f7e6c8d05\";a:4:{s:10:\"expiration\";i:1576374073;s:2:\"ip\";s:13:\"192.168.43.98\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576201273;}s:64:\"e8a99fdf5c81751c7cd614510eeefeb9703e059835c291e4b6dc7f1609c6a05f\";a:4:{s:10:\"expiration\";i:1576374073;s:2:\"ip\";s:13:\"192.168.43.98\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576201273;}s:64:\"b1fd8382065e4f9db933ac1669b699a128a6fe871f965146b802514d50b46b0e\";a:4:{s:10:\"expiration\";i:1576380473;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576207673;}}'),
(647, 42, 'nickname', 'rizkafit21'),
(648, 42, 'first_name', 'rizka'),
(649, 42, 'last_name', 'fitrianty'),
(650, 42, 'description', ''),
(651, 42, 'rich_editing', 'true'),
(652, 42, 'syntax_highlighting', 'true'),
(653, 42, 'comment_shortcuts', 'false'),
(654, 42, 'admin_color', 'fresh'),
(655, 42, 'use_ssl', '0'),
(656, 42, 'show_admin_bar_front', 'true'),
(657, 42, 'locale', ''),
(658, 42, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(659, 42, 'wp_user_level', '0'),
(660, 42, 'dismissed_wp_pointers', ''),
(661, 42, 'dismissed_wp_pointers', ''),
(662, 43, 'nickname', 'des333'),
(663, 43, 'first_name', 'desta'),
(664, 43, 'last_name', 'des'),
(665, 43, 'description', ''),
(666, 43, 'rich_editing', 'true'),
(667, 43, 'syntax_highlighting', 'true'),
(668, 43, 'comment_shortcuts', 'false'),
(669, 43, 'admin_color', 'fresh'),
(670, 43, 'use_ssl', '0'),
(671, 43, 'show_admin_bar_front', 'true'),
(672, 43, 'locale', ''),
(673, 43, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(674, 43, 'wp_user_level', '0'),
(675, 43, 'dismissed_wp_pointers', ''),
(676, 43, 'dismissed_wp_pointers', ''),
(677, 44, 'nickname', 'blaise14'),
(678, 44, 'first_name', 'blaise'),
(679, 44, 'last_name', 'matuidi'),
(680, 44, 'description', ''),
(681, 44, 'rich_editing', 'true'),
(682, 44, 'syntax_highlighting', 'true'),
(683, 44, 'comment_shortcuts', 'false'),
(684, 44, 'admin_color', 'fresh'),
(685, 44, 'use_ssl', '0'),
(686, 44, 'show_admin_bar_front', 'true'),
(687, 44, 'locale', ''),
(688, 44, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(689, 44, 'wp_user_level', '0'),
(690, 44, 'dismissed_wp_pointers', ''),
(691, 44, 'dismissed_wp_pointers', ''),
(692, 44, 'session_tokens', 'a:3:{s:64:\"dafc836592ac9cf1aa0041bdfa68d86474f012ec1574f4f9f519b9c31f5d208d\";a:4:{s:10:\"expiration\";i:1576349532;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576176732;}s:64:\"264ff61d66e02da3967d7fd14be055af824fd71d7f2e683c8c12f6569f32258b\";a:4:{s:10:\"expiration\";i:1576351009;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576178209;}s:64:\"37a3a8df0f10d1156ec92be7e26cd326be337765fa406c7a73449b0244b62a4f\";a:4:{s:10:\"expiration\";i:1576351009;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576178209;}}'),
(693, 45, 'nickname', 'bambang'),
(694, 45, 'first_name', 'bambang'),
(695, 45, 'last_name', 'pamungkas'),
(696, 45, 'description', ''),
(697, 45, 'rich_editing', 'true'),
(698, 45, 'syntax_highlighting', 'true'),
(699, 45, 'comment_shortcuts', 'false'),
(700, 45, 'admin_color', 'fresh'),
(701, 45, 'use_ssl', '0'),
(702, 45, 'show_admin_bar_front', 'true'),
(703, 45, 'locale', ''),
(704, 45, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(705, 45, 'wp_user_level', '0'),
(706, 45, 'dismissed_wp_pointers', ''),
(707, 45, 'dismissed_wp_pointers', ''),
(708, 45, 'session_tokens', 'a:2:{s:64:\"094f6e09ffa1cda8773e9e25379824b3818e216daa9e469f5cd2345b55786c5f\";a:4:{s:10:\"expiration\";i:1576375513;s:2:\"ip\";s:13:\"192.168.43.55\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0\";s:5:\"login\";i:1576202713;}s:64:\"aa5e430ed07200ab4da07e9471296aa33f4798d6d2b90a112aa617d02be73019\";a:4:{s:10:\"expiration\";i:1576375513;s:2:\"ip\";s:13:\"192.168.43.55\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0\";s:5:\"login\";i:1576202713;}}'),
(709, 46, 'nickname', 'iky2102'),
(710, 46, 'first_name', 'iky'),
(711, 46, 'last_name', 'febryan'),
(712, 46, 'description', ''),
(713, 46, 'rich_editing', 'true'),
(714, 46, 'syntax_highlighting', 'true'),
(715, 46, 'comment_shortcuts', 'false'),
(716, 46, 'admin_color', 'fresh'),
(717, 46, 'use_ssl', '0'),
(718, 46, 'show_admin_bar_front', 'true'),
(719, 46, 'locale', ''),
(720, 46, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(721, 46, 'wp_user_level', '0'),
(722, 46, 'dismissed_wp_pointers', ''),
(723, 46, 'dismissed_wp_pointers', ''),
(724, 46, 'session_tokens', 'a:2:{s:64:\"d74cf144cdf0738a22a56a3e6ea0aca65119ca8cd6755b44977406aa6e45e677\";a:4:{s:10:\"expiration\";i:1576382348;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576209548;}s:64:\"4ff1f2fbf97c36d12673d4cac298c1457f0465d2ae47853d97ac5e3f34758b59\";a:4:{s:10:\"expiration\";i:1576466665;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576293865;}}'),
(725, 47, 'nickname', 'ridwanto'),
(726, 47, 'first_name', 'ridwan'),
(727, 47, 'last_name', 'aja'),
(728, 47, 'description', ''),
(729, 47, 'rich_editing', 'true'),
(730, 47, 'syntax_highlighting', 'true'),
(731, 47, 'comment_shortcuts', 'false'),
(732, 47, 'admin_color', 'fresh'),
(733, 47, 'use_ssl', '0'),
(734, 47, 'show_admin_bar_front', 'true'),
(735, 47, 'locale', ''),
(736, 47, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(737, 47, 'wp_user_level', '0'),
(738, 47, 'dismissed_wp_pointers', ''),
(739, 47, 'dismissed_wp_pointers', ''),
(740, 47, 'session_tokens', 'a:1:{s:64:\"331f5cab6f0227634485ba0b4cd3834798a39de79f020ee8239b88814157e317\";a:4:{s:10:\"expiration\";i:1576465684;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576292884;}}'),
(741, 48, 'nickname', 'psrhyu'),
(742, 48, 'first_name', 'Putri'),
(743, 48, 'last_name', 'Sri Rahayu'),
(744, 48, 'description', ''),
(745, 48, 'rich_editing', 'true'),
(746, 48, 'syntax_highlighting', 'true'),
(747, 48, 'comment_shortcuts', 'false'),
(748, 48, 'admin_color', 'fresh'),
(749, 48, 'use_ssl', '0'),
(750, 48, 'show_admin_bar_front', 'true'),
(751, 48, 'locale', ''),
(752, 48, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(753, 48, 'wp_user_level', '0'),
(754, 48, 'dismissed_wp_pointers', ''),
(755, 48, 'dismissed_wp_pointers', ''),
(756, 48, 'session_tokens', 'a:2:{s:64:\"5020a089d0ee1767037496367413c1786920dfabf3d03a8a8fac54b932cab0a1\";a:4:{s:10:\"expiration\";i:1576468109;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576295309;}s:64:\"a493d6599ec2b9fb42885bb0f6ad45a6bd336b5a19f405d521f4334292b1898a\";a:4:{s:10:\"expiration\";i:1576468109;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36\";s:5:\"login\";i:1576295309;}}'),
(757, 49, 'nickname', 'pemilik17032225'),
(758, 49, 'first_name', 'pemilik'),
(759, 49, 'last_name', '17032225'),
(760, 49, 'description', ''),
(761, 49, 'rich_editing', 'true'),
(762, 49, 'syntax_highlighting', 'true'),
(763, 49, 'comment_shortcuts', 'false'),
(764, 49, 'admin_color', 'fresh'),
(765, 49, 'use_ssl', '0'),
(766, 49, 'show_admin_bar_front', 'true'),
(767, 49, 'locale', ''),
(768, 49, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(769, 49, 'wp_user_level', '2'),
(770, 49, 'dismissed_wp_pointers', ''),
(771, 49, 'dismissed_wp_pointers', ''),
(772, 49, 'session_tokens', 'a:1:{s:64:\"0832496d25ff251cfe74cd65087eea01abc30f80111a441079876e95689518c9\";a:4:{s:10:\"expiration\";i:1584631956;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1584459156;}}'),
(773, 49, 'wp_dashboard_quick_press_last_post_id', '175'),
(774, 49, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"192.168.43.0\";}'),
(775, 50, 'nickname', 'pm2242'),
(776, 50, 'first_name', 'pemilik'),
(777, 50, 'last_name', '2242'),
(778, 50, 'description', ''),
(779, 50, 'rich_editing', 'true'),
(780, 50, 'syntax_highlighting', 'true'),
(781, 50, 'comment_shortcuts', 'false'),
(782, 50, 'admin_color', 'fresh'),
(783, 50, 'use_ssl', '0'),
(784, 50, 'show_admin_bar_front', 'true'),
(785, 50, 'locale', ''),
(786, 50, 'wp_capabilities', 'a:0:{}'),
(787, 50, 'wp_user_level', '0'),
(788, 50, 'dismissed_wp_pointers', ''),
(789, 50, 'dismissed_wp_pointers', ''),
(790, 51, 'nickname', 'pm2246'),
(791, 51, 'first_name', ''),
(792, 51, 'last_name', ''),
(793, 51, 'description', ''),
(794, 51, 'rich_editing', 'true'),
(795, 51, 'syntax_highlighting', 'true'),
(796, 51, 'comment_shortcuts', 'false'),
(797, 51, 'admin_color', 'fresh'),
(798, 51, 'use_ssl', '0'),
(799, 51, 'show_admin_bar_front', 'true'),
(800, 51, 'locale', ''),
(801, 51, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(802, 51, 'wp_user_level', '0'),
(803, 51, 'default_password_nag', '1'),
(804, 52, 'nickname', 'pemilik23'),
(805, 52, 'first_name', 'pemilik'),
(806, 52, 'last_name', '23'),
(807, 52, 'description', ''),
(808, 52, 'rich_editing', 'true'),
(809, 52, 'syntax_highlighting', 'true'),
(810, 52, 'comment_shortcuts', 'false'),
(811, 52, 'admin_color', 'fresh'),
(812, 52, 'use_ssl', '0'),
(813, 52, 'show_admin_bar_front', 'true'),
(814, 52, 'locale', ''),
(815, 52, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(816, 52, 'wp_user_level', '0'),
(817, 52, 'dismissed_wp_pointers', ''),
(818, 52, 'dismissed_wp_pointers', ''),
(819, 53, 'nickname', 'onipmpm'),
(820, 53, 'first_name', 'oni'),
(821, 53, 'last_name', 'pm'),
(822, 53, 'description', ''),
(823, 53, 'rich_editing', 'true'),
(824, 53, 'syntax_highlighting', 'true'),
(825, 53, 'comment_shortcuts', 'false'),
(826, 53, 'admin_color', 'fresh'),
(827, 53, 'use_ssl', '0'),
(828, 53, 'show_admin_bar_front', 'true'),
(829, 53, 'locale', ''),
(830, 53, 'wp_capabilities', 'a:1:{i:1;b:1;}'),
(831, 53, 'wp_user_level', '0'),
(832, 53, 'dismissed_wp_pointers', ''),
(833, 53, 'dismissed_wp_pointers', ''),
(834, 23, 'session_tokens', 'a:1:{s:64:\"016f7f77862324684a1b27d695fc95ebdf2df4b5f1c6781e04431782838db21b\";a:4:{s:10:\"expiration\";i:1584634451;s:2:\"ip\";s:13:\"192.168.43.17\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1584461651;}}'),
(835, 54, 'nickname', 'pemilikoni'),
(836, 54, 'first_name', 'pemilik'),
(837, 54, 'last_name', 'oni'),
(838, 54, 'description', ''),
(839, 54, 'rich_editing', 'true'),
(840, 54, 'syntax_highlighting', 'true'),
(841, 54, 'comment_shortcuts', 'false'),
(842, 54, 'admin_color', 'fresh'),
(843, 54, 'use_ssl', '0'),
(844, 54, 'show_admin_bar_front', 'true'),
(845, 54, 'locale', ''),
(846, 54, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(847, 54, 'wp_user_level', '2'),
(848, 54, 'dismissed_wp_pointers', ''),
(849, 55, 'nickname', 'pemilik1803'),
(850, 55, 'first_name', 'pemilik'),
(851, 55, 'last_name', ''),
(852, 55, 'description', ''),
(853, 55, 'rich_editing', 'true'),
(854, 55, 'syntax_highlighting', 'true'),
(855, 55, 'comment_shortcuts', 'false'),
(856, 55, 'admin_color', 'fresh'),
(857, 55, 'use_ssl', '0'),
(858, 55, 'show_admin_bar_front', 'true'),
(859, 55, 'locale', ''),
(860, 55, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(861, 55, 'wp_user_level', '0'),
(862, 55, 'dismissed_wp_pointers', ''),
(863, 55, 'dismissed_wp_pointers', ''),
(864, 56, 'nickname', 'pm1330'),
(865, 56, 'first_name', 'pemilik'),
(866, 56, 'last_name', ''),
(867, 56, 'description', ''),
(868, 56, 'rich_editing', 'true'),
(869, 56, 'syntax_highlighting', 'true'),
(870, 56, 'comment_shortcuts', 'false'),
(871, 56, 'admin_color', 'fresh'),
(872, 56, 'use_ssl', '0'),
(873, 56, 'show_admin_bar_front', 'true'),
(874, 56, 'locale', ''),
(875, 56, 'wp_capabilities', 'a:1:{s:6:\"Author\";b:1;}'),
(876, 56, 'wp_user_level', '0'),
(877, 56, 'dismissed_wp_pointers', ''),
(878, 56, 'dismissed_wp_pointers', ''),
(879, 57, 'nickname', 'pemilik1331'),
(880, 57, 'first_name', 'pemilik'),
(881, 57, 'last_name', ''),
(882, 57, 'description', ''),
(883, 57, 'rich_editing', 'true'),
(884, 57, 'syntax_highlighting', 'true'),
(885, 57, 'comment_shortcuts', 'false'),
(886, 57, 'admin_color', 'fresh'),
(887, 57, 'use_ssl', '0'),
(888, 57, 'show_admin_bar_front', 'true'),
(889, 57, 'locale', ''),
(890, 57, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(891, 57, 'wp_user_level', '2'),
(892, 57, 'dismissed_wp_pointers', ''),
(893, 57, 'dismissed_wp_pointers', ''),
(894, 57, 'session_tokens', 'a:1:{s:64:\"07d978c33d42dd05ba5335de063182f00be8113db8468f6c36a217f28618bec6\";a:4:{s:10:\"expiration\";i:1584776898;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1584604098;}}'),
(895, 57, 'wp_dashboard_quick_press_last_post_id', '178'),
(896, 58, 'nickname', 'tiasambar'),
(897, 58, 'first_name', 'tias'),
(898, 58, 'last_name', 'ambar'),
(899, 58, 'description', ''),
(900, 58, 'rich_editing', 'true'),
(901, 58, 'syntax_highlighting', 'true'),
(902, 58, 'comment_shortcuts', 'false'),
(903, 58, 'admin_color', 'fresh'),
(904, 58, 'use_ssl', '0'),
(905, 58, 'show_admin_bar_front', 'true'),
(906, 58, 'locale', ''),
(907, 58, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(908, 58, 'wp_user_level', '0'),
(909, 58, 'dismissed_wp_pointers', ''),
(910, 58, 'dismissed_wp_pointers', ''),
(911, 59, 'nickname', 'pmrogape'),
(912, 59, 'first_name', 'rogape'),
(913, 59, 'last_name', 'pm'),
(914, 59, 'description', ''),
(915, 59, 'rich_editing', 'true'),
(916, 59, 'syntax_highlighting', 'true'),
(917, 59, 'comment_shortcuts', 'false'),
(918, 59, 'admin_color', 'fresh'),
(919, 59, 'use_ssl', '0'),
(920, 59, 'show_admin_bar_front', 'true'),
(921, 59, 'locale', ''),
(922, 59, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(923, 59, 'wp_user_level', '2'),
(924, 59, 'dismissed_wp_pointers', ''),
(925, 59, 'dismissed_wp_pointers', ''),
(926, 58, 'session_tokens', 'a:7:{s:64:\"d207432cdc26e9df62a18fb6fe089e9f3e7d7c9ea9200fe3cc33c3f23e0325bd\";a:4:{s:10:\"expiration\";i:1587019337;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586846537;}s:64:\"69d53b05f5962cb3bed24918527942997e76587e7d09e643e0a83fefc949159a\";a:4:{s:10:\"expiration\";i:1587029922;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586857122;}s:64:\"1e22663d420f9d0a012ebf8cb283acdfd9c68bc2d9da60a87498c186e7557485\";a:4:{s:10:\"expiration\";i:1587030144;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586857344;}s:64:\"bceb8dfd787188b007dd50bd4aa2b528a96170fbdfd25453dd694c7e2397d009\";a:4:{s:10:\"expiration\";i:1587030606;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586857806;}s:64:\"bc860d0504369f846f5a13035ee5fb1ddf297ff7eb585c5757ebf82b53e29476\";a:4:{s:10:\"expiration\";i:1587032393;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1586859593;}s:64:\"d00efb1c31f428c1b240be57fd5bb02f16c28610e9d69cb29f2aa0547c0d3d91\";a:4:{s:10:\"expiration\";i:1587032570;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1586859770;}s:64:\"02bc85eb6c8f3cf909af230a90cfdf1ecef791716f658cfa12b27622176ba8bf\";a:4:{s:10:\"expiration\";i:1587032923;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1586860123;}}'),
(927, 60, 'nickname', 'wida1706'),
(928, 60, 'first_name', 'wida'),
(929, 60, 'last_name', 'widiati'),
(930, 60, 'description', ''),
(931, 60, 'rich_editing', 'true'),
(932, 60, 'syntax_highlighting', 'true'),
(933, 60, 'comment_shortcuts', 'false'),
(934, 60, 'admin_color', 'fresh'),
(935, 60, 'use_ssl', '0'),
(936, 60, 'show_admin_bar_front', 'true'),
(937, 60, 'locale', ''),
(938, 60, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(939, 60, 'wp_user_level', '0'),
(940, 60, 'dismissed_wp_pointers', ''),
(941, 60, 'dismissed_wp_pointers', ''),
(942, 61, 'nickname', 'wida17pm'),
(943, 61, 'first_name', 'wida'),
(944, 61, 'last_name', 'pm'),
(945, 61, 'description', ''),
(946, 61, 'rich_editing', 'true'),
(947, 61, 'syntax_highlighting', 'true'),
(948, 61, 'comment_shortcuts', 'false'),
(949, 61, 'admin_color', 'fresh'),
(950, 61, 'use_ssl', '0'),
(951, 61, 'show_admin_bar_front', 'true'),
(952, 61, 'locale', ''),
(953, 61, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(954, 61, 'wp_user_level', '2'),
(955, 61, 'dismissed_wp_pointers', ''),
(956, 61, 'dismissed_wp_pointers', ''),
(957, 54, 'session_tokens', 'a:2:{s:64:\"36d993262f87511cb731b134b5ba88655aa98c4e942933f8b45830ce50bb3ae6\";a:4:{s:10:\"expiration\";i:1584977709;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1584804909;}s:64:\"79e575ce71a4cbd070417074724c80184306c12b3bf3000989e3e86af9cd1383\";a:4:{s:10:\"expiration\";i:1584984562;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1584811762;}}'),
(958, 62, 'nickname', 'pmadhi'),
(959, 62, 'first_name', 'andih'),
(960, 62, 'last_name', 'pm'),
(961, 62, 'description', ''),
(962, 62, 'rich_editing', 'true'),
(963, 62, 'syntax_highlighting', 'true'),
(964, 62, 'comment_shortcuts', 'false'),
(965, 62, 'admin_color', 'fresh'),
(966, 62, 'use_ssl', '0'),
(967, 62, 'show_admin_bar_front', 'true'),
(968, 62, 'locale', ''),
(969, 62, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(970, 62, 'wp_user_level', '2'),
(971, 62, 'dismissed_wp_pointers', ''),
(972, 62, 'dismissed_wp_pointers', ''),
(973, 1, 'session_tokens', 'a:1:{s:64:\"67bb85e6c162a83d6a54ec4492874ceb077813cdab28924f503b05532f359651\";a:4:{s:10:\"expiration\";i:1587202319;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1587029519;}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role_user` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `role_user`) VALUES
(1, 'admin_esinar', '$P$BWSXWu8maHQFCraSBbFZv05iadto6w1', 'admin_esinar', 'rizkyfebryan21@gmail.com', '', '2019-09-27 17:59:16', '', 0, 'admin_esinar', NULL),
(2, 'onifebryan', '$P$BsAWfEcZOlH5SqUWPduWmEANtvC..9/', 'onifebryan', 'rizky@nadyne.com', '', '2019-10-06 15:04:24', '1570374266:$P$BLlAhpuSf.YKsrmFdHAvvW.IZGPICs1', 0, 'oni febryan', 'author'),
(3, 'rogape', '$P$BvTBQvB3sU.jXH29njHaK3KUZtn3ey0', 'rogape', 'rogape@gmail.com', '', '2019-10-06 15:20:33', '', 0, 'rogape iansen', NULL),
(4, 'yulia13', '$P$BWUeO0XgR5o2Xol8mncOv919Ut3FJS/', 'yulia13', 'yulia@gmail.com', '', '2019-10-20 14:45:18', '', 0, 'yulia wardaningsih', NULL),
(5, 'onifebryan21', '$P$Bjlwv75FifVcsrsMk0NxxA66lSdgrK/', 'onifebryan21', 'rizkyfebryan21@yahoo.co.id', '', '2019-10-20 15:07:00', '', 0, 'iky febryan', NULL),
(6, 'dedidesta', '$P$BlzC2YA.7gfWCIGG2i1E/6MhWraera0', 'dedidesta', 'desta@nadyne.com', '', '2019-10-21 14:55:21', '', 0, 'desta dedi', NULL),
(7, 'rizka21', '$P$BNVPtfRv7bD3DcPKq3uQaunKRwJEW/1', 'rizka21', 'rizka@nadyne.com', '', '2019-10-21 14:57:19', '', 0, 'ine rizka', NULL),
(8, 'octa11', '$P$BtC.P5DBnEZBe9eHucdKqbdUDSKU4D.', 'octa11', 'octa@nadyee.com', '', '2019-10-21 14:59:16', '', 0, 'octa pangestu', NULL),
(9, 'adniadni', '$P$BkLmfx0WApZx8hxb9sxamXZLPac2G80', 'adniadni', 'adni@nadyne.com', '', '2019-10-21 15:01:05', '', 0, 'adni adni', NULL),
(10, 'ikydedi', '$P$BfJVowsWI/IldxYQcMRk7vbexDqC/u0', 'ikydedi', 'ikydedi@nadyne.com', '', '2019-10-21 15:02:10', '', 0, 'iky dedi', NULL),
(11, 'wida17', '$P$BJd4GS0SdQE7iKhhY6pOdQrj.YHWPt0', 'wida17', 'wida@nadyne.com', '', '2019-10-21 15:08:02', '', 0, 'wida widi', NULL),
(12, 'adhi13', '$P$BoiQzstLU87Uibo.nroPsbq9ZAhtcf/', 'adhi13', 'adhi13@gmail.co', '', '2019-10-21 15:12:05', '', 0, 'adhi wiraw', NULL),
(13, 'pemiliksm', '$P$BZR0/E/DlAFIDfpVOZXyQ3fTCh53uX0', 'pemiliksm', 'pemilik@mercu.com', '', '2019-10-21 15:14:55', '', 0, 'pemilik seminer', NULL),
(14, 'jajang21', '$P$BLrNJhkeJAHzgxJb8xD.k13JZBCcnV/', 'jajang21', 'jajang@gmail.co', '', '2019-10-22 14:00:19', '', 0, 'jajang jajang', NULL),
(15, 'sugeng', '$P$BMhwh4C7m2RrMDeeegbwLgtCVcr3lb.', 'sugeng', 'sugeng21@gmail.co', '', '2019-10-22 14:05:01', '', 0, 'sugeng sugeng', NULL),
(16, 'debby21', '$P$BhC24JDyJKjQ57u07w/s1YJMBLQefh.', 'debby21', 'debby@ndyne.com', '', '2019-10-22 14:18:05', '', 0, 'debby debby', NULL),
(17, 'dinidini', '$P$BwdPy08BvWHGVLquhhftOuuPLLT4lY.', 'dinidini', 'dini@nadye.com', '', '2019-10-22 14:23:43', '', 0, 'dini dini', NULL),
(18, 'danadana', '$P$BqDABSSz4KPnY8Mqd6HyNAfG2dG8gT1', 'danadana', 'dana@gmail.co', '', '2019-10-22 14:25:11', '', 0, 'dana dana', NULL),
(19, 'rompies21', '$P$B4LvClYiScC.h9qB2r.qjXTOUPpLe4.', 'rompies21', 'rompies21@gmail.com', '', '2019-10-22 14:26:54', '', 0, 'rompies vincent', NULL),
(20, 'sulefebian', '$P$B/MUojY1A8PagdXkzcwk6bRl8.TGKx1', 'sulefebian', 'sule@gmail.com', '', '2019-10-22 14:28:20', '', 0, 'sule febian', NULL),
(21, 'pemiliksm21', '$P$Bpj6fP/zRSsg5E.ENZUTtP5DhkPZIH1', 'pemiliksm21', 'pemilik222@nafy.co', '', '2019-10-22 14:36:31', '', 0, 'pemilik sm', NULL),
(22, 'sm2121', '$P$BYDc1Bl51eTfLQGNqZAbEz3b1aPhxa/', 'sm2121', 'sm@gm.co', '', '2019-10-22 14:57:49', '', 0, 'smsm smsms', NULL),
(23, 'brahmayasa', '$P$B9IcvtzFIbcVxWEqK68zvGEhZZwnHe/', 'brahmayasa', 'brahmayasa@gm.co', '', '2019-10-22 15:00:15', '', 0, 'brahmayasa brah', NULL),
(24, 'satria12', '$P$B257dIMJD16gb9auAEyyemEUInHA9Q/', 'satria12', 'ast@gm.co', '', '2019-10-22 15:03:10', '', 0, 'satria dwi', NULL),
(25, 'rogapetamvan', '$P$Bi3/HD88HqkGjaSJFME.Bt.F0ZDALp/', 'rogapetamvan', 'esinar.rry@gmail.com', '', '2019-10-26 08:38:26', '', 0, 'rogape tamvan', NULL),
(26, 'fitri2102', '$P$BRwt4nQEan2GLLLZdFnf2azTUTjuPv.', 'fitri2102', 'fitri@gmail.com', '', '2019-11-29 15:29:05', '', 0, 'rizka fitri', NULL),
(27, 'wira1212', '$P$BvkC/ghOz3F9Q2J8HlsZ4x.oc1MztL.', 'wira1212', 'wirra@gmail.com', '', '2019-11-29 15:30:39', '', 0, 'andih wir', NULL),
(28, 'ddd2121', '$P$BbDktfpsPr2CnUXn6Sj5xGJfoRvy3x0', 'ddd2121', 'ddd21@gmail.com', '', '2019-11-29 15:32:07', '', 0, 'iky dedi', NULL),
(29, 'sri2121', '$P$BbNSh5Aifpn3dhH.v0Ffc7TvhRgize0', 'sri2121', 'sriptr@gmail.com', '', '2019-11-29 15:35:49', '', 0, 'putri sri rahayu', NULL),
(30, 'auliafajar', '$P$B6m9c9xnOvpsQncijc/7vb2Nrr6id81', 'auliafajar', 'fajar@gm.com', '', '2019-11-29 15:37:17', '', 0, 'fajar aulia', NULL),
(31, 'jejeje', '$P$BDph/XVQi8KZwkjNao1A6tfFiI8/Rj1', 'jejeje', 'jeje@gmgm.com', '', '2019-11-29 15:42:23', '', 0, 'jeje jeje', NULL),
(32, 'imamdd', '$P$Bemyo7QUIKbNV4/K7Z7v6QHo/Birn6/', 'imamdd', 'imama@gm.com', '', '2019-11-29 15:43:20', '', 0, 'imam dedi', NULL),
(33, 'pemiliksmsm', '$P$BEFg3m46qoBeH.FfhL0f5SvW8d/uUJ.', 'pemiliksmsm', 'desta22@nadyne.com', '', '2019-11-29 15:45:21', '', 0, 'pemilik febryan', NULL),
(34, 'sotdut', '$P$BcR8M/9gEoDduBA86qrLUqMhc9mKDW1', 'sotdut', 'sotdut@mm.com', '', '2019-11-29 16:31:45', '', 0, 'duta sot', NULL),
(35, 'andre21', '$P$BH7rCSIEGP0qzLPU6MsFxMLXceeNed.', 'andre21', 'andretau@mm.com', '', '2019-11-29 16:39:20', '', 0, 'Andre Taulanyyy', NULL),
(36, 'desdesss', '$P$BCSw7oZliKKT07Eoh3KwXrPUrOqyh5.', 'desdesss', 'desta111@nadyne.com', '', '2019-11-29 16:42:41', '', 0, 'desta rizka', NULL),
(37, 'jamrud', '$P$BzBuOW3Bf3PEYzGPV8K6GpsHZSLZvD.', 'jamrud', 'jamrud@jamrud.com', '', '2019-11-29 16:53:00', '', 0, 'jamrud jamrud', NULL),
(38, 'pongkibr', '$P$BcQeImpg9XePDAKpZWDbSMXdtKixgt.', 'pongkibr', 'brpogki@gm.com', '', '2019-11-30 00:02:24', '', 0, 'pngki barata', NULL),
(39, 'testes', '$P$Bx0yFrXmjnwDD/2Bg78yHAyuWhPvGu/', 'testes', 'tes@mm.com', '', '2019-11-30 00:08:33', '', 0, 'tes tes', NULL),
(40, 'rogape160', '$P$B9de3fQyM8QukpjsgByNgTS/OAhEVN0', 'rogape160', 'rogape_160@yahoo.co.id', '', '2019-11-30 17:04:29', '', 0, 'Rogape Iansen', NULL),
(41, 'cobacoba', '$P$BMgD3ngekAQh8ho1NlaQus2UmfJdBE.', 'cobacoba', 'coba@yahoo.com', '', '2019-11-30 17:10:07', '', 0, 'coba coba', NULL),
(42, 'rizkafit21', '$P$BskWvGUuPOD9t6sX6vgJPBtblGS4Ir1', 'rizkafit21', 'rizka@mm.co', '', '2019-12-10 23:08:21', '', 0, 'rizka fitrianty', NULL),
(43, 'des333', '$P$ByiqsR7ujXS5DdYUXl3vpYMLAeMVhA1', 'des333', 'desta223@nadyne.com', '', '2019-12-10 23:19:09', '', 0, 'desta des', NULL),
(44, 'blaise14', '$P$BEwwDyLoc8dYderpcdanZiFW5J1O3m0', 'blaise14', 'blaise14@gmail.com', '', '2019-12-13 01:51:36', '', 0, 'blaise matuidi', NULL),
(45, 'bambang', '$P$B0S02MUVKx/IMLgxjUDVVpeaqJJy/r/', 'bambang', 'bambangfebryan@yahoo.com', '', '2019-12-13 09:03:42', '', 0, 'bambang febryan', NULL),
(46, 'iky2102', '$P$BLktmJpogzWb/jHPA.HL2eonjXvfLK0', 'iky2102', 'iky@gmail.com', '', '2019-12-13 10:58:26', '', 0, 'iky febryan', NULL),
(47, 'ridwanto', '$P$BRw4gqXEF96DOQ58C5EaWZgzAuYt7O0', 'ridwanto', 'ridwanto1994@gmail.com', '', '2019-12-14 10:07:25', '', 0, 'ridwan aja', NULL),
(48, 'psrhyu', '$P$Bz3apBa9hdIvftXX5s9nAA2tIcD3GZ.', 'psrhyu', 'putrisrirahayu17@gmail.com', '', '2019-12-14 10:47:56', '', 0, 'Putri Sri Rahayu', NULL),
(49, 'pemilik17032225', '$P$B1u5BKYILITDa2Xi7CadL3EuVFGK0z/', 'pemilik17032225', '17032225@gmail.com', '', '2020-03-17 22:25:35', '', 0, 'pemilik 17032225', 'author'),
(50, 'pm2242', '$P$BZTEFAaloE8D9zhB32h1lH.op05bbz0', 'pm2242', 'pm2242@gm.com', '', '2020-03-17 22:42:33', '', 0, 'pemilik 2242', NULL),
(51, 'pm2246', '$P$BlmYJV/0pK0MWEcRNxyITLdaofFoEM1', 'pm2246', 'pm2246@gmai.com', '', '2020-03-17 15:46:17', '1584459978:$P$BSFZI2DCf43B2WnlDC77RIaHcCtoda0', 0, 'pm2246', NULL),
(52, 'pemilik23', '$P$BGd1qs8FIjNKuYYysP7yhOv7PMAeof/', 'pemilik23', 'pemilik23@gm.co', '', '2020-03-17 23:04:10', '', 0, 'pemilik 23', NULL),
(53, 'onipmpm', '$P$BintRtpUL.ZCqt44RzK6wM8dNpb.2D0', 'onipmpm', 'onipmpm@gm.co', '', '2020-03-17 23:12:49', '', 0, 'oni pm', NULL),
(54, 'pemilikoni', '$P$Bem6Ak5bDc5CXCycXFKOJnR.PUnxHu0', 'pemilikoni', 'ooni@gm.com', '', '2020-03-17 23:18:41', '', 0, 'pemilik oni', 'author'),
(55, 'pemilik1803', '$P$BnlICbur18LMbm13fFXuWx3CPkLvPA/', 'pemilik1803', 'pemilik1803@mm.co', '', '2020-03-18 11:45:34', '', 0, 'pemilik', NULL),
(56, 'pm1330', '$P$BaBjUFrlClZiD1aHe59cQOUYjfpMVO/', 'pm1330', 'pm1330@ndy.co', '', '2020-03-18 13:30:25', '', 0, 'pemilik', NULL),
(57, 'pemilik1331', '$P$BKUtO3iYoMiY7BjaXQMqlh9opxgCK9/', 'pemilik1331', 'pemilik1331@ndy.co', '', '2020-03-18 13:31:58', '', 0, 'pemilik', 'author'),
(58, 'tiasambar', '$P$BBes4YcK2BDc51qZNo7m75.D2YoIYg/', 'tiasambar', 'tias@gg.co', '', '2020-03-19 15:06:35', '', 0, 'tias ambarwati', NULL),
(59, 'pmrogape', '$P$BrSt2/xmmRx7tSNhmY0Kcwu1Kjy6vM.', 'pmrogape', 'pmrogape@gg.co', '', '2020-03-19 15:07:47', '', 0, 'rogape pm', 'author'),
(60, 'wida1706', '$P$B2SDDz1PKj1a6Rd0dg/WEoXpkO7IIe/', 'wida1706', 'wida.widi@nadyne.com', '', '2020-03-21 21:09:54', '', 0, 'wida widiati', 'subscriber'),
(61, 'wida17pm', '$P$B.InMtbJL4AVpMAN05bv8dfC81lwCr1', 'wida17pm', 'wida.pm@nadyne.com', '', '2020-03-21 21:11:01', '', 0, 'wida pm', 'author'),
(62, 'pmadhi', '$P$BHa6HQbFu62SWmJenWuKzWPAwjmAyU.', 'pmadhi', 'pmadhi@gg.co', '', '2020-03-22 18:36:59', '', 0, 'andih pm', 'author');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `coba`
--
ALTER TABLE `coba`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `daftar_seminar`
--
ALTER TABLE `daftar_seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `file_verifikasi`
--
ALTER TABLE `file_verifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pdf_verifikasi_daftar`
--
ALTER TABLE `pdf_verifikasi_daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekening_pemilik`
--
ALTER TABLE `rekening_pemilik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_esinar`
--
ALTER TABLE `user_esinar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indeks untuk tabel `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indeks untuk tabel `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indeks untuk tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indeks untuk tabel `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indeks untuk tabel `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indeks untuk tabel `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indeks untuk tabel `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `coba`
--
ALTER TABLE `coba`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `daftar_seminar`
--
ALTER TABLE `daftar_seminar`
  MODIFY `id` bigint(35) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `file_verifikasi`
--
ALTER TABLE `file_verifikasi`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pdf_verifikasi_daftar`
--
ALTER TABLE `pdf_verifikasi_daftar`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rekening_pemilik`
--
ALTER TABLE `rekening_pemilik`
  MODIFY `id` bigint(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_esinar`
--
ALTER TABLE `user_esinar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1443;

--
-- AUTO_INCREMENT untuk tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=659;

--
-- AUTO_INCREMENT untuk tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT untuk tabel `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- AUTO_INCREMENT untuk tabel `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

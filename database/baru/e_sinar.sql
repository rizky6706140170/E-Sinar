-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2020 pada 23.28
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
-- Database: `e_sinar`
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
  `id` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `nama_seminar` varchar(100) NOT NULL,
  `id_post` int(6) NOT NULL,
  `id_author` int(6) NOT NULL,
  `tgl_seminar` varchar(20) NOT NULL,
  `status` int(3) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_seminar`
--

INSERT INTO `daftar_seminar` (`id`, `id_user`, `nama_seminar`, `id_post`, `id_author`, `tgl_seminar`, `status`, `created_at`, `update_at`) VALUES
(1, 25, 'seminar nasional', 280, 59, '24-05-2020', 1, '2020-05-16 02:25:04', '2020-05-15 19:41:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_verifikasi`
--

CREATE TABLE `file_verifikasi` (
  `id` int(6) NOT NULL,
  `id_daftar` int(6) NOT NULL,
  `id_author` int(6) NOT NULL,
  `id_post` int(6) NOT NULL,
  `file_foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `file_verifikasi`
--

INSERT INTO `file_verifikasi` (`id`, `id_daftar`, `id_author`, `id_post`, `file_foto`) VALUES
(1, 1, 59, 280, 'rogape tamvan-280-25.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pdf_verifikasi_daftar`
--

CREATE TABLE `pdf_verifikasi_daftar` (
  `id` int(6) NOT NULL,
  `id_verifikasi` int(6) DEFAULT NULL,
  `file_pdf` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pdf_verifikasi_daftar`
--

INSERT INTO `pdf_verifikasi_daftar` (`id`, `id_verifikasi`, `file_pdf`) VALUES
(1, 1, '25280_verifikasi.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id` int(6) NOT NULL,
  `id_user` int(6) DEFAULT NULL,
  `file_foto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id`, `id_user`, `file_foto`) VALUES
(1, 6, '6.jpg'),
(2, 35, '35.jpg'),
(3, 44, '44.jpg'),
(4, 45, '45.jpg'),
(5, 58, '58.jpg'),
(6, 25, '25.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening_pemilik`
--

CREATE TABLE `rekening_pemilik` (
  `id` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `rekening` varchar(20) DEFAULT NULL
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
-- Struktur dari tabel `seminar_selesai`
--

CREATE TABLE `seminar_selesai` (
  `id` int(6) NOT NULL,
  `id_author` int(6) DEFAULT NULL,
  `id_post` int(6) DEFAULT NULL,
  `harga_sm` varchar(30) DEFAULT NULL,
  `terverifikasi` int(5) DEFAULT NULL,
  `status_tf` int(5) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `seminar_selesai`
--

INSERT INTO `seminar_selesai` (`id`, `id_author`, `id_post`, `harga_sm`, `terverifikasi`, `status_tf`, `created_at`) VALUES
(1, 54, 241, '50000', 0, 1, '2020-05-16 03:20:09'),
(2, 59, 280, '75000', 1, 0, '2020-05-16 03:22:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_seminar`
--

CREATE TABLE `status_seminar` (
  `id` int(6) NOT NULL,
  `id_post` int(6) DEFAULT NULL,
  `status_sm` int(3) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_seminar`
--

INSERT INTO `status_seminar` (`id`, `id_post`, `status_sm`, `created_at`) VALUES
(1, 241, 1, '2020-05-16 03:20:09'),
(2, 280, 1, '2020-05-16 03:22:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_bukti_selesai`
--

CREATE TABLE `upload_bukti_selesai` (
  `id` int(6) NOT NULL,
  `id_selesai` int(6) DEFAULT NULL,
  `id_posts` int(6) DEFAULT NULL,
  `file_foto` varchar(30) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `upload_bukti_selesai`
--

INSERT INTO `upload_bukti_selesai` (`id`, `id_selesai`, `id_posts`, `file_foto`, `created_at`) VALUES
(1, 1, 241, 'bukti-1-241.png', '2020-05-16 03:26:25');

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
(10, 'require_name_email', '', 'yes'),
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
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=52&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:16:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:25:\"bukti-tf-pemilik/init.php\";i:2;s:26:\"custom-form/CustomForm.php\";i:3;s:27:\"data-posts-pemilik/init.php\";i:4;s:45:\"easy-custom-sidebars/easy-custom-sidebars.php\";i:5;s:29:\"list-seminar-pemilik/init.php\";i:6;s:21:\"pemilik-list/init.php\";i:7;s:37:\"recent-posts-widget-extended/rpwe.php\";i:8;s:23:\"report-seminar/init.php\";i:9;s:20:\"report-user/init.php\";i:10;s:34:\"report-verifikasi-seminar/init.php\";i:11;s:45:\"restrict-user-access/restrict-user-access.php\";i:12;s:29:\"seminar-list/seminar-list.php\";i:13;s:24:\"seminar-selesai/init.php\";i:14;s:53:\"wp-custom-register-login/wp-custom-register-login.php\";i:15;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'talon', 'yes'),
(41, 'stylesheet', 'talon', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '1', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '', 'yes'),
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
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
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
(94, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:68:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;s:7:\"level_2\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:12:\"upload_files\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:12:\"guest_author\";a:2:{s:4:\"name\";s:12:\"Guest Author\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:0;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:13:\"rpwe_widget-2\";}s:8:\"footer-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:7:{i:1590652761;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590688760;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590688761;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590688783;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590688786;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590692400;a:1:{s:26:\"wpca/cache_condition_types\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.3\";s:7:\"version\";s:5:\"5.3.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.6-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.6-partial-3.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.6-rollback-3.zip\";}s:7:\"current\";s:5:\"5.2.6\";s:7:\"version\";s:5:\"5.2.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.2.3\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1590649345;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
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
(559, 'recovery_mode_email_last_sent', '1588273029', 'yes'),
(974, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:33:\"restrict-user-access/lib/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1587914375;s:11:\"plugin_path\";s:45:\"restrict-user-access/restrict-user-access.php\";}}s:7:\"abspath\";s:24:\"C:\\xampp\\htdocs\\e_sinar/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:45:\"restrict-user-access/restrict-user-access.php\";s:8:\"sdk_path\";s:33:\"restrict-user-access/lib/freemius\";s:7:\"version\";s:5:\"2.3.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1587914375;}}', 'yes'),
(975, 'fs_debug_mode', '', 'yes'),
(976, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:1538;a:3:{s:4:\"slug\";s:20:\"restrict-user-access\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:45:\"restrict-user-access/restrict-user-access.php\";}}s:11:\"plugin_data\";a:1:{s:20:\"restrict-user-access\";a:14:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:45:\"restrict-user-access/restrict-user-access.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1576177771;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.2.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:0;s:9:\"timestamp\";i:1576177771;s:7:\"version\";s:5:\"1.2.1\";}}}s:13:\"file_slug_map\";a:1:{s:45:\"restrict-user-access/restrict-user-access.php\";s:20:\"restrict-user-access\";}s:7:\"plugins\";a:1:{s:20:\"restrict-user-access\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:20:\"Restrict User Access\";s:4:\"slug\";s:20:\"restrict-user-access\";s:12:\"premium_slug\";s:28:\"restrict-user-access-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:45:\"restrict-user-access/restrict-user-access.php\";s:7:\"version\";s:5:\"1.2.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_606dec7b339c246a1bad6a6a04c52\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1538\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"57525293c5251a6cb8765204bda833da\";s:6:\"addons\";a:1:{i:1538;a:4:{i:0;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:5:\"title\";s:16:\"Date Restriction\";s:4:\"slug\";s:17:\"rua-restrict-date\";s:12:\"premium_slug\";s:25:\"rua-restrict-date-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:5;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"1539\";s:11:\"description\";s:334:\"<p>You can now easily restrict content based on the time it was added to your membership site!</p>\n<p>This add-on enables a new <b>Date Access Condition</b> that you can add to your Access Levels. Limit access to any content published at a select time, or combine the condition to limit only posts, pages, or any custom post type.</p>\";s:17:\"short_description\";s:90:\"New Access Condition to easily restrict content published on a select day, month, or year!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/card_banner.png\";s:15:\"selling_point_0\";s:39:\"Give exclusive access to upcoming posts\";s:15:\"selling_point_1\";s:42:\"Drip content from last year to new members\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/2.png\";}s:2:\"id\";s:2:\"93\";s:7:\"updated\";s:19:\"2020-01-14 09:19:31\";s:7:\"created\";s:19:\"2017-11-15 23:39:13\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_825ac0fd17eed5ce23c5e981ab061\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1539\";s:7:\"updated\";s:19:\"2020-04-09 07:35:15\";s:7:\"created\";s:19:\"2017-11-15 00:14:38\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:5:\"title\";s:15:\"URL Restriction\";s:4:\"slug\";s:16:\"rua-restrict-url\";s:12:\"premium_slug\";s:24:\"rua-restrict-url-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:7;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"1716\";s:11:\"description\";s:356:\"<p>You can now easily restrict any page on your membership site, no matter what URL it has!</p>\n<p>This add-on enables a new <b>URL Access Condition</b> that you can add to your Access Levels. Limit access to specific custom pages, or restrict content with dynamic URLs.</p>\n<p></p>\n<p><b>This add-on does currently not limit access to asset files.</b></p>\";s:17:\"short_description\";s:92:\"New Access Condition to easily restrict any custom WordPress URL, with support of wildcards!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/card_banner.png\";s:15:\"selling_point_0\";s:36:\"Limit access to any URL in WordPress\";s:15:\"selling_point_1\";s:41:\"Use wildcards to target specific keywords\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/2.png\";}s:2:\"id\";s:3:\"141\";s:7:\"updated\";s:19:\"2020-04-11 19:21:21\";s:7:\"created\";s:19:\"2018-02-09 19:31:48\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_91089dff383d3e4c66d1a37b625ac\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1716\";s:7:\"updated\";s:19:\"2020-05-13 12:06:06\";s:7:\"created\";s:19:\"2018-02-09 19:20:50\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:2;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:5:\"title\";s:8:\"Timelock\";s:4:\"slug\";s:12:\"rua-timelock\";s:12:\"premium_slug\";s:20:\"rua-timelock-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:5;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"1740\";s:11:\"description\";s:500:\"<p>This add-on is perfect for site owners who wants an easy way to make content become restricted and/or unrestricted at a certain time and date automatically.</p>\n<p>Simply specify a date and a time for any restrictions in your levels. Make content freely accessible at first, then restrict it to members only after a select time, or limit access to members at first, and then unlock it for everyone. It\'s even possible to combine the times so content is only restricted in a certain time range.</p>\";s:17:\"short_description\";s:63:\"Set a date and a time to activate/deactivate Access Conditions!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/card_banner.png\";s:15:\"selling_point_0\";s:36:\"Lock content for a limited time only\";s:15:\"selling_point_1\";s:66:\"Give early access to premium content before unlocking for everyone\";s:15:\"selling_point_2\";s:32:\"Works with all Access Conditions\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/2.png\";}s:2:\"id\";s:3:\"147\";s:7:\"updated\";s:19:\"2020-01-14 09:24:46\";s:7:\"created\";s:19:\"2018-02-15 20:10:47\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_9bddbbc0d3a534ca5241873a0aa8b\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1740\";s:7:\"updated\";s:19:\"2020-05-08 11:20:37\";s:7:\"created\";s:19:\"2018-02-14 23:58:02\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:3;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:5:\"title\";s:15:\"ACF Restriction\";s:4:\"slug\";s:16:\"rua-restrict-acf\";s:12:\"premium_slug\";s:24:\"rua-restrict-acf-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:2;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"5849\";s:11:\"description\";s:426:\"<p>You can now easily restrict content based on data from Advanced Custom Fields!</p>\n<p>This add-on enables a new <b>ACF Access Condition</b> that you can add to your Access Levels. Limit access to any content with a specific custom field and value, or combine the condition to limit only posts, pages, or any custom post type.</p>\n<p></p>\n<p><b>This add-on requires the Advanced Custom Fields plugin to be installed.</b></p>\";s:17:\"short_description\";s:88:\"New Access Condition to easily restrict content with select Advanced Custom Fields data!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5849/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5849/card_banner.png\";s:15:\"selling_point_0\";s:44:\"Give exclusive access to pages with ACF data\";s:15:\"selling_point_1\";s:45:\"Protect custom fields from unauthorized users\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";N;s:2:\"id\";s:4:\"1542\";s:7:\"updated\";s:19:\"2020-04-11 19:16:52\";s:7:\"created\";s:19:\"2020-04-10 22:21:40\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_05cf5773ce8afcbb36084c30e884e\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"5849\";s:7:\"updated\";s:19:\"2020-05-16 06:23:02\";s:7:\"created\";s:19:\"2020-04-08 07:22:48\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}}', 'yes'),
(977, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(978, 'fs_api_cache', 'a:1:{s:55:\"get:/v1/plugins/1538/addons.json?enriched=true&count=50\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":38:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:12:\"developer_id\";s:3:\"172\";s:10:\"install_id\";s:7:\"1008295\";s:4:\"slug\";s:17:\"rua-restrict-date\";s:5:\"title\";s:16:\"Date Restriction\";s:11:\"environment\";i:0;s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/icons/a75f709c8d753a13ffb1e57e6f3d5955.png\";s:15:\"default_plan_id\";s:4:\"2226\";s:5:\"plans\";i:2226;s:8:\"features\";N;s:17:\"money_back_period\";i:14;s:13:\"refund_policy\";s:8:\"moderate\";s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:0:\"\";s:11:\"is_released\";b:1;s:18:\"is_pricing_visible\";b:1;s:19:\"is_wp_org_compliant\";b:0;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:14:\"installs_count\";i:17;s:21:\"active_installs_count\";i:9;s:19:\"free_releases_count\";i:0;s:22:\"premium_releases_count\";i:5;s:15:\"total_purchases\";i:0;s:19:\"total_subscriptions\";i:6;s:14:\"total_renewals\";i:2;s:8:\"earnings\";d:181.96;s:10:\"commission\";s:35:\"{\"1000\":0.3,\"5000\":0.2,\"above\":0.1}\";s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:10:\"public_key\";s:32:\"pk_825ac0fd17eed5ce23c5e981ab061\";s:2:\"id\";s:4:\"1539\";s:7:\"created\";s:19:\"2017-11-15 00:14:38\";s:7:\"updated\";s:19:\"2020-04-09 07:35:15\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"1539\";s:3:\"url\";N;s:11:\"description\";s:334:\"<p>You can now easily restrict content based on the time it was added to your membership site!</p>\n<p>This add-on enables a new <b>Date Access Condition</b> that you can add to your Access Levels. Limit access to any content published at a select time, or combine the condition to limit only posts, pages, or any custom post type.</p>\";s:17:\"short_description\";s:90:\"New Access Condition to easily restrict content published on a select day, month, or year!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/card_banner.png\";s:15:\"selling_point_0\";s:39:\"Give exclusive access to upcoming posts\";s:15:\"selling_point_1\";s:42:\"Drip content from last year to new members\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1539/screenshots/2.png\";}s:2:\"id\";s:2:\"93\";s:7:\"created\";s:19:\"2017-11-15 23:39:13\";s:7:\"updated\";s:19:\"2020-01-14 09:19:31\";}s:12:\"premium_slug\";s:25:\"rua-restrict-date-premium\";}i:1;O:8:\"stdClass\":38:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:12:\"developer_id\";s:3:\"172\";s:10:\"install_id\";s:7:\"1236410\";s:4:\"slug\";s:16:\"rua-restrict-url\";s:5:\"title\";s:15:\"URL Restriction\";s:11:\"environment\";i:0;s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/icons/8d40b0659f9982b00bc6291176bae8b6.png\";s:15:\"default_plan_id\";s:4:\"2508\";s:5:\"plans\";i:2508;s:8:\"features\";N;s:17:\"money_back_period\";i:14;s:13:\"refund_policy\";s:8:\"moderate\";s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:0:\"\";s:11:\"is_released\";b:1;s:18:\"is_pricing_visible\";b:1;s:19:\"is_wp_org_compliant\";b:0;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:14:\"installs_count\";i:88;s:21:\"active_installs_count\";i:47;s:19:\"free_releases_count\";i:0;s:22:\"premium_releases_count\";i:7;s:15:\"total_purchases\";i:0;s:19:\"total_subscriptions\";i:44;s:14:\"total_renewals\";i:12;s:8:\"earnings\";d:1447.45;s:10:\"commission\";s:35:\"{\"1000\":0.3,\"5000\":0.2,\"above\":0.1}\";s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:10:\"public_key\";s:32:\"pk_91089dff383d3e4c66d1a37b625ac\";s:2:\"id\";s:4:\"1716\";s:7:\"created\";s:19:\"2018-02-09 19:20:50\";s:7:\"updated\";s:19:\"2020-05-13 12:06:06\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"1716\";s:3:\"url\";N;s:11:\"description\";s:356:\"<p>You can now easily restrict any page on your membership site, no matter what URL it has!</p>\n<p>This add-on enables a new <b>URL Access Condition</b> that you can add to your Access Levels. Limit access to specific custom pages, or restrict content with dynamic URLs.</p>\n<p></p>\n<p><b>This add-on does currently not limit access to asset files.</b></p>\";s:17:\"short_description\";s:92:\"New Access Condition to easily restrict any custom WordPress URL, with support of wildcards!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/card_banner.png\";s:15:\"selling_point_0\";s:36:\"Limit access to any URL in WordPress\";s:15:\"selling_point_1\";s:41:\"Use wildcards to target specific keywords\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1716/screenshots/2.png\";}s:2:\"id\";s:3:\"141\";s:7:\"created\";s:19:\"2018-02-09 19:31:48\";s:7:\"updated\";s:19:\"2020-04-11 19:21:21\";}s:12:\"premium_slug\";s:24:\"rua-restrict-url-premium\";}i:2;O:8:\"stdClass\":37:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:12:\"developer_id\";s:3:\"172\";s:10:\"install_id\";s:7:\"1251974\";s:4:\"slug\";s:12:\"rua-timelock\";s:5:\"title\";s:8:\"Timelock\";s:11:\"environment\";i:0;s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/icons/7b1b697f68dbeba88f94c212984ba3e1.png\";s:15:\"default_plan_id\";s:4:\"2543\";s:5:\"plans\";i:2543;s:8:\"features\";N;s:17:\"money_back_period\";i:14;s:13:\"refund_policy\";s:8:\"moderate\";s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:0:\"\";s:11:\"is_released\";b:1;s:18:\"is_pricing_visible\";b:1;s:19:\"is_wp_org_compliant\";b:0;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:14:\"installs_count\";i:26;s:21:\"active_installs_count\";i:12;s:19:\"free_releases_count\";i:0;s:22:\"premium_releases_count\";i:5;s:15:\"total_purchases\";i:0;s:19:\"total_subscriptions\";i:10;s:14:\"total_renewals\";i:1;s:8:\"earnings\";d:221.96;s:10:\"commission\";s:35:\"{\"1000\":0.3,\"5000\":0.2,\"above\":0.1}\";s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:10:\"public_key\";s:32:\"pk_9bddbbc0d3a534ca5241873a0aa8b\";s:2:\"id\";s:4:\"1740\";s:7:\"created\";s:19:\"2018-02-14 23:58:02\";s:7:\"updated\";s:19:\"2020-05-08 11:20:37\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"1740\";s:3:\"url\";N;s:11:\"description\";s:500:\"<p>This add-on is perfect for site owners who wants an easy way to make content become restricted and/or unrestricted at a certain time and date automatically.</p>\n<p>Simply specify a date and a time for any restrictions in your levels. Make content freely accessible at first, then restrict it to members only after a select time, or limit access to members at first, and then unlock it for everyone. It\'s even possible to combine the times so content is only restricted in a certain time range.</p>\";s:17:\"short_description\";s:63:\"Set a date and a time to activate/deactivate Access Conditions!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/card_banner.png\";s:15:\"selling_point_0\";s:36:\"Lock content for a limited time only\";s:15:\"selling_point_1\";s:66:\"Give early access to premium content before unlocking for everyone\";s:15:\"selling_point_2\";s:32:\"Works with all Access Conditions\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/0.png\";s:12:\"screenshot_1\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/1.png\";s:12:\"screenshot_2\";s:68:\"//s3-us-west-2.amazonaws.com/freemius/plugins/1740/screenshots/2.png\";}s:2:\"id\";s:3:\"147\";s:7:\"created\";s:19:\"2018-02-15 20:10:47\";s:7:\"updated\";s:19:\"2020-01-14 09:24:46\";}}i:3;O:8:\"stdClass\":38:{s:16:\"parent_plugin_id\";s:4:\"1538\";s:12:\"developer_id\";s:3:\"172\";s:10:\"install_id\";s:7:\"4307165\";s:4:\"slug\";s:16:\"rua-restrict-acf\";s:5:\"title\";s:15:\"ACF Restriction\";s:11:\"environment\";i:0;s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5849/icons/98aa990e179ef86ffb229429d32fbd46.png\";s:15:\"default_plan_id\";s:4:\"9573\";s:5:\"plans\";i:9573;s:8:\"features\";N;s:17:\"money_back_period\";i:14;s:13:\"refund_policy\";s:8:\"moderate\";s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:0:\"\";s:11:\"is_released\";b:1;s:18:\"is_pricing_visible\";b:1;s:19:\"is_wp_org_compliant\";b:0;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:14:\"installs_count\";i:5;s:21:\"active_installs_count\";i:6;s:19:\"free_releases_count\";i:0;s:22:\"premium_releases_count\";i:2;s:15:\"total_purchases\";i:0;s:19:\"total_subscriptions\";i:2;s:14:\"total_renewals\";i:0;s:8:\"earnings\";i:0;s:10:\"commission\";s:0:\"\";s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:10:\"public_key\";s:32:\"pk_05cf5773ce8afcbb36084c30e884e\";s:2:\"id\";s:4:\"5849\";s:7:\"created\";s:19:\"2020-04-08 07:22:48\";s:7:\"updated\";s:19:\"2020-05-16 06:23:02\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"5849\";s:3:\"url\";N;s:11:\"description\";s:426:\"<p>You can now easily restrict content based on data from Advanced Custom Fields!</p>\n<p>This add-on enables a new <b>ACF Access Condition</b> that you can add to your Access Levels. Limit access to any content with a specific custom field and value, or combine the condition to limit only posts, pages, or any custom post type.</p>\n<p></p>\n<p><b>This add-on requires the Advanced Custom Fields plugin to be installed.</b></p>\";s:17:\"short_description\";s:88:\"New Access Condition to easily restrict content with select Advanced Custom Fields data!\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5849/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5849/card_banner.png\";s:15:\"selling_point_0\";s:44:\"Give exclusive access to pages with ACF data\";s:15:\"selling_point_1\";s:45:\"Protect custom fields from unauthorized users\";s:15:\"selling_point_2\";s:39:\"Combine with any other Access Condition\";s:11:\"screenshots\";N;s:2:\"id\";s:4:\"1542\";s:7:\"created\";s:19:\"2020-04-10 22:21:40\";s:7:\"updated\";s:19:\"2020-04-11 19:16:52\";}s:12:\"premium_slug\";s:24:\"rua-restrict-acf-premium\";}}}s:7:\"created\";i:1589787131;s:9:\"timestamp\";i:1589873531;}}', 'no'),
(981, 'rua_plugin_version', '1.2.1', 'yes'),
(982, '_ca_condition_type_cache', 'a:1:{s:11:\"restriction\";a:1:{i:0;s:9:\"post_type\";}}', 'yes'),
(1542, 'dashboard-widgets', 'a:1:{i:0;a:7:{s:5:\"title\";s:5:\"Pages\";s:4:\"icon\";s:20:\"dashicons-admin-page\";s:4:\"link\";s:23:\"edit.php?post_type=page\";s:6:\"status\";s:7:\"checked\";s:13:\"administrator\";s:7:\"checked\";s:6:\"author\";s:7:\"checked\";s:5:\"order\";s:1:\"5\";}}', 'yes'),
(1543, 'cdw_show_another_widgets', '', 'yes'),
(1549, 'user_role_editor', 'a:1:{s:11:\"ure_version\";s:6:\"4.53.1\";}', 'yes'),
(1550, 'wp_backup_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:12:\"guest_author\";a:2:{s:4:\"name\";s:12:\"Guest Author\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:0;}}}', 'no'),
(1551, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(1558, 'ure_role_additional_options_values', 'a:1:{s:6:\"author\";a:0:{}}', 'yes'),
(1716, 'aptrc_post', 'a:7:{s:11:\"title_check\";s:1:\"1\";s:15:\"thumbnail_check\";s:1:\"1\";s:16:\"categories_check\";s:1:\"1\";s:19:\"categories_dropdown\";s:1:\"1\";s:23:\"categories_max_dropdown\";s:1:\"1\";s:13:\"tags_dropdown\";s:1:\"1\";s:17:\"tags_max_dropdown\";s:1:\"1\";}', 'yes'),
(1717, 'aptrc_page', 'a:8:{s:5:\"title\";s:0:\"\";s:6:\"editor\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:7:\"excerpt\";s:0:\"\";s:10:\"categories\";s:0:\"\";s:4:\"tags\";s:0:\"\";s:16:\"customtaxonomies\";s:0:\"\";s:12:\"customfields\";s:0:\"\";}', 'yes'),
(1958, '_transient_is_multi_author', '1', 'yes'),
(1959, '_transient_talon_categories', '2', 'yes'),
(1967, '_site_transient_timeout_theme_roots', '1590651143', 'no'),
(1968, '_site_transient_theme_roots', 'a:2:{s:5:\"talon\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1970, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590649348;s:7:\"checked\";a:2:{s:5:\"talon\";s:4:\"1.07\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:2:{s:5:\"talon\";a:6:{s:5:\"theme\";s:5:\"talon\";s:11:\"new_version\";s:4:\"1.08\";s:3:\"url\";s:35:\"https://wordpress.org/themes/talon/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/theme/talon.1.08.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.1.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1971, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590649349;s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"restrict-user-access/restrict-user-access.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/restrict-user-access\";s:4:\"slug\";s:20:\"restrict-user-access\";s:6:\"plugin\";s:45:\"restrict-user-access/restrict-user-access.php\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/restrict-user-access/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/restrict-user-access.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/restrict-user-access/assets/icon-256x256.png?rev=1815922\";s:2:\"1x\";s:73:\"https://ps.w.org/restrict-user-access/assets/icon-128x128.png?rev=1815922\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/restrict-user-access/assets/banner-1544x500.png?rev=1815922\";s:2:\"1x\";s:75:\"https://ps.w.org/restrict-user-access/assets/banner-772x250.png?rev=1815922\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"2.0.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.2.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:5:\"5.5.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:45:\"easy-custom-sidebars/easy-custom-sidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/easy-custom-sidebars\";s:4:\"slug\";s:20:\"easy-custom-sidebars\";s:6:\"plugin\";s:45:\"easy-custom-sidebars/easy-custom-sidebars.php\";s:11:\"new_version\";s:6:\"1.0.10\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/easy-custom-sidebars/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/easy-custom-sidebars.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/easy-custom-sidebars/assets/icon-256x256.png?rev=991222\";s:2:\"1x\";s:72:\"https://ps.w.org/easy-custom-sidebars/assets/icon-128x128.png?rev=991222\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/easy-custom-sidebars/assets/banner-1544x500.png?rev=987596\";s:2:\"1x\";s:74:\"https://ps.w.org/easy-custom-sidebars/assets/banner-772x250.png?rev=987596\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"recent-posts-widget-extended/rpwe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/recent-posts-widget-extended\";s:4:\"slug\";s:28:\"recent-posts-widget-extended\";s:6:\"plugin\";s:37:\"recent-posts-widget-extended/rpwe.php\";s:11:\"new_version\";s:7:\"0.9.9.7\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/recent-posts-widget-extended/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/recent-posts-widget-extended.0.9.9.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/recent-posts-widget-extended/assets/icon-128x128.png?rev=1240338\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/recent-posts-widget-extended/assets/banner-772x250.png?rev=900647\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"wp-custom-register-login/wp-custom-register-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/wp-custom-register-login\";s:4:\"slug\";s:24:\"wp-custom-register-login\";s:6:\"plugin\";s:53:\"wp-custom-register-login/wp-custom-register-login.php\";s:11:\"new_version\";s:5:\"2.0.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/wp-custom-register-login/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/wp-custom-register-login.2.0.0.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/wp-custom-register-login/assets/icon-128x128.jpg?rev=1269330\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/wp-custom-register-login/assets/banner-772x250.jpg?rev=1269252\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(74, 25, '_edit_lock', '1587804243:1'),
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
(162, 57, '_wp_attached_file', '2019/09/oracle.jpg'),
(163, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:860;s:4:\"file\";s:18:\"2019/09/oracle.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"oracle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"oracle-300x287.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:287;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"oracle-768x734.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:734;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:18:\"oracle-200x191.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-large\";a:4:{s:4:\"file\";s:18:\"oracle-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-blog-image\";a:4:{s:4:\"file\";s:18:\"oracle-690x659.jpg\";s:5:\"width\";i:690;s:6:\"height\";i:659;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:16:\"oracle-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 61, '_edit_lock', '1586444362:1'),
(167, 63, '_wp_attached_file', '2019/10/oracle2.jpg'),
(168, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:19:\"2019/10/oracle2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"oracle2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:19:\"oracle2-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:17:\"oracle2-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(175, 61, '_thumbnail_id', '63'),
(176, 66, '_edit_lock', '1587573979:1'),
(177, 66, '_edit_last', '1'),
(186, 61, '_edit_last', '1'),
(188, 61, 'tempat', 'Univ Mercu Buana'),
(189, 61, '_tempat', 'field_5dd94df5703f6'),
(190, 69, 'tempat', 'Univ Mercu Buana'),
(191, 69, '_tempat', 'field_5dd94df5703f6'),
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
(505, 162, '_ca_page', '52'),
(506, 162, '_ca_duration', 'a:2:{s:5:\"count\";s:1:\"0\";s:4:\"unit\";s:3:\"day\";}'),
(507, 162, '_edit_lock', '1587989664:1'),
(508, 164, '_edit_lock', '1576178080:1'),
(517, 164, '_edit_last', '1'),
(518, 164, 'nama', ''),
(519, 164, '_nama', 'field_5df0f13ad9583'),
(520, 166, 'nama', ''),
(521, 166, '_nama', 'field_5df0f13ad9583'),
(524, 168, '_edit_lock', '1588272516:1'),
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
(666, 199, '_edit_lock', '1587222406:1'),
(675, 199, '_edit_last', '1'),
(677, 199, 'nama', ''),
(678, 199, '_nama', 'field_5df0f13ad9583'),
(679, 207, 'nama', ''),
(680, 207, '_nama', 'field_5df0f13ad9583'),
(693, 222, '_edit_lock', '1587567807:54'),
(702, 231, '_edit_lock', '1587568235:54'),
(712, 241, '_edit_lock', '1589569670:54'),
(713, 242, '_wp_attached_file', '2020/04/a71.jpg'),
(714, 242, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:220;s:4:\"file\";s:15:\"2020/04/a71.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"a71-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"talon-home-small\";a:4:{s:4:\"file\";s:15:\"a71-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:13:\"a71-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(716, 241, '_thumbnail_id', '279'),
(717, 241, '_edit_last', '54'),
(719, 241, 'tempat', 'SMAN 67 Jakarta Timur'),
(720, 241, '_tempat', 'field_5dd94df5703f6'),
(721, 241, 'date', '20200429'),
(722, 241, '_date', 'field_5dd9624ae2349'),
(723, 241, 'waktu_mulai', '10:00:00'),
(724, 241, '_waktu_mulai', 'field_5dd96280b6cfd'),
(725, 241, 'waktu_selesai', '13:00:00'),
(726, 241, '_waktu_selesai', 'field_5dd963c5c48e2'),
(727, 241, 'harga', '50000'),
(728, 241, '_harga', 'field_5e7620ec73bc0'),
(729, 244, 'tempat', 'SMAN 67 Jakarta Timur'),
(730, 244, '_tempat', 'field_5dd94df5703f6'),
(731, 244, 'date', '20200503'),
(732, 244, '_date', 'field_5dd9624ae2349'),
(733, 244, 'waktu_mulai', '10:00:00'),
(734, 244, '_waktu_mulai', 'field_5dd96280b6cfd'),
(735, 244, 'waktu_selesai', '13:00:00'),
(736, 244, '_waktu_selesai', 'field_5dd963c5c48e2'),
(737, 244, 'harga', '50000'),
(738, 244, '_harga', 'field_5e7620ec73bc0'),
(795, 257, '_edit_lock', '1587806008:1'),
(797, 257, '_edit_last', '1'),
(799, 257, 'nama', ''),
(800, 257, '_nama', 'field_5df0f13ad9583'),
(801, 258, 'nama', ''),
(802, 258, '_nama', 'field_5df0f13ad9583'),
(805, 259, 'tempat', 'SMAN 67 Jakarta Timur'),
(806, 259, '_tempat', 'field_5dd94df5703f6'),
(807, 259, 'date', '20200424'),
(808, 259, '_date', 'field_5dd9624ae2349'),
(809, 259, 'waktu_mulai', '10:00:00'),
(810, 259, '_waktu_mulai', 'field_5dd96280b6cfd'),
(811, 259, 'waktu_selesai', '13:00:00'),
(812, 259, '_waktu_selesai', 'field_5dd963c5c48e2'),
(813, 259, 'harga', '50000'),
(814, 259, '_harga', 'field_5e7620ec73bc0'),
(817, 260, 'tempat', 'SMAN 67 Jakarta Timur'),
(818, 260, '_tempat', 'field_5dd94df5703f6'),
(819, 260, 'date', '20200505'),
(820, 260, '_date', 'field_5dd9624ae2349'),
(821, 260, 'waktu_mulai', '10:00:00'),
(822, 260, '_waktu_mulai', 'field_5dd96280b6cfd'),
(823, 260, 'waktu_selesai', '13:00:00'),
(824, 260, '_waktu_selesai', 'field_5dd963c5c48e2'),
(825, 260, 'harga', '50000'),
(826, 260, '_harga', 'field_5e7620ec73bc0'),
(829, 261, 'tempat', 'SMAN 67 Jakarta Timur'),
(830, 261, '_tempat', 'field_5dd94df5703f6'),
(831, 261, 'date', '20200424'),
(832, 261, '_date', 'field_5dd9624ae2349'),
(833, 261, 'waktu_mulai', '10:00:00'),
(834, 261, '_waktu_mulai', 'field_5dd96280b6cfd'),
(835, 261, 'waktu_selesai', '13:00:00'),
(836, 261, '_waktu_selesai', 'field_5dd963c5c48e2'),
(837, 261, 'harga', '50000'),
(838, 261, '_harga', 'field_5e7620ec73bc0'),
(852, 265, 'tempat', 'SMAN 67 Jakarta Timur'),
(853, 265, '_tempat', 'field_5dd94df5703f6'),
(854, 265, 'date', '20200510'),
(855, 265, '_date', 'field_5dd9624ae2349'),
(856, 265, 'waktu_mulai', '10:00:00'),
(857, 265, '_waktu_mulai', 'field_5dd96280b6cfd'),
(858, 265, 'waktu_selesai', '13:00:00'),
(859, 265, '_waktu_selesai', 'field_5dd963c5c48e2'),
(860, 265, 'harga', '50000'),
(861, 265, '_harga', 'field_5e7620ec73bc0'),
(864, 266, 'tempat', 'SMAN 67 Jakarta Timur'),
(865, 266, '_tempat', 'field_5dd94df5703f6'),
(866, 266, 'date', '20200630'),
(867, 266, '_date', 'field_5dd9624ae2349'),
(868, 266, 'waktu_mulai', '10:00:00'),
(869, 266, '_waktu_mulai', 'field_5dd96280b6cfd'),
(870, 266, 'waktu_selesai', '13:00:00'),
(871, 266, '_waktu_selesai', 'field_5dd963c5c48e2'),
(872, 266, 'harga', '50000'),
(873, 266, '_harga', 'field_5e7620ec73bc0'),
(876, 267, 'tempat', 'SMAN 67 Jakarta Timur'),
(877, 267, '_tempat', 'field_5dd94df5703f6'),
(878, 267, 'date', '20200629'),
(879, 267, '_date', 'field_5dd9624ae2349'),
(880, 267, 'waktu_mulai', '10:00:00'),
(881, 267, '_waktu_mulai', 'field_5dd96280b6cfd'),
(882, 267, 'waktu_selesai', '13:00:00'),
(883, 267, '_waktu_selesai', 'field_5dd963c5c48e2'),
(884, 267, 'harga', '50000'),
(885, 267, '_harga', 'field_5e7620ec73bc0'),
(888, 268, 'tempat', 'SMAN 67 Jakarta Timur'),
(889, 268, '_tempat', 'field_5dd94df5703f6'),
(890, 268, 'date', '20200429'),
(891, 268, '_date', 'field_5dd9624ae2349'),
(892, 268, 'waktu_mulai', '10:00:00'),
(893, 268, '_waktu_mulai', 'field_5dd96280b6cfd'),
(894, 268, 'waktu_selesai', '13:00:00'),
(895, 268, '_waktu_selesai', 'field_5dd963c5c48e2'),
(896, 268, 'harga', '50000'),
(897, 268, '_harga', 'field_5e7620ec73bc0'),
(898, 270, '_edit_lock', '1589480700:1'),
(900, 270, '_edit_last', '1'),
(902, 270, 'tempat', 'ba'),
(903, 270, '_tempat', 'field_5dd94df5703f6'),
(904, 270, 'date', '20200517'),
(905, 270, '_date', 'field_5dd9624ae2349'),
(906, 270, 'waktu_mulai', '15:00:00'),
(907, 270, '_waktu_mulai', 'field_5dd96280b6cfd'),
(908, 270, 'waktu_selesai', '17:00:00'),
(909, 270, '_waktu_selesai', 'field_5dd963c5c48e2'),
(910, 270, 'harga', '100000'),
(911, 270, '_harga', 'field_5e7620ec73bc0'),
(912, 272, 'tempat', 'ba'),
(913, 272, '_tempat', 'field_5dd94df5703f6'),
(914, 272, 'date', '20200517'),
(915, 272, '_date', 'field_5dd9624ae2349'),
(916, 272, 'waktu_mulai', '15:00:00'),
(917, 272, '_waktu_mulai', 'field_5dd96280b6cfd'),
(918, 272, 'waktu_selesai', '17:00:00'),
(919, 272, '_waktu_selesai', 'field_5dd963c5c48e2'),
(920, 272, 'harga', '100000'),
(921, 272, '_harga', 'field_5e7620ec73bc0'),
(922, 130, '_wp_trash_meta_status', 'publish'),
(923, 130, '_wp_trash_meta_time', '1589481333'),
(924, 130, '_wp_desired_post_slug', 'group_5df0f11f30197'),
(925, 131, '_wp_trash_meta_status', 'publish'),
(926, 131, '_wp_trash_meta_time', '1589481334'),
(927, 131, '_wp_desired_post_slug', 'field_5df0f13ad9583'),
(928, 273, '_edit_lock', '1589483207:1'),
(929, 273, '_edit_last', '1'),
(930, 275, '_edit_lock', '1589483205:1'),
(932, 275, '_edit_last', '1'),
(934, 275, 'name', ''),
(935, 275, '_name', 'field_5ebd8fb175248'),
(936, 277, 'name', ''),
(937, 277, '_name', 'field_5ebd8fb175248'),
(943, 270, '_wp_trash_meta_status', 'publish'),
(944, 270, '_wp_trash_meta_time', '1589569573'),
(945, 270, '_wp_desired_post_slug', 'tess'),
(946, 279, '_wp_attached_file', '2020/04/seminar-invite.jpg'),
(947, 279, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:197;s:6:\"height\";i:256;s:4:\"file\";s:26:\"2020/04/seminar-invite.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"seminar-invite-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:24:\"seminar-invite-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(950, 280, '_edit_lock', '1589574130:59'),
(951, 281, '_wp_attached_file', '2020/05/download.jpg'),
(952, 281, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:186;s:6:\"height\";i:271;s:4:\"file\";s:20:\"2020/05/download.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:18:\"download-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(954, 280, '_thumbnail_id', '281'),
(955, 280, '_edit_last', '59'),
(957, 280, 'tempat', 'Universitas Mercubuana Jakarta'),
(958, 280, '_tempat', 'field_5dd94df5703f6'),
(959, 280, 'date', '20200515'),
(960, 280, '_date', 'field_5dd9624ae2349'),
(961, 280, 'waktu_mulai', '15:00:00'),
(962, 280, '_waktu_mulai', 'field_5dd96280b6cfd'),
(963, 280, 'waktu_selesai', '17:00:00'),
(964, 280, '_waktu_selesai', 'field_5dd963c5c48e2'),
(965, 280, 'harga', '75000'),
(966, 280, '_harga', 'field_5e7620ec73bc0'),
(967, 283, 'tempat', 'Universitas Mercubuana Jakarta'),
(968, 283, '_tempat', 'field_5dd94df5703f6'),
(969, 283, 'date', '20200524'),
(970, 283, '_date', 'field_5dd9624ae2349'),
(971, 283, 'waktu_mulai', '15:00:00'),
(972, 283, '_waktu_mulai', 'field_5dd96280b6cfd'),
(973, 283, 'waktu_selesai', '17:00:00'),
(974, 283, '_waktu_selesai', 'field_5dd963c5c48e2'),
(975, 283, 'harga', '75000'),
(976, 283, '_harga', 'field_5e7620ec73bc0'),
(979, 284, 'tempat', 'Universitas Mercubuana Jakarta'),
(980, 284, '_tempat', 'field_5dd94df5703f6'),
(981, 284, 'date', '20200515'),
(982, 284, '_date', 'field_5dd9624ae2349'),
(983, 284, 'waktu_mulai', '15:00:00'),
(984, 284, '_waktu_mulai', 'field_5dd96280b6cfd'),
(985, 284, 'waktu_selesai', '17:00:00'),
(986, 284, '_waktu_selesai', 'field_5dd963c5c48e2'),
(987, 284, 'harga', '75000'),
(988, 284, '_harga', 'field_5e7620ec73bc0'),
(989, 285, '_edit_lock', '1589787316:1'),
(990, 286, '_menu_item_type', 'post_type'),
(991, 286, '_menu_item_menu_item_parent', '0'),
(992, 286, '_menu_item_object_id', '285'),
(993, 286, '_menu_item_object', 'page'),
(994, 286, '_menu_item_target', ''),
(995, 286, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(996, 286, '_menu_item_xfn', ''),
(997, 286, '_menu_item_url', ''),
(998, 285, '_edit_last', '1'),
(999, 285, 'name', 'tess'),
(1000, 285, '_name', 'field_5ebd8fb175248'),
(1001, 287, 'name', 'tess'),
(1002, 287, '_name', 'field_5ebd8fb175248'),
(1003, 288, 'name', 'tess'),
(1004, 288, '_name', 'field_5ebd8fb175248');

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
(57, 1, '2019-10-06 14:57:05', '2019-10-06 14:57:05', '', 'oracle', '', 'inherit', 'open', 'closed', '', 'oracle', '', '', '2019-10-06 14:57:05', '2019-10-06 14:57:05', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/09/oracle.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 2, '2019-10-06 15:09:29', '2019-10-06 15:09:29', '', 'seminar-1', '', 'publish', 'open', 'open', '', 'seminar-1', '', '', '2020-04-09 14:37:05', '2020-04-09 14:37:05', '', 0, 'http://localhost/e_sinar/?p=61', 0, 'post', '', 0),
(62, 2, '2019-10-06 15:08:15', '2019-10-06 15:08:15', '', 'post ke 2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-10-06 15:08:15', '2019-10-06 15:08:15', '', 61, 'http://localhost/e_sinar/2019/10/06/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-10-09 15:22:59', '2019-10-09 15:22:59', '', 'oracle2', '', 'inherit', 'open', 'closed', '', 'oracle2', '', '', '2019-10-09 15:22:59', '2019-10-09 15:22:59', '', 61, 'http://localhost/e_sinar/wp-content/uploads/2019/10/oracle2.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-11-23 15:20:48', '2019-11-23 15:20:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:13:\"post_taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"category:seminar\";}i:1;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"category:seminar\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'custom_seminar', 'custom_seminar', 'publish', 'closed', 'closed', '', 'group_5dd94de297d7a', '', '', '2020-04-22 15:18:15', '2020-04-22 15:18:15', '', 0, 'http://localhost/e_sinar/?post_type=acf-field-group&#038;p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2019-11-23 15:20:48', '2019-11-23 15:20:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Tempat Lokasi Seminar\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tempat', 'tempat', 'publish', 'closed', 'closed', '', 'field_5dd94df5703f6', '', '', '2019-11-23 15:35:42', '2019-11-23 15:35:42', '', 66, 'http://localhost/e_sinar/?post_type=acf-field&#038;p=67', 0, 'acf-field', '', 0),
(69, 1, '2019-11-23 15:21:45', '2019-11-23 15:21:45', '', 'post ke 2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-11-23 15:21:45', '2019-11-23 15:21:45', '', 61, 'http://localhost/e_sinar/2019/11/23/61-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-11-23 16:46:53', '2019-11-23 16:46:53', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'date', 'date', 'publish', 'closed', 'closed', '', 'field_5dd9624ae2349', '', '', '2019-11-23 16:46:53', '2019-11-23 16:46:53', '', 66, 'http://localhost/e_sinar/?post_type=acf-field&p=70', 1, 'acf-field', '', 0),
(71, 1, '2019-11-23 16:49:22', '2019-11-23 16:49:22', 'a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'waktu_mulai', 'waktu_mulai', 'publish', 'closed', 'closed', '', 'field_5dd96280b6cfd', '', '', '2019-11-23 16:49:22', '2019-11-23 16:49:22', '', 66, 'http://localhost/e_sinar/?post_type=acf-field&p=71', 2, 'acf-field', '', 0),
(74, 1, '2019-11-23 16:53:01', '2019-11-23 16:53:01', 'a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'waktu_selesai', 'waktu_selesai', 'publish', 'closed', 'closed', '', 'field_5dd963c5c48e2', '', '', '2019-11-23 16:53:01', '2019-11-23 16:53:01', '', 66, 'http://localhost/e_sinar/?post_type=acf-field&p=74', 3, 'acf-field', '', 0),
(76, 1, '2019-11-23 16:57:55', '2019-11-23 16:57:55', '', 'post ke 2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-11-23 16:57:55', '2019-11-23 16:57:55', '', 61, 'http://localhost/e_sinar/2019/11/23/61-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-11-23 16:58:20', '2019-11-23 16:58:20', '', 'post ke 2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-11-23 16:58:20', '2019-11-23 16:58:20', '', 61, 'http://localhost/e_sinar/2019/11/23/61-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-11-23 16:58:50', '2019-11-23 16:58:50', '', 'post ke 2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-11-23 16:58:50', '2019-11-23 16:58:50', '', 61, 'http://localhost/e_sinar/2019/11/23/61-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-11-23 18:19:03', '2019-11-23 18:19:03', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2019-11-23 18:19:03', '2019-11-23 18:19:03', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/09/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2019-11-23 18:20:23', '2019-11-23 18:20:23', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2019-11-23 18:20:23', '2019-11-23 18:20:23', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/09/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2019-11-29 18:02:06', '2019-11-29 18:02:06', '<!-- wp:paragraph -->\n<p>ini berisi halaman faq</p>\n<!-- /wp:paragraph -->', 'FAQ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-11-29 18:02:06', '2019-11-29 18:02:06', '', 29, 'http://localhost/e_sinar/2019/11/29/29-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2019-12-04 16:25:03', '2019-12-04 16:25:03', '<!-- wp:shortcode -->\n[custom_form id=31]\n<!-- /wp:shortcode -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-12-04 16:25:03', '2019-12-04 16:25:03', '', 27, 'http://localhost/e_sinar/2019/12/04/27-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-12-05 15:29:07', '2019-12-05 15:29:07', '<!-- wp:shortcode -->\n[custom_form id=21]\n<!-- /wp:shortcode -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-12-05 15:29:07', '2019-12-05 15:29:07', '', 27, 'http://localhost/e_sinar/2019/12/05/27-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-12-05 15:56:27', '2019-12-05 15:56:27', '<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-12-05 15:56:27', '2019-12-05 15:56:27', '', 27, 'http://localhost/e_sinar/2019/12/05/27-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-12-09 16:47:31', '2019-12-09 16:47:31', '', 'logo-esinar', '', 'inherit', 'open', 'closed', '', 'logo-esinar', '', '', '2019-12-09 16:47:31', '2019-12-09 16:47:31', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/12/logo-esinar.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2019-12-09 16:47:45', '2019-12-09 16:47:45', 'http://localhost/e_sinar/wp-content/uploads/2019/12/cropped-logo-esinar.jpg', 'cropped-logo-esinar.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-esinar-jpg', '', '', '2019-12-09 16:47:45', '2019-12-09 16:47:45', '', 0, 'http://localhost/e_sinar/wp-content/uploads/2019/12/cropped-logo-esinar.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2019-12-10 12:57:09', '2019-12-10 12:57:09', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-12-10 12:57:09', '2019-12-10 12:57:09', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
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
(130, 1, '2019-12-11 13:38:36', '2019-12-11 13:38:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"category:uncategorized\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'new form', 'new-form', 'trash', 'closed', 'closed', '', 'group_5df0f11f30197__trashed', '', '', '2020-05-14 18:35:33', '2020-05-14 18:35:33', '', 0, 'http://localhost/e_sinar/?post_type=acf-field-group&#038;p=130', 0, 'acf-field-group', '', 0),
(131, 1, '2019-12-11 13:38:36', '2019-12-11 13:38:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'nama', 'nama', 'trash', 'closed', 'closed', '', 'field_5df0f13ad9583__trashed', '', '', '2020-05-14 18:35:34', '2020-05-14 18:35:34', '', 130, 'http://localhost/e_sinar/?post_type=acf-field&#038;p=131', 0, 'acf-field', '', 0),
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
(162, 1, '2019-12-12 19:12:50', '2019-12-12 19:12:50', '', 'akses', '', 'publish', 'closed', 'closed', '', 'akses', '', '', '2020-04-27 12:14:23', '2020-04-27 12:14:23', '', 0, 'http://localhost/e_sinar/?post_type=restriction&#038;p=162', 0, 'restriction', '', 0),
(163, 1, '2019-12-12 19:10:49', '2019-12-12 19:10:49', '', '', '', 'publish', 'closed', 'closed', '', '163', '', '', '2020-03-21 17:32:47', '2020-03-21 17:32:47', '', 162, 'http://localhost/e_sinar/?post_type=condition_group&#038;p=163', 1, 'condition_group', '', 0),
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
(183, 1, '2020-03-21 17:48:11', '2020-03-21 17:48:11', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-03-21 17:48:11', '2020-03-21 17:48:11', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2020-03-21 17:48:49', '2020-03-21 17:48:49', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-03-21 17:48:49', '2020-03-21 17:48:49', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2020-03-31 03:25:24', '2020-03-31 03:25:24', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-03-31 03:25:24', '2020-03-31 03:25:24', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2020-04-09 14:37:05', '2020-04-09 14:37:05', '', 'seminar-1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-09 14:37:05', '2020-04-09 14:37:05', '', 61, 'http://localhost/e_sinar/61-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2020-04-18 15:06:42', '2020-04-18 15:06:42', '', 'tesss', '', 'publish', 'open', 'open', '', 'tesss', '', '', '2020-04-18 15:06:44', '2020-04-18 15:06:44', '', 0, 'http://localhost/e_sinar/?p=199', 0, 'post', '', 0),
(207, 1, '2020-04-18 15:06:42', '2020-04-18 15:06:42', '', 'tesss', '', 'inherit', 'closed', 'closed', '', '199-revision-v1', '', '', '2020-04-18 15:06:42', '2020-04-18 15:06:42', '', 199, 'http://localhost/e_sinar/199-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(222, 54, '2020-04-22 15:04:08', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>dasdasdasd</p>\n<!-- /wp:paragraph -->', 'sadasdas', '', 'draft', 'open', 'open', '', '', '', '', '2020-04-22 15:04:08', '2020-04-22 15:04:08', '', 0, 'http://localhost/e_sinar/?p=222', 0, 'post', '', 0),
(231, 54, '2020-04-22 15:10:57', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>teeesss</p>\n<!-- /wp:paragraph -->', 'teee', '', 'draft', 'open', 'open', '', '', '', '', '2020-04-22 15:10:57', '2020-04-22 15:10:57', '', 0, 'http://localhost/e_sinar/?p=231', 0, 'post', '', 0),
(241, 54, '2020-04-22 15:20:44', '2020-04-22 15:20:44', '', 'Seminar IT', '', 'publish', 'open', 'open', '', 'seminar-it', '', '', '2020-05-15 19:08:32', '2020-05-15 19:08:32', '', 0, 'http://localhost/e_sinar/?p=241', 0, 'post', '', 0),
(242, 54, '2020-04-22 15:20:35', '2020-04-22 15:20:35', '', 'a71', '', 'inherit', 'open', 'closed', '', 'a71', '', '', '2020-04-22 15:20:35', '2020-04-22 15:20:35', '', 241, 'http://localhost/e_sinar/wp-content/uploads/2020/04/a71.jpg', 0, 'attachment', 'image/jpeg', 0),
(243, 54, '2020-04-22 15:20:44', '2020-04-22 15:20:44', '', 'Seminar IT', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2020-04-22 15:20:44', '2020-04-22 15:20:44', '', 241, 'http://localhost/e_sinar/241-revision-v1/', 0, 'revision', '', 0),
(244, 54, '2020-04-22 15:20:49', '2020-04-22 15:20:49', '', 'Seminar IT', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2020-04-22 15:20:49', '2020-04-22 15:20:49', '', 241, 'http://localhost/e_sinar/241-revision-v1/', 0, 'revision', '', 0),
(257, 1, '2020-04-25 09:13:21', '2020-04-25 09:13:21', '', 'tesss', '', 'publish', 'open', 'open', '', 'tesss-3', '', '', '2020-04-25 09:13:25', '2020-04-25 09:13:25', '', 0, 'http://localhost/e_sinar/?p=257', 0, 'post', '', 0),
(258, 1, '2020-04-25 09:13:21', '2020-04-25 09:13:21', '', 'tesss', '', 'inherit', 'closed', 'closed', '', '257-revision-v1', '', '', '2020-04-25 09:13:21', '2020-04-25 09:13:21', '', 257, 'http://localhost/e_sinar/257-revision-v1/', 0, 'revision', '', 0),
(259, 54, '2020-04-25 15:15:17', '2020-04-25 15:15:17', '', 'Seminar IT', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2020-04-25 15:15:17', '2020-04-25 15:15:17', '', 241, 'http://localhost/e_sinar/241-revision-v1/', 0, 'revision', '', 0),
(260, 54, '2020-04-25 15:25:15', '2020-04-25 15:25:15', '', 'Seminar IT', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2020-04-25 15:25:15', '2020-04-25 15:25:15', '', 241, 'http://localhost/e_sinar/241-revision-v1/', 0, 'revision', '', 0),
(261, 54, '2020-04-25 17:26:50', '2020-04-25 17:26:50', '', 'Seminar IT', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2020-04-25 17:26:50', '2020-04-25 17:26:50', '', 241, 'http://localhost/e_sinar/241-revision-v1/', 0, 'revision', '', 0),
(265, 1, '2020-04-30 18:11:36', '2020-04-30 18:11:36', '', 'Seminar IT', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2020-04-30 18:11:36', '2020-04-30 18:11:36', '', 241, 'http://localhost/e_sinar/241-revision-v1/', 0, 'revision', '', 0),
(266, 1, '2020-04-30 18:44:56', '2020-04-30 18:44:56', '', 'Seminar IT', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2020-04-30 18:44:56', '2020-04-30 18:44:56', '', 241, 'http://localhost/e_sinar/241-revision-v1/', 0, 'revision', '', 0),
(267, 1, '2020-04-30 18:45:33', '2020-04-30 18:45:33', '', 'Seminar IT', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2020-04-30 18:45:33', '2020-04-30 18:45:33', '', 241, 'http://localhost/e_sinar/241-revision-v1/', 0, 'revision', '', 0),
(268, 54, '2020-04-30 18:52:42', '2020-04-30 18:52:42', '', 'Seminar IT', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2020-04-30 18:52:42', '2020-04-30 18:52:42', '', 241, 'http://localhost/e_sinar/241-revision-v1/', 0, 'revision', '', 0),
(270, 1, '2020-05-14 18:04:14', '2020-05-14 18:04:14', '', 'tess', '', 'trash', 'open', 'open', '', 'tess__trashed-2', '', '', '2020-05-15 19:06:13', '2020-05-15 19:06:13', '', 0, 'http://localhost/e_sinar/?p=270', 0, 'post', '', 0),
(271, 1, '2020-05-14 18:04:14', '2020-05-14 18:04:14', '', 'tess', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2020-05-14 18:04:14', '2020-05-14 18:04:14', '', 270, 'http://localhost/e_sinar/270-revision-v1/', 0, 'revision', '', 0),
(272, 1, '2020-05-14 18:04:20', '2020-05-14 18:04:20', '', 'tess', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2020-05-14 18:04:20', '2020-05-14 18:04:20', '', 270, 'http://localhost/e_sinar/270-revision-v1/', 0, 'revision', '', 0),
(273, 1, '2020-05-14 18:37:54', '2020-05-14 18:37:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"category:uncategorized\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tess', 'tess', 'publish', 'closed', 'closed', '', 'group_5ebd8f83787aa', '', '', '2020-05-14 18:42:49', '2020-05-14 18:42:49', '', 0, 'http://localhost/e_sinar/?post_type=acf-field-group&#038;p=273', 0, 'acf-field-group', '', 0),
(274, 1, '2020-05-14 18:37:54', '2020-05-14 18:37:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:12:\"isi nama ini\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:4:\"tess\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_5ebd8fb175248', '', '', '2020-05-14 18:42:49', '2020-05-14 18:42:49', '', 273, 'http://localhost/e_sinar/?post_type=acf-field&#038;p=274', 0, 'acf-field', '', 0),
(275, 1, '2020-05-14 18:40:49', '2020-05-14 18:40:49', '', 'seminar SI', '', 'publish', 'open', 'open', '', 'seminar-si', '', '', '2020-05-14 18:51:50', '2020-05-14 18:51:50', '', 0, 'http://localhost/e_sinar/?p=275', 0, 'post', '', 0),
(276, 1, '2020-05-14 18:40:49', '2020-05-14 18:40:49', '', 'seminar SI', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2020-05-14 18:40:49', '2020-05-14 18:40:49', '', 275, 'http://localhost/e_sinar/275-revision-v1/', 0, 'revision', '', 0),
(277, 1, '2020-05-14 18:40:53', '2020-05-14 18:40:53', '', 'seminar SI', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2020-05-14 18:40:53', '2020-05-14 18:40:53', '', 275, 'http://localhost/e_sinar/275-revision-v1/', 0, 'revision', '', 0),
(279, 54, '2020-05-15 19:08:13', '2020-05-15 19:08:13', '', 'seminar-invite', '', 'inherit', 'open', 'closed', '', 'seminar-invite', '', '', '2020-05-15 19:08:13', '2020-05-15 19:08:13', '', 241, 'http://localhost/e_sinar/wp-content/uploads/2020/04/seminar-invite.jpg', 0, 'attachment', 'image/jpeg', 0),
(280, 59, '2020-05-15 19:12:29', '2020-05-15 19:12:29', '', 'seminar nasional', '', 'publish', 'open', 'open', '', 'seminar-nasional', '', '', '2020-05-15 20:22:06', '2020-05-15 20:22:06', '', 0, 'http://localhost/e_sinar/?p=280', 0, 'post', '', 0),
(281, 59, '2020-05-15 19:11:45', '2020-05-15 19:11:45', '', 'download', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2020-05-15 19:11:45', '2020-05-15 19:11:45', '', 280, 'http://localhost/e_sinar/wp-content/uploads/2020/05/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(282, 59, '2020-05-15 19:12:29', '2020-05-15 19:12:29', '', 'seminar nasional', '', 'inherit', 'closed', 'closed', '', '280-revision-v1', '', '', '2020-05-15 19:12:29', '2020-05-15 19:12:29', '', 280, 'http://localhost/e_sinar/280-revision-v1/', 0, 'revision', '', 0),
(283, 59, '2020-05-15 19:12:33', '2020-05-15 19:12:33', '', 'seminar nasional', '', 'inherit', 'closed', 'closed', '', '280-revision-v1', '', '', '2020-05-15 19:12:33', '2020-05-15 19:12:33', '', 280, 'http://localhost/e_sinar/280-revision-v1/', 0, 'revision', '', 0),
(284, 59, '2020-05-15 20:22:06', '2020-05-15 20:22:06', '', 'seminar nasional', '', 'inherit', 'closed', 'closed', '', '280-revision-v1', '', '', '2020-05-15 20:22:06', '2020-05-15 20:22:06', '', 280, 'http://localhost/e_sinar/280-revision-v1/', 0, 'revision', '', 0),
(285, 1, '2020-05-18 07:34:08', '2020-05-18 07:34:08', '<!-- wp:shortcode -->\n[wpcrl_login]\n<!-- /wp:shortcode -->', 'login member', '', 'publish', 'closed', 'closed', '', 'login-member', '', '', '2020-05-18 07:35:14', '2020-05-18 07:35:14', '', 0, 'http://localhost/e_sinar/?page_id=285', 0, 'page', '', 0),
(286, 1, '2020-05-18 07:34:09', '2020-05-18 07:34:09', ' ', '', '', 'publish', 'closed', 'closed', '', '286', '', '', '2020-05-18 07:34:09', '2020-05-18 07:34:09', '', 0, 'http://localhost/e_sinar/286/', 5, 'nav_menu_item', '', 0),
(287, 1, '2020-05-18 07:34:08', '2020-05-18 07:34:08', '<!-- wp:shortcode -->\n[wpcrl_login_form]\n<!-- /wp:shortcode -->', 'login member', '', 'inherit', 'closed', 'closed', '', '285-revision-v1', '', '', '2020-05-18 07:34:08', '2020-05-18 07:34:08', '', 285, 'http://localhost/e_sinar/285-revision-v1/', 0, 'revision', '', 0),
(288, 1, '2020-05-18 07:35:11', '2020-05-18 07:35:11', '<!-- wp:shortcode -->\n[wpcrl_login]\n<!-- /wp:shortcode -->', 'login member', '', 'inherit', 'closed', 'closed', '', '285-revision-v1', '', '', '2020-05-18 07:35:11', '2020-05-18 07:35:11', '', 285, 'http://localhost/e_sinar/285-revision-v1/', 0, 'revision', '', 0);

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
(33, 4, 0),
(34, 4, 0),
(35, 4, 0),
(53, 4, 0),
(61, 5, 0),
(137, 1, 0),
(168, 5, 0),
(172, 1, 0),
(176, 1, 0),
(199, 1, 0),
(222, 1, 0),
(231, 1, 0),
(241, 5, 0),
(257, 1, 0),
(270, 5, 0),
(275, 1, 0),
(280, 5, 0),
(286, 4, 0);

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
(1, 1, 'category', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'category', '', 0, 4);

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
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '269'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(19, 1, 'wp_user-settings-time', '1587219974'),
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
(926, 58, 'session_tokens', 'a:2:{s:64:\"1f1226b7080d3c9d17b7308cb6f8a396e6421ffc805c6a1d39efcfb48bd43e8b\";a:4:{s:10:\"expiration\";i:1587915392;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1587742592;}s:64:\"ae894adb3423f9d62e1478e4f5e582ec6ff06cb2afd9ee1da6b13e3a5931edd6\";a:4:{s:10:\"expiration\";i:1588086977;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1587914177;}}'),
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
(957, 54, 'session_tokens', 'a:3:{s:64:\"3a2924602ea88a0702fe95b7a972c8a789c335f447bb57f818d747faa1ef4b39\";a:4:{s:10:\"expiration\";i:1589653551;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589480751;}s:64:\"1dfb5b25cf8d10968cacde590e44e74f33a799b7f0af5282abba281c64a5453c\";a:4:{s:10:\"expiration\";i:1589653551;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589480751;}s:64:\"182c548091faf354493d62274d1c8ee9828c1affa48e2d8d638a8eb109bd47ce\";a:4:{s:10:\"expiration\";i:1589747299;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589574499;}}'),
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
(974, 54, 'wp_dashboard_quick_press_last_post_id', '263'),
(975, 54, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(976, 54, 'wp_user-settings-time', '1587568848'),
(980, 2, 'session_tokens', 'a:1:{s:64:\"3dfa3205ae56eaec8c5586c3986b90fd709d313deac6ee08c78fc546a72d2781\";a:4:{s:10:\"expiration\";i:1587402521;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587229721;}}'),
(981, 25, 'session_tokens', 'a:1:{s:64:\"7e84690b3c930b5504d429b9d48ed4fed507ac8cab8d4c37e377d6ff099c08aa\";a:4:{s:10:\"expiration\";i:1589742291;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589569491;}}'),
(982, 1, 'closedpostboxes_post', 'a:0:{}'),
(983, 1, 'metaboxhidden_post', 'a:0:{}'),
(984, 42, 'session_tokens', 'a:2:{s:64:\"64e45eb739c44e4cf08ddd516fbf4749c6d4b52f25d23e17cd44c732ef98666a\";a:4:{s:10:\"expiration\";i:1587929674;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1587756874;}s:64:\"1e7725bdd3c3c7f4da9909f1c49a6bb7af321228d851284c30c0ff069353a863\";a:4:{s:10:\"expiration\";i:1587929674;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1587756874;}}'),
(987, 1, 'session_tokens', 'a:1:{s:64:\"f16673e060192e0e88950783ff297e8bc6713c79dc08972627f1981adae050d7\";a:4:{s:10:\"expiration\";i:1589959930;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589787130;}}'),
(988, 62, 'session_tokens', 'a:1:{s:64:\"0756de6d1f793f4ac6ccddcc0edf71749054178e89526eebd22f3d0bc6004c4d\";a:4:{s:10:\"expiration\";i:1588085997;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1587913197;}}'),
(990, 59, 'wp_user-settings', 'libraryContent=browse'),
(991, 59, 'wp_user-settings-time', '1589569952'),
(992, 59, 'session_tokens', 'a:2:{s:64:\"70d9ac14c5e1406677f46e15c363924f80284f84f1958c097149965efe2abddc\";a:4:{s:10:\"expiration\";i:1589744849;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589572049;}s:64:\"bd9bea4fea68987315897d3ff187ddc170fc0cb894eabc8f238f6c5b188b3750\";a:4:{s:10:\"expiration\";i:1589746894;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0\";s:5:\"login\";i:1589574094;}}'),
(993, 63, 'nickname', 'kahfi0021'),
(994, 63, 'first_name', 'kahfi'),
(995, 63, 'last_name', 'nadyne'),
(996, 63, 'description', ''),
(997, 63, 'rich_editing', 'true'),
(998, 63, 'syntax_highlighting', 'true'),
(999, 63, 'comment_shortcuts', 'false'),
(1000, 63, 'admin_color', 'fresh'),
(1001, 63, 'use_ssl', '0'),
(1002, 63, 'show_admin_bar_front', 'true'),
(1003, 63, 'locale', ''),
(1004, 63, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1005, 63, 'wp_user_level', '0'),
(1006, 63, 'dismissed_wp_pointers', ''),
(1007, 63, 'dismissed_wp_pointers', ''),
(1008, 63, 'session_tokens', 'a:1:{s:64:\"b44da7a3d0f5a39e30a488b7d2dfd972e7c1df058d45fdb7ec00173cfe75fd3a\";a:4:{s:10:\"expiration\";i:1590053762;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589880962;}}');

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
  `user_url` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime DEFAULT NULL,
  `user_activation_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(2) NOT NULL DEFAULT 0,
  `display_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role_user` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `role_user`) VALUES
(1, 'admin_esinar', '$P$BWSXWu8maHQFCraSBbFZv05iadto6w1', 'admin_esinar', 'rizkyfebryan21@gmail.com', '', '2019-09-27 17:59:16', '', 0, 'admin_esinar', 'super_admin'),
(2, 'onifebryan', '$P$BuGjR2oeDdkZ2VvfnOQwx1LrDG9fcv.', 'onifebryan', 'rizky@nadyne.com', '', '2019-10-06 15:04:24', '1570374266:$P$BLlAhpuSf.YKsrmFdHAvvW.IZGPICs1', 0, 'oni febryan', 'author'),
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
(62, 'pmadhi', '$P$BHa6HQbFu62SWmJenWuKzWPAwjmAyU.', 'pmadhi', 'pmadhi@gg.co', '', '2020-03-22 18:36:59', '', 0, 'andih pm', 'author'),
(63, 'kahfi0021', '$P$B4w1e.qa2olEOSLFZ2xTs/o6AEqQFq.', 'kahfi0021', 'kahfi@gg.com', '', '2020-05-19 16:36:01', '', 0, 'kahfi nadyne', 'subscriber');

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
-- Indeks untuk tabel `seminar_selesai`
--
ALTER TABLE `seminar_selesai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_seminar`
--
ALTER TABLE `status_seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `upload_bukti_selesai`
--
ALTER TABLE `upload_bukti_selesai`
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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `file_verifikasi`
--
ALTER TABLE `file_verifikasi`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pdf_verifikasi_daftar`
--
ALTER TABLE `pdf_verifikasi_daftar`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `rekening_pemilik`
--
ALTER TABLE `rekening_pemilik`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `seminar_selesai`
--
ALTER TABLE `seminar_selesai`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `status_seminar`
--
ALTER TABLE `status_seminar`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `upload_bukti_selesai`
--
ALTER TABLE `upload_bukti_selesai`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_esinar`
--
ALTER TABLE `user_esinar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1972;

--
-- AUTO_INCREMENT untuk tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- AUTO_INCREMENT untuk tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT untuk tabel `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

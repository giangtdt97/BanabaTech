-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2020 at 05:13 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `author_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 'demo', NULL, 'demo', '<p>demo<img src=\"http://localhost/storage/blogs/September2020/Screenshot (2).png\" alt=\"\" width=\"215\" height=\"215\" /><img src=\"http://localhost/storage/blogs/September2020/Screenshot (2)1.png\" alt=\"\" width=\"216\" height=\"216\" /></p>', 'blogs\\September2020\\zcJNTF5VrZfOUqell5Q2.png', 'demo', NULL, NULL, 'PUBLISHED', 1, '2020-09-03 19:33:14', '2020-09-03 19:58:46'),
(2, NULL, 'demo2', NULL, 'demo2', '<p>demo2</p>', 'blogs\\September2020\\pknh8rYHDJYb6l9WXy5k.jpg', 'demo2', NULL, NULL, 'PUBLISHED', 0, '2020-09-03 19:42:35', '2020-09-03 20:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'services_name', 'text', 'Services Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'services_content', 'rich_text_box', 'Services Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'services_icon', 'text', 'Services Icon', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'services_name_vi', 'text', 'Services Name Vi', 0, 1, 1, 1, 1, 1, '{}', 3),
(61, 7, 'services_content_vi', 'text', 'Services Content Vi', 0, 1, 1, 1, 1, 1, '{}', 5),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(66, 10, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(67, 10, 'quote_content', 'text', 'Quote Content', 1, 1, 1, 1, 1, 1, '{}', 4),
(68, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(69, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(70, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 11, 'author_id', 'text', 'Author Id', 1, 0, 1, 1, 1, 1, '{}', 2),
(72, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(73, 11, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 4),
(74, 11, 'excerpt', 'text_area', 'Excerpt', 1, 1, 1, 1, 1, 1, '{}', 5),
(75, 11, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(76, 11, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(77, 11, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(78, 11, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(79, 11, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(80, 11, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(81, 11, 'featured', 'checkbox', 'Featured', 1, 0, 1, 1, 1, 1, '{}', 12),
(82, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 13),
(83, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-08-05 22:02:44', '2020-08-05 22:02:44'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-08-05 22:02:44', '2020-08-05 22:02:44'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-08-05 22:02:44', '2020-08-05 22:02:44'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-08-05 22:02:49', '2020-08-05 22:02:49'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-08-05 22:02:50', '2020-08-05 22:02:50'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(7, 'services', 'services', 'Service', 'Services', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-08-07 00:47:49', '2020-08-10 23:44:44'),
(9, 'quote', 'quote', 'Quote', 'Quote', NULL, 'App\\Quote', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-08-12 23:15:04', '2020-08-12 23:17:08'),
(10, 'quotes', 'quotes', 'Quote', 'Quotes', 'voyager-list', 'App\\Quote', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-08-13 00:50:39', '2020-08-13 00:50:39'),
(11, 'blogs', 'blogs', 'Blog', 'Blogs', 'voyager-tv', 'App\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-03 19:32:14', '2020-09-03 19:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(2, 'Home', '2020-08-06 02:07:51', '2020-08-06 02:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-08-05 22:02:45', '2020-08-05 22:02:45', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2020-08-05 22:02:45', '2020-08-06 02:25:10', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-08-05 22:02:45', '2020-08-05 22:02:45', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-08-05 22:02:45', '2020-08-05 22:02:45', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2020-08-05 22:02:45', '2020-08-13 02:29:05', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-08-05 22:02:45', '2020-08-06 02:25:10', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-08-05 22:02:45', '2020-08-06 02:25:10', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-08-05 22:02:45', '2020-08-06 02:25:10', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-08-05 22:02:45', '2020-08-06 02:25:10', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2020-08-05 22:02:45', '2020-08-13 02:29:05', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2020-08-05 22:02:50', '2020-08-06 02:25:10', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2020-08-05 22:02:50', '2020-08-06 02:25:10', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2020-08-05 22:02:51', '2020-08-06 02:25:10', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-08-05 22:02:53', '2020-08-06 02:25:11', 'voyager.hooks', NULL),
(16, 1, 'Services', '/admin/services', '_self', 'voyager-list', '#000000', NULL, 8, '2020-08-07 00:55:35', '2020-08-10 23:47:44', NULL, ''),
(19, 1, 'Quotes', '', '_self', 'voyager-list', NULL, NULL, 9, '2020-08-13 00:50:39', '2020-08-13 02:29:05', 'voyager.quotes.index', NULL),
(20, 1, 'Blogs', '', '_self', 'voyager-tv', NULL, NULL, 12, '2020-09-03 19:32:14', '2020-09-03 19:32:14', 'voyager.blogs.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(43, '2016_01_01_000000_create_pages_table', 2),
(44, '2016_01_01_000000_create_posts_table', 2),
(45, '2016_02_15_204651_create_categories_table', 2),
(46, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(47, '2020_08_07_074518_create_services_table', 2),
(48, '2020_08_13_023239_create_quotes_table', 2),
(49, '2020_08_31_023244_create_blogs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(2, 'browse_bread', NULL, '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(3, 'browse_database', NULL, '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(4, 'browse_media', NULL, '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(5, 'browse_compass', NULL, '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(6, 'browse_menus', 'menus', '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(7, 'read_menus', 'menus', '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(8, 'edit_menus', 'menus', '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(9, 'add_menus', 'menus', '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(10, 'delete_menus', 'menus', '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(11, 'browse_roles', 'roles', '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(12, 'read_roles', 'roles', '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(13, 'edit_roles', 'roles', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(14, 'add_roles', 'roles', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(15, 'delete_roles', 'roles', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(16, 'browse_users', 'users', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(17, 'read_users', 'users', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(18, 'edit_users', 'users', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(19, 'add_users', 'users', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(20, 'delete_users', 'users', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(21, 'browse_settings', 'settings', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(22, 'read_settings', 'settings', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(23, 'edit_settings', 'settings', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(24, 'add_settings', 'settings', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(25, 'delete_settings', 'settings', '2020-08-05 22:02:46', '2020-08-05 22:02:46'),
(26, 'browse_categories', 'categories', '2020-08-05 22:02:50', '2020-08-05 22:02:50'),
(27, 'read_categories', 'categories', '2020-08-05 22:02:50', '2020-08-05 22:02:50'),
(28, 'edit_categories', 'categories', '2020-08-05 22:02:50', '2020-08-05 22:02:50'),
(29, 'add_categories', 'categories', '2020-08-05 22:02:50', '2020-08-05 22:02:50'),
(30, 'delete_categories', 'categories', '2020-08-05 22:02:50', '2020-08-05 22:02:50'),
(31, 'browse_posts', 'posts', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(32, 'read_posts', 'posts', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(33, 'edit_posts', 'posts', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(34, 'add_posts', 'posts', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(35, 'delete_posts', 'posts', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(36, 'browse_pages', 'pages', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(37, 'read_pages', 'pages', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(38, 'edit_pages', 'pages', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(39, 'add_pages', 'pages', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(40, 'delete_pages', 'pages', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(41, 'browse_hooks', NULL, '2020-08-05 22:02:53', '2020-08-05 22:02:53'),
(42, 'browse_services', 'services', '2020-08-07 00:47:49', '2020-08-07 00:47:49'),
(43, 'read_services', 'services', '2020-08-07 00:47:49', '2020-08-07 00:47:49'),
(44, 'edit_services', 'services', '2020-08-07 00:47:49', '2020-08-07 00:47:49'),
(45, 'add_services', 'services', '2020-08-07 00:47:49', '2020-08-07 00:47:49'),
(46, 'delete_services', 'services', '2020-08-07 00:47:49', '2020-08-07 00:47:49'),
(47, 'browse_quote', 'quote', '2020-08-12 23:15:04', '2020-08-12 23:15:04'),
(48, 'read_quote', 'quote', '2020-08-12 23:15:04', '2020-08-12 23:15:04'),
(49, 'edit_quote', 'quote', '2020-08-12 23:15:04', '2020-08-12 23:15:04'),
(50, 'add_quote', 'quote', '2020-08-12 23:15:04', '2020-08-12 23:15:04'),
(51, 'delete_quote', 'quote', '2020-08-12 23:15:04', '2020-08-12 23:15:04'),
(52, 'browse_quotes', 'quotes', '2020-08-13 00:50:39', '2020-08-13 00:50:39'),
(53, 'read_quotes', 'quotes', '2020-08-13 00:50:39', '2020-08-13 00:50:39'),
(54, 'edit_quotes', 'quotes', '2020-08-13 00:50:39', '2020-08-13 00:50:39'),
(55, 'add_quotes', 'quotes', '2020-08-13 00:50:39', '2020-08-13 00:50:39'),
(56, 'delete_quotes', 'quotes', '2020-08-13 00:50:39', '2020-08-13 00:50:39'),
(57, 'browse_blogs', 'blogs', '2020-09-03 19:32:14', '2020-09-03 19:32:14'),
(58, 'read_blogs', 'blogs', '2020-09-03 19:32:14', '2020-09-03 19:32:14'),
(59, 'edit_blogs', 'blogs', '2020-09-03 19:32:14', '2020-09-03 19:32:14'),
(60, 'add_blogs', 'blogs', '2020-09-03 19:32:14', '2020-09-03 19:32:14'),
(61, 'delete_blogs', 'blogs', '2020-09-03 19:32:14', '2020-09-03 19:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quote_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `name`, `email`, `quote_content`, `created_at`, `updated_at`) VALUES
(1, 'Casper Rath', 'dominic66@example.net', 'request new page', NULL, '2020-08-13 00:51:35'),
(2, 'Ms. Tamia Sporer Sr.', 'raynor.ali@example.net', 'request', NULL, NULL),
(3, 'Madeline Cartwright PhD', 'vidal77@example.org', 'request', NULL, NULL),
(4, 'Rosalind Rowe', 'friesen.ruben@example.net', 'request', NULL, NULL),
(5, 'Mr. Elliot Koelpin', 'eldridge.kling@example.org', 'request', NULL, NULL),
(6, 'Giang', 'jun154607@gmail.com', 'laravel', '2020-08-13 02:08:02', '2020-08-13 02:08:02'),
(7, 'Tu', 'admin@example.com', 'MAKE ADMIN PAGE', '2020-08-13 02:23:41', '2020-08-13 02:23:41'),
(8, 'Maxime Wilkinson I', 'huel.adriel@example.net', 'request', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-08-05 22:02:45', '2020-08-05 22:02:45'),
(2, 'user', 'Normal User', '2020-08-05 22:02:45', '2020-08-05 22:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `services_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_name_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_content_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `services_name`, `services_content`, `services_name_vi`, `services_content_vi`, `services_icon`, `created_at`, `updated_at`) VALUES
(1, 'IT Services & Solutions', 'With Vietnam senior software developers, we provide a full range of software solutions for your business: Digitize Your Business, E-commerce, hopping, Banking, Payment, E-learning, Customer relationship management (CRM)...', 'Dịch vụ & Giải pháp CNTT', 'Với các nhà phát triển phần mềm cao cấp của Việt Nam, chúng tôi cung cấp đầy đủ các giải pháp phần mềm cho doanh nghiệp của bạn: Số hóa Doanh nghiệp của Bạn, Thương mại điện tử, Hopping, Ngân hàng, Thanh toán, Học tập điện tử, Quản lý quan hệ khách hàng (CRM) ...', 'flaticon-creativity', '2020-08-12 23:53:18', '2020-08-12 23:53:18'),
(2, 'Mobile App Development', 'We design and develop functional and interactive mobile apps, for both iOS and Android. Based on your requirements we build either native or hybrid applications using the latest technologies and suitable cost.', 'Phát triển ứng dụng di động', 'Chúng tôi thiết kế và phát triển các ứng dụng di động chức năng và tương tác, cho cả iOS và Android. Dựa trên yêu cầu của bạn, chúng tôi xây dựng các ứng dụng gốc hoặc ứng dụng kết hợp sử dụng các công nghệ mới nhất và chi phí phù hợp.', 'flaticon-market', '2020-08-12 23:54:32', '2020-08-12 23:54:32'),
(3, 'Web & Software Development', 'We has been getting that job done for clients in an effiecient and cost-effective manner. Create usable and accessible web solutions with the best responsive appearance, Full-cycle, compliance with seo standards, high security...', 'Phát triển Web & Phần mềm', 'Chúng tôi đã và đang hoàn thành công việc đó cho khách hàng một cách hiệu quả và tiết kiệm chi phí. Tạo các giải pháp web có thể sử dụng và truy cập được với giao diện đáp ứng tốt nhất, Full-cycle, tuân thủ các tiêu chuẩn seo, bảo mật cao ...', 'flaticon-research', '2020-08-12 23:55:26', '2020-08-12 23:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Banaba Tech', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Title', '', 'text', 3, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 2, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 11, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(13, 'site.address', 'Site Address', '67 Nguyen Huu Canh St. Binh Thanh, HCMC, Vietnam', NULL, 'text', 4, 'Site'),
(14, 'site.phone', 'Site Phone', '+84 93 365 2114', NULL, 'text', 6, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-08-05 22:02:51', '2020-08-05 22:02:51'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-08-05 22:02:52', '2020-08-05 22:02:52'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-08-05 22:02:52', '2020-08-05 22:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\August2020\\xDnt3JLvPPy4rbJvtPl2.png', NULL, '$2y$10$0vdGoHaBbIuxAXd3Uj3wauBNQtVJBKWLWF7Zk6mPlPlKuaxeJw.ke', '7SiI609j0Cp8ftHET6NzkU3wDY1AWaOxSV76UaAyAECvplxqZJOgMk8rzO11', '{\"locale\":\"en\"}', '2020-08-05 22:02:50', '2020-08-06 00:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

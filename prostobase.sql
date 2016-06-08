-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3307
-- Время создания: Июн 08 2016 г., 11:31
-- Версия сервера: 5.5.38-log
-- Версия PHP: 5.5.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `prostobase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'show',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `body`, `showhide`) VALUES
(1, 'MARTA', 'BODY', 'show');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_08_052051_products', 2),
('2016_06_08_072000_create_categories_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `cat_id`, `name`, `description`, `price`, `picture`, `showhide`, `created_at`, `updated_at`) VALUES
(1, 0, 'Krosachi', 'ochen krutye krossovki', '120$', 'C:\\OpenServer\\domains\\laravel\\database\\seeds\\1380705314_1.jpg', 'show', NULL, NULL),
(2, 2, 'Krosachi', 'ochen krutye krossovki', '120$', 'C:\\OpenServer\\domains\\laravel\\database\\seeds\\1380705314_1.jpg', 'show', NULL, NULL),
(3, 0, 'имя', '', '', '', 'show', '2016-06-08 03:05:12', '2016-06-08 03:05:12'),
(4, 0, 'имя', '', '', '', 'show', '2016-06-08 03:05:22', '2016-06-08 03:05:22'),
(5, 0, 'krosochi', '', '', '', 'show', NULL, NULL),
(6, 0, 'krosochi', '', '', '', 'show', NULL, NULL),
(7, 2, 'Krosachi', 'ochen krutye krossovki', '120$', 'C:\\OpenServer\\domains\\laravel\\database\\seeds\\1380705314_1.jpg', 'show', NULL, NULL),
(8, 2, 'Krosachi', 'ochen krutye krossovki', '120$', 'C:\\OpenServer\\domains\\laravel\\database\\seeds\\1380705314_1.jpg', 'show', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'name', 'name@name.name', '$2y$10$nyGbExUd9fngrbsiOW99VeMsJhyxK9qdk2YTqglAgbWCd/LXcW742', '7Sl7bk0fwdlkpbdZgPVPswYzxK0WbExDZm1j4lRMk1NBxSMAXtrLuPJPHK5L', '2016-06-06 02:51:21', '2016-06-06 02:52:16'),
(2, 'Sasha', 'Sasha@mail.ru', '$2y$10$LsO1KrJso5dFVFkf5eXQqOQU6EQTDPyypxw8qtd02hs05EXNOh5Fy', NULL, NULL, NULL),
(5, 'petya', 'petya@mail.ru', '$2y$10$O1zCC5g/yvykMgzyUtSTjObJrrFQ6K8kQU3Wwa4vtocmFb6ZWM4E6', NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

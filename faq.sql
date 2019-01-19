-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Янв 18 2019 г., 14:19
-- Версия сервера: 5.6.39-83.1
-- Версия PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `published`, `created_at`, `updated_at`) VALUES
(8, 'Биология', 1, '2019-01-12 09:31:44', '2019-01-12 09:31:44'),
(9, 'Естествознание', 1, '2019-01-12 09:31:56', '2019-01-12 09:31:56'),
(10, 'Информатика', 1, '2019-01-12 09:32:43', '2019-01-12 09:32:43'),
(11, 'Психология и педагогика', 1, '2019-01-12 09:33:13', '2019-01-12 09:58:20'),
(12, 'Социология', 0, '2019-01-12 09:33:32', '2019-01-12 09:49:18'),
(13, 'Философия', 1, '2019-01-12 09:33:51', '2019-01-12 10:01:57'),
(14, 'Экономика', 1, '2019-01-12 09:34:07', '2019-01-12 09:49:38');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2018_11_24_173713_create_categories_table', 1),
(23, '2018_12_26_144428_create_questions_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `name`, `email`, `description`, `answer`, `published`, `category_id`, `created_at`, `updated_at`) VALUES
(21, 'Анна', 'vvv@mail.ru', 'Что можно назвать условиями среды?', 'все факторы, оказывающие влияние на организм', 1, 8, '2019-01-12 09:36:21', '2019-01-12 09:36:21'),
(22, 'Оксана', 'nnn@mail.ru', 'Особенности почвы как среды жизни ?', 'Большое количество кислорода.', 2, 8, '2019-01-12 09:38:57', '2019-01-12 09:39:19'),
(23, 'Светлана', 'sss@mail.ru', 'Черты приспособленности к водной среде обитания ?', NULL, 0, 8, '2019-01-12 09:41:18', '2019-01-12 09:41:18'),
(24, 'Игорь', 'bbb@mail.ru', 'Астрономия — это наука о ...?', 'Наука о строении космических тел, образуемых ими систем и Вселенной в целом.', 1, 9, '2019-01-12 09:45:37', '2019-01-12 09:45:37'),
(25, 'Иван', 'iii@mail.ru', 'Две черты характерные для массовой коммуникации — это ...?', 'Публичность сообщений и организованный характер общения.', 1, 12, '2019-01-12 09:48:35', '2019-01-12 09:48:35'),
(26, 'Ольга', 'ooo@mail.ru', 'Что можно считать предшественницей сети Internet ?', 'Сеть ARPANET', 1, 10, '2019-01-12 09:51:47', '2019-01-12 09:51:47'),
(27, 'Татьяна', 'ttt@mail.ru', 'Субъектами инвестиционной деятельности являются ...?', 'физические и юридические лица, в том числе иностранные, а также государства и международные организации.', 1, 14, '2019-01-12 09:53:46', '2019-01-12 09:53:46'),
(28, 'Данил', 'ddd@mail.ru', 'Модификация рынка-это ...?', NULL, 0, 14, '2019-01-12 09:54:54', '2019-01-12 09:54:54'),
(29, 'Анна', 'aaa@mail.ru', 'К системе образования РФ относятся ...?', 'среднее профессиональное\r\nдополнительное\r\nвысшее профессиональное\r\nдошкольное\r\nобщее', 1, 11, '2019-01-12 09:57:59', '2019-01-12 09:57:59'),
(30, 'Анна', 'aaa@mail.ru', 'Творческий потенциал личности учителя включает ...?', NULL, 2, 11, '2019-01-12 09:59:38', '2019-01-12 09:59:38');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@mail.ru', '$2y$10$9kggWEkGVO8dSjkp7xFHROOpgCURn3N4k9ulIdy9mYZerT20QMfuK', 'WsUWcR5GobmyfoyZ6Q5S54Wqgm3cVwnmvxH3xe0JDpJHCS1B6Jf7tWvErA53', '2019-01-07 14:27:31', '2019-01-07 14:27:31');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

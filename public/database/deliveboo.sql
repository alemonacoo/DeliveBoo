-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Dic 22, 2022 alle 21:16
-- Versione del server: 5.7.34
-- Versione PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deliveboo`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Vegetariano', 'https://www.mammafelice.it/wp-content/uploads/2017/10/menu-vegetariano-famiglia-bambini.jpg', 'vegetariano', '2022-12-14 07:45:56', '2022-12-14 07:45:56'),
(2, 'Messicano', 'https://www.viaggiaregratis.eu/wp-content/uploads/2020/11/Cucina-Messicana.jpg', 'messicano', '2022-12-14 07:45:56', '2022-12-14 07:45:56'),
(3, 'Cinese', 'https://media.istockphoto.com/id/545286388/it/foto/sfondo-bianco-del-cibo-cinese.jpg?s=612x612&w=0&k=20&c=hJhAkASuNT6sIJdTzgaB-QXhLjChGTYJymbVWGoV9Y0=', 'cinese', '2022-12-14 07:45:56', '2022-12-14 07:45:56'),
(4, 'Indiano', 'https://take2me.it/blog/wp-content/uploads/2016/02/indiana-800x533.jpg', 'indiano', '2022-12-14 07:45:56', '2022-12-14 07:45:56'),
(5, 'Greco', 'https://thefoodellers.com/wp-content/uploads/2019/06/souflaki-1024x682.jpg', 'greco', '2022-12-14 07:45:56', '2022-12-14 07:45:56'),
(6, 'Giapponese', 'https://wips.plug.it/cips/paginegialle.it/magazine/cms/2018/07/piatti-cucina-giapponese.jpg?w=744&h=418&a=c', 'giapponese', '2022-12-14 07:45:56', '2022-12-14 07:45:56'),
(7, 'Italiano', 'https://www.authentico-ita.org/wp-content/uploads/2017/06/lasagne_cibo_italiano_mondo_2018.jpg', 'italiano', '2022-12-14 07:45:56', '2022-12-14 07:45:56'),
(8, 'Thai', 'https://www.2backpack.it/wp-content/uploads/2018/05/Migliori-Piatti-Cucina-Thailandese-Tradizionale6.jpg', 'thai', '2022-12-14 07:45:56', '2022-12-14 07:45:56'),
(9, 'Pizza', 'https://static.wixstatic.com/media/588b27_1d069559e1f74372854950a73277d175~mv2.jpg/v1/fill/w_640,h_640,al_tl,q_85,usm_0.66_1.00_0.01,enc_auto/588b27_1d069559e1f74372854950a73277d175~mv2.jpg', 'pizza', '2022-12-14 07:45:56', '2022-12-14 07:45:56'),
(10, 'Americano', 'https://blog.cookaround.com/ilmondodiramyfood/wp-content/uploads/2022/05/american-food-shop-1-960x593.jpg', 'americano', '2022-12-14 07:45:56', '2022-12-14 07:45:56');

-- --------------------------------------------------------

--
-- Struttura della tabella `categories_restaurants`
--

CREATE TABLE `categories_restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `categories_restaurants`
--

INSERT INTO `categories_restaurants` (`id`, `category_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 10, 2, NULL, NULL),
(2, 7, 1, NULL, NULL),
(3, 9, 1, NULL, NULL),
(4, 1, 1, NULL, NULL),
(5, 1, 9, NULL, NULL),
(6, 2, 10, NULL, NULL),
(7, 1, 6, NULL, NULL),
(8, 2, 2, NULL, NULL),
(9, 5, 15, NULL, NULL),
(10, 3, 8, NULL, NULL),
(11, 3, 7, NULL, NULL),
(12, 4, 6, NULL, NULL),
(13, 4, 3, NULL, NULL),
(14, 6, 4, NULL, NULL),
(15, 6, 7, NULL, NULL),
(16, 6, 8, NULL, NULL),
(17, 7, 9, NULL, NULL),
(18, 7, 12, NULL, NULL),
(20, 7, 11, NULL, NULL),
(21, 7, 5, NULL, NULL),
(22, 8, 6, NULL, NULL),
(23, 8, 3, NULL, NULL),
(25, 9, 9, NULL, NULL),
(26, 9, 11, NULL, NULL),
(27, 10, 10, NULL, NULL),
(28, 10, 11, NULL, NULL),
(29, 1, 16, NULL, NULL),
(30, 7, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(7,2) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `slug`, `restaurant_slug`, `image`, `price`, `visibility`, `created_at`, `updated_at`) VALUES
(1, 'Spaghetti allo scoglio', 'Spaghetti, gamberi, cozze, arsele, pomodoro', 'spaghetti-allo-scoglio', 'da-cicerone', 'https://www.cucchiaio.it/content/cucchiaio/it/ricette/2016/11/spaghetti-allo-scoglio/_jcr_content/header-par/image-single.img.jpg/1479399806681.jpg', 6.62, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(2, 'Pasta alla carbonara', 'Spaghetti, guanciale, uova, pecorino, sale, pepe', 'pasta-alla-carbonara', 'da-cicerone', 'https://www.negroni.com/sites/negroni.com/files/styles/scale__1440_x_1440_/public/carbonara_storia.jpg?itok=0fEcEAw1', 8.85, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(3, 'Salmon Salad', 'Salmone marinato, Menta, Avocado, Mango, Edamame, Germogli di soia', 'salmon-salad', '85-bio-monti', 'https://www.jessicagavin.com/wp-content/uploads/2016/05/greek-salmon-salad-with-lemon-basil-dressing-1200.jpg', 1.79, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(4, 'Chicken Salad', 'Pollo, pomodori, mais, mozzarella', 'chicken-salad', 'pulled-lovers-roma', 'https://spicecravings.com/wp-content/uploads/2022/05/Strawberry-Spinach-Salad-Featured.jpg', 1.99, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(5, 'Acqua', 'Acqua', 'acqua', 'ristorante-indiano-gandhi', NULL, 5.44, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(6, 'Coca cola', 'Acqua, Anidride carbonica, Zucchero, Aromi naturali, Caffeina', 'coca-cola', 'ristorante-indiano-gandhi', 'https://www.greenme.it/wp-content/uploads/2021/02/shutterstock_1660674511.jpg', 8.26, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(7, 'Birra artigianale', 'Malto d\'orzo, luppolo, lievito, acqua', 'birra-artigianale', 'dalhù-pub-hamburger-&-messicano', 'https://www.ipeuceti.it/wp-content/uploads/2020/11/PIL5l.png', 1.71, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(8, 'Pennete panna e salmone', 'Pennete, panna, salmone, erba cipollina', 'pennete-panna-e-salmone', 'da-cicerone', 'https://www.galbani.it/sites/default/files/styles/width_1920/public/00041343154_Pasta-panna-salmone_980.jpg?itok=419MZQV_', 5.62, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(9, 'Taco Salad', 'Carne lessa, pomodori ciliegini, lattuga romana, avocado', 'taco-salad', 'dalhù-pub-hamburger-&-messicano', 'https://tastesbetterfromscratch.com/wp-content/uploads/2020/06/Taco-Salad-3.jpg', 5.13, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(10, 'Pasta Salad', 'Fusilli, pomodori, peperoni rossi, pomodori, basilico, olio extra vergine d\'oliva', 'pasta-salad', '85-bio-monti', 'https://simplyhomecooked.com/wp-content/uploads/2021/10/chicken-pasta-salad-21.jpg', 6.74, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(11, 'Spaghetti allo scoglio', 'Spaghetti, gamberi, cozze, arsele, pomodoro', 'spaghetti-allo-scoglio-1', 'kung-fu-restaurant', 'https://www.cucchiaio.it/content/cucchiaio/it/ricette/2016/11/spaghetti-allo-scoglio/_jcr_content/header-par/image-single.img.jpg/1479399806681.jpg', 6.62, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(12, 'Pasta alla carbonara', 'Spaghetti, guanciale, uova, pecorino, sale, pepe', 'pasta-alla-carbonara-1', 'pizza-alla-pala-kebab-&-tavola-calda', 'https://www.negroni.com/sites/negroni.com/files/styles/scale__1440_x_1440_/public/carbonara_storia.jpg?itok=0fEcEAw1', 8.85, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(13, 'Salmon Salad', 'Salmone marinato, Menta, Avocado, Mango, Edamame, Germogli di soia', 'salmon-salad-1', 'baghettando-in-toscana', 'https://www.jessicagavin.com/wp-content/uploads/2016/05/greek-salmon-salad-with-lemon-basil-dressing-1200.jpg', 1.79, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(14, 'Chicken Salad', 'Pollo, pomodori, mais, mozzarella', 'chicken-salad-1', 'siam-cuisine-thai-restaurant', 'https://spicecravings.com/wp-content/uploads/2022/05/Strawberry-Spinach-Salad-Featured.jpg', 1.99, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(15, 'Acqua', 'Acqua', 'acqua-1', 'sushi-in-the-box', NULL, 5.44, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(16, 'Coca cola', 'Acqua, Anidride carbonica, Zucchero, Aromi naturali, Caffeina', 'coca-cola-1', 'siam-cuisine-thai-restaurant', 'https://www.greenme.it/wp-content/uploads/2021/02/shutterstock_1660674511.jpg', 8.26, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(17, 'Birra artigianale', 'Malto d\'orzo, luppolo, lievito, acqua', 'birra-artigianale-1', 'kung-fu-restaurant', 'https://www.ipeuceti.it/wp-content/uploads/2020/11/PIL5l.png', 1.71, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(18, 'Pennete panna e salmone', 'Pennete, panna, salmone, erba cipollina', 'pennete-panna-e-salmone-1', 'la-putaria-sexiest-bakery', 'https://www.galbani.it/sites/default/files/styles/width_1920/public/00041343154_Pasta-panna-salmone_980.jpg?itok=419MZQV_', 5.62, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(19, 'Taco Salad', 'Carne lessa, pomodori ciliegini, lattuga romana, avocado', 'taco-salad-1', 'pizza-alla-pala-kebab-&-tavola-calda', 'https://tastesbetterfromscratch.com/wp-content/uploads/2020/06/Taco-Salad-3.jpg', 5.13, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(20, 'Pasta Salad', 'Fusilli, pomodori, peperoni rossi, pomodori, basilico, olio extra vergine d\'oliva', 'pasta-salad-1', 'ristorante-cinese-mr-zhao', 'https://simplyhomecooked.com/wp-content/uploads/2021/10/chicken-pasta-salad-21.jpg', 6.74, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(21, 'Spaghetti allo scoglio', 'Spaghetti, gamberi, cozze, arsele, pomodoro', 'spaghetti-allo-scoglio-2', '85-bio-monti', 'https://www.cucchiaio.it/content/cucchiaio/it/ricette/2016/11/spaghetti-allo-scoglio/_jcr_content/header-par/image-single.img.jpg/1479399806681.jpg', 6.62, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(22, 'Pasta alla carbonara', 'Spaghetti, guanciale, uova, pecorino, sale, pepe', 'pasta-alla-carbonara-2', '85-bio-monti', 'https://www.negroni.com/sites/negroni.com/files/styles/scale__1440_x_1440_/public/carbonara_storia.jpg?itok=0fEcEAw1', 8.85, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(23, 'Chicken Salad', 'Pollo, pomodori, mais, mozzarella', 'chicken-salad-2', '85-bio-monti', 'https://spicecravings.com/wp-content/uploads/2022/05/Strawberry-Spinach-Salad-Featured.jpg', 1.99, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(24, 'Acqua', 'Acqua', 'acqua-2', '85-bio-monti', NULL, 5.44, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(25, 'Coca cola', 'Acqua, Anidride carbonica, Zucchero, Aromi naturali, Caffeina', 'coca-cola-2', '85-bio-monti', 'https://www.greenme.it/wp-content/uploads/2021/02/shutterstock_1660674511.jpg', 8.26, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(26, 'Birra artigianale', 'Malto d\'orzo, luppolo, lievito, acqua', 'birra-artigianale-2', '85-bio-monti', 'https://www.ipeuceti.it/wp-content/uploads/2020/11/PIL5l.png', 1.71, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(27, 'Pennete panna e salmone', 'Pennete, panna, salmone, erba cipollina', 'pennete-panna-e-salmone-2', '85-bio-monti', 'https://www.galbani.it/sites/default/files/styles/width_1920/public/00041343154_Pasta-panna-salmone_980.jpg?itok=419MZQV_', 5.62, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(28, 'Taco Salad', 'Carne lessa, pomodori ciliegini, lattuga romana, avocado', 'taco-salad-2', '85-bio-monti', 'https://tastesbetterfromscratch.com/wp-content/uploads/2020/06/Taco-Salad-3.jpg', 5.13, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(30, 'Birra artigianale', 'Malto d\'orzo, luppolo, lievito, acqua', 'birra-artigianale-4', 'elleniko', 'https://www.ipeuceti.it/wp-content/uploads/2020/11/PIL5l.png', 1.71, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(31, 'Taco Salad', 'Carne lessa, pomodori ciliegini, lattuga romana, avocado', 'taco-salad-4', 'elleniko', 'https://tastesbetterfromscratch.com/wp-content/uploads/2020/06/Taco-Salad-3.jpg', 5.13, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(32, 'Pasta Salad', 'Fusilli, pomodori, peperoni rossi, pomodori, basilico, olio extra vergine d\'oliva', 'pasta-salad-4', 'elleniko', 'https://simplyhomecooked.com/wp-content/uploads/2021/10/chicken-pasta-salad-21.jpg', 6.74, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(33, 'Acqua', 'Acqua', 'acqua-4', 'elleniko', NULL, 5.44, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41'),
(34, 'Coca cola', 'Acqua, Anidride carbonica, Zucchero, Aromi naturali, Caffeina', 'coca-cola-4', 'elleniko', 'https://www.greenme.it/wp-content/uploads/2021/02/shutterstock_1660674511.jpg', 8.26, 0, '2022-12-11 12:52:41', '2022-12-11 12:52:41');

-- --------------------------------------------------------

--
-- Struttura della tabella `menu_order`
--

CREATE TABLE `menu_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `menu_order`
--

INSERT INTO `menu_order` (`id`, `menu_id`, `order_id`) VALUES
(2, 2, 32),
(3, 3, 32),
(4, 1, 33),
(5, 2, 33),
(6, 3, 33),
(7, 2, 34),
(8, 1, 34),
(9, 2, 35),
(10, 1, 35),
(11, 1, 36),
(12, 2, 36),
(13, 1, 36),
(14, 1, 37),
(15, 2, 37),
(16, 1, 37),
(17, 2, 38),
(18, 3, 38),
(19, 5, 38),
(20, 2, 39),
(21, 3, 39),
(22, 5, 39),
(23, 1, 40),
(24, 3, 40),
(25, 2, 40),
(26, 1, 41),
(27, 2, 41),
(28, 3, 41),
(29, 1, 42),
(30, 2, 42),
(31, 3, 42),
(32, 2, 43),
(33, 1, 43),
(34, 3, 43),
(35, 2, 44),
(36, 1, 44),
(37, 1, 45),
(38, 2, 45),
(39, 1, 46),
(40, 2, 47),
(41, 2, 48),
(42, 1, 48),
(43, 2, 49),
(44, 1, 49),
(45, 2, 50),
(46, 1, 50),
(47, 2, 51),
(48, 1, 51),
(49, 2, 52),
(50, 1, 52),
(51, 1, 53),
(52, 2, 53),
(53, 3, 54),
(54, 10, 54),
(55, 21, 54),
(56, 22, 54),
(57, 23, 54),
(58, 21, 54),
(59, 23, 54),
(60, 24, 54),
(61, 24, 54),
(62, 3, 55),
(63, 10, 55),
(64, 21, 55),
(65, 3, 56),
(66, 10, 56),
(67, 25, 56),
(68, 26, 56),
(69, 10, 57),
(70, 21, 57),
(71, 22, 57);

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_12_06_163204_create_restaurants_table', 1),
(5, '2022_12_07_094949_add_foreign_restaurants_users_table', 1),
(6, '2022_12_07_150306_create_orders_table', 2),
(7, '2022_12_07_153629_create_orders_table', 3),
(8, '2022_12_08_153404_create_menus_table', 4),
(9, '2022_12_09_213817_add_foreign_menus_restaurant_table', 4),
(10, '2022_12_11_125718_create_menu_order_table', 5),
(11, '2022_12_09_082800_create_categories_table', 6),
(12, '2022_12_09_083838_create_categories_restaurants_table', 6),
(13, '2022_12_19_185718_create_menu_order_table', 7);

-- --------------------------------------------------------

--
-- Struttura della tabella `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` double(7,2) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `orders`
--

INSERT INTO `orders` (`id`, `total`, `address`, `created_at`, `updated_at`) VALUES
(32, 17.26, 'Via Monte Duomo, 1 - 00021 Affile (RM)', '2022-12-20 15:34:51', '2022-12-20 15:34:51'),
(33, 17.26, 'Via San Martino, 4 - 00020 Agosta (RM)', '2022-12-20 15:36:22', '2022-12-20 15:36:22'),
(34, 15.47, 'Piazza Costituente, 1 - 00041 Albano Laziale (RM)', '2022-12-20 15:36:40', '2022-12-20 15:36:40'),
(35, 15.47, 'Piazza della Repubblica, 39 - 00051 Allumiere (RM)', '2022-12-20 15:37:23', '2022-12-20 15:37:23'),
(36, 22.09, 'Piazza del Comune, 1 - 00061 Anguillara Sabazia (RM)', '2022-12-20 15:37:39', '2022-12-20 15:37:39'),
(37, 22.09, 'Via Giorgio Bertoletti, 1 - 00022 Anticoli Corrado (RM)', '2022-12-20 15:37:47', '2022-12-20 15:37:47'),
(38, 16.08, 'Piazza Cesare Battisti, 25 - 00042 Anzio (RM)', '2022-12-20 15:40:54', '2022-12-20 15:40:54'),
(39, 16.08, 'Piazza San Giorgio, 1 - 00020 Arcinazzo Romano (RM)', '2022-12-20 15:43:25', '2022-12-20 15:43:25'),
(40, 17.26, 'Via Garibaldi, 5 - 00040 Ardea (RM)', '2022-12-20 15:47:52', '2022-12-20 15:47:52'),
(41, 17.26, 'Piazza San Nicola - 00072 Ariccia (RM)', '2022-12-20 15:49:15', '2022-12-20 15:49:15'),
(42, 17.26, 'Piazza dei Martiri Antifascisti, 1 - 00023 Arsoli (RM)', '2022-12-20 15:49:22', '2022-12-20 15:49:22'),
(43, 17.26, 'Via del Municipio, 7 - 00031 Artena (RM)', '2022-12-20 15:53:03', '2022-12-20 15:53:03'),
(44, 15.47, 'Piazza del Municipio, 9 - 00030 Bellegra (RM)', '2022-12-20 15:56:58', '2022-12-20 15:56:58'),
(45, 15.47, 'Piazza IV Novembre, 6 - 00062 Bracciano (RM)', '2022-12-20 16:36:32', '2022-12-20 16:36:32'),
(46, 6.62, 'Piazza Roma, 3 - 00020 Camerata Nuova (RM)', '2022-12-20 17:00:51', '2022-12-20 17:00:51'),
(47, 8.85, 'Piazza Cesare Leonelli, n. 15 - 00063 Campagnano di Roma (RM)', '2022-12-20 17:02:09', '2022-12-20 17:02:09'),
(48, 15.47, 'Piazza del Campo, 9 - 00060 Canale Monterano (RM)', '2022-12-20 17:03:09', '2022-12-20 17:03:09'),
(49, 15.47, 'Via del Castello, 7 - 00020 Canterano (RM)', '2022-12-20 17:05:29', '2022-12-20 17:05:29'),
(50, 15.47, 'Piazza San Luca, n. 1 - 00060 Capena (RM)', '2022-12-20 17:06:48', '2022-12-20 17:06:48'),
(51, 15.47, 'Piazza A. Frezza - 00030 Capranica Prenestina (RM)', '2022-12-20 17:09:09', '2022-12-20 17:09:09'),
(52, 15.47, 'Piazzale della Vittoria, 1 - 00032 Carpineto Romano (RM)', '2022-12-20 19:09:00', '2022-12-20 19:09:00'),
(53, 15.47, 'via Roma, 24 - 00010 Casape (RM)', '2022-12-21 13:59:54', '2022-12-21 13:59:54'),
(54, 45.48, 'via dei porci numero 69', '2022-12-22 11:20:58', '2022-12-22 11:20:58'),
(55, 15.15, 'Via Montefiore - 00060 Castelnuovo di Porto (RM)', '2022-12-22 12:23:05', '2022-12-22 12:23:05'),
(56, 18.50, 'Via Vittorio Veneto - 00030 Castel San Pietro Romano (RM)', '2022-12-22 12:44:01', '2022-12-22 12:44:01'),
(57, 22.21, 'via dei porci numero 69 1', '2022-12-22 15:11:55', '2022-12-22 15:11:55');

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_iva` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `p_iva`, `slug`, `user_id`, `image`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Da Cicerone', '0000000000', 'da-cicerone', 1, 'https://qul.imgix.net/0b33b514-af8c-468e-bfc8-02e05d23a2a4/362090_sld.jpg', 'Via delle Botteghe Oscure 34, Roma, 00186', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(2, 'Pulled Lovers - Roma', '0000000001', 'pulled-lovers-roma', 1, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:hamburger-4.jpg/v1/it/restaurants/246284.jpg', 'Via Labicana 62, Roma, 00184', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(3, 'Siam Cuisine - Thai Restaurant', '0000000002', 'siam-cuisine-thai-restaurant', NULL, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:thailandese-5.jpg/v1/it/restaurants/242205.jpg', 'Viale di Trastevere 343, Roma, 00152', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(4, 'Sushi in the Box', '0000000003', 'sushi-in-the-box', NULL, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:giapponese-7.jpg/v1/it/restaurants/203007.jpg', 'Via Daniele Manin 68, Roma, 00185', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(5, 'La Putaria - Sexiest Bakery', '0000000004', 'la-putaria-sexiest-bakery', NULL, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:dolci-6.jpg/v1/it/restaurants/262206.jpg', 'Piazzale Flaminio 34, Roma, 00196', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(6, 'Ristorante Indiano Gandhi', '0000000005', 'ristorante-indiano-gandhi', NULL, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:indiano-1.jpg/v1/it/restaurants/217591.jpg', 'Via Cavour, 126, Roma, 00184', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(7, 'Kung Fu Restaurant', '0000000006', 'kung-fu-restaurant', NULL, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:cinese-2.jpg/v1/it/restaurants/206102.jpg', 'Via dei Gracchi 272, Roma, 00192', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(8, 'Ristorante Cinese Mr. Zhao', '0000000007', 'ristorante-cinese-mr-zhao', NULL, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:cinese-6.jpg/v1/it/restaurants/253576.jpg', 'Via Agonale, 3, Roma, 00186', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(9, '85 Bio Monti', '0000000008', '85-bio-monti', 1, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:insalate-4.jpg/v1/it/restaurants/234004.jpg', 'Via dei Crociferi 25, Roma, 00187', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(10, 'Dalhù Pub - hamburger & messicano', '0000000009', 'dalhù-pub-hamburger-&-messicano', NULL, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:dolci-4.jpg/v1/it/restaurants/261434.jpg', 'Piazza Giuseppe Mazzini 10/11, Roma, 00195', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(11, 'Pizza alla Pala - Kebab & Tavola Calda', '00000000010', 'pizza-alla-pala-kebab-&-tavola-calda', NULL, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:pizza-0.jpg/v1/it/restaurants/203140.jpg', 'Via Isonzo 3/5/7, Roma, 00198', '2022-12-11 11:11:29', '2022-12-11 11:11:29'),
(12, 'Baghettando in Toscana', '2343255', 'baghettando-in-toscana', 1, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:panini-2.jpg/v1/it/restaurants/258462.jpg', 'Via dei Capocci 1,Roma,00184', '2022-12-14 07:54:26', '2022-12-14 07:54:26'),
(15, 'Elleniko', '2343256', 'elleniko', NULL, 'https://just-eat-prod-eu-res.cloudinary.com/image/upload/c_fill,f_auto,q_auto,w_1600,h_500,d_it:cuisines:greco-1.jpg/v1/it/restaurants/233291.jpg', 'Viale Aventino 109, Roma, 00153', '2022-12-14 08:03:45', '2022-12-14 08:03:45'),
(16, 'Alla Vecchia Fattoria', '1234567890', 'alla-vecchia-fattoria', 2, 'https://media-cdn.tripadvisor.com/media/photo-s/19/4e/5c/00/una-delle-sale.jpg', 'via della fattoria n.1', '2022-12-22 13:43:15', '2022-12-22 13:43:15');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ristoratore1', 'ristoratore@gmail.com', NULL, '$2y$10$.TWsbKA8KsG6t2WIN2lvUOHOLxeGXf3uwpu7r9IMf8Viu1Zu4sGvS', 'j2VjRy8My74DMEhFNaGCmx3lKD98F7vlN2AVEA3HX6iXfKs9BLjrcACF8FYV', '2022-12-08 10:57:08', '2022-12-08 10:57:08'),
(2, 'Alla vecchia Fattoria', 'fattoria@gmail.com', NULL, '$2y$10$Z0a2m.NjEU3gEKEl7b66neQqp9tBhbxqaaqcHg75CR307CPZjbgi2', NULL, '2022-12-22 13:41:32', '2022-12-22 13:41:32');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indici per le tabelle `categories_restaurants`
--
ALTER TABLE `categories_restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_restaurants_category_id_foreign` (`category_id`),
  ADD KEY `categories_restaurants_restaurant_id_foreign` (`restaurant_id`);

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`),
  ADD KEY `menus_restaurant_slug_foreign` (`restaurant_slug`);

--
-- Indici per le tabelle `menu_order`
--
ALTER TABLE `menu_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_order_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_order_order_id_foreign` (`order_id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_p_iva_unique` (`p_iva`),
  ADD UNIQUE KEY `restaurants_slug_unique` (`slug`),
  ADD KEY `restaurants_user_id_foreign` (`user_id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `categories_restaurants`
--
ALTER TABLE `categories_restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT per la tabella `menu_order`
--
ALTER TABLE `menu_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT per la tabella `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `categories_restaurants`
--
ALTER TABLE `categories_restaurants`
  ADD CONSTRAINT `categories_restaurants_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `categories_restaurants_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Limiti per la tabella `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_restaurant_slug_foreign` FOREIGN KEY (`restaurant_slug`) REFERENCES `restaurants` (`slug`) ON DELETE SET NULL;

--
-- Limiti per la tabella `menu_order`
--
ALTER TABLE `menu_order`
  ADD CONSTRAINT `menu_order_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `menu_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Limiti per la tabella `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

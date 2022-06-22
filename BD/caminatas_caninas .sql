-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-06-2022 a las 16:29:47
-- Versión del servidor: 10.3.28-MariaDB
-- Versión de PHP: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `caminatas_caninas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(9999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img64` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `abouts`
--

INSERT INTO `abouts` (`id`, `description`, `fileName`, `img64`, `created_at`, `updated_at`) VALUES
(1, 'Caminatas Caninas es una iniciativa de AYUDOG, junto con un grupo de gente maravillosa.\n\nTodos los voluntarios, nos hemos comprometido a hacer un verdadero cambio en la vida de los perritos del Centro Canino, el cual estaba en malas condiciones. \n\nLas Caminatas Caninas, las llevamos a cabo los martes y viernes de 10:30 am por 2 pm. \n\nEstá dinámica ha hecho una diferencia muy grande en el estado de ánimo de todos ellos, han aprendido a caminar con correas, a convivir con más gente y perros. \n\nLa alegría que demuestran todos los perros, es tan grande que se ilumina el día con ladridos, brincos y muestras de cariño. \n\nNos hemos dado a la tarea de remodelar las áreas construyendo nuevas “Casas” (no jaulas), donde puedan vivir más dignamente y en mejores condiciones de vida. Hemos procurado separarlos por tamaño, condición de salud y temperamento para evitar los accidentes entre ellos. \n\nSeguiremos mejorando su calidad de vida, nuestra meta es encontrarles un hogar donde vivan con amor y respeto. \n\nVen, te invitamos a unirte a este increíble grupo de voluntarios.', 'caminata3.jpg', NULL, '2020-11-26 15:39:02', '2020-11-26 15:39:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adoptions`
--

CREATE TABLE `adoptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adopted` int(11) NOT NULL,
  `description` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desparasitado` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esterilizado` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img64` blob DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `tamanio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacunado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `adoptions`
--

INSERT INTO `adoptions` (`id`, `type`, `adopted`, `description`, `desparasitado`, `edad`, `esterilizado`, `fileName`, `genero`, `img64`, `nombre`, `order`, `tamanio`, `vacunado`, `created_at`, `updated_at`) VALUES
(208, 'jpeg', 0, 'Perla :):). \r\n4 años.  De carácter muy tranquilo y de fácil convivencia con perros y humanos :):) \r\n\r\nDisfruta mucho los paseos y los apapachos\r\n\r\nEsterilizada, vacunada y desparasitada.\r\n\r\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', '4', 'Si', '1631128312.jpeg', 'hembra', NULL, 'Perla', -1, 'mediano', 'Si', '2021-09-09 00:11:52', '2021-09-09 00:13:00'),
(210, 'png', 0, 'Luisa \r\n:):) cachorra de 9 meses, con muy buena salud :):) juguetona y activa :)\r\n\r\nEsterilizada, vacunada y desparasitada.\r\n\r\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', '9 meses', 'Si', '1631462601.png', 'Canino', NULL, 'Luisa', -2, 'Mediano', 'Si', '2021-09-12 20:57:49', '2021-09-12 21:03:21'),
(211, 'png', 0, 'Paco :):)\nCachorro de 9 meses muy activo.  \n\nAbandonaron a 3 cachorros, dos de ellos machos y una hembra, casi idénticos los 3, de ahí el nombre de Hugo, Paco y Luisa.\n\nYa esterilizado, vacunado y desparasitado.\n\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1631462648.png', NULL, NULL, 'Paco', -3, NULL, 'Si', '2021-09-12 21:04:08', '2021-09-12 21:04:08'),
(212, 'png', 0, 'Rio :):). \nPerra de 3 años elegante y educada:\n):) le encantan los paseos y es muy activa :):)\nFue rescatada por las voluntarios de Ayudog del Río Tizates donde estaba escondida con sus 3 cachorritos. \nEstaba sumamente asustada y no confiaba en los humanos, el poderlos rescatar tardo casi 5 días.\nElla merece un hogar.\nEsterilizada, vacunada y desparasitada.\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1631462694.png', NULL, NULL, 'Río', -4, NULL, 'Si', '2021-09-12 21:04:54', '2021-09-12 21:04:54'),
(213, 'png', 0, 'Cloé:):). \r\nCachorra de 8 meses super activa y energética.\r\nAbandonada en el Centro Canino, junto con 2 hermanos. \r\nTodos sanos, pero muy flacos. Ahora totalmente recuperados.\r\nEsterilizada, vacunada y desparasitada.\r\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632008025.png', NULL, NULL, 'Cloe', -5, NULL, 'Si', '2021-09-12 21:05:37', '2021-09-19 04:33:45'),
(214, 'png', 0, 'Mica :):). \nCachorra de 8 meses   Le encantan las caricias y los apapachos :):)\nTambién ella fue abandonada en el Centro Canino, llegó sana pero muy desnutrida. Ahora ya muy recuperada y está ansiosa de ir a tu casa.\nEsterilizada, vacunada y desparasitada.\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1631462773.png', NULL, NULL, 'Mica', -6, NULL, 'Si', '2021-09-12 21:06:13', '2021-09-12 21:06:13'),
(217, 'png', 0, 'Alice :):). \nCachorra 8 meses suuuper activa y energética.\nAlice es perfecta para convivir con familia que le guste el ejercicio. \n\nEsterilizada, vacunada y desparasitada.\n\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632008104.png', NULL, NULL, 'Alice', -7, NULL, 'Si', '2021-09-19 04:35:04', '2021-09-19 04:35:04'),
(218, 'png', 0, 'Betty :):). \nPerra joven de alta energía   \nLe encantan los paseos y correr en el campo. \nTiene mezcla de Pastor y rasgos de esta raza ):  ojos color miel\nEsterilizada, vacunada y desparasitada.\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632008163.png', NULL, NULL, 'Bety', -8, NULL, 'Si', '2021-09-19 04:36:03', '2021-09-19 04:36:03'),
(219, 'png', 0, 'Capulín es un hermoso perro de 2 años, tranquilo con energía para caminar por horas. Le encantan los cariñitos. \nConvive bien con gente y con perros.\nEsterilizado, Vacunado y Desparasitado', 'Si', NULL, 'Si', '1632008302.png', NULL, NULL, 'Capulín', -9, NULL, 'Si', '2021-09-19 04:38:22', '2021-09-19 04:38:22'),
(220, 'png', 0, 'Hembra Mix\nChica-Mediana\n7 Meses\n12K\n-Tranquila, Cariñosa, un poco nerviosa por el efecto de su madre sobreprotectora.\n\nConvive con más perros, niños\n\n-Energia Baja\nEs una cachorra que necesita paciencia porque llegó asustada con su mamá y sus hermanos al Centro Canino.\n\nSu mamá es muy protectora y pone nerviosos a sus cachorros, pero la sacamos y es un peluchito muy tranquila y cariñosa\nEs muy dulce.\n\nFísicamente es una hermosura!\n\nSabemos que ya lejos de su madre nerviosa ella aprenderá a ser más confiada y tener un buena vida.\n\nEsterilizada, vacunada y desparasitada.\n\nEncontrados abandonados y resguardados en el Centro Canino hace 6 meses.\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632009254.png', NULL, NULL, 'Carolina', -10, NULL, 'Si', '2021-09-19 04:54:14', '2021-09-19 04:54:14'),
(221, 'png', 0, 'Duna :):). \nPerra rescatada recientemente de año y medio de edad :). Carácter muy tranquilo y de fácil convivencia y SÚPER amorosa :)\n\nEsterilizada, vacunada y desparasitada.\n\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632009305.png', NULL, NULL, 'Duna', -11, NULL, 'Si', '2021-09-19 04:55:05', '2021-09-19 04:55:05'),
(222, 'png', 0, 'Ivan :):). \nCachorro de menos de 1 año con muy buen carácter y personalidad. \n\nConvive bien con otros perros y con niños :)\n\nEsterilizado, vacunado y desparasitado.\n\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632009370.png', NULL, NULL, 'Iván', -12, NULL, 'Si', '2021-09-19 04:56:10', '2021-09-19 04:56:10'),
(223, 'png', 0, 'Lobita :). \nPerra jóven y muy energética. \n\nConvive con casi todos, aunque algunas hembras la incomodan y les gruñe :). \n\nIdeal para personas jóvenes que hacen ejercicio\nEsterilizada, vacunada y desparasitada.\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632009425.png', NULL, NULL, 'Lobita', -13, NULL, 'Si', '2021-09-19 04:57:05', '2021-09-19 04:57:05'),
(224, 'png', 0, 'Mamita :)):  \n\nEs una perra jóven que llegó la centro canino con sus tres cachorritos :) \n\nFue llevada al Centro Canino por unos mineros de la zona. Ella y sus cachorros corrían el riesgo de ser atropellados por la maquinaría. \n\nLlegó muy asustada y sobreprotegía a sus cachorros. \n\nCon el tiempo se volvió una excelente compañia y le encanta salir a caminar.\n\nEspera un hogar amoroso donde la cuiden. \n\nExcelente carácter y convive bien con personas y perros\n\nEsterilizada, vacunada y desparasitada.\n\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632009471.png', NULL, NULL, 'Mamita', -14, NULL, 'Si', '2021-09-19 04:57:51', '2021-09-19 04:57:51'),
(225, 'png', 0, 'Hembra\nMediana\nJoven 2 años\n\nMuy noble y súper juguetona. Muy sociable, se lleva muy bien con todos!\n\nEsterilizada, vacunada y desparasitada.\n\nEs muy cariñosa 💕\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632009548.png', NULL, NULL, 'Manchas', -15, NULL, 'Si', '2021-09-19 04:59:08', '2021-09-19 04:59:08'),
(226, 'png', 0, 'Orquídea la mas consentida :):).\n Perra muy joven con un extraordinario carácter para convivir con perros y personas. \n\nEsta sin correa y obedece perfecto. Ideal niños :). \n\nMuy noble\n\nEsterilizada, vacunada y desparasitada.\n\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632009598.png', NULL, NULL, 'Orquídea', -16, NULL, 'Si', '2021-09-19 04:59:58', '2021-09-19 04:59:58'),
(227, 'png', 0, '6 meses aprox. \nHermosísima. \n\nSuper cariñosa, buenísima onda, educada. \n\nEs una super perrita.\n\nConvive con perros y humanos.\n\nLe encanta salir a caminar.\n\nEsterilizada, vacunada y desparasitada.\n\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632009709.png', NULL, NULL, 'Panchita', -17, NULL, 'Si', '2021-09-19 05:01:49', '2021-09-19 05:01:49'),
(228, 'png', 0, 'Hermoso cachorro de 8 meses, cariñoso, juguetón.\nConvive con perros y personas.\nLe encanta caminar por horas.\nVacunado\nEsterilizado \nDesparasitado\ninfo@ayudog.com', 'Si', NULL, 'Si', '1632009871.png', NULL, NULL, 'Pistacho', -18, NULL, 'Si', '2021-09-19 05:04:31', '2021-09-19 05:04:31'),
(229, 'png', 0, 'Pongo\nMacho\nJoven 2 años \nEnergía media-alta\n\nCariñoso con humanos.\n\nNecesita mucho amor y socialización.\n\nEs preferible perro único.\nEnvíanos un mensaje o un mail a info@ayudog.com', 'Si', NULL, 'Si', '1632009961.png', NULL, NULL, 'Pongo', -19, NULL, 'Si', '2021-09-19 05:06:01', '2021-09-19 05:06:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`id`, `color`, `created_at`, `updated_at`) VALUES
(1, '#c7c7c7', '2020-11-26 15:39:02', '2020-11-26 15:39:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'info@ayudog.com', '7223453272', '2020-11-26 15:39:02', '2020-11-26 15:39:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `homes`
--

CREATE TABLE `homes` (
  `id` int(10) UNSIGNED NOT NULL,
  `fileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img64` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `homes`
--

INSERT INTO `homes` (`id`, `fileName`, `type`, `img64`, `created_at`, `updated_at`) VALUES
(1, 'esteri2.png', 'png', NULL, '2020-11-26 15:39:02', '2020-11-26 15:39:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2020_11_20_045411_create_walks_table', 1),
(22, '2020_11_22_050448_create_news_table', 1),
(23, '2020_11_22_051407_create_adoptions_table', 1),
(24, '2020_11_26_091048_create_abouts_table', 2),
(25, '2020_11_26_091239_create_colors_table', 2),
(26, '2020_11_26_091348_create_contacts_table', 2),
(27, '2020_11_26_091501_create_homes_table', 2),
(28, '2020_11_26_091745_migrate', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `principal` int(11) NOT NULL,
  `img64` blob DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`id`, `description`, `fileName`, `principal`, `img64`, `type`, `order`, `created_at`, `updated_at`) VALUES
(22, 'Se busca gente amorosa, que nos quiera regalar 4 horas de su semana, para pasear a 60 y más. Es una experiencia única y que cambiará tu vida para siempre.', 'WhatsApp Image 2020-10-26 at 8.29.20 PM.jpeg', 0, NULL, 'jpeg', 19, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(23, 'Ahora es el momento perfecto para esterilizar a tu mascota, 0,agenda tu cita.', 'WhatsApp Image 2020-10-26 at 5.06.47 PM (2).jpeg', 0, NULL, 'jpeg', 18, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(24, 'Campaña de Esterilización 13 y 14 de octubre.\nEs importante agendes tu cita con tiempo y hacer tu depósito para asegurar tu 0,lugar. Cupo limitado!!', 'WhatsApp Image 2020-10-26 at 5.06.47 PM (4).jpeg', 0, NULL, 'jpeg', 17, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(25, 'En Ayudog, llevamos al día de hoy 500 esterilizaciones exitosas de perros y gatos de Valle de Bravo.\n\nLa meta, son los 10,000 animales en situación de calle.', '1604031106090.jpeg', 0, NULL, 'jpeg', 16, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(26, 'Queremos que todos tengan un hogar.\nAyúdanos compartiendo la página.', '1604079696640.png', 0, NULL, 'png', 15, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(27, 'Hoy 30 de octubre ha sido adoptado un perro muy especial, se llama Benito.\nEs un perro de talla pequeña, pero muy fuerte y amigable con la gente.\nEra el gruñón de las caminatas, no le gustaba que otros perros se le acercaran, porque quería ser la estrella del momento. \nBenito, te deseamos una vida llena de amor, te lo mereces.', '1604079904159.jpg', 0, NULL, 'jpg', 14, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(28, 'El 100% de los albergues, centros caninos y hogares temporales  están saturados de perritos que buscan un hogar desesperadamente.\n\nNo compres, adopta. Es una acción de compasión, empatía y bondad.\n\nHay muchos perros de raza, reproducidos de forma cruel por sus criadores, que lo único que buscan es el beneficio económico. \n\nEs otra razón por la que adoptar a un perrito de albergue es valioso. \n', '1604180650301.png', 0, NULL, 'png', 13, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(29, 'Dharma ahora tiene un hogar sonde vivirá con respeto y amor. Gracias por adoptar.', '1604203598791.mp4', 0, NULL, 'mp4', 12, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(30, 'Ayúdanos a ayudar, poco es mucho!', '1605555505790.mp4', 0, NULL, 'mp4', 11, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(31, 'La mamá cuidando a su cachorro!!!', '1605555833351.jpg', 0, NULL, 'jpg', 10, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(32, 'Siempre estamos al pendiente de ayudar a mantener sus áreas limpias!', '1605556008365.mp4', 0, NULL, 'mp4', 9, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(33, 'Fue todo un éxito la esterilización de 35 perros y gatos.\nGracias!', '1605556786446.mp4', 0, NULL, 'mp4', 8, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(34, 'En obra mejorando el Centro Canino  ', '1605557885989.mp4', 0, NULL, 'mp4', 7, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(35, 'Logramos con gran éxito otra campaña!\nPronto habrá más fechas.', '1605568754664.mp4', 0, NULL, 'mp4', 6, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(36, 'Gracias a nuestros donadores, ahora se limpiará más facilmente el Centro Canino.  ', '1605569616656.png', 0, NULL, 'png', 5, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(37, 'Porqué no?... un delicioso baño de lodo, muy refrescante y saludable.', '1605569704898.mp4', 0, NULL, 'mp4', 4, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(38, 'Es importante comprender que TODOS los seres vivos son sintientes. \nDenuncia el maltrato y el abandono.', '1605569778111.mp4', 0, NULL, 'mp4', 3, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(39, 'A todos nuestros gatos y perros los cuidamos con mucho amor cuando están despertando de la anestesia.', '1605570099569.mp4', 0, NULL, 'mp4', 2, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(40, 'Estamos muy felices, porque hoy llegaron 15 casitas nuevas para los perritos. Gracias María', '1605576703632.jpg', 0, NULL, 'jpg', 0, '2020-11-26 15:39:02', '2020-12-05 02:29:34'),
(41, 'Todos los voluntarios nos apoyamos para lograr la meta de mejorar el Centro Canino. Hemos logrado un cambio TOTAL, ahora es un lugar lleno de esperanza.\n', '1605577159686.mp4', 0, NULL, 'mp4', 1, '2020-11-26 15:39:02', '2020-11-30 13:46:05'),
(53, 'Donaron muchas cobijas al Centro Canino y algunas de ellas se colocaron en las paredes de las casitas para ayudar a disminuir el frío a los perritos. Gracias', '1610041353.jpg', 0, NULL, 'jpg', -21, '2021-01-07 23:40:53', '2021-01-08 00:02:08'),
(54, 'El cupo se agoto en 3 días.\nAgradecemos mucho el gran interés por esterilizar esterilizar a sus mascotas.\nTendremos nuevas fechas muy pronto.', '1610041526.jpg', 0, NULL, 'jpg', -22, '2021-01-07 23:45:26', '2021-01-07 23:45:26'),
(56, 'Las voluntarias del Centro Canino, siempre ayudando lo más que se puede. Nuestra prioridad es el bienestar de todos los perritos.', '1610042467.jpeg', 0, NULL, 'jpeg', -23, '2021-01-08 00:01:07', '2021-01-08 00:01:07'),
(57, 'Estamos felices de ver a los cachorros con su sweater nuevo. El frío en la zona del Centro Canino es intenso.', '1610044429.mp4', 0, NULL, 'mp4', -24, '2021-01-08 00:33:49', '2021-01-08 00:33:49'),
(58, 'Hola, aún tienes tiempo de agendar. Esteriliza a tu mascota.', '1610207856.png', 0, NULL, 'png', -25, '2021-01-09 21:57:36', '2021-01-09 21:57:55'),
(60, 'Caminatas Caninas \r\nCentro Canino de Valle de Bravo\r\n\r\nEsta actividad, se volverá tu favorita para hacer ejercicio y donar AMOR a los 70 perritos del Centro Canino, que esperan con ansia el martes y el viernes para una caminata.\r\n\r\nEsta iniciativa le ha cambiado la vida a muchos perritos. Es una actividad, que les brinda amor, aprenden a socializar con más personas, a caminar con correa, disminuye su tristeza y estrés.\r\n\r\nAyúdanos uniéndotelo a un grupo de voluntarios con mucho amor y entusiasmo.\r\n\r\n¿Estás buscado adoptar?\r\n\r\nEste es el lugar perfecto, tendrás mucho de donde elegir a tu mejor amigo.\r\n\r\nMartes y viernes de 10 am a 3 pm', '2021011233239.mp4', 0, NULL, 'mp4', -26, '2021-01-13 09:33:29', '2021-01-13 09:33:29'),
(61, 'Tendremos una campaña en el Centro Canino  en día 19 de marzo, aparta tu lugar por mensaje de whatsapp, NO LLAMADAS.', '1614265272.png', 0, NULL, 'png', -27, '2021-02-25 21:01:12', '2021-02-25 21:01:12'),
(62, '¡Es momento de esterilizar!', '1616249977.png', 0, NULL, 'png', -28, '2021-03-20 20:19:37', '2021-03-20 20:19:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'xDeF3U98UK', 'admin@ayudog.com', NULL, '$2y$10$vWS5/CHGH036R5TfgxI2lOLuYwntpbboNV4ysz2ybqMW1H5y8solq', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvY2FtaW5hdGFzY2FuaW5hcy5jb21cL2FwaVwvYXV0aFwvbG9naW4iLCJpYXQiOjE2MzExMjU3ODYsImV4cCI6MTYzMjYzNzc4NiwibmJmIjoxNjMxMTI1Nzg2LCJqdGkiOiJtWmNnTTBNejRnanpQM05rIiwic3ViIjoxLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.OvPC_qlJVd4I8K5drwZrp_s-guuMy4EE8QW-I-EYeMw', NULL, '2021-09-08 23:29:46'),
(2, 'clara', 'claraadmin@ayudog.com', NULL, '$2y$10$2/tmPhpS7F42ZRagEwoxpel6OafBc1E8iyCYgj9pIZbwLT186Xi8C', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvY2FtaW5hdGFzY2FuaW5hcy5jb21cL2FwaVwvYXV0aFwvbG9naW4iLCJpYXQiOjE2MTYyNDk3NTAsImV4cCI6MTYxNzc2MTc1MCwibmJmIjoxNjE2MjQ5NzUwLCJqdGkiOiJLM1ptMnowUXhKS3JISDVqIiwic3ViIjoyLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.aYPjEAJTclAW1fsMB7uvsxDIvA7amuqeQel_VlBBUH0', NULL, '2021-03-20 20:15:50'),
(3, 'catalina', 'catalina@ayudog.com', NULL, '$2y$10$pWrlnOqzj1sPWMIZiaIBLOEu4p0FXz3gHJAzhFygWiE2N2ZK4zTEa', NULL, NULL, '2020-12-05 01:54:09'),
(4, 'catalina', 'celia@ayudog.com', NULL, '$2y$10$SR8ILH3STvrw5kZegMllyur6lCr4nxdHQes79k8na7QtRDFNGVg4m', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvY2FtaW5hdGFzY2FuaW5hcy5jb21cL2FwaVwvYXV0aFwvbG9naW4iLCJpYXQiOjE2MTc0MTA1ODYsImV4cCI6MTYxODkyMjU4NiwibmJmIjoxNjE3NDEwNTg2LCJqdGkiOiJ1Q2pPbTFCU1NjR1FHMFNyIiwic3ViIjo0LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.G13KjaZmKx4jzpHLjTDaFaeNHaM_JSWmQZdhqadPHaU', NULL, '2021-04-03 06:43:06'),
(5, 'renata', 'renata@ayudog.com', NULL, '$2y$10$qW8zEPCrwbRQCIfks.njR.84j3iz4g6ZIDlf/XFmTDw4tFJyLsMce', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvY2FtaW5hdGFzY2FuaW5hcy5jb21cL2FwaVwvYXV0aFwvbG9naW4iLCJpYXQiOjE2MDcxMjI2NzYsImV4cCI6MTYwODYzNDY3NiwibmJmIjoxNjA3MTIyNjc2LCJqdGkiOiIwVExMTnk5N3lQbUd4OXN1Iiwic3ViIjo1LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.K0yC7YzYjheUgeT8Y7yyd6v3HQooSGrJAgPpPoFRvA0', NULL, '2020-12-05 04:57:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `walks`
--

CREATE TABLE `walks` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(1550) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `img64` blob DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `walks`
--

INSERT INTO `walks` (`id`, `description`, `fileName`, `img64`, `type`, `order`, `created_at`, `updated_at`) VALUES
(36, 'Una de las primeras caminatas, cuando apenas éramos 6 voluntarios. \nLa lista va en aumento, ya que una vez que lo haces una vez, regresas.\nSe vuelve un hábito, un compromiso, una necesidad por amor a los perros.', '8c228fa9-a5fc-4acc-9c8b-c6d0ae1cf757 2.jpg', NULL, 'jpg', 19, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(37, 'Todos felices y orgullosos, estrenando nuestras playeras.\nSí, somos un grupo de gente MARAVILLOSA.', '49253a2b-91a5-4e8a-a738-981b1dbe41d4.JPG', NULL, 'jpg', 18, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(38, 'En sus marcas, listos, fuera!!!\r\nTodos siempre sentimos una emoción y alegría muy especial en cada caminata, cada una es diferente y llena de alegría. \r\n\r\nPara cada perro, es el mejor día de la semana. \r\n\r\nCaminan sobre el pasto, se limpian las patas, retozan y nos agradecen con la una mirada llena de amor.', '1607070533.mp4', NULL, 'mp4', 17, '2020-11-26 15:39:02', '2020-12-04 14:28:53'),
(39, 'Mateo, es el más pequeño de los voluntarios que tenemos, tan sólo tiene 2 años y no falta nunca.\n', 'VID-20201026-WA0015.mp4', NULL, 'mp4', 16, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(40, 'Esperando, en silencio con paciencia su turno en las caminatas.', 'WhatsApp Image 2020-10-26 at 5.04.04 PM (2).jpeg', NULL, 'jpeg', 15, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(41, '¡ Vamos de paseo !\nUna grupo de amigos comparten con los perritos el día de paseo', 'WhatsApp Image 2020-10-26 at 5.04.04 PM (4).jpeg', NULL, 'jpeg', 14, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(42, 'El rescate de una camada, nos trajo a 9 cachorritos y su mami, GRACIAS a los voluntarios rescatistas por su tiempo y dedicación :)', 'WhatsApp Image 2020-10-26 at 5.04.04 PM (5).jpeg', NULL, 'jpeg', 13, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(43, 'El paseo favorito de la mayoría de los voluntarios, es el de los cachorros sin correa. \nRealmente es sorprendente cómo una manada de cachorritos, pueda entender la dinámica de caminar todos juntos y no separarse.\nVen, vívelo lo amarás.', 'WhatsApp Image 2020-10-26 at 5.04.04 PM (6).jpeg', NULL, 'jpeg', 12, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(44, '3 grandes amigos, disfrutando la caminata en el bosque.\nEs una gran ventaja que el Centro Canino  esté en un lugar tan hermoso, sin importar la estación del año. \nTe invitamos a conocerlo y aprovechar para caminar con algunos perritos.', 'WhatsApp Image 2020-10-26 at 5.04.04 PM (7).jpeg', NULL, 'jpeg', 11, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(45, 'Una feliz familia con un donativo de una voluntaria de croquetas y cama para el Guapo!', '1603985162881.jpg', NULL, 'jpg', 10, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(46, 'Gracias por cambiarle la vida a este cachorro.\nEstamos seguros, que llenará sus vidas de ternura.', '1604351779674.png', NULL, 'png', 9, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(47, 'Tomando un descanso, bajo la sombra de un hermoso fresno.', '1605566854325.jpg', NULL, 'jpg', 8, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(48, 'un día de alegría caminando con 30 perritos', '1605566931235.mp4', NULL, 'mp4', 7, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(49, 'Todos los días son divertidos y llenos de felicidad para los perritos.', '1605571682486.mp4', NULL, 'mp4', 6, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(50, 'Hay días increíbles en las caminatas, hemos logrado ser más de 15 personas juntas caminando con los perritos quienes se alegran de pasear en el campo.', '1605571938802.mp4', NULL, 'mp4', 5, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(51, 'Este pequeñito lo abandonaron en la puerta del Centro Canino, lo bañamos y lo pusimos en una transportadora con arena y comida. Fue adoptado al día siguiente.', '1605573040811.mp4', NULL, 'mp4', 4, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(52, 'En febrero Caminatas Caninas organizó la primera caminata de adopción en la cual se lograron 11 adopciones. Pronto será la 2a, seguro encontrarás al amigo que buscas.', '1605574012673.mp4', NULL, 'mp4', 3, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(53, 'Nuevas amigas ayudando en las caminatas, gracias !', '1605575152903.mp4', NULL, 'mp4', 2, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(54, 'Se emocionan tanto que todos quieren ser los primeros. Ven, camina y regala felicidad.', '1605576112451.mp4', NULL, 'mp4', 0, '2020-11-26 15:39:02', '2020-12-05 02:27:20'),
(55, 'Marisa como siempre dando cariño y amor!', '1605576350965.jpg', NULL, 'jpg', 1, '2020-11-26 15:39:02', '2020-11-30 06:28:40'),
(62, 'Mostrarles a los niños los cuidados y respeto que se le debe tener a los animales hará una gran diferencia en el mundo. Los niños son nuestra esperanza y futuro.', '1610488269.png', NULL, 'png', -21, '2021-01-13 03:44:52', '2021-01-13 03:51:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `walks`
--
ALTER TABLE `walks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de la tabla `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `homes`
--
ALTER TABLE `homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `walks`
--
ALTER TABLE `walks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

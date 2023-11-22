-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 22 2023 г., 00:11
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `english_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `applications`
--

CREATE TABLE `applications` (
  `id` int NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `label` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id`, `name`, `price`, `description`, `label`) VALUES
(1, 'Спецкурс1', 7900, 'Описание спецкурса номер один. Lorem ipsum dolor sit amet', 'hit'),
(2, 'Спецкурс2', 8900, 'Описание спецкурса номер два. consectetur adipiscing elit', 'popular'),
(3, 'Спецкурс3', 9900, 'Описание спецкурса номер три. sed do eiusmod tempor incididunt ut', 'popular'),
(4, 'Спецкурс4', 8900, 'Описание спецкурса номер четыре. labore et dolore magna aliqua', 'popular'),
(5, 'Спецкурс5', 9900, 'Описание спецкурса номер пять. Ut enim ad minim veniam', 'new'),
(6, 'Спецкурс6', 7900, 'Описание спецкурса номер шесть. quis nostrud exercitation ullamco laboris', NULL),
(7, 'Спецкурс7', 7900, 'Описание спецкурса номер семь. nisi ut aliquip ex ea commodo consequat', NULL),
(8, 'Спецкурс8', 9900, 'Описание спецкурса номер восемь. Duis aute irure dolor in reprehenderit', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `promo_prices`
--

CREATE TABLE `promo_prices` (
  `id` int NOT NULL,
  `promo_id` varchar(45) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `oldprice` int DEFAULT NULL,
  `months` int DEFAULT NULL,
  `prepay` int DEFAULT NULL,
  `link_ru` varchar(255) DEFAULT NULL,
  `link_en` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `promo_prices`
--

INSERT INTO `promo_prices` (`id`, `promo_id`, `order`, `title`, `price`, `oldprice`, `months`, `prepay`, `link_ru`, `link_en`) VALUES
(1, 'test', 1, 'Один курс', 10900, 21900, 2, 900, 'http://example.com/pay/ru/1', 'http://example.com/pay/en/1'),
(2, 'test', 2, 'Два курса', 21900, 48900, 4, 900, 'http://example.com/pay/ru/2', 'http://example.com/pay/en/2'),
(3, 'test', 3, 'Три курса', 28900, 74900, 6, 900, 'http://example.com/pay/ru/3', 'http://example.com/pay/en/3'),
(4, 'test', 4, 'Пять курсов', 44900, 124900, 10, 900, 'http://example.com/pay/ru/4', 'http://example.com/pay/en/4');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `promo_prices`
--
ALTER TABLE `promo_prices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `promo_prices`
--
ALTER TABLE `promo_prices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

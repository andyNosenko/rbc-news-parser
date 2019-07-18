-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 19 2019 г., 00:11
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rbk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `url`, `title`, `date`, `description`, `image`) VALUES
(258, 'https://quote.rbc.ru/exchanges/info/cb.0/72413/eod', 'Курс доллара на 13 июля\r\n         USD ЦБ: 63,02                                  (+0,03)', 'Quote, 12 июл, 12:14', '', ''),
(259, 'https://quote.rbc.ru/exchanges/info/cb.0/72383/eod', 'Курс евро на 13 июля\r\n         EUR ЦБ: 71,01                                  (0)', 'Quote, 12 июл, 12:14', '', ''),
(260, 'https://www.rbc.ru/rbcfreenews/5d290db29a7947246d811bb1?from=newsfeed', 'В московском метро закрыли девять станций на фиолетовой ветке', 'Общество,&nbsp;02:02', 'В московском метро закрыли девять станций на фиолетовой ветке', ''),
(261, 'https://www.rbc.ru/rbcfreenews/5d29094c9a7947231cfbd8f1?from=newsfeed', 'В Карачаево-Черкессии при сплаве по реке на катамаране погиб турист', 'Общество,&nbsp;01:39', 'В Карачаево-Черкессии при сплаве по реке на катамаране погиб турист', ''),
(262, 'https://www.rbc.ru/rbcfreenews/5d29053d9a794722ba26b534?from=newsfeed', 'На телеканале «Россия 1» состоялся телемост между Москвой и Киевом', 'Политика,&nbsp;01:21', 'На телеканале «Россия 1» состоялся телемост между Москвой и Киевом', ''),
(263, 'https://www.rbc.ru/rbcfreenews/5d28fb8e9a79471f67f09e63?from=newsfeed', 'Боец украинского батальона получил в Италии 24 года тюрьмы за убийство', 'Общество,&nbsp;00:55', 'Боец украинского батальона получил в Италии 24 года тюрьмы за убийство', ''),
(264, 'https://www.rbc.ru/rbcfreenews/5d28f8b29a79471c5c6d6aa9?from=newsfeed', 'Путин предложил назвать одну из улиц Петербурга в честь Жореса Алферова', 'Общество,&nbsp;00:32', 'Путин предложил назвать одну из улиц Петербурга в честь Жореса Алферова', ''),
(265, 'https://www.rbc.ru/rbcfreenews/5d28f84f9a79471c5c6d6aa7?from=newsfeed', 'Пентагон после переговоров с Анкарой отменил брифинг по С-400', 'Политика,&nbsp;00:29', 'Пентагон после переговоров с Анкарой отменил брифинг по С-400', ''),
(266, 'https://www.rbc.ru/rbcfreenews/5d28eb7a9a79471a6df1345f?from=newsfeed', 'Минобороны рассекретило документы об освобождении Вильнюса в 1944 году', 'Общество,&nbsp;00:00', 'Минобороны рассекретило документы об освобождении Вильнюса в 1944 году', ''),
(267, 'https://www.rbc.ru/politics/12/07/2019/5d28ed729a794719458f620f?from=newsfeed', 'В сенате потребовали наказать Турцию за «опасное партнерство» с Путиным', 'Политика,&nbsp;12 июл, 23:57', 'В сенате потребовали наказать Турцию за «опасное партнерство» с Путиным', ''),
(268, 'http://health.rbc.ru/articles/healthylife/nezamenimye-domashnie-pomoshchniki-kakie-oni/?utm_source=rbc&amp;utm_medium=main&amp;utm_campaign=hlth18sp-a-7gadgets-m', '7 самых востребованных домашних гаджетов на новый лад', 'РБК и Philips,&nbsp;12 июл, 23:53', 'В сенате потребовали наказать Турцию за «опасное партнерство» с Путиным', ''),
(269, 'https://www.rbc.ru/rbcfreenews/5d28e6549a794717fb21eaa3?from=newsfeed', 'На ТЭЦ в Мытищах после пожара восстановили подачу газа', 'Общество,&nbsp;12 июл, 23:23', 'На ТЭЦ в Мытищах после пожара восстановили подачу газа', ''),
(270, 'https://www.rbc.ru/politics/12/07/2019/5d28d6639a7947141b5095ae?from=newsfeed', 'СМИ узнали о планах Трампа сменить главу национальной разведки', 'Политика,&nbsp;12 июл, 23:04', 'СМИ узнали о планах Трампа сменить главу национальной разведки', ''),
(271, 'https://www.rbc.ru/rbcfreenews/5d28e11f9a794716f0726e13?from=newsfeed', 'Армия Израиля заявила о запуске ракеты из сектора Газа', 'Политика,&nbsp;12 июл, 23:01', 'Армия Израиля заявила о запуске ракеты из сектора Газа', ''),
(272, 'https://www.rbc.ru/politics/12/07/2019/5d28df389a79471609825577?from=newsfeed', 'Российские ПВО отбили новую атаку беспилотников на авиабазу Хмеймим', 'Политика,&nbsp;12 июл, 22:38', 'Российские ПВО отбили новую атаку беспилотников на авиабазу Хмеймим', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

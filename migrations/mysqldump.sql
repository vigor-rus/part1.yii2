-- Adminer 4.2.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_name` varchar(50) NOT NULL,
  `allow_mails` tinyint(4) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `organization_form_id` int(10) unsigned NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `ads` (`id`, `seller_name`, `allow_mails`, `phone`, `title`, `description`, `price`, `location_id`, `category_id`, `organization_form_id`, `email`) VALUES
(1,	'',	0,	'',	'aaaa',	'assdf',	100,	1,	285,	0,	''),
(2,	'',	0,	'',	'223232',	'23234',	2000,	1,	226,	0,	'');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf16 NOT NULL,
  `parent_name` varchar(50) CHARACTER SET utf16 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `categories` (`id`, `name`, `parent_name`) VALUES
(109,	'Автомобили с пробегом',	'Транспорт'),
(199,	'Новые автомобили',	'Транспорт'),
(114,	'Мотоциклы и мототехника',	'Транспорт'),
(181,	'Грузовики и спецтехника',	'Транспорт'),
(111,	'Водный транспорт',	'Транспорт'),
(110,	'Запчасти и аксессуары',	'Транспорт'),
(224,	'Квартиры',	'Недвижимость'),
(223,	'Комнаты',	'Недвижимость'),
(225,	'Дома, дачи, коттеджи',	'Недвижимость'),
(226,	'Земельные участки',	'Недвижимость'),
(285,	'Гаражи и машиноместа',	'Недвижимость'),
(242,	'Коммерческая недвижимость',	'Недвижимость'),
(286,	'Недвижимость за рубежом',	'Недвижимость'),
(311,	'Вакансии (поиск сотрудников)',	'Работа'),
(312,	'Резюме (поиск работы)',	'Работа'),
(414,	'Предложения услуг',	'Услуги'),
(415,	'Запросы на услуги',	'Услуги'),
(527,	'Одежда, обувь, аксессуары',	'Личные вещи'),
(529,	'Детская одежда и обувь',	'Личные вещи'),
(530,	'Товары для детей и игрушки',	'Личные вещи'),
(528,	'Часы и украшения',	'Личные вещи'),
(588,	'Красота и здоровье',	'Личные вещи'),
(621,	'Бытовая техника',	'Для дома и дачи'),
(620,	'Мебель и интерьер',	'Для дома и дачи'),
(687,	'Посуда и товары для кухни',	'Для дома и дачи'),
(682,	'Продукты питания',	'Для дома и дачи'),
(619,	'Ремонт и строительство',	'Для дома и дачи'),
(606,	'Растения',	'Для дома и дачи'),
(732,	'Аудио и видео',	'Бытовая электроника'),
(797,	'Игры, приставки и программы',	'Бытовая электроника'),
(731,	'Настольные компьютеры',	'Бытовая электроника'),
(798,	'Ноутбуки',	'Бытовая электроника'),
(799,	'Оргтехника и расходники',	'Бытовая электроника'),
(796,	'Планшеты и электронные книги',	'Бытовая электроника'),
(784,	'Телефоны',	'Бытовая электроника'),
(701,	'Товары для компьютера',	'Бытовая электроника'),
(705,	'Фототехника',	'Бытовая электроника'),
(833,	'Билеты и путешествия',	'Хобби и отдых'),
(834,	'Велосипеды',	'Хобби и отдых'),
(883,	'Книги и журналы',	'Хобби и отдых'),
(836,	'Коллекционирование',	'Хобби и отдых'),
(838,	'Музыкальные инструменты',	'Хобби и отдых'),
(802,	'Охота и рыбалка',	'Хобби и отдых'),
(839,	'Спорт и отдых',	'Хобби и отдых'),
(803,	'Знакомства',	'Хобби и отдых'),
(989,	'Собаки',	'Животные'),
(990,	'Кошки',	'Животные'),
(991,	'Птицы',	'Животные'),
(992,	'Аквариум',	'Животные'),
(993,	'Другие животные',	'Животные'),
(994,	'Товары для животных',	'Животные'),
(1016,	'Готовый бизнес',	'Для бизнеса'),
(1040,	'Оборудование для бизнеса',	'Для бизнеса'),
(100,	'Транспорт',	''),
(200,	'Недвижимость',	''),
(300,	'Работа',	''),
(400,	'Услуги',	''),
(500,	'Личные вещи',	''),
(600,	'Для дома и дачи',	''),
(700,	'Бытовая электроника',	''),
(800,	'Хобби и отдых',	''),
(900,	'Животные',	''),
(1000,	'Для бизнеса',	'');

DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `cities` (`id`, `name`) VALUES
(2,	'Новосибирск'),
(3,	'Барабинск'),
(4,	'Бердск'),
(5,	'Искитим'),
(6,	'Колывань'),
(7,	'Краснообск'),
(8,	'Куйбышев'),
(9,	'Мошково'),
(10,	'Обь'),
(11,	'Ордынское'),
(12,	'Черепаново');

-- 2015-06-25 05:16:42

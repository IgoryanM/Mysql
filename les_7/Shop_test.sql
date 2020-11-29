drop database if exists Shop_test;
-- create database if not exists snet2910 character set = utf8mb4;
create database Shop_test;

use Shop_test;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birtday` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `pass` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `phone_2` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('1', 'Ryann', 'Bernhard', 'pgislason@example.org', '(163)090-1384', '\'17-06-1995\'', 'Nellieside', 'f', '8869675', '23b742423d48dcfc3b3fbe3ea3d5ad');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('2', 'Laisha', 'Rath', 'wledner@example.org', '1-517-973-7619x3520', '\'02-11-1984\'', 'East Johanna', 'f', '7', '3d2533db59108ea5e3a5ea322602a5');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('3', 'Aisha', 'Smith', 'maryjane39@example.org', '021-474-3583', '\'26-08-1971\'', 'Halvorsonland', 'f', '1225', '22c8591fd693a297e3a14a78e922d0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('4', 'Reuben', 'Tillman', 'mafalda45@example.net', '08447171764', '\'04-07-1978\'', 'North Juniorburgh', 'f', '122543916', '570840446033005c12b86506418be1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('5', 'Jodie', 'Brown', 'rswaniawski@example.net', '1-576-225-0291x747', '\'23-11-1983\'', 'New Samsonton', 'f', '0', '336d16a62ba520c2caa1ab9fe2c552');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('6', 'Dale', 'Bins', 'cormier.lottie@example.org', '1-736-525-4556x7771', '\'11-11-1973\'', 'New Regan', 'f', '61696', 'b6d8347f87e9f96be31e4ad0c5c68e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('7', 'Willow', 'Hansen', 'ebecker@example.org', '261.079.8813x552', '\'04-03-1988\'', 'West Mara', 'm', '17439615', '579660e24586c1c88d1a8dac58d545');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('8', 'Myrna', 'Parker', 'gleason.myriam@example.net', '1-318-009-1078', '\'01-05-1972\'', 'Predovicside', 'f', '1282', 'af56d2b77a95842f40f158a6b9cdd2');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('9', 'Vilma', 'Stiedemann', 'marley00@example.net', '134.988.8360x872', '\'14-04-1992\'', 'Kossfort', 'f', '569482463', 'a4ef2995e4cdbba168265834bcdcb7');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('10', 'Cole', 'Reinger', 'hannah.hodkiewicz@example.org', '323.452.5436', '\'02-12-1973\'', 'Port Augustafort', 'm', '98910', '53d4bf47f3a918a76207372ce89b0a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('11', 'Winnifred', 'Wuckert', 'lillie.von@example.net', '1-888-622-4679x5005', '\'06-11-1978\'', 'Damianview', 'm', '23231', '11d21d553f3e525481a356b812e85c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('12', 'Davonte', 'Barrows', 'nicklaus.kris@example.net', '216-781-5949x074', '\'11-12-1974\'', 'Marleyshire', 'm', '8141763', '611d4787d453ff9bc230b74dc372d2');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('13', 'Andre', 'Kozey', 'koch.einar@example.com', '514.059.2036x6891', '\'04-03-1993\'', 'Huelsbury', 'f', '88101', 'd2d4c36ccb9cec1699bfdeee454e4d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('14', 'Jamison', 'Fay', 'stephania.marvin@example.org', '562-521-9259x575', '\'03-01-1983\'', 'Port Margaretborough', 'f', '2002', 'd26371a191ac295e3728f8bbf4e589');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('15', 'Maximillia', 'Keeling', 'dejah62@example.com', '1-806-069-8385x549', '\'20-11-1991\'', 'Connellytown', 'f', '742118', '5e98154eec70b8cc7970c0bb04bb64');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('16', 'Roberta', 'Harvey', 'nmurazik@example.org', '663.225.2568x983', '\'09-12-1978\'', 'Zeldahaven', 'm', '5232', '34355bd4a1315c343891728a578f98');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('17', 'Enrique', 'Hegmann', 'josefina18@example.com', '1-255-304-5916x3386', '\'18-05-1997\'', 'Walterstad', 'f', '6678735', '4e9c97e808c36419682aa7c9444dd8');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('18', 'Matilda', 'Price', 'christiansen.treva@example.net', '883.287.6109x748', '\'27-02-1986\'', 'Kielland', 'm', '7284', 'fe5b2e806c6f79ee923ceba17c6703');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('19', 'Mozell', 'Schamberger', 'breitenberg.joyce@example.com', '960-061-9866', '\'14-11-1989\'', 'Champlinmouth', 'm', '9086', 'f6f9f613e4256aefbf922b74344b11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('20', 'Wilfrid', 'Green', 'odell10@example.org', '692.981.4434', '\'05-11-1979\'', 'New Camrynberg', 'm', '589843258', '18fe5cb841dfefed56d1e57301314f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('21', 'Leonie', 'Hintz', 'damion.thiel@example.org', '+66(9)5615286400', '\'10-07-1981\'', 'North Henrifurt', 'm', '768598684', '6bdd55bff00a8b35ec24f467fa5010');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('22', 'Carolyne', 'Gislason', 'shane.mertz@example.com', '413-960-1708', '\'18-02-1976\'', 'South Elisha', 'm', '942197', '72f414c3097c7526d176cf3c10f67b');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('23', 'Bridgette', 'Baumbach', 'emard.joshuah@example.org', '(331)361-9497x03898', '\'08-12-1970\'', 'Waltonmouth', 'm', '794', 'c837ba4e8bc48ed8ac66cac9482ebb');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('24', 'Yazmin', 'Kessler', 'dominique.pfannerstill@example.org', '340.378.3481x037', '\'08-05-1981\'', 'Kleinhaven', 'f', '6', '45f78811142e696356eb5fe07455ba');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('25', 'Elvis', 'Bradtke', 'qgoodwin@example.org', '+09(3)4736403760', '\'30-08-1991\'', 'Port Janiya', 'm', '4239165', '985d45530bb1969e767a97e34cc74b');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('26', 'Katharina', 'Batz', 'triston.erdman@example.net', '(695)501-9733x813', '\'04-10-1971\'', 'West Laron', 'm', '59407', 'ee24f9ed57d6ddfea789fe1e3dc8cd');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('27', 'Gretchen', 'Nolan', 'shaylee.turner@example.org', '643-347-5535x0607', '\'14-07-1972\'', 'Gulgowskibury', 'm', '228', 'ec857c33111a3238113f12cd76fcc0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('28', 'Juvenal', 'King', 'dmuller@example.org', '1-130-936-4593x5207', '\'18-03-1997\'', 'New Isabellaport', 'f', '16922', '4d217460637b22854655623698eb7e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('29', 'Marie', 'Koss', 'zora.gulgowski@example.com', '(067)189-4776x034', '\'02-07-1982\'', 'Yundtfurt', 'f', '76300', '50392a32ee284fb282c096f858ce30');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birtday`, `hometown`, `gender`, `photo_id`, `pass`) VALUES ('30', 'Brianne', 'Roob', 'lcummerata@example.com', '+58(4)3011464100', '\'09-08-1982\'', 'West Rory', 'f', '3', '44211ac370dc7e82ca38280a5a5def');


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
  );
 
 INSERT into `orders` (`user_id`) values ('1');
 INSERT into `orders` (`user_id`) values ('2');
 INSERT into `orders` (`user_id`) values ('2');
 INSERT into `orders` (`user_id`) values ('3');
 INSERT into `orders` (`user_id`) values ('3');
 INSERT into `orders` (`user_id`) values ('3');
 INSERT into `orders` (`user_id`) values ('4');
 INSERT into `orders` (`user_id`) values ('5');
 INSERT into `orders` (`user_id`) values ('6');
 INSERT into `orders` (`user_id`) values ('7');


DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  name VARCHAR(255),
  UNIQUE unique_name(name(10))
) ;

INSERT INTO catalogs VALUES
  (NULL, 'каталог 1'),
  (NULL, 'каталог 2'),
  (NULL, 'каталог 3'),
  (NULL, 'каталог 4'),
  (NULL, 'каталог 5');


DROP TABLE IF EXISTS `products`;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) ,
  desription TEXT ,
  price DECIMAL (11,2),
  catalog_id bigint(20) unsigned NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`)
) ;

INSERT INTO products
  (name, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 7890.00, 1),
  ('Intel Core i5-7400', 12700.00, 1),
  ('AMD FX-8320E', 4780.00, 1),
  ('AMD FX-8320', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 19310.00, 2),
  ('Gigabyte H310M S2H', 4790.00, 2),
  ('MSI B250M GAMING PRO', 5060.00, 2);
 
 
 
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  f_from VARCHAR(255),
  f_to VARCHAR(255));
  
insert into flights (f_from, f_to) values ('moscow', 'omsk');
insert into flights (f_from, f_to) values ('novgorod', 'kazan');
insert into flights (f_from, f_to) values ('irkutsk', 'moscow');
insert into flights (f_from, f_to) values ('omsk', 'irkutsk');
insert into flights (f_from, f_to) values ('moscow', 'kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  label VARCHAR(255),
  name VARCHAR(255));
 
insert into cities (label, name) values ('moscow', 'Москва');
insert into cities (label, name) values ('irkutsk', 'Иркутск');
insert into cities (label, name) values ('novgorod', 'Новгород');
insert into cities (label, name) values ('kazan', 'Казань');
insert into cities (label, name) values ('omsk', 'Омск');


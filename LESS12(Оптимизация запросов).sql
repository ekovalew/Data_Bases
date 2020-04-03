-- Практическое задание по теме “Оптимизация запросов”
-- Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.


DROP TABLE IF EXISTS logs;
CREATE TABLE logs(
table_name VARCHAR(255) NOT NULL,
name VARCHAR(255) NOT NULL,
created_at DATETIME
) ENGINE = Archive;
use shop;

ALTER TABLE catalogs ADD created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

CREATE TRIGGER logs_users AFTER INSERT ON users 
FOR EACH ROW 
BEGIN 
	INSERT INTO logs VALUES( 
	'users', 
	(SELECT name FROM users WHERE id = (SELECT max(id) FROM users)), 
	(SELECT created_at FROM users WHERE id = (SELECT max(id) FROM users)) ); 
END//

CREATE TRIGGER logs_catalogs AFTER INSERT ON catalogs 
FOR EACH ROW 
BEGIN 
	INSERT INTO logs VALUES( 
	'catalogs', 
	(SELECT name FROM catalogs WHERE id = (SELECT max(id) FROM catalogs)), 
	(SELECT created_at FROM catalogs WHERE id = (SELECT max(id) FROM catalogs)) ); 
END//

CREATE TRIGGER logs_products AFTER INSERT ON products 
FOR EACH ROW 
BEGIN 
	INSERT INTO logs VALUES( 
	'products', 
	(SELECT name FROM products WHERE id = (SELECT max(id) FROM products)), 
	(SELECT created_at FROM products WHERE id = (SELECT max(id) FROM products)) ); 
END//

DESC catalogs;
INSERT INTO users(name,birthday_at) VALUES('Андрей', '2018-12-03');
SELECT * FROM logs;

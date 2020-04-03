-- Практическое задание по теме “Транзакции, переменные, представления”
-- 1.	В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
-- 2.	Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
-- 3.	(по желанию) Пусть имеется таблица с календарным полем created_at. В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.
-- 4.	(по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- 1.	Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
-- 2.	В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.
-- 3.	(по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 


-- Задание 1 Транзакции
use example;
DESC example.users;
DESC shop.users;
ALTER TABLE example.users MODIFY updated_at varchar(255);

START TRANSACTION;
INSERT INTO example.users 
	SELECT * 
	FROM shop.users 
	WHERE id = 1;
DELETE FROM shop.users WHERE id = 1;
COMMIT;

-- Задание 2
use shop;
CREATE VIEW product AS SELECT p.name as product, c.name as category
	FROM products as p JOIN catalogs as c ON p.catalog_id = c.id;
	
SELECT * FROM product;

-- Задание 3
CREATE TEMPORARY TABLE august(day INT UNSIGNED);
INSERT INTO august VALUES(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31);
select * from users;

CREATE TABLE our_users (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name varchar(255),
created_at DATETIME
);
INSERT INTO our_users VALUES(1,'Виктор', '2018-08-01'),(2,'Екатерина', '2017-08-17'),(3, 'Кристина', '2019-05-07'),(4,'Виктор', '2018-09-01'),(5,'Екатерина', '2020-10-17'),(6, 'Кристина', '2019-12-07');
INSERT INTO our_users VALUES(4,'Виктор', '2018-09-01'),(5,'Екатерина', '2020-10-17'),(6, 'Кристина', '2019-12-07');
INSERT INTO our_users VALUES(3, 'Кристина', '2019-05-07')

SELECT day, CASE WHEN day = DAY(our_users.created_at) and MONTH(created_at)=08 THEN 1 ELSE 0 END as z
FROM august LEFT JOIN our_users ON august.day = DAY(our_users.created_at)
ORDER BY day;

-- Задание 4
SET @start := 0;
SELECT *, @start := @start + 1 AS id2
FROM our_users
ORDER BY created_at DESC
;

CREATE TEMPORARY TABLE users2 (id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name varchar(255),
created_at DATETIME,
id2 INT UNSIGNED
);
INSERT INTO users2
SELECT *, @start := @start + 1 AS id2
FROM our_users
ORDER BY created_at DESC;

SELECT * from users2;
DELETE FROM users2 WHERE id2 >5;

-- Хранимые процедуры
-- Задача 1
CREATE FUNCTION hello()
RETURNS TEXT DETERMINISTIC
BEGIN
	SELECT CASE 
		WHEN HOUR(NOW()) BETWEEN 6 AND 12 THEN RETURN "Доброе утро";
		WHEN HOUR(NOW()) BETWEEN 12 AND 18 THEN RETURN "Добрый день";
		WHEN HOUR(NOW()) BETWEEN 18 AND 0 THEN RETURN "Добрый вечер";
		ELSE RETURN "Доброй ночи";
		END CASE;

END//

-- Задача 2
-- Поменял символ конца запроса через DELIMITER // в консоли, там же выполнил код, как и в предыдущей задаче.
CREATE TRIGGER null_data3 BEFORE INSERT ON products 
FOR EACH ROW 
BEGIN 
	if NEW.name IS NULL AND NEW.description IS NULL THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Значение NULL не допустимо'; 
	END IF; 
END//

--  Задача 3
CREATE FUNCTION FIB3 (num INT) 
RETURNS INT DETERMINISTIC 
BEGIN 
	DECLARE i INT; 
	DECLARE t1,t2,t3 INT; 
	SET i = 0; 
	WHILE i<= num DO 
		IF i = 0 THEN SET t3 = 0; 
		END IF; 
		IF i = 1 THEN SET t3 = 1; 
		END IF; 
		IF i > 1 THEN 
			SET t1 = i - 1; 
			SET t2 = i - 2; 
			SET t3 = t1 + t2; 
		END IF; 
		RETURN t3; 
		SET i = i + 1; 
	END WHILE; 
END//













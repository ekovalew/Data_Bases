-- Практическое задание по теме “NoSQL”
-- 1.	В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
-- 2.	При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.
-- 3.	Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.


Redis
127.0.0.1:6379> HINCRBY hit_count 47.123.321.19 1
(integer) 1
127.0.0.1:6379> HINCRBY hit_count 47.123.321.19 1
(integer) 2
127.0.0.1:6379> HINCRBY hit_count 47.123.321.19 1
(integer) 3
127.0.0.1:6379> HINCRBY hit_count 47.123.321.12 1
(integer) 1
127.0.0.1:6379> MSET Aleksey 47.546.123.14 Petr 46.12.123.14 Egor 145.351.125.16

OK
127.0.0.1:6379> GET Aleksey
"47.546.123.14"
127.0.0.1:6379> MSET 47.546.123.14 Aleksey 46.12.123.14 Petr 145.351.125.16 Egor

OK
127.0.0.1:6379> GET 46.12.123.14
"Petr"

MongoDB
> db.shop.insert({name: 'Intel Core i3-8100'},{catalog: 'Процессоры'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'Intel Core i5-7400'},{catalog: 'Процессоры'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'AMD FX-8320E'},{catalog: 'Процессоры'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'AMD FX-8320'},{catalog: 'Процессоры'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: '},{catalog: 'Процессоры'})
> db.shop.insert({name: 'ASUS ROG MAXIMUS X HERO'}, {catalog: 'Материнские платы'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'Gigabyte H310M S2H'}, {catalog: 'Материнские платы'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'MSI B250M GAMING PRO'}, {catalog: 'Материнские платы'})
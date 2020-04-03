-- 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.
-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый пожилой пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

use vk;
-- 1 задание
CREATE INDEX profiles_hometown_idx ON profiles(hometown);
CREATE INDEX media_filename_idx ON media(filename);
CREATE INDEX users_first_name_last_name_idx ON users(first_name, last_name);
CREATE INDEX communities_name_idx ON communities(name);

-- 2 задание
SELECT DISTINCT name, 
  avg(cu.user_id) OVER() AS average_persons,
  count(cu.user_id) OVER(PARTITION BY c2.name) as count_persons,
  max(birthday) OVER(PARTITION BY c2.name) as m,
  min(birthday) OVER(PARTITION BY c2.name) as s,
  count(cu.user_id) OVER() as all_persons,
  count(cu.user_id) OVER(PARTITION BY c2.name) / count(cu.user_id) OVER() * 100 as "%%"
  FROM communities c2
      JOIN communities_users cu
        ON c2.id = cu.community_id
       		JOIN profiles
       			ON cu.user_id = profiles.user_id;

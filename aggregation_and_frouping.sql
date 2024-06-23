
country:
  id |   name   |  populate  |  area
--------------------------------------
  1  |  France  |  66600000  | 640680
--------------------------------------
  2  |  Germany |  80700000  | 357000


sity:
  id |   name   | country_id | populate | rating
-------------------------------------------------
  1  |  Berlin  |     2      | 3460000  |   3
-------------------------------------------------
  2  |  Paris   |     1      | 2243000  |   5  



# Количество городов
SELECT COUNT(*) FROM sity;

# Количество городов с определенным рейтингом
SELECT COUNT(rating) FROM sity;

# Количество городов с рейтингом отличным от указанного
SELECT COUNT(DISTINCT country_id) FROM sity;

# Самая маленькая и самая большая по популяции страна
SELECT MIN(populate), MAX(populate) FROM country;

# Численность население страны с определенным идентификатором
SELECT country_id, SUM(populate) FROM sity GROUP BY country_id;

# Средний рейтинг городов в определенных странах, рейтинг только выше 3.0
SELECT country_id, AVG(rating) FROM sity GROUP BY country_id HAVING AVG(rating) > 3.0;
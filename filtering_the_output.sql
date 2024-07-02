
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



# Названия городов, которые начинаются на P и заканчиваются на s
SELECT name FROM city WHERE name LIKE 'P%' OR name LIKE '%s'; 

# Названия городов которые начинаются на любую букву и заканчиваются на ublin
SELECT name FROM city WHERE name LIKE '_ublin';

# Все названия городов кроме Берлина и Мадрида
SELECT name FROM city WHERE name != 'Berlin' AND name != 'Madrid';

#

#

#
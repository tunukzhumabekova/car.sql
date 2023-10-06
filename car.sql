SELECT Brand,model,price FROM Cars;
SELECT count(*) FROM cars;
SELECT * FROM cars where brand='Hyundai';
SELECT * FROM cars where color= 'Blue'OR color='Red';
SELECT * FROM cars where year_of_issue between 2000 and 2010;
SELECT  count(*) FROM cars where brand='Chevrolet';
SELECT avg(year_of_issue)FROM cars;
SELECT * FROM cars where brand= 'Audi' or brand= 'Toyota' or brand='Kia' or brand='Ford';
SELECT *FROM cars where brand like 'T%';
SELECT *FROM cars where brand like '%e';
SELECT *FROM cars where brand like '_____';
SELECT SUM(price) AS Общая_сумма FROM cars WHERE brand = 'Mercedes-Benz';
SELECT * FROM cars WHERE price = (SELECT MAX(price) FROM cars) OR price = (SELECT MIN(price) FROM cars);
SELECT *FROM cars where brand!='Toyota';
SELECT *FROM cars  order by price asc limit 10;
SELECT * FROM cars ORDER BY year_of_issue DESC LIMIT 10 OFFSET 4;
SELECT * FROM cars where year_of_issue not between 1995 and 2005;
SELECT color,count(*) FROM cars GROUP BY color ORDER BY count(*) desc   limit 1;
SELECT year_of_issue,count(*) FROM cars GROUP BY year_of_issue ORDER By year_of_issue asc ;
SELECT SUM(price) AS Общая_сумма FROM cars WHERE brand = 'Ford';
SELECT SUM(price)  FROM cars WHERE  not color= 'Red';
SELECT brand,count(*) FROM cars GROUP BY brand ORDER BY COUNT(*) ;
SELECT *FROM cars  order by price desc limit 1;
SELECT avg(price)  AS average FROM cars where year_of_issue >2005 and color='Maroon';
SELECT COUNT(*) AS количество FROM cars WHERE brand = 'Toyota' AND cars.price > (SELECT AVG(price) FROM cars);
SELECT brand  FROM cars where cars.price > 8000 GROUP BY brand ;
SELECT brand  FROM cars where cars.color!= 'purple' GROUP BY brand ;
SELECT brand  FROM cars where cars.price > 30000 AND cars.year_of_issue=1990 GROUP BY brand ;
SELECT brand  FROM cars where cars.color ='Turquoise' AND cars.year_of_issue=2005 GROUP BY brand ;
SELECT brand  FROM cars where   cars.year_of_issue !=1980 GROUP BY brand ;
SELECT model  FROM cars GROUP BY model HAVING SUM(price) > 500000;
SELECT model FROM cars GROUP BY model HAVING MAX(price) > (SELECT AVG(price) FROM cars);
SELECT DISTINCT brand FROM cars AS t1 WHERE ( SELECT COUNT(DISTINCT model) FROM cars AS t2 WHERE t2.brand = t1.brand AND t2.price = t1.price) >= 2;
SELECT DISTINCT brand FROM cars AS t1 WHERE ( SELECT COUNT(DISTINCT model) FROM cars AS t2 WHERE t2.brand = t1.brand AND t2.price = t1.price) <10000 ;
SELECT model  FROM cars where cars.color='Goldenrod' GROUP BY model ;
SELECT  brand FROM cars WHERE year_of_issue = (SELECT MIN(year_of_issue) FROM cars) AND price <= 5000;
SELECT  brand FROM cars WHERE year_of_issue = (SELECT MIN(year_of_issue) FROM cars) AND price <= 5000;
SELECT brand FROM cars GROUP BY brand HAVING AVG(year_of_issue) <= 2005;
SELECT DISTINCT brand FROM cars WHERE brand IN (SELECT DISTINCT brand FROM cars WHERE year_of_issue = 2015);


SELECT brand FROM cars GROUP BY brand HAVING SUM(price) <= 1000000;
SELECT brand FROM cars GROUP BY brand HAVING SUM(price) >= 10;


SELECT model FROM cars WHERE price <= 70000 AND cars.year_of_issue > 2010;
SELECT DISTINCT brand FROM cars WHERE  price > 5000 AND color <> 'Black';
SELECT brand FROM cars GROUP BY brand HAVING AVG(year_of_issue) = MAX(year_of_issue);

SELECT DISTINCT brand FROM cars WHERE brand IN ( SELECT brand FROM cars GROUP BY brand HAVING (MAX(price) / MIN(price)) > 5);
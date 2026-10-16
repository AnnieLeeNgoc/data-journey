-- 595. Big Countries
select name, population, area
from world
where area >= 3000000 or population >= 25000000

-- 1757. Recyclable and Low Fat Product
select product_id
from products
where low_fats = "Y" and recyclable = "Y"

-- 584. Find Customer Referee
select name
from customer
where referee_id != 2 or referee_id is null 

-- 620. Not Boring Movies
select *
from cinema
where (id%2) != 0 and description != "boring"
order by rating desc

-- 1148. Article Views I
select distinct author_id as id
from views
where viewer_id = author_id
order by author_id asc

-- 1683. Invalid Tweets
select tweet_id
from tweets
where char_length(content) > 15

-- 1873. Calculate Special Bonus
select employee_id, IF(employee_id % 2 = 1 AND name NOT LIKE 'M%', salary, 0) AS bonus
from employees
ORDER BY employee_id;

-- 627. Swap Salary
UPDATE Salary
SET sex = IF(sex = 'm', 'f', 'm');
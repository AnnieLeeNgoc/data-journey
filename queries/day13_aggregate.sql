-- 182. Duplicate Emails 
select email
from person
group by email
having count(*) > 1

-- 511. Game Play Analysis I 
select player_id, min(event_date) as first_login
from activity
group by player_id

-- 586. Customer Placing the Largest Number of Orders 
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1

-- 596. Classes More Than 5 Students 
select class
from courses
group by class
having count(*) >= 5 

-- 1050. Actors and Directors Who Cooperated At Least Three Times 
select actor_id, director_id
from actordirector
group by actor_id, director_id
having count(*) >= 3

-- 1193. Monthly transactions I 
select DATE_FORMAT(trans_date, '%Y-%m') AS month, 
                country, 
                count(*) as trans_count, 
                sum(case when state = 'approved' then 1 else 0 end) as approved_count, 
                sum(amount) as trans_total_amount,
                sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from transactions
group by month, country

-- 1393. Capital gain/loss 
select stock_name,
        sum(case when operation = 'Buy' then -price else price end) as capital_gain_loss
from stocks
group by stock_name

-- 1907. Count salary categories
select 'High Salary' as category, sum(case when income > 50000 then 1 else 0 end) as accounts_count
from Accounts
union all

select 'Low Salary' as category,
       sum(case when income < 20000 then 1 else 0 end) as accounts_count
from Accounts
union all

select 'Average Salary', sum(case when income between 20000 and 50000 then 1 else 0 end) as accounts_count
from Accounts

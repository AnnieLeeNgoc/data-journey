-- 175. Combine two tables
select firstName, lastName, city, state
from Person
left join address
    on person.personID = address.personID

-- 183. Customers who never order
select name as Customers
from customers
left join orders
    on customers.id = orders.customerID
where orders.id is null

-- 577. Employee bonus
select name, bonus
from employee e
left join bonus b
    on e.empID = b.empID
where bonus is null or bonus < 1000

-- 1068. Product Sales Analysis I
select product_name, year, price
from sales s
left join product p
    on s.product_id = p.product_id

-- 1075. Project Employees I
select project_id, round(avg(experience_years), 2) as average_years
from project p
left join employee e
    on p.employee_id = e.employee_id
group by project_id

-- 1251. Average Selling Price
select p.product_id, 
    ifnull(round(sum(price*units)/sum(units), 2), 0) as average_price
from prices p
left join unitssold u
    on p.product_id = u.product_id
    and u.purchase_date between p.start_date and p.end_date
group by product_id

-- 1378. Replace Employee ID With The Unique Identifier
select unique_id, name
from employees e
left join employeeuni u
    on e.id = u.id

-- 1581. Customer Who Visited but Did Not Make Any Transactions
select customer_id, count(*) as count_no_trans
from visits v
left join transactions t
    on v.visit_id = t.visit_id
where transaction_id is null
group by customer_id
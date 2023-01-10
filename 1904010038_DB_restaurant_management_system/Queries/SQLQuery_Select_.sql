--1- ordering according to names
SELECT customer_id, user_name, last_name FROM dbo.customer ORDER BY user_name ASC
--2- left join from employee crew table (employee_id values)
SELECT employee.employee_id, employee.e_department, employee.e_lastname FROM employee LEFT JOIN crew ON crew.crew_id = employee.employee_id
--3- full join to see food_info's status. 
SELECT * FROM food_info FULL OUTER JOIN restaurant_status ON restaurant_status.status_name = restaurant_status.status_name
--4- 
SELECT ingredient.ingredient_id, ingredient.ingredient_name, ingredient.description, ingredient.amount, ingredient.price, ingredient.detail, customer.first_name, customer.last_name
FROM ingredient INNER JOIN dbo.customer ON ingredient.ingredient_id = customer.customer_id;
--5--
SELECT ingredient.ingredient_id, ingredient.ingredient_name, ingredient.description, ingredient.amount, ingredient.price, ingredient.detail, food_info.food_name, food_info.food_name
FROM ingredient FULL OUTER JOIN food_info ON ingredient.ingredient_id = food_info.food_id;
--6- ordering employees according to their birthdays
SELECT employee_id, e_firstname, e_lastname, e_birthdate FROM employee ORDER BY e_birthdate desc
--7- grouping currently customers according to their country (how many customers is from USA?)
SELECT customer.country, COUNT(*) AS 'Number of Currently USA residents' FROM customer WHERE country = 'USA' GROUP BY country
--8- full join to see which types of food is available
SELECT * FROM food_info FULL OUTER JOIN restaurant_status ON food_info.food_id = food_info.food_id;
--9-- right join to see the list of employee departments with the crew names together
SELECT * FROM employee RIGHT JOIN crew ON crew.crew_name = employee.e_department
--10-- join to see customer's email  (id and score come from different tables)
SELECT customer.mail_adress, first_name FROM customer JOIN restaurant_status ON customer.mail_adress = customer.first_name
--11-- intersect 2 different tables (chef & crew)
SELECT first_name,last_name  FROM chef INTERSECT select crew_number from crew ORDER BY chef

-- Create Table
CREATE TABLE retail_sales (
	transactions_id	INT PRIMARY KEY,
	sale_date DATE,
	sale_time TIME,
	customer_id	INT,
	gender VARCHAR(15),
	age	INT,
	category VARCHAR(15),	
	quantiy INT,
	price_per_unit FLOAT,	
	cogs FLOAT,
	total_sale FLOAT
)

select * from retail_sales
LIMIT 10;

select count(*) from retail_sales;


-- DATA CLEANING

-- checking null 
select * from retail_sales
where transactions_id is null

select * from retail_sales
where sale_date is null

select * from retail_sales
where sale_time is null

select * from retail_sales
where customer_id is null

select * from retail_sales
where gender is null
      OR
	  age is null
	  OR 
	  category is null
	  or
	  quantiy is null
	  or 
	  price_per_unit is null
	  or 
	  cogs is null
	  or 
	  total_sale is null
	  
-- fill null value of age
UPDATE retail_sales
SET age = (SELECT AVG(age) FROM retail_sales)
WHERE age IS NULL;

-- delete null values
delete from retail_sales
where gender is null
      OR
	  age is null
	  OR 
	  category is null
	  or
	  quantiy is null
	  or 
	  price_per_unit is null
	  or 
	  cogs is null
	  or 
	  total_sale is null
	  

-- Data Exploration

-- How many sales we have?
select count(*) as total_sale from retail_sales

-- How many unique customers we have?
select count(DISTINCT customer_id) as total_customer from retail_sales

-- How many unique category we have?
select DISTINCT category from retail_sales



-- Data Analysis & Business key problems & answers

-- 1. Sql query to retreive all columns for sales made on '2022-11-05'
select * from retail_sales where sale_date = '2022-11-05'

-- 2. sql query to retreive all transactions where the category is 'Clothing' and the quantity 
-- sold is more than 4 in the month of Nov-2022
SELECT *
FROM retail_sales 
WHERE category = 'Clothing' 
	AND quantiy >= 4 
	AND TO_CHAR(sale_date, 'yyyy-mm') = '2022-11'
	
-- 3.sql query to calculate the total sales (total_sale)for each category
SELECT category,SUM(total_sale) as net_sales FROM retail_sales GROUP BY category

-- 4. sql query to find the average age of customers who purchased items from the 'Beauty'
-- category
SELECT category, ROUND(AVG(age), 2) as avg_age from retail_sales where category = 'Beauty' 
GROUP BY category

-- 5. sql query to find all transactions where the total_sale is greater than 1000.
SELECT * FROM retail_sales
WHERE total_sale>1000

-- 6. sql query to find the total number of transactions (transaction_id) made by each gender in 
-- each category
SELECT gender, category, COUNT(transactions_id) as total_transactions FROM retail_sales
GROUP BY gender, category ORDER BY 1

-- 7. sql query to calculate the average sale for each month. Find out best selling month in each year

SELECT year, month, avg_sales from
(
	SELECT 
		EXTRACT(YEAR FROM sale_date) as year, 
		EXTRACT(MONTH FROM sale_date) as month, 
		AVG(total_sale) as avg_sales,
		RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) as rank
	FROM retail_sales
	GROUP BY year, month
) as t1
WHERE rank = 1

-- 8. sql query to find the top 5 customers based on the highest total sales
SELECT customer_id, SUM(total_sale) as total_sale 
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5

-- 9. sql query to find the number of unqiue customers who purchased items from
-- each category
SELECT category, COUNT(DISTINCT customer_id) as unique_customers FROM retail_sales
GROUP BY category

-- 10. sql query to create each shift and number of order (Example Morning <=12,
-- Afternoon Between 12 & 17, Evening>17)
SELECT
	CASE
		WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
		WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
		ELSE 'Evening'
	END as shift,
	COUNT(*) as number_of_orders
FROm retail_sales
GROUP BY shift



-- END OF PROJECT



create table zepto(
sku_id SERIAL PRIMARY KEY,
category varchar(120),
name varchar(150) NOT NULL,
mrp NUMERIC(8,2),
DISCOUNTpercent NUMERIC(5,2),
availableQuantity INTEGER,
DISCOUNTEDsellingprice NUMERIC(8,2),
WeightInsGms INTEGER,
OUTOFSTOCK BOOLEAN,
quantity INTEGER
);

--count of rows
select * from zepto;

--sample data
select * from zepto
limit 10;

--null values
select * from zepto
WHERE name is NULL
OR
category is NULL
OR
mrp is NULL
OR
discountpercent is NULL
OR
availablequantity is NULL
OR
discountedsellingprice is NULL
OR
WeightInsGms is NULL
OR
outofstock is NULL
OR
quantity is NULL;

--Different product categories
select Distinct category
from zepto
order by category;

--products in stock vs outofstock
select outofstock, count(sku_id)
from zepto
group by outofstock;

--product names present multiple times
select name, count(sku_id) as "Number of SKUs"
from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) Desc;

--Data cleaning
--Products with price = 0
select * from zepto
where mrp = 0 OR discountedSellingPrice = 0;

Delete from zepto
where mrp = 0;

--Convert pasie to rupees
update zepto 
set mrp = mrp/100.0,
DISCOUNTEDsellingprice = DISCOUNTEDsellingprice/100.0;

select mrp, DISCOUNTEDsellingprice from zepto;


--data analysis

-- Q1. Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

--Q2.What are the Products with High MRP but Out of Stock

SELECT DISTINCT name,mrp
FROM zepto
WHERE outOfStock = TRUE and mrp > 300
ORDER BY mrp DESC;

--Q3.Calculate Estimated Revenue for each category
SELECT category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name,WeightInsGms, discountedSellingPrice,
ROUND(discountedSellingPrice/WeightInsGms,2) AS price_per_gram
FROM zepto
WHERE WeightInsGms >= 100
ORDER BY price_per_gram;

--Q7.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, WeightInsGms,
CASE WHEN WeightInsGms < 1000 THEN 'Low'
	WHEN WeightInsGms < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM zepto;

--Q8.What is the Total Inventory Weight Per Category 
SELECT category,
SUM(WeightInsGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;
# zepto-sql-data-analysis
SQL analysis project exploring Zepto product dataset including pricing, discounts, stock availability and category insights.

# Zepto SQL Data Analysis Project

## Project Overview
This project analyzes a Zepto product dataset using SQL to extract business insights related to pricing, discounts, stock availability, and product categories.

The goal is to demonstrate SQL skills such as data exploration, filtering, aggregation, and business analysis.

---

## Dataset
Dataset contains product information from Zepto including:

- Product Name
- Category
- MRP
- Discount Percentage
- Discounted Selling Price
- Weight
- Stock Availability
- Quantity

Total Records: 3,732

---

## Tools Used

SQL Server / MySQL  
Excel / CSV Dataset  
GitHub for version control

---

## Business Questions Solved

1. Top products with highest discount
2. Average price by category
3. Out of stock product analysis
4. Highest priced products
5. Products with largest available quantity
6. Discount impact on selling price

---

## Example SQL Queries

Example:

SELECT name, mrp, discountPercent
FROM zepto_products
ORDER BY discountPercent DESC;

---

## Key Insights

• Some categories offer significantly higher discounts  
• Certain products have extremely high stock quantities  
• Price differences vary widely across categories  

---

## Project Structure

dataset → contains raw data  
sql_queries → SQL queries used for analysis  
screenshots → output screenshots  

---

## Author

Data Analytics Portfolio Project

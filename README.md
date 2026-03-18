📊 Customer Order & Demand Analysis

🔍 Problem Statement

The business lacked insights into customer purchasing behavior and product demand trends.

# Zepto SQL Data Analysis Project

🎯 Objective

To analyze order data and identify demand patterns to support inventory and sales decisions.

🛠 Tools Used

SQL
ChatGPT (for query building and data exploration)
Excel / CSV Dataset

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

💡 Business Recommendations

Focus inventory on high-demand products

Optimize supply chain for frequently ordered categories

Improve marketing for low-performing products

## Project Structure

dataset → contains raw data  
sql_queries → SQL queries used for analysis  
screenshots → output screenshots  

---

## Author

Data Analytics Portfolio Project

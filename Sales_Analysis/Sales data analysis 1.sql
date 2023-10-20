SELECT * FROM project_2.sales_data_sample;

# 1.What is the total sales revenue for each product line?
SELECT PRODUCTLINE, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
GROUP BY PRODUCTLINE;

#2.What is the average quantity ordered per product line?
SELECT PRODUCTLINE, AVG(QUANTITYORDERED) AS AVG_QUANTITY_ORDERED
FROM sales_data_sample
GROUP BY PRODUCTLINE;

#3.Which product has the highest price per unit (PRICEEACH)?

SELECT PRODUCTLINE, PRODUCTCODE, max (PRICEEACH) AS MAX_PRICE_PER_UNIT
FROM sales_data_sample;

#4.What is the total sales revenue for each year?
SELECT YEAR_ID, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
GROUP BY YEAR_ID
ORDER BY YEAR_ID DESC;

#5.What is the average sales revenue per quarter (QTR_ID) for each year?
SELECT YEAR_ID, QTR_ID, AVG(SALES) AS AVG_REVENUE_PER_QUARTER
FROM sales_data_sample
GROUP BY YEAR_ID, QTR_ID;

#6.Which customers have placed the most orders (ORDERNUMBER) in descending order?
SELECT CUSTOMERNAME, COUNT(ORDERNUMBER) AS NUM_ORDERS
FROM sales_data_sample
GROUP BY CUSTOMERNAME
ORDER BY NUM_ORDERS DESC;

#7.What is the total sales revenue for each country?
SELECT COUNTRY, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
GROUP BY COUNTRY;

#8.What is the most common order status (STATUS) and its count?
SELECT STATUS, COUNT(*) AS STATUS_COUNT
FROM sales_data_sample
GROUP BY STATUS
ORDER BY STATUS_COUNT DESC
LIMIT 1;

#9.What is the total sales revenue for each deal size (DEALSIZE)?
SELECT DEALSIZE, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
GROUP BY DEALSIZE;

#10.What is the total sales revenue for each product line and year?
SELECT PRODUCTLINE, YEAR_ID, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
GROUP BY PRODUCTLINE, YEAR_ID;

#11.What is the average quantity ordered per product line and quarter (QTR_ID)?
SELECT PRODUCTLINE, QTR_ID, AVG(QUANTITYORDERED) AS AVG_QUANTITY_ORDERED
FROM sales_data_sample
GROUP BY PRODUCTLINE, QTR_ID;

#GROUPBY

/* 12.What is the average sales revenue per month (MONTH_ID) for each year and product line?
Which product line has the highest total sales revenue in each country?*/
SELECT YEAR_ID, PRODUCTLINE, MONTH_ID, AVG(SALES) AS AVG_REVENUE_PER_MONTH
FROM sales_data_sample
GROUP BY YEAR_ID, PRODUCTLINE, MONTH_ID;

/* 13.Which customers have placed orders in multiple countries,
and how many orders have they placed in each country?*/
SELECT CUSTOMERNAME, COUNTRY, COUNT(DISTINCT ORDERNUMBER) AS NUM_ORDERS
FROM sales_data_sample;

/* 14.What is the total sales revenue for each product line and quarter (QTR_ID)
for a specific year (e.g., 2005)?*/
SELECT YEAR_ID, PRODUCTLINE, QTR_ID, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
WHERE YEAR_ID = 2005
GROUP BY YEAR_ID, PRODUCTLINE, QTR_ID;

# 15.Which product line has the highest average price per unit (PRICEEACH) for a specific year (e.g., 2004)?
SELECT YEAR_ID, PRODUCTLINE, AVG(PRICEEACH) AS AVG_PRICE_PER_UNIT
FROM sales_data_sample
WHERE YEAR_ID = 2004
GROUP BY YEAR_ID, PRODUCTLINE
ORDER BY AVG_PRICE_PER_UNIT DESC;

# 16.What is the total sales revenue for each year and deal size (DEALSIZE)?
SELECT YEAR_ID, DEALSIZE, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
GROUP BY YEAR_ID, DEALSIZE;

# 17.What is the total number of orders (ORDERNUMBER) in the dataset?**
SELECT COUNT(*) AS TOTAL_ORDERS
FROM sales_data_sample;

# 18.What is the highest sales revenue (SALES) in the dataset?**
SELECT MAX(SALES) AS HIGHEST_REVENUE
FROM sales_data_sample;

# 19.What is the average manufacturer's suggested retail price (MSRP) per product line?**
SELECT PRODUCTLINE, AVG(MSRP) AS AVG_MSRP
FROM sales_data_sample
GROUP BY PRODUCTLINE;

# 20.What is the total quantity ordered (QUANTITYORDERED) for each year, ordered by year in descending order?
SELECT YEAR_ID, SUM(QUANTITYORDERED) AS TOTAL_QUANTITY_ORDERED
FROM sales_data_sample
GROUP BY YEAR_ID
ORDER BY YEAR_ID DESC;

# 21.What is the total revenue for each status (STATUS) category?,total revenue ascending order?
SELECT STATUS, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
GROUP BY STATUS
ORDER BY STATUS ASC;

# 22.What is the average price per unit (PRICEEACH) for each product line with a price greater than $50?
SELECT PRODUCTLINE, AVG(PRICEEACH) AS AVG_PRICE_PER_UNIT
FROM sales_data_sample
WHERE PRICEEACH > 50
GROUP BY PRODUCTLINE;

# 23.Which year had the highest total sales revenue, and what was the revenue amount?
SELECT YEAR_ID, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
GROUP BY YEAR_ID
ORDER BY TOTAL_REVENUE DESC
LIMIT 1;

# 24.What is the total sales revenue for each city and state combination?
SELECT CITY, STATE, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
GROUP BY CITY, STATE;

# 25.What is the total quantity ordered (QUANTITYORDERED) for each product line, sorted by quantity in descending order?
SELECT PRODUCTLINE, SUM(QUANTITYORDERED) AS TOTAL_QUANTITY_ORDERED
FROM sales_data_sample
GROUP BY PRODUCTLINE
ORDER BY TOTAL_QUANTITY_ORDERED DESC;

# 26.What is the highest total sales revenue for each product line?

SELECT PRODUCTLINE, MAX(TOTAL_REVENUE) AS HIGHEST_REVENUE
FROM (
    SELECT PRODUCTLINE, SUM(SALES) AS TOTAL_REVENUE
    FROM sales_data_sample
    GROUP BY PRODUCTLINE
) AS subquery
GROUP BY PRODUCTLINE;

# 27.What is the average sales revenue per day of the week (based on ORDERDATE)?
SELECT DAYOFWEEK(ORDERDATE) AS DAY_OF_WEEK, AVG(SALES) AS AVG_REVENUE_PER_DAY
FROM sales_data_sample
GROUP BY DAY_OF_WEEK;

# 28.What is the most common shipping territory (TERRITORY) and its count?
SELECT TERRITORY, COUNT(*) AS TERRITORY_COUNT
FROM sales_data_sample
GROUP BY TERRITORY
ORDER BY TERRITORY_COUNT DESC
LIMIT 1;

# 29.What is the total quantity ordered (QUANTITYORDERED) for each year, month, and product line combination?
SELECT YEAR_ID, MONTH_ID, PRODUCTLINE, SUM(QUANTITYORDERED) AS TOTAL_QUANTITY_ORDERED
FROM sales_data_sample
GROUP BY YEAR_ID, MONTH_ID, PRODUCTLINE;

# 30.What is the most common shipping territory (TERRITORY) and its count?
SELECT TERRITORY, COUNT(*) AS TERRITORY_COUNT
FROM sales_data_sample
GROUP BY TERRITORY
ORDER BY TERRITORY_COUNT DESC
LIMIT 1;

# 31.What is the total sales revenue for each month (MONTH_ID) in descending order of revenue?
SELECT MONTH_ID, SUM(SALES) AS TOTAL_REVENUE
FROM sales_data_sample
GROUP BY MONTH_ID
ORDER BY TOTAL_REVENUE DESC;

                                       #Monthly Sales Trend

SELECT YEAR_ID, MONTH_ID, SUM(SALES) AS MONTHLY_REVENUE
FROM sales_data_sample
GROUP BY YEAR_ID, MONTH_ID
ORDER BY YEAR_ID, MONTH_ID;

                                       #Products with Highest Sales Growth:
WITH product_sales AS (
    SELECT YEAR_ID, PRODUCTLINE, SUM(SALES) AS TOTAL_SALES
    FROM sales_data_sample
    GROUP BY YEAR_ID, PRODUCTLINE
)

SELECT 
    ps1.YEAR_ID,
    ps1.PRODUCTLINE,
    (ps1.TOTAL_SALES - ps2.TOTAL_SALES) AS SALES_GROWTH
FROM product_sales ps1
JOIN product_sales ps2
    ON ps1.PRODUCTLINE = ps2.PRODUCTLINE
    AND ps1.YEAR_ID = ps2.YEAR_ID + 1
ORDER BY YEAR_ID, PRODUCTLINE, SALES_GROWTH DESC;

										#Average Order Value:
 SELECT AVG(SALES) AS AVERAGE_ORDER_VALUE
FROM sales_data_sample;                                       



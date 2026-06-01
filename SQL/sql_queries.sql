CREATE TABLE sales (
    orderid INT,
    orderdate VARCHAR(20),
    product VARCHAR(100),
    category VARCHAR(50),
    region VARCHAR(50),
    quantity INT,
    unitprice NUMERIC(10,2),
    revenue NUMERIC(10,2)
);

-- Total Revenue

SELECT SUM(revenue) AS total_revenue
FROM sales;


-- Revenue by Region

SELECT region,
       SUM(revenue) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;


-- Revenue by Product

SELECT product,
       SUM(revenue) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;


-- Top Selling Products

SELECT product,
       SUM(quantity) AS units_sold
FROM sales
GROUP BY product
ORDER BY units_sold DESC;


-- Monthly Revenue

SELECT
    TO_CHAR(TO_DATE(orderdate,'DD/MM/YYYY'),'YYYY-MM') AS month,
    SUM(revenue) AS revenue
FROM sales
GROUP BY month
ORDER BY month;
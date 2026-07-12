USE ecommerce_project;
SHOW TABLES;
DESCRIBE sales_data;
SELECT *FROM sales_data WHERE `Customer ID` IS NULL;
SELECT `Ship Mode`, COUNT(*) AS Total_Orders
FROM sales_data
GROUP BY `Ship Mode`
ORDER BY Total_Orders DESC;
SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT `Customer Name`, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT `Product Name`, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT City, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT Segment, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Segment
ORDER BY Total_Sales DESC;



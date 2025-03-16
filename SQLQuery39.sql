/*Write a query that displays the count of orders placed by year for each customer using the 
Sales.SalesOrderHeader table*/
USE AdventureWorks2022;
SELECT
CustomerID,
YEAR(OrderDate) AS Year,
COUNT(SalesOrderID) AS TotalOrders
FROM Sales.SalesOrderHeader
GROUP BY CustomerID,YEAR(OrderDate)
ORDER BY CustomerID,YEAR(OrderDate)

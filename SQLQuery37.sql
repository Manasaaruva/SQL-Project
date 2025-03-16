/*Write a query using the Sales.SalesOrderDetail table that displays a count of the detail lines for each 
SalesOrderID*/
USE AdventureWorks2022;
SELECT
SalesOrderID,
COUNT(LineTotal) AS Totallines
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
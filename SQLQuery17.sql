/*Write a query using the Sales.SalesOrderHeader table listing the sales in order of the month the order 
was placed and then the year the order was placed. Include the SalesOrderID and OrderDate columns 
in the results.*/
USE AdventureWorks2022;
SELECT
SalesOrderID,
OrderDate
FROM Sales.SalesOrderHeader
ORDER BY MONTH(OrderDate),YEAR(OrderDate)
/*Write a query using the Sales.SalesOrderHeader table to display the orders placed during 2011 by 
using a function. Include the SalesOrderID and OrderDate columns in the results.*/

USE AdventureWorks2022;
SELECT
SalesOrderID,
OrderDate
FROM Sales.SalesOrderHeader
WHERE OrderDate >= '2011-01-01' AND OrderDate <= '2011-12-31' 
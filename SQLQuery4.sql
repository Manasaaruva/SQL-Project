/*Write a query displaying the sales order ID, order date, and total due from the Sales.SalesOrderHeader 
table. Retrieve only those rows where the order was placed during the month of September 2012.*/
USE AdventureWorks2022;
SELECT 
SalesOrderID,
OrderDate,
TotalDue
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2011-09-01' AND '2011-09-30'


 
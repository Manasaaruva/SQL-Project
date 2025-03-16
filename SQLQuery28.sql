/*Using a subquery that includes the Sales.SalesOrderDetail table, display the product names and 
product ID numbers from the Production.Product table that have been ordered.*/
USE AdventureWorks2022;
SELECT
ProductID,Name
FROM Production.Product
WHERE ProductID IN (SELECT 
ProductID
FROM Sales.SalesOrderDetail)
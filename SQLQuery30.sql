/*Using a subquery that includes the Sales.SalesOrderDetail table, display the product names and 
product ID numbers from the Production.Product table.Display the products that have not been ordered.*/USE AdventureWorks2022;
SELECT
ProductID,Name
FROM Production.Product
WHERE ProductID NOT IN (SELECT 
ProductID
FROM Sales.SalesOrderDetail)
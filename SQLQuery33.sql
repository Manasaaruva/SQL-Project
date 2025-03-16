/*Using a derived table, join the Sales.SalesOrderHeader table to the Sales.SalesOrderDetail table. 
Display the SalesOrderID, OrderDate, and ProductID columns in the results. The 
Sales.SalesOrderDetail table should be inside the derived table query.*/
USE AdventureWorks2022;
SELECT
SOH.SalesOrderID,OrderDate,ProductID
FROM Sales.SalesOrderHeader AS SOH
INNER JOIN (SELECT 
SalesOrderID,ProductID 
FROM  Sales.SalesOrderDetail) AS SOD ON
SOH.SalesOrderID=SOD.SalesOrderID

/*Q:5(Using a derived table, join the Sales.SalesOrderHeader table to the Sales.SalesOrderDetail table. 
Display the SalesOrderID, OrderDate, and ProductID columns in the results. The 
Sales.SalesOrderDetail table should be inside the derived table query.)Rewrite the query in Question 5 with a common table expression.*/
USE AdventureWorks2022;
WITH SOD AS(SELECT 
SalesOrderID,ProductID 
FROM  Sales.SalesOrderDetail)
SELECT SOH.SalesOrderID,OrderDate,ProductID
FROM Sales.SalesOrderHeader AS SOH
INNER JOIN SOD  ON
SOH.SalesOrderID=SOD.SalesOrderID
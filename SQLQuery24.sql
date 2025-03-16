/*Write a query that joins the Sales.SalesOrderHeader table to the Sales.SalesPerson table. Join the 
BusinessEntityID column from the Sales.SalesPerson table to the SalesPersonID column in the Sales. 
SalesOrderHeader table. Display the SalesOrderID along with the SalesQuota and Bonus.*/
USE AdventureWorks2022;
SELECT
SalesOrderID, SalesQuota,Bonus
FROM Sales.SalesOrderHeader AS SOH
INNER JOIN Sales.SalesPerson AS SP ON
SP.BusinessEntityID=SOH.SalesPersonID
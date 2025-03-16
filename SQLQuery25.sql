/*Write a query that returns all the rows from the Sales.SalesPerson table joined to the 
Sales.SalesOrderHeader table along with the SalesOrderID column even if no orders match. Include 
the SalesPersonID, SalesYTD, and SalesOrderID columns in the results.*/
USE AdventureWorks2022;
SELECT SalesPersonID,
SalesYTD,
SalesOrderID 
FROM Sales.SalesPerson AS SP
LEFT JOIN Sales.SalesOrderHeader AS SOH ON
SP.BusinessEntityID=SOH.SalesOrderID

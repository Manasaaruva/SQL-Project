/*Write a query returning the SalesOrderID, OrderDate, CustomerID, and TotalDue from the 
Sales.SalesOrderHeader table. Include the average order total over all the results.*/
USE AdventureWorks2022;
SELECT
SalesOrderID, OrderDate, CustomerID,TotalDue,
AVG(TotalDue) OVER() AS AvgTotalDue
FROM Sales.SalesOrderHeader
 



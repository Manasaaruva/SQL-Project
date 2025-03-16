/*Write a query that returns the SalesOrderID, ProductID, and LineTotal from Sales.SalesOrderDetail. 
Calculate a running total of the LineTotal for each ProductID in order of SalesOrderID. Be sure to use 
the correct frame.*/
USE AdventureWorks2022;
SELECT
SalesOrderID, ProductID,LineTotal,
SUM(LineTotal) OVER(PARTITION BY ProductID ORDER BY  SalesOrderID) AS RunningTotal 
FROM Sales.SalesOrderDetail
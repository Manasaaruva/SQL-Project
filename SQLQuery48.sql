/*Q:3(Write a query returning the SalesOrderID, OrderDate, CustomerID, and TotalDue from the 
Sales.SalesOrderHeader table. Include the average order total over all the results).Add the average total due for each customer to the query you wrote in Question 3*/
USE AdventureWorks2022;
SELECT
SalesOrderID, OrderDate, CustomerID,TotalDue,
AVG(TotalDue) OVER() AS AvgTotalDue,
AVG(TotalDue) OVER(PARTITION BY CustomerID) AS AvgTotalDuePerCustomer
FROM Sales.SalesOrderHeader




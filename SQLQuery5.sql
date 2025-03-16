/*Write a query with the same columns as Question 4. Include rows where the Total Due is $10,000 or 
more or the SalesOrderID is less than 43000.*/
USE AdventureWorks2022;
SELECT 
SalesOrderID,
OrderDate,
TotalDue
FROM Sales.SalesOrderHeader
WHERE TotalDue >= 10000 OR SalesOrderID < 43000
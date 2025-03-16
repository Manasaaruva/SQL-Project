/*Write a query that divides the customers into ten buckets based on the total sales for 2011.*/
USE AdventureWorks2022;
SELECT
CustomerID,
SUM(TotalDue) AS SumOfTotalDue,
NTILE(10) OVER (ORDER BY SUM(TotalDue)) AS Buckets 
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate)=2011
GROUP BY CustomerID
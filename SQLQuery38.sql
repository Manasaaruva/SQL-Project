/*Write a query that returns a count of detail lines in the Sales. SalesOrderDetail table by SalesOrderID. 
Include only those sales that have more than three detail linesUSE AdventureWorks2022;*/
SELECT
SalesOrderID,
COUNT(LineTotal) AS TotalLines
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING COUNT(LineTotal)>3 
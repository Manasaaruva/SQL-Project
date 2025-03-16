/*Write a query that shows the total number of items ordered for each product. Use the 
Sales.SalesOrderDetail table to write the query.*/
USE AdventureWorks2022;
SELECT 
ProductID,
SUM(OrderQty) AS Orderqty
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY Orderqty DESC

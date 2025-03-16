/*Write a query that displays all the products along with the SalesOrderID even if an order has never 
been placed for that product. Join to the Sales.SalesOrderDetail table using the ProductID column.*/
USE AdventureWorks2022;
SELECT
PP.ProductID,
SalesOrderID
FROM Production.Product AS PP
LEFT JOIN Sales.SalesOrderDetail AS SOH ON
PP.ProductID=SOH.ProductID

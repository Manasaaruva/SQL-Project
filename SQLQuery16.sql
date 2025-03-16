/*Write a query using the Production.Product table displaying a description with the ProductID: Name 
format.*/
USE AdventureWorks2022;
SELECT
ProductID,Name,
CAST(ProductID AS VARCHAR)+' : '+Name AS ProductIDName
FROM Production.Product
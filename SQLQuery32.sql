/*Write a query that displays the colors used in the Production.Product table that are not listed in the 
Production.ProductColor table using a subquery. Use the keyword DISTINCT before the column name 
to return each color only once. Use the NOT EXISTS method in this query.*/
USE AdventureWorks2022;
SELECT
DISTINCT Color
FROM Production.Product AS PP
WHERE Color NOT EXISTS (SELECT 
Color
FROM Production.ProductColor AS PPC
WHERE PP.ProductID=PPC.ProductID)

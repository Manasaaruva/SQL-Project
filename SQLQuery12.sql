/*Write a query displaying ProductID, Name, Style, Size, and Color from the Production.Product table. 
Include only the rows where at least one of the Size or Color columns contains a value.*/

USE AdventureWorks2022;
SELECT
ProductID,
Name,
Style, Size,Color
FROM  Production.Product
WHERE Size IS NOT NULL OR Color IS NOT NULL
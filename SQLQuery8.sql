/*Write a query displaying the ProductID, Name, and Color columns from rows in the Production.Product 
table. Display only those rows in which the color is known not to be blue.*/

USE AdventureWorks2022;
SELECT
ProductID
Name, 
Color
FROM Production.Product
WHERE Color <> 'Blue' OR COLOR IS NULL

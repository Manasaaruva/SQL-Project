/*Write a query using the HumanResources.Employee table to display the BusinessEntityID column. Also 
include a CASE expression that displays Even when the BusinessEntityID value is an even number or 
Odd when it is odd. Hint: Use the modulo operator.*/
use AdventureWorks2022;
SELECT 
BusinessEntityID,
CASE BusinessEntityID%2
WHEN 0 THEN 'EVEN' ELSE 'ODD' END AS EvenORodd
FROM HumanResources.Employee
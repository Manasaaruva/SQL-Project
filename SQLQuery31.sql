/*Write a query that combines the ModifiedDate from Person.Person and the HireDate from 
HumanResources.Employee with no duplicates in the results.*/
USE AdventureWorks2022;
SELECT
ModifiedDate
FROM Person.Person 
UNION
SELECT HireDate FROM  HumanResources.Employee

/*Write a query that displays the PersonType and the name columns from the Person.Person table. Sort 
the results so that rows with a PersonType of IN, SP, or SC sort by LastName. The other rows should 
sort by FirstName. Hint: Use the CASE expression.*/
USE AdventureWorks2022;
SELECT
PersonType,MiddleName,LastName,FirstName,
CASE 
WHEN PersonType='IN' OR PersonType='SP' OR PersonType='SC' THEN LastName
ELSE FirstName END AS PersonTypeAdjusted
FROM Person.Person
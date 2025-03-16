/*The HumanResources.Employee table does not contain the employee names. Join that table to the 
Person.Person table on the BusinessEntityID column. Display the job title, birth date, first name, and 
last name.*/
USE AdventureWorks2022;
SELECT
PP.FirstName,
PP.LastName,
HR.JobTitle,
HR.BirthDate
FROM HumanResources.Employee AS HR
INNER JOIN Person.Person AS PP ON
HR.BusinessEntityID = PP.BusinessEntityID

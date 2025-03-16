/* Write a query using a WHERE clause that displays all the employees listed in the 
HumanResources.Employee table who have the job title “Research and Development Engineer.” 
Display the BusinessEntityID, the login ID, and the job title for each one. */

USE AdventureWorks2022;
SELECT 
BusinessEntityID,
 LoginID,
 JobTitle 
 FROM HumanResources.Employee
 WHERE JobTitle='Research and Development Engineer'
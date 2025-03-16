/*The customer names also appear in the Person.Person table. Join the Sales.Customer table to the 
Person.Person table. The BusinessEntityID column in the Person.Person table matches the PersonID 
column in the Sales.Customer table. Display the CustomerID, StoreID, and TerritoryID columns along 
with the name columns.*/
USE AdventureWorks2022;
SELECT
PP.BusinessEntityID,
SC.CustomerID,
SC.StoreID,
SC.TerritoryID,
PP.FirstName,PP.MiddleName,PP.LastName
FROM Person.Person AS PP
INNER JOIN Sales.Customer AS SC ON
PP.BusinessEntityID=SC.PersonID



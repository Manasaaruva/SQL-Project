/*Write a query that returns data from the Person.Address table in this format AddressLine1 (City 
PostalCode) from the Person.Address table.*/

USE AdventureWorks2022;
SELECT
 AddressLine1,City,PostalCode,
 AddressLine1 + ' (' + City +' : '+ PostalCode +')' AS AddressLine1citypostalcode
FROM Person.Address



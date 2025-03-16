/*Using the Person.Person table, build the full names using the Title, FirstName, MiddleName, 
LastName, and Suffix columns. Check the table definition to see which columns allow NULL values and 
use the COALESCE function on the appropriate columns.*/USE AdventureWorks2022;SELECTTitle, FirstName, MiddleName, 
LastName,Suffix,COALESCE(Title,' ')+FirstName+COALESCE(MiddleName,' ')+LastName+COALESCE(Suffix,' ') AS FullnamesFROM Person.Person
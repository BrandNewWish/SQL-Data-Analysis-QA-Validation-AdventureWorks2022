SELECT COUNT(*) AS OrdersPlaced, FirstName, MiddleName, LastName
  FROM [AdventureWorks2022].[Person].[Person]
  INNER JOIN Sales.Customer ON Person.Person.BusinessEntityID = Sales.Customer.PersonID
  INNER JOIN Sales.SalesOrderHeader AS SOH ON Sales.Customer.CustomerID = SOH.CustomerID
  GROUP BY FirstName, MiddleName, LastName;

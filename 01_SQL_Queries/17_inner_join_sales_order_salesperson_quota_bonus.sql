SELECT SalesOrderID, SalesQuota,Bonus

  FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] AS s
  INNER JOIN Sales.SalesPerson AS sp ON s.SalesPersonID = sp.BusinessEntityID;

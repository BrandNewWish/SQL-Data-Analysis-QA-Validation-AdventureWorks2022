SELECT SalesOrderID, SalesQuota, Bonus, FirstName, MiddleName, LastName, [Name]
FROM Sales.SalesOrderHeader AS S
INNER JOIN Sales.SalesPerson AS SP ON S.SalesPersonID = SP.BusinessEntityID
INNER JOIN Person.Person AS P ON SP.BusinessEntityID = P.BusinessEntityID
INNER JOIN [Sales].[SalesTerritory] AS ST ON S.TerritoryID = ST.TerritoryID
where [Name] = 'Southeast'

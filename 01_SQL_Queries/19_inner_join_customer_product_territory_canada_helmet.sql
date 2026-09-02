SELECT
    FirstName,
    MiddleName,
    LastName,
    PR.[Name],
    ST.[Name]
FROM Sales.Customer AS C
INNER JOIN Person.Person AS P
    ON C.PersonID = P.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader AS S
    ON C.CustomerID = S.CustomerID
INNER JOIN Sales.SalesOrderDetail AS SOD
    ON S.SalesOrderID = SOD.SalesOrderID
INNER JOIN Sales.SalesTerritory AS ST
    ON S.TerritoryID = ST.TerritoryID
INNER JOIN Production.Product AS PR
    ON SOD.ProductID = PR.ProductID
WHERE ST.[Name] = 'Canada'
  AND PR.[Name] LIKE '%Helmet%';
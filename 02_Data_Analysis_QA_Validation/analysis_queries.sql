-- AdventureWorks2022
-- Data Analysis Queries
-- Purpose: Explore sales, products, customers, and territories
-- Database: AdventureWorks2022

-- Analysis 01
-- Question: How many sales orders are there in each territory?

SELECT 
	st.Name AS Territory, 
	COUNT(soh.SalesOrderID) AS OrderCount
FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] AS soh
INNER JOIN Sales.SalesTerritory AS st ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY OrderCount DESC;

-- Analysis 02
-- Question: Which products have the highest total quantity sold?

SELECT
    p.ProductID,
    p.Name,
    SUM(sod.OrderQty) AS TotalQuantitySold
FROM Sales.SalesOrderDetail AS sod
INNER JOIN Production.Product AS p
    ON sod.ProductID = p.ProductID
GROUP BY
    p.ProductID,
    p.Name
ORDER BY TotalQuantitySold DESC;

-- Analysis 03
-- Question: Which customers have placed the highest number of orders?

SELECT
    c.CustomerID,
    p.FirstName,
    p.LastName,
    COUNT(soh.SalesOrderID) AS OrderCount
FROM Sales.Customer AS c
INNER JOIN Person.Person AS p
    ON c.PersonID = p.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader AS soh
    ON c.CustomerID = soh.CustomerID
GROUP BY
    c.CustomerID,
    p.FirstName,
    p.LastName
ORDER BY OrderCount DESC;

-- Analysis 04
-- Question: Which products generate the highest sales value?

SELECT
    p.ProductID,
    p.Name,
    SUM(sod.OrderQty * sod.UnitPrice) AS TotalSalesValue
FROM Sales.SalesOrderDetail AS sod
INNER JOIN Production.Product AS p
    ON sod.ProductID = p.ProductID
GROUP BY
    p.ProductID,
    p.Name
ORDER BY TotalSalesValue DESC;

-- Analysis 05
-- Question: Which territories generate the highest total sales value?

SELECT
    st.Name AS Territory,
    SUM(sod.OrderQty * sod.UnitPrice) AS TotalSalesValue
FROM Sales.SalesOrderHeader AS soh
INNER JOIN Sales.SalesOrderDetail AS sod
    ON soh.SalesOrderID = sod.SalesOrderID
INNER JOIN Sales.SalesTerritory AS st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY
    st.Name
ORDER BY TotalSalesValue DESC;


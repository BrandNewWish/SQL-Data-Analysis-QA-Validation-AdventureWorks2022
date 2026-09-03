-- AdventureWorks2022
-- QA Validation Queries
-- Purpose: Validate data quality, consistency, and relationships
-- Database: AdventureWorks2022

-- QA-01
-- Objective: Identify products where Color is NULL

SELECT
    ProductID,
    Name,
    Color
FROM Production.Product
WHERE Color IS NULL;

-- QA-02
-- Objective: Identify products where Size is NULL

SELECT
    ProductID,
    Name,
    Size
FROM Production.Product
WHERE Size IS NULL;

-- QA-03
-- Objective: Identify customers without an associated Person record

SELECT
    c.CustomerID,
    c.PersonID
FROM Sales.Customer AS c
LEFT JOIN Person.Person AS p
    ON c.PersonID = p.BusinessEntityID
WHERE c.PersonID IS NOT NULL
  AND p.BusinessEntityID IS NULL;

-- Result: 0 records found.
-- PASS: No customers with invalid PersonID references were identified.

-- QA-04
-- Objective: Identify order details referencing products that do not exist

SELECT
    sod.SalesOrderID,
    sod.ProductID
FROM Sales.SalesOrderDetail AS sod
LEFT JOIN Production.Product AS p
    ON sod.ProductID = p.ProductID
WHERE p.ProductID IS NULL;

-- Result: 0 records found.
-- PASS: No orphaned product references were identified.

-- QA-05
-- Objective: Identify order details referencing sales orders that do not exist

SELECT
    sod.SalesOrderID,
    sod.ProductID
FROM Sales.SalesOrderDetail AS sod
LEFT JOIN Sales.SalesOrderHeader AS soh
    ON sod.SalesOrderID = soh.SalesOrderID
WHERE soh.SalesOrderID IS NULL;

-- Result: 0 records found.
-- PASS: No order details with invalid SalesOrderID references were identified.

-- QA-06
-- Objective: Identify sales orders referencing customers that do not exist

SELECT
    soh.SalesOrderID,
    soh.CustomerID
FROM Sales.SalesOrderHeader AS soh
LEFT JOIN Sales.Customer AS c
    ON soh.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

-- QA-07
-- Objective: Identify products with a negative ListPrice

SELECT
    ProductID,
    Name,
    ListPrice
FROM Production.Product
WHERE ListPrice < 0;

-- Result: 0 records found.
-- PASS: No products with negative ListPrice values were identified.

-- QA-08
-- Objective: Identify order details with invalid quantities

SELECT
    SalesOrderID,
    ProductID,
    OrderQty
FROM Sales.SalesOrderDetail
WHERE OrderQty <= 0;

-- Result: 0 records found.
-- PASS: No order details with invalid OrderQty values were identified.

-- QA-09
-- Objective: Identify duplicate ProductNumber values

SELECT
    ProductNumber,
    COUNT(*) AS ProductCount
FROM Production.Product
GROUP BY ProductNumber
HAVING COUNT(*) > 1;

-- Result: 0 records found.
-- PASS: No duplicate ProductNumber values were identified.

-- QA-10
-- Objective: Identify sales orders with missing OrderDate values

SELECT
    SalesOrderID,
    OrderDate
FROM Sales.SalesOrderHeader
WHERE OrderDate IS NULL;


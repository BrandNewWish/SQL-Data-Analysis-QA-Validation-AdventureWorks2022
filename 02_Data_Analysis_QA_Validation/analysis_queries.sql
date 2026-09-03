SELECT 
	st.Name AS Territory, 
	COUNT(soh.SalesOrderID) AS OrderCount
FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] AS soh
INNER JOIN Sales.SalesTerritory AS st ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY OrderCount DESC;


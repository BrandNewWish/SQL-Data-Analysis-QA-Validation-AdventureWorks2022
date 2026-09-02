SELECT ProductModelID, COUNT(*) AS ProductCount
  FROM [AdventureWorks2022].[Production].[Product]
  GROUP BY ProductModelID
  HAVING COUNT(*) = 1

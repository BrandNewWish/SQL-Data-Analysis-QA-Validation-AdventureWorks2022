SELECT ProductID, Name, Size, Color
  FROM [AdventureWorks2022].[Production].[Product]
  WHERE Size IS NOT NULL OR Color IS NOT NULL

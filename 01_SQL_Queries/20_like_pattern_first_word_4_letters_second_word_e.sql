SELECT TOP (1000) [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,[Color]
      ,[ListPrice]
  FROM [AdventureWorks2022].[Production].[Product]
  WHERE Name like 'F___ E%';

SELECT MaritalStatus, COUNT(*) AS Peopple_Count
  FROM [AdventureWorks2022].[HumanResources].[Employee]
  GROUP BY MaritalStatus

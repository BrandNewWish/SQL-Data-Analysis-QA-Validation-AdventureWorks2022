SELECT 
ProductID as "Product",
COUNT(*) AS "Occurences"
  FROM [AdventureWorks2022].[Production].[TransactionHistory]
  GROUP BY ProductID
  HAVING COUNT(*) > 20

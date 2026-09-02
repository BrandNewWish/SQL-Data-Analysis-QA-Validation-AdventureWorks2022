SELECT COUNT(*) AS 'RowCount', SalesOrderID
  FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]
GROUP BY SalesOrderID
HAVING COUNT(*) > 3

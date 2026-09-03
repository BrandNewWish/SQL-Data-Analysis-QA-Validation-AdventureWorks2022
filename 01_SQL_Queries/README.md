SQL Query Practice

Exercise 1.
In the TransactionHistory table, count products based on ProductID with more than 20 occurrences.

Exercise 2.
Write a query with WHERE that displays all employees in HumanResources.Employee whose job title is Design Engineer. Display BusinessEntityID, JobTitle, and LoginID for each row.

Exercise 3.
From the [HumanResources].[EmployeePayHistory] table, display all rows where the rate is 8.62 or 25.00.

Exercise 4.
Write a query that displays ProductID and Name from the Production.Product table where the name starts with 'chain'.

Exercise 5.
Write a query the same as the previous one, but searching for the phrase containing 'helmet' in the name.

Exercise 6.
From the Persons table, find unique last names and sort them alphabetically from A to Z.

Exercise 7.
In the Persons table, display all people whose last name starts with 'S'.

Exercise 8.
In the Persons table, display all people whose last name starts with 'S' and has 5 letters.

Exercise 9.
In the Persons table, display all people whose last name starts with 'S' and ends with 'A'.

Exercise 10.
In the Product table, find all products that do not have an assigned color.

Exercise 11.
In the Product table, find all products listing names, sizes, and colors that do not have NULL values for the listed product attributes (size and color).

Exercise 12.
Write a query that returns from Sales.SalesOrderDetail a count of rows based on SalesOrderID. Include only results greater than 3.

Exercise 13.
Write a query that groups and counts products by ProductModelID and displays only those with a count of 1.

Exercise 14.
Write a query on the tables Person.Person, Sales.Customer, and Sales.SalesOrderHeader to return a list of customers with the number of orders placed.

Exercise 15.
In the Employee table, count how many people there are for each marital status.

Exercise 16.
Find a list of people - with their first and last names - who are married - include the marital status column. (Person + Employee)

Exercise 17.
Write a join connecting the tables Sales.SalesOrderHeader and Sales.SalesPerson. Display SalesOrderID, SalesQuota, Bonus.

Exercise 18.
Write a join connecting Sales.SalesPerson, Person.Person, [Sales].[SalesTerritory], with SalesOrderID, SalesQuota, Bonus, FirstName, MiddleName, LastName, [Name], showing only rows where the territory name is 'Southeast'.

Exercise 19.
Write a join with customer data, product name, and region from Sales.Customer, Person.Person, Sales.SalesOrderHeader, Sales.SalesOrderDetail, [Sales].[SalesTerritory], Production.Product for the Canada region and products with 'Helmet' in the name.

Exercise 20.
Write a query that finds in Production.Product a row where the first word of the name starts with 'F' and has 4 letters and the second word starts with 'E'.

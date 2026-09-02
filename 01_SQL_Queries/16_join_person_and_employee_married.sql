SELECT
    p.FirstName,
    p.LastName,
    e.MaritalStatus
FROM HumanResources.Employee AS e
JOIN Person.Person AS p
    ON e.BusinessEntityID = p.BusinessEntityID
WHERE e.MaritalStatus = 'M';


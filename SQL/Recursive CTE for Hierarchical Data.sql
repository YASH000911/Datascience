
------------ Recursive CTE for Hierarchical Data---------

WITH RECURSIVE OrgHierarchy AS (
    SELECT EmployeeID, ManagerID, EmployeeName, 1 AS Level
    FROM Employees
    WHERE ManagerID IS NULL
    UNION ALL
    SELECT e.EmployeeID, e.ManagerID, e.EmployeeName, oh.Level + 1
    FROM Employees e
    INNER JOIN OrgHierarchy oh ON e.ManagerID = oh.EmployeeID
)
SELECT * 
FROM OrgHierarchy
ORDER BY Level, EmployeeName;

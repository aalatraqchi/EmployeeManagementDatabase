-- Finding employees with their department names
SELECT E.EmployeeID, E.FirstName, E.LastName, D.DepartmentName, E.JobTitle
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID;

-- Highest salary of each department
SELECT E.DepartmentID, D.DepartmentName, MAX(E.Salary) AS MaxSalary
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
GROUP BY E.DepartmentID;

-- Employees who got promoted in the last 3 years
SELECT E.FirstName, E.LastName, J.NewJobTitle, J.PromotionDate
FROM JobHistory J
JOIN Employees E ON J.EmployeeID = E.EmployeeID
WHERE J.PromotionDate >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR)
ORDER BY J.PromotionDate;

-- Display employees with the highest bonus with their positions/departments
SELECT E.FirstName, E.LastName, E.JobTitle, D.DepartmentName, S.Bonus
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
JOIN Salaries S ON E.EmployeeID = S.EmployeeID
ORDER BY S.Bonus DESC;

-- Find employees with multiple promotions
SELECT E.EmployeeID, E.FirstName, E.LastName, COUNT(JH.EmployeeID) AS PromoCount
FROM JobHistory JH
JOIN Employees E ON JH.EmployeeID = E.EmployeeID
GROUP BY E.EmployeeID, E.FirstName, E.LastName
HAVING COUNT(JH.EmployeeID) > 1
ORDER BY PromoCount DESC;
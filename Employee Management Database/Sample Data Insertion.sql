INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID) 
VALUES 
(1, 'Human Resources', 101),
(2, 'IT', 102),
(3, 'Finance', 103),
(4, 'Marketing', 104),
(5, 'Operations', 105);

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, JobTitle, HireDate, Salary)
VALUES
(101, 'Alice', 'Johnson', 1, 'HR Manager', '2015-06-10', 75000),
(102, 'Bob', 'Smith', 2, 'Software Engineer', '2019-03-15', 85000),
(103, 'Charlie', 'Davis', 3, 'Financial Analyst', '2020-01-20', 70000),
(104, 'Diana', 'Miller', 4, 'Marketing Manager', '2018-09-05', 78000),
(105, 'Ethan', 'Brown', 5, 'Operations Supervisor', '2017-07-23', 72000),
(106, 'Fiona', 'White', 1, 'HR Specialist', '2021-02-14', 65000),
(107, 'George', 'Wilson', 2, 'IT Support', '2022-06-18', 60000),
(108, 'Hannah', 'Moore', 3, 'Accountant', '2021-10-11', 68000),
(109, 'Ian', 'Taylor', 4, 'SEO Analyst', '2019-12-20', 67000),
(110, 'Julia', 'Anderson', 5, 'Logistics Coordinator', '2020-05-30', 64000),
(111, 'Kevin', 'Martinez', 1, 'Recruiter', '2021-07-15', 62000),
(112, 'Laura', 'Clark', 2, 'Data Analyst', '2018-11-28', 90000),
(113, 'Michael', 'Harris', 3, 'Finance Manager', '2017-04-10', 88000),
(114, 'Nina', 'Lopez', 4, 'Content Strategist', '2020-06-25', 71000),
(115, 'Oliver', 'Scott', 5, 'Supply Chain Analyst', '2019-08-17', 73000),
(116, 'Paula', 'Adams', 1, 'HR Assistant', '2022-03-05', 58000),
(117, 'Quentin', 'Garcia', 2, 'Database Administrator', '2016-09-12', 95000),
(118, 'Rachel', 'Thomas', 3, 'Auditor', '2021-11-30', 70000),
(119, 'Samuel', 'Baker', 4, 'Marketing Associate', '2019-01-22', 69000),
(120, 'Tina', 'Roberts', 5, 'Operations Analyst', '2018-07-08', 72000);

INSERT INTO Salaries (EmployeeID, BaseSalary, Bonus) 
VALUES
(101, 75000, 5000),
(102, 85000, 7000),
(103, 70000, 4000),
(104, 78000, 6000),
(105, 72000, 4500),
(106, 65000, 3000),
(107, 60000, 2500),
(108, 68000, 3500),
(109, 67000, 3400),
(110, 64000, 3200),
(111, 62000, 3100),
(112, 90000, 8000),
(113, 88000, 7500),
(114, 71000, 4000),
(115, 73000, 4200),
(116, 58000, 2800),
(117, 95000, 9000),
(118, 70000, 5000),
(119, 69000, 3900),
(120, 72000, 4100);

INSERT INTO JobHistory (EmployeeID, PreviousJobTitle, NewJobTitle, PromotionDate) 
VALUES
(101, 'HR Specialist', 'HR Manager', '2018-06-10'),
(102, 'Junior Developer', 'Software Engineer', '2020-03-15'),
(103, 'Junior Accountant', 'Financial Analyst', '2021-01-20'),
(104, 'Marketing Associate', 'Marketing Manager', '2019-09-05'),
(105, 'Operations Analyst', 'Operations Supervisor', '2018-07-23'),
(106, 'HR Assistant', 'HR Specialist', '2023-02-14'),
(107, 'IT Support Intern', 'IT Support', '2023-06-18'),
(108, 'Accounting Assistant', 'Accountant', '2022-10-11'),
(109, 'SEO Intern', 'SEO Analyst', '2021-12-20'),
(110, 'Warehouse Coordinator', 'Logistics Coordinator', '2021-05-30'),
(111, 'HR Intern', 'Recruiter', '2022-07-15'),
(112, 'Junior Analyst', 'Data Analyst', '2019-11-28'),
(113, 'Finance Associate', 'Finance Manager', '2018-04-10'),
(114, 'Marketing Trainee', 'Content Strategist', '2021-06-25'),
(115, 'Supply Chain Assistant', 'Supply Chain Analyst', '2020-08-17'),
(116, 'HR Intern', 'HR Assistant', '2023-03-05'),
(117, 'Database Engineer', 'Database Administrator', '2018-09-12'),
(118, 'Audit Assistant', 'Auditor', '2022-11-30'),
(119, 'Marketing Intern', 'Marketing Associate', '2020-01-22'),
(120, 'Operations Intern', 'Operations Analyst', '2019-07-08');
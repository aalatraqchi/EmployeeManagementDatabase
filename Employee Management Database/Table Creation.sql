CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DepartmentID INT,
JobTitle VARCHAR(100),
HireDate DATE,
Salary DECIMAL(10,2),
FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerID INT
);

CREATE TABLE Salaries (
    EmployeeID INT PRIMARY KEY,
    BaseSalary DECIMAL(10,2),
    Bonus DECIMAL(10,2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE JobHistory (
    HistoryID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    PreviousJobTitle VARCHAR(100),
    NewJobTitle VARCHAR(100),
    PromotionDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
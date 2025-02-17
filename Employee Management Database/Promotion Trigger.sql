-- Create a trigger to update salary of employee who receives a promotion
DELIMITER //

CREATE TRIGGER UpdateSalaryOnPromotion
AFTER INSERT ON JobHistory
FOR EACH ROW
BEGIN
    -- Declare a variable to store the old salary
    DECLARE currentSalary DECIMAL(10,2);

    -- Get the employee's current salary
    SELECT BaseSalary INTO currentSalary
    FROM Salaries
    WHERE EmployeeID = NEW.EmployeeID;

    -- Update the salary with a 10% increase
    UPDATE Salaries
    SET BaseSalary = currentSalary * 1.10
    WHERE EmployeeID = NEW.EmployeeID;
END;

//

DELIMITER ;

-- Check salaries before promotion
SELECT * FROM SALARIES WHERE EmployeeID IN (101, 102, 103);

INSERT INTO JobHistory (EmployeeID, PreviousJobTitle, NewJobTitle, PromotionDate)
VALUES (101, 'HR Manager', 'Senior HR Manager', '2024-02-17'),
(102, 'Software Engineer', 'Senior Software Engineer', '2024-02-19'),
(103, 'Financial Analyst', 'Finance Manager', '2024-02-13');

SELECT * FROM SALARIES WHERE EmployeeID IN (101, 102, 103);
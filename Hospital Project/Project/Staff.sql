create database Staff;
use Staff; 
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Role VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Staff VALUES (1, 'Emily', 'Clark', 'Nurse', 1);
INSERT INTO Staff VALUES (2, 'David', 'Walker', 'Technician', 2);
INSERT INTO Staff VALUES (3, 'Nancy', 'Adams', 'Therapist', 3);
INSERT INTO Staff VALUES (4, 'Michael', 'Scott', 'Receptionist', 4);
INSERT INTO Staff VALUES (5, 'Sarah', 'Miller', 'Administrator', 5);

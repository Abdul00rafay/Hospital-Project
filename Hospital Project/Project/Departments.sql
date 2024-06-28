create database Departments;
use Departments;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Location VARCHAR(100)
);

INSERT INTO Departments VALUES (1, 'Cardiology', 'Building A');
INSERT INTO Departments VALUES (2, 'Neurology', 'Building B');
INSERT INTO Departments VALUES (3, 'Orthopedics', 'Building C');
INSERT INTO Departments VALUES (4, 'Pediatrics', 'Building D');
INSERT INTO Departments VALUES (5, 'Dermatology', 'Building E');

create database patients;
use patients;
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Address VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

INSERT INTO Patients VALUES (1, 'John', 'Doe', '1980-01-01', 'Male', '123 Main St', '555-1234');
INSERT INTO Patients VALUES (2, 'Jane', 'Smith', '1990-02-02', 'Female', '456 Elm St', '555-5678');
INSERT INTO Patients VALUES (3, 'Jim', 'Brown', '1975-03-03', 'Male', '789 Oak St', '555-9101');
INSERT INTO Patients VALUES (4, 'Jake', 'White', '1985-04-04', 'Male', '321 Pine St', '555-1213');
INSERT INTO Patients VALUES (5, 'Jill', 'Green', '1995-05-05', 'Female', '654 Maple St', '555-1415');

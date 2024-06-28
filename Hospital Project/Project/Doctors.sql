create database doctors;
use doctors;
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialty VARCHAR(50),
    PhoneNumber VARCHAR(15)
);

INSERT INTO Doctors VALUES (1, 'Alice', 'Williams', 'Cardiology', '555-2121');
INSERT INTO Doctors VALUES (2, 'Bob', 'Johnson', 'Neurology', '555-2323');
INSERT INTO Doctors VALUES (3, 'Charlie', 'Lee', 'Orthopedics', '555-2525');
INSERT INTO Doctors VALUES (4, 'Diana', 'Harris', 'Pediatrics', '555-2727');
INSERT INTO Doctors VALUES (5, 'Eve', 'Martinez', 'Dermatology', '555-2929');

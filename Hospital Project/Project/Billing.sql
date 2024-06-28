create database Billing;
use Billing;
CREATE TABLE Billing (
    BillID INT PRIMARY KEY,
    PatientID INT,
    Amount DECIMAL(10, 2),
    Date DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

INSERT INTO Billing VALUES (1, 1, 200.00, '2023-06-10');
INSERT INTO Billing VALUES (2, 2, 150.00, '2023-06-11');
INSERT INTO Billing VALUES (3, 3, 300.00, '2023-06-12');
INSERT INTO Billing VALUES (4, 4, 100.00, '2023-06-13');
INSERT INTO Billing VALUES (5, 5, 250.00, '2023-06-14');

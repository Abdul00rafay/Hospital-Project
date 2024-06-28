create database hospitalad;
use hospitalad;
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

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Reason VARCHAR(100),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

INSERT INTO Appointments VALUES (1, 1, 1, '2023-06-01', 'Regular Checkup');
INSERT INTO Appointments VALUES (2, 2, 2, '2023-06-02', 'Headache');
INSERT INTO Appointments VALUES (3, 3, 3, '2023-06-03', 'Knee Pain');
INSERT INTO Appointments VALUES (4, 4, 4, '2023-06-04', 'Flu Symptoms');
INSERT INTO Appointments VALUES (5, 5, 5, '2023-06-05', 'Skin Rash');

CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    Name VARCHAR(50),
    Dosage VARCHAR(50),
    SideEffects VARCHAR(100)
);

INSERT INTO Medications VALUES (1, 'Aspirin', '500mg', 'Nausea');
INSERT INTO Medications VALUES (2, 'Ibuprofen', '200mg', 'Dizziness');
INSERT INTO Medications VALUES (3, 'Amoxicillin', '250mg', 'Rash');
INSERT INTO Medications VALUES (4, 'Metformin', '1000mg', 'Diarrhea');
INSERT INTO Medications VALUES (5, 'Atorvastatin', '10mg', 'Muscle Pain');

CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    AppointmentID INT,
    MedicationID INT,
    Dosage VARCHAR(50),
    Instructions VARCHAR(100),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

INSERT INTO Prescriptions VALUES (1, 1, 1, '500mg', 'Take one tablet daily');
INSERT INTO Prescriptions VALUES (2, 2, 2, '200mg', 'Take two tablets daily');
INSERT INTO Prescriptions VALUES (3, 3, 3, '250mg', 'Take one capsule every 8 hours');
INSERT INTO Prescriptions VALUES (4, 4, 4, '1000mg', 'Take one tablet twice a day');
INSERT INTO Prescriptions VALUES (5, 5, 5, '10mg', 'Take one tablet at bedtime');

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

CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    RoomNumber VARCHAR(10),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Rooms VALUES (1, '101', 1);
INSERT INTO Rooms VALUES (2, '102', 2);
INSERT INTO Rooms VALUES (3, '201', 3);
INSERT INTO Rooms VALUES (4, '202', 4);
INSERT INTO Rooms VALUES (5, '301', 5);

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

CREATE TABLE Surgeries (
    SurgeryID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Date DATE,
    Type VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

INSERT INTO Surgeries VALUES (1, 1, 1, '2023-06-15', 'Heart Bypass');
INSERT INTO Surgeries VALUES (2, 2, 2, '2023-06-16', 'Brain Surgery');
INSERT INTO Surgeries VALUES (3, 3, 3, '2023-06-17', 'Knee Replacement');
INSERT INTO Surgeries VALUES (4, 4, 4, '2023-06-18', 'Appendectomy');
INSERT INTO Surgeries VALUES (5, 5, 5, '2023-06-19', 'Skin Graft');

SELECT P.FirstName AS PatientFirstName, P.LastName AS PatientLastName, 
       D.FirstName AS DoctorFirstName, D.LastName AS DoctorLastName, 
       A.AppointmentDate, A.Reason
FROM Appointments A
JOIN Patients P ON A.PatientID = P.PatientID
JOIN Doctors D ON A.DoctorID = D.DoctorID;

SELECT P.FirstName AS PatientFirstName, P.LastName AS PatientLastName, 
       M.Name AS MedicationName, PR.Dosage, PR.Instructions
FROM Prescriptions PR
JOIN Appointments A ON PR.AppointmentID = A.AppointmentID
JOIN Patients P ON A.PatientID = P.PatientID
JOIN Medications M ON PR.MedicationID = M.MedicationID;

SELECT S.FirstName, S.LastName, S.Role, D.Name AS DepartmentName, D.Location
FROM Staff S
JOIN Departments D ON S.DepartmentID = D.DepartmentID;

SELECT B.BillID, P.FirstName, P.LastName, B.Amount, B.Date
FROM Billing B
JOIN Patients P ON B.PatientID = P.PatientID;

SELECT S.SurgeryID, P.FirstName AS PatientFirstName, P.LastName AS PatientLastName, 
       D.FirstName AS DoctorFirstName, D.LastName AS DoctorLastName, S.Date, S.Type
FROM Surgeries S
JOIN Patients P ON S.PatientID = P.PatientID
JOIN Doctors D ON S.DoctorID = D.DoctorID;










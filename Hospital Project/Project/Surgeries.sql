create database Surgeries;
use Surgeries;
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

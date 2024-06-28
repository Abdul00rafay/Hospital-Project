create database appointments;
use appointments;
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Reason VARCHAR(100),
    
);

INSERT INTO Appointments VALUES (1, 1, 1, '2023-06-01', 'Regular Checkup');
INSERT INTO Appointments VALUES (2, 2, 2, '2023-06-02', 'Headache');
INSERT INTO Appointments VALUES (3, 3, 3, '2023-06-03', 'Knee Pain');
INSERT INTO Appointments VALUES (4, 4, 4, '2023-06-04', 'Flu Symptoms');
INSERT INTO Appointments VALUES (5, 5, 5, '2023-06-05', 'Skin Rash');

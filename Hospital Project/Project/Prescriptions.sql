create database Prescriptions;
use Prescriptions;
CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    AppointmentID INT,
    MedicationID INT,
    Dosage VARCHAR(50),
    Instructions VARCHAR(100)
    
);

INSERT INTO Prescriptions VALUES (1, 1, 1, '500mg', 'Take one tablet daily');
INSERT INTO Prescriptions VALUES (2, 2, 2, '200mg', 'Take two tablets daily');
INSERT INTO Prescriptions VALUES (3, 3, 3, '250mg', 'Take one capsule every 8 hours');
INSERT INTO Prescriptions VALUES (4, 4, 4, '1000mg', 'Take one tablet twice a day');
INSERT INTO Prescriptions VALUES (5, 5, 5, '10mg', 'Take one tablet at bedtime');


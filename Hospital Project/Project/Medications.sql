create database medictaions;
use medictaions;
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

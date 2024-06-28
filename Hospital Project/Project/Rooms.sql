create database Rooms;
use Rooms;

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

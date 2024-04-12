-- Create table for Doctor
CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

-- Create table for Patient
CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Address VARCHAR(255),
    Phone VARCHAR(20),
    DoctorID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

-- Create table for NewbornBaby
CREATE TABLE NewbornBaby (
    BabyID INT PRIMARY KEY,
    MotherID INT,
    Name VARCHAR(100),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Weight DECIMAL(5,2),
    FOREIGN KEY (MotherID) REFERENCES Patient(PatientID)
);

-- Sample data for Doctor
INSERT INTO Doctor (DoctorID, Name, Phone, Email) 
VALUES 
(1, 'Dr. Smith', '123-456-7890', 'dr.smith@example.com'),
(2, 'Dr. Johnson', '987-654-3210', 'dr.johnson@example.com');

-- Sample data for Patient
INSERT INTO Patient (PatientID, Name, DateOfBirth, Gender, Address, Phone, DoctorID) 
VALUES 
(1, 'John Doe', '1980-01-15', 'Male', '123 Main St', '555-1234', 1),
(2, 'Jane Smith', '1990-05-20', 'Female', '456 Elm St', '555-5678', 2);

-- Sample data for NewbornBaby
INSERT INTO NewbornBaby (BabyID, MotherID, Name, Gender, DateOfBirth, Weight) 
VALUES 
(1, 2, 'Emma Johnson', 'Female', '2024-04-05', 3.2),
(2, 2, 'Liam Johnson', 'Male', '2024-04-07', 3.5);

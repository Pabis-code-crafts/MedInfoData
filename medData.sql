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
(2, 'Dr. Johnson', '987-654-3210', 'dr.johnson@example.com')
(3, 'Dr. Anderson', '555-9876', 'dr.anderson@example.com'),
(4, 'Dr. Garcia', '555-5432', 'dr.garcia@example.com'),
(5, 'Dr. Patel', '555-2468', 'dr.patel@example.com'),
(6, 'Dr. Kim', '555-1357', 'dr.kim@example.com'),
(7, 'Dr. Martinez', '555-8020', 'dr.martinez@example.com'),
(8, 'Dr. Murphy', '555-3690', 'dr.murphy@example.com'),
(9, 'Dr. Wright', '555-9753', 'dr.wright@example.com'),
(10, 'Dr. Lopez', '555-6420', 'dr.lopez@example.com');

-- Sample data for Patient
INSERT INTO Patient (PatientID, Name, DateOfBirth, Gender, Address, Phone, DoctorID) 
VALUES 
(1, 'John Doe', '1980-01-15', 'Male', '123 Main St', '555-1234', 1),
(2, 'Jane Smith', '1990-05-20', 'Female', '456 Elm St', '555-5678', 2)
(3, 'Emily Johnson', '1985-08-20', 'Female', '789 Oak St', '555-8888', 3),
(4, 'Ethan Smith', '1975-03-10', 'Male', '456 Pine St', '555-2222', 4),
(5, 'Isabella Martinez', '1992-11-05', 'Female', '321 Cedar St', '555-7777', 5),
(6, 'Mia Murphy', '2000-06-15', 'Female', '852 Maple St', '555-3333', 6),
(7, 'Alexander Wright', '1982-09-30', 'Male', '963 Elm St', '555-9999', 7),
(8, 'James Lopez', '1998-02-25', 'Male', '741 Birch St', '555-4444', 8),
(9, 'Sophia Kim', '1978-05-18', 'Female', '159 Walnut St', '555-1111', 9),
(10, 'Evelyn Garcia', '1989-12-12', 'Female', '369 Cedar St', '555-6666', 10);

-- Sample data for NewbornBaby
INSERT INTO NewbornBaby (BabyID, MotherID, Name, Gender, DateOfBirth, Weight) 
VALUES 
(1, 2, 'Emma Johnson', 'Female', '2024-04-05', 3.2),
(2, 2, 'Liam Johnson', 'Male', '2024-04-07', 3.5),
(3, 2, 'Olivia Johnson', 'Female', '2024-04-02', 3.1),
(4, 2, 'Noah Johnson', 'Male', '2024-04-04', 3.4),
(5, 2, 'Ava Johnson', 'Female', '2024-04-06', 3.3),
(6, 1, 'William Smith', 'Male', '2024-04-09', 3.6),
(7, 1, 'Sophia Smith', 'Female', '2024-04-11', 3.2),
(8, 3, 'Liam Johnson', 'Male', '2024-04-01', 3.2),
(9, 3, 'Olivia Johnson', 'Female', '2024-04-03', 3.4),
(10, 3, 'Noah Johnson', 'Male', '2024-04-05', 3.1),
(11, 4, 'Emma Smith', 'Female', '2024-04-07', 3.5),
(12, 4, 'Liam Smith', 'Male', '2024-04-09', 3.3),
(13, 5, 'Ava Martinez', 'Female', '2024-04-02', 3.6),
(14, 5, 'Ethan Martinez', 'Male', '2024-04-04', 3.2),
(15, 6, 'Isabella Murphy', 'Female', '2024-04-06', 3.1),
(16, 6, 'Mia Murphy', 'Female', '2024-04-08', 3.4),
(17, 7, 'Alexander Wright Jr.', 'Male', '2024-04-10', 3.3);

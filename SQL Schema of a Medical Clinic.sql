-- SQL Schema of a Medical Clinic
-- 1. Patient Table
CREATE DATABASE IF NOT EXISTS Medical_Clinic;

-- To make sure that I'm making the changes in the right schema/databse, not another 
USE Medical_Clinic;

CREATE TABLE IF NOT EXISTS Patient (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    PatientName VARCHAR(100) NOT NULL,
    Contact VARCHAR(100) NOT NULL,
    Insurance VARCHAR(100),
    MedicalHistory TEXT
);

-- 2.Doctor Table
CREATE TABLE IF NOT EXISTS Doctor (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    DoctorName VARCHAR(100) NOT NULL,
    Specialty VARCHAR(100)
);

-- 3.Medication Table
CREATE TABLE IF NOT EXISTS Medication (
    MedicationID INT PRIMARY KEY AUTO_INCREMENT,
    MedicationName VARCHAR(100) NOT NULL,
    Dosage VARCHAR(50) NOT NULL
);

-- 4.Appointment Table
CREATE TABLE IF NOT EXISTS Appointment (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATE NOT NULL,
    AppointmentTime TIME NOT NULL,
    Reason TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID) ON DELETE CASCADE,
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID) ON DELETE SET NULL
);

-- 5.Prescription Table
CREATE TABLE IF NOT EXISTS Prescription (
    PrescriptionID INT PRIMARY KEY AUTO_INCREMENT,
    AppointmentID INT NOT NULL,
    MedicationID INT NOT NULL,
    Dosage VARCHAR(50) NOT NULL,
    Instructions TEXT,
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID) ON DELETE CASCADE,
    FOREIGN KEY (MedicationID) REFERENCES Medication(MedicationID) ON DELETE CASCADE
);
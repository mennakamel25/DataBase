CREATE DATABASE teast;
use teast;


-- جدول الغرف
CREATE TABLE Room (
  Room_ID INT PRIMARY KEY,
  Room_Department VARCHAR(100) UNIQUE, 
  Room_Availability BIT
);

-- جدول أطباء الأسنان
CREATE TABLE Dentist (
  Dentist_ID INT PRIMARY KEY,
  Dentist_Name VARCHAR(100),
  Dentist_Phone VARCHAR(20),
  Dentist_DateOfJoin DATE,
  Room_Department VARCHAR(100), 
  FOREIGN KEY (Room_Department) REFERENCES Room(Room_Department)
);

-- جدول الممرضين
CREATE TABLE Nurse (
  Nurse_ID INT PRIMARY KEY,
  Nurse_Name VARCHAR(100),
  Nurse_PhoneNo VARCHAR(20),
  Nurse_DateOfJoin DATE
);

-- جدول المرضى
CREATE TABLE Patient (
  Patient_ID INT PRIMARY KEY,
  Patient_Name VARCHAR(100),
  Patient_Gender CHAR(1),
  Patient_Age INT
);

-- جدول الموظفين الإداريين
CREATE TABLE Administrative_Staff (
  Administrative_ID INT PRIMARY KEY,
  Administrative_Name VARCHAR(100),
  Administrative_Phone VARCHAR(20)
);

-- جدول المواعيد
CREATE TABLE Appointment (
  Appointment_ID INT PRIMARY KEY,
  Dentist_ID INT,
  Patient_ID INT,
  Patient_Name VARCHAR(100),  -- اسم المريض مضاف كحقل عادي
  Room_ID INT,
  DateOfAppointment DATE,
  FOREIGN KEY (Dentist_ID) REFERENCES Dentist(Dentist_ID),
  FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
  FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
);


-- جدول التاريخ الطبي للمريض
CREATE TABLE Patient_Medical_History (
  History_ID INT PRIMARY KEY,
  Patient_ID INT,
  History_Details TEXT,
  Diagnosis_Detail TEXT,
  FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);


INSERT INTO Room (Room_ID, Room_Department, Room_Availability)
VALUES
(1, 'Orthodontics', 1), (2, 'Surgery', 1), (3, 'Pediatrics', 0), (4, 'Endodontics', 1),
(5, 'Prosthodontics', 1), (6, 'Implantology', 1), (7, 'Radiology', 0), (8, 'Oral Medicine', 1),
(9, 'General Dentistry', 1), (10, 'Hygiene', 1), (11, 'Diagnostics', 1), (12, 'Lab', 1),
(13, 'Reception', 1), (14, 'Consultation', 1), (15, 'Surgical Recovery', 1),
(16, 'X-Ray', 0), (17, 'Sterilization', 1), (18, 'Emergency', 1), (19, 'Waiting', 1),
(20, 'Periodontics', 1), (21, 'Laser Treatment', 1), (22, 'Oral Surgery', 0),
(23, 'Maxillofacial', 1), (24, 'Anesthesia', 1), (25, 'Microbiology', 1);



INSERT INTO Dentist (Dentist_ID, Dentist_Name, Dentist_Phone, Dentist_DateOfJoin, Room_Department)
VALUES
(1, 'Dr. Ahmed', '0100000001', '2021-01-10', 'Orthodontics'),
(2, 'Dr. Rana', '0100000002', '2021-02-11', 'Surgery'),
(3, 'Dr. Hossam', '0100000003', '2021-03-12', 'Pediatrics'),
(4, 'Dr. Mona', '0100000004', '2021-04-13', 'Endodontics'),
(5, 'Dr. Tamer', '0100000005', '2021-05-14', 'Prosthodontics'),
(6, 'Dr. Samar', '0100000006', '2021-06-15', 'Implantology'),
(7, 'Dr. Hany', '0100000007', '2021-07-16', 'Radiology'),
(8, 'Dr. Noha', '0100000008', '2021-08-17', 'Oral Medicine'),
(9, 'Dr. Fady', '0100000009', '2021-09-18', 'General Dentistry'),
(10, 'Dr. Asmaa', '0100000010', '2021-10-19', 'Hygiene'),
(11, 'Dr. Youssef', '0100000011', '2021-11-20', 'Diagnostics'),
(12, 'Dr. Farida', '0100000012', '2021-12-21', 'Lab'),
(13, 'Dr. Kareem', '0100000013', '2022-01-01', 'Reception'),
(14, 'Dr. Heba', '0100000014', '2022-01-05', 'Consultation'),
(15, 'Dr. Ibrahim', '0100000015', '2022-01-10', 'Surgical Recovery'),
(16, 'Dr. Dalia', '0100000016', '2022-01-15', 'X-Ray'),
(17, 'Dr. Walid', '0100000017', '2022-01-20', 'Sterilization'),
(18, 'Dr. Hagar', '0100000018', '2022-01-25', 'Emergency'),
(19, 'Dr. Ziad', '0100000019', '2022-01-30', 'Waiting'),
(20, 'Dr. Dina', '0100000020', '2022-02-04', 'Periodontics'),
(21, 'Dr. Omar', '0100000021', '2022-02-10', 'Laser Treatment'),
(22, 'Dr. Laila', '0100000022', '2022-02-15', 'Oral Surgery'),
(23, 'Dr. Adel', '0100000023', '2022-02-20', 'Maxillofacial'),
(24, 'Dr. Aya', '0100000024', '2022-02-25', 'Anesthesia'),
(25, 'Dr. Nour', '0100000025', '2022-03-01', 'Microbiology');



INSERT INTO Nurse (Nurse_ID, Nurse_Name, Nurse_PhoneNo, Nurse_DateOfJoin)
VALUES
(1, 'Nurse A', '0110000001', '2021-01-01'),
(2, 'Nurse B', '0110000002', '2021-01-02'),
(3, 'Nurse C', '0110000003', '2021-01-03'),
(4, 'Nurse D', '0110000004', '2021-01-04'),
(5, 'Nurse E', '0110000005', '2021-01-05'),
(6, 'Nurse F', '0110000006', '2021-01-06'),
(7, 'Nurse G', '0110000007', '2021-01-07'),
(8, 'Nurse H', '0110000008', '2021-01-08'),
(9, 'Nurse I', '0110000009', '2021-01-09'),
(10, 'Nurse J', '0110000010', '2021-01-10'),
(11, 'Nurse K', '0110000011', '2021-01-11'),
(12, 'Nurse L', '0110000012', '2021-01-12'),
(13, 'Nurse M', '0110000013', '2021-01-13'),
(14, 'Nurse N', '0110000014', '2021-01-14'),
(15, 'Nurse O', '0110000015', '2021-01-15'),
(16, 'Nurse P', '0110000016', '2021-01-16'),
(17, 'Nurse Q', '0110000017', '2021-01-17'),
(18, 'Nurse R', '0110000018', '2021-01-18'),
(19, 'Nurse S', '0110000019', '2021-01-19'),
(20, 'Nurse T', '0110000020', '2021-01-20'),
(21, 'Nurse U', '0110000021', '2021-01-21'),
(22, 'Nurse V', '0110000022', '2021-01-22'),
(23, 'Nurse W', '0110000023', '2021-01-23'),
(24, 'Nurse X', '0110000024', '2021-01-24'),
(25, 'Nurse Y', '0110000025', '2021-01-25');


INSERT INTO Administrative_Staff (Administrative_ID, Administrative_Name, Administrative_Phone)
VALUES
(1, 'Admin A', '0120000001'), (2, 'Admin B', '0120000002'), (3, 'Admin C', '0120000003'),
(4, 'Admin D', '0120000004'), (5, 'Admin E', '0120000005'), (6, 'Admin F', '0120000006'),
(7, 'Admin G', '0120000007'), (8, 'Admin H', '0120000008'), (9, 'Admin I', '0120000009'),
(10, 'Admin J', '0120000010'), (11, 'Admin K', '0120000011'), (12, 'Admin L', '0120000012'),
(13, 'Admin M', '0120000013'), (14, 'Admin N', '0120000014'), (15, 'Admin O', '0120000015'),
(16, 'Admin P', '0120000016'), (17, 'Admin Q', '0120000017'), (18, 'Admin R', '0120000018'),
(19, 'Admin S', '0120000019'), (20, 'Admin T', '0120000020'), (21, 'Admin U', '0120000021'),
(22, 'Admin V', '0120000022'), (23, 'Admin W', '0120000023'), (24, 'Admin X', '0120000024'),
(25, 'Admin Y', '0120000025');



INSERT INTO Patient (Patient_ID, Patient_Name, Patient_Gender, Patient_Age)
VALUES
(1, 'Ali Hassan', 'M', 25), (2, 'Sara Kamal', 'F', 30), (3, 'Omar Tarek', 'M', 19),
(4, 'Nour Khaled', 'F', 23), (5, 'Mostafa Ahmed', 'M', 35), (6, 'Lina Mahmoud', 'F', 28),
(7, 'Tarek Hany', 'M', 40), (8, 'Aya Ehab', 'F', 22), (9, 'Mahmoud Zaki', 'M', 33),
(10, 'Reem Samir', 'F', 26), (11, 'Youssef Ali', 'M', 21), (12, 'Hana Wael', 'F', 29),
(13, 'Adel Fathy', 'M', 37), (14, 'Dina Emad', 'F', 24), (15, 'Amr Said', 'M', 31),
(16, 'Sally Adel', 'F', 27), (17, 'Ibrahim Magdy', 'M', 45), (18, 'Mariam Hossam', 'F', 20),
(19, 'Ziad Mostafa', 'M', 38), (20, 'Fatma Sherif', 'F', 32), (21, 'Khaled Tamer', 'M', 34),
(22, 'Yasmin Omar', 'F', 25), (23, 'Hazem Yehia', 'M', 36), (24, 'Layla Amr', 'F', 30),
(25, 'Hatem Osama', 'M', 39);

INSERT INTO Appointment (Appointment_ID, Dentist_ID, Patient_ID, Patient_Name, Room_ID, DateOfAppointment)
VALUES
(1, 1, 1, 'Ali Hassan', 1, '2025-05-01'),
(2, 2, 2, 'Sara Kamal', 2, '2025-05-02'),
(3, 3, 3, 'Omar Tarek', 3, '2025-05-03'),
(4, 4, 4, 'Nour Khaled', 4, '2025-05-04'),
(5, 5, 5, 'Mostafa Ahmed', 5, '2025-05-05'),
(6, 6, 6, 'Lina Mahmoud', 6, '2025-05-06'),
(7, 7, 7, 'Tarek Hany', 7, '2025-05-07'),
(8, 8, 8, 'Aya Ehab', 8, '2025-05-08'),
(9, 9, 9, 'Mahmoud Zaki', 9, '2025-05-09'),
(10, 10, 10, 'Reem Samir', 10, '2025-05-10'),
(11, 11, 11, 'Youssef Ali', 11, '2025-05-11'),
(12, 12, 12, 'Hana Wael', 12, '2025-05-12'),
(13, 13, 13, 'Adel Fathy', 13, '2025-05-13'),
(14, 14, 14, 'Dina Emad', 14, '2025-05-14'),
(15, 15, 15, 'Amr Said', 15, '2025-05-15'),
(16, 16, 16, 'Sally Adel', 16, '2025-05-16'),
(17, 17, 17, 'Ibrahim Magdy', 17, '2025-05-17'),
(18, 18, 18, 'Mariam Hossam', 18, '2025-05-18'),
(19, 19, 19, 'Ziad Mostafa', 19, '2025-05-19'),
(20, 20, 20, 'Fatma Sherif', 20, '2025-05-20'),
(21, 21, 21, 'Khaled Tamer', 21, '2025-05-21'),
(22, 22, 22, 'Yasmin Omar', 22, '2025-05-22'),
(23, 23, 23, 'Hazem Yehia', 23, '2025-05-23'),
(24, 24, 24, 'Layla Amr', 24, '2025-05-24'),
(25, 25, 25, 'Hatem Osama', 25, '2025-05-25');


INSERT INTO Patient_Medical_History (History_ID, Patient_ID, History_Details, Diagnosis_Detail)
VALUES
(1, 1, 'Cavity history', 'Tooth Decay'),
(2, 2, 'Orthodontic history', 'Braces'),
(3, 3, 'Bleeding gums', 'Gingivitis'),
(4, 4, 'Tooth pain', 'Cavity'),
(5, 5, 'Surgery in 2020', 'Root Canal'),
(6, 6, 'Tooth fracture', 'Crown'),
(7, 7, 'No history', 'Normal'),
(8, 8, 'Swollen gums', 'Gum infection'),
(9, 9, 'Tooth loss', 'Implant'),
(10, 10, 'Tooth sensitivity', 'Whitening'),
(11, 11, 'Jaw pain', 'TMJ'),
(12, 12, 'Plaque buildup', 'Cleaning'),
(13, 13, 'Dry mouth', 'Medication side effect'),
(14, 14, 'Mouth ulcer', 'Viral infection'),
(15, 15, 'Bad breath', 'Bacterial infection'),
(16, 16, 'Stained teeth', 'Smoking'),
(17, 17, 'Loose tooth', 'Gum disease'),
(18, 18, 'Gum recession', 'Brushing issue'),
(19, 19, 'Tooth grinding', 'Night guard'),
(20, 20, 'Overbite', 'Orthodontics'),
(21, 21, 'Wisdom teeth issue', 'Extraction'),
(22, 22, 'Broken crown', 'Replacement'),
(23, 23, 'Filling fell out', 'New filling'),
(24, 24, 'Mouth dryness', 'Hydration needed'),
(25, 25, 'Bleeding while brushing', 'Gum sensitivity');




-- first type

CREATE PROCEDURE GetAllDentists
AS
BEGIN
    SELECT * FROM Dentist;
END;
-- تنفيذ:
EXEC GetAllDentists;




--2 type
CREATE PROCEDURE GetAppointmentsByDentistID
 @DentistID INT
AS
BEGIN
    SELECT
        Appointment_ID,
        Dentist_ID,
        Patient_ID,
        DateOfAppointment
    FROM Appointment
    WHERE Dentist_ID = @DentistID;
END;

-- تنفيذ:
EXEC GetAppointmentsByDentistID 4;



--3 type

CREATE PROCEDURE GetPatientInfo
 @minID INT,
 @maxID INT
AS
BEGIN
    SELECT Patient_ID, Patient_Name, Patient_Gender, Patient_Age 
    FROM Patient
    WHERE Patient_ID BETWEEN @minID AND @maxID
    ORDER BY Patient_ID;
END;

-- تنفيذ:
EXEC GetPatientInfo 1, 11;




--4 type

CREATE PROCEDURE DentalClinicProcedure
(
    @PatientCount INT OUTPUT
)
AS
BEGIN
    SELECT Patient_ID, Patient_Name FROM Patient;
    SELECT @PatientCount = COUNT(*) FROM Patient;
END;

-- تنفيذ:
DECLARE @Count INT;
EXEC DentalClinicProcedure @PatientCount = @Count OUTPUT;
SELECT @Count AS 'Number of Patients';



--Cursors
DECLARE @PatientName VARCHAR(50), @PatientAge INT;

DECLARE PatientCursor CURSOR FOR
SELECT
    Patient_Name,
    Patient_Age 
FROM
    Patient;

OPEN PatientCursor;
FETCH NEXT FROM PatientCursor INTO @PatientName, @PatientAge;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Patient Name: ' + @PatientName + ', Age: ' + CAST(@PatientAge AS VARCHAR);
    FETCH NEXT FROM PatientCursor INTO @PatientName, @PatientAge;
END;

CLOSE PatientCursor;
DEALLOCATE PatientCursor;


--Triggers

CREATE TABLE DentalClinicAudits (
    Audit_ID INT IDENTITY(1,1) PRIMARY KEY,
    Patient_ID INT NOT NULL, 
    Patient_Name VARCHAR(100) NOT NULL, 
    Patient_Gender CHAR(1) NOT NULL, 
    Patient_Age INT NOT NULL, 
    Operation_Type VARCHAR(3) NOT NULL, 
    CHECK (Operation_Type IN ('INS', 'DEL', 'UPD'))  -- إضافة 'UPD' إلى الـ CHECK constraint
);


DROP TRIGGER IF EXISTS trg_patient_audit;
GO



CREATE TRIGGER trg_patient_audit
ON Patient
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO DentalClinicAudits (Patient_ID, Patient_Name, Patient_Gender, Patient_Age, Operation_Type)
    SELECT i.Patient_ID, i.Patient_Name, i.Patient_Gender, i.Patient_Age, 'INS'
    FROM inserted i
    LEFT JOIN deleted d ON i.Patient_ID = d.Patient_ID
    WHERE d.Patient_ID IS NULL;
    
    INSERT INTO DentalClinicAudits (Patient_ID, Patient_Name, Patient_Gender, Patient_Age, Operation_Type)
    SELECT i.Patient_ID, i.Patient_Name, i.Patient_Gender, i.Patient_Age, 'UPD'
    FROM inserted i
    JOIN deleted d ON i.Patient_ID = d.Patient_ID;
END;
GO


INSERT INTO Patient (Patient_ID, Patient_Name, Patient_Gender, Patient_Age)
VALUES 
(30, 'Samuel Jackson', 'M', 32),
(33, 'Sara Kamal', 'F', 40);

UPDATE Patient
SET Patient_Name = 'Ahmed Ibrahim', Patient_Age = 33
WHERE Patient_ID = 30;



-- 5. التحقق من سجلات المراجعة بعد التحديث
SELECT * FROM DentalClinicAudits;

--- User Defined Functions
DROP FUNCTION IF EXISTS dbo.CalculateDentalCost;

CREATE FUNCTION dbo.CalculateDentalCost
(
    @Patient_ID INT,
    @Patient_Name VARCHAR(100),
    @TreatmentType NVARCHAR(50),
    @Session INT
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @CostPerSession DECIMAL(10, 2) = 0.00;
    DECLARE @VerifiedPatientName VARCHAR(100);
    
    -- التحقق من وجود المريض (بدون حساسية لحالة الأحرف)
    SELECT @VerifiedPatientName = Patient_Name 
    FROM Appointment 
    WHERE Patient_ID = @Patient_ID
    AND LOWER(TRIM(Patient_Name)) = LOWER(TRIM(@Patient_Name));
    
    IF @VerifiedPatientName IS NULL
    BEGIN
        RETURN NULL;
    END;

    -- جعل نوع العلاج غير حساس لحالة الأحرف
    DECLARE @CleanTreatmentType NVARCHAR(50) = UPPER(LTRIM(RTRIM(@TreatmentType)));
    
    IF @CleanTreatmentType = 'CLEANING'
        SET @CostPerSession = 400.00;
    ELSE IF @CleanTreatmentType = 'NERVE FILLER'
        SET @CostPerSession = 800.00;
    ELSE IF @CleanTreatmentType = 'FIXED'
        SET @CostPerSession = 3800.00;
    ELSE
        RETURN NULL;

    RETURN @CostPerSession * @Session;
END;
GO
  SELECT dbo.CalculateDentalCost(1, 'Ali Hassan', 'CLEANING', 3) AS Total_Cost;

 ---Indexing
CREATE INDEX idx_Dentist
ON Dentist (Dentist_ID, Dentist_Phone, Dentist_DateOfJoin);

CREATE INDEX idx_Administrative_Staff
ON Administrative_Staff (Administrative_ID, Administrative_Name, Administrative_Phone);

CREATE INDEX idx_Appointment
ON Appointment (Appointment_ID, Dentist_ID, Patient_ID, Room_ID, DateOfAppointment);

CREATE INDEX idx_Nurse
ON Nurse (Nurse_ID, Nurse_Name, Nurse_PhoneNo, Nurse_DateOfJoin);

CREATE INDEX idx_Patient
ON Patient (Patient_ID, Patient_Name, Patient_Gender, Patient_Age);

CREATE INDEX idx_Patient_Medical_History
ON Patient_Medical_History (History_ID, Patient_ID);

CREATE INDEX idx_Room
ON Room (Room_ID, Room_Department, Room_Availability);



 --viwe

 --EX 1
 CREATE VIEW vw_AppointmentFullDetails AS
SELECT 
    a.Appointment_ID,
    a.DateOfAppointment,
    a.Room_ID,
    p.Patient_ID,
    p.Patient_Name,
    p.Patient_Gender,
    p.Patient_Age,
    d.Dentist_ID,
    d.Dentist_Name,
    d.Dentist_Phone
FROM 
    Appointment a
INNER JOIN Patient p ON a.Patient_ID = p.Patient_ID
INNER JOIN Dentist d ON a.Dentist_ID = d.Dentist_ID;

SELECT * FROM vw_AppointmentFullDetails;

-- basic sql

-- 1. إضافة عمود Email إلى جدول المرضى
ALTER TABLE Patient
ADD Email VARCHAR(100);

-- 2. حذف عمود Email من جدول المرضى
ALTER TABLE Patient
DROP COLUMN Email;

-- 3. حذف جدول الممرضين بالكامل (احذر، يحذف كل البيانات)
DROP TABLE Nurse;

-- 4. حذف المرضى الذين أعمارهم أقل من 20 سنة
DELETE FROM Patient
WHERE Patient_Age < 20;

-- 5. تحديث بيانات مريض معين (بالـ ID)
UPDATE Patient
SET Patient_Name = 'Ahmed Ali', Patient_Age = 35
WHERE Patient_ID = 1;

-- 6. عرض كل بيانات جدول المرضى
SELECT * FROM Patient;

-- 7. عرض المرضى الذكور الذين أعمارهم أكبر من 30
SELECT * FROM Patient
WHERE Patient_Age > 30 AND Patient_Gender = 'M';

-- 8. عرض المرضى الذين أعمارهم أقل من 25 أو الإناث فقط
SELECT * FROM Patient
WHERE Patient_Age < 25 OR Patient_Gender = 'F';

-- 9. عرض المرضى الذين أعمارهم بين 25 و 40
SELECT * FROM Patient
WHERE Patient_Age BETWEEN 25 AND 40;

-- 10. عرض بيانات مرضى بأرقام ID معينة
SELECT * FROM Patient
WHERE Patient_ID IN (1, 2, 5);

-- 11. عرض المرضى الذين تبدأ أسماؤهم بحرف A
SELECT * FROM Patient
WHERE Patient_Name LIKE 'A%';



-- Create Database
CREATE DATABASE StudentManagement;

-- Use Database
USE StudentManagement;

-- Create Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

-- Insert Records
INSERT INTO Students 
(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Rahul', 'Male', 18, 'A', 85, 78, 90),
('Sneha', 'Female', 17, 'B', 75, 88, 80),
('Arjun', 'Male', 18, 'A', 92, 89, 95),
('Priya', 'Female', 17, 'C', 65, 70, 72),
('Kiran', 'Male', 19, 'B', 80, 85, 79),
('Anjali', 'Female', 18, 'A', 95, 91, 94),
('Vikram', 'Male', 17, 'C', 60, 68, 70),
('Divya', 'Female', 18, 'B', 78, 82, 88),
('Rohit', 'Male', 19, 'A', 88, 90, 84),
('Meena', 'Female', 17, 'B', 73, 76, 81);

-- 1. Show all student details
SELECT * FROM Students;

-- 2. Average score in each subject
SELECT 
    AVG(MathScore) AS Avg_Math,
    AVG(ScienceScore) AS Avg_Science,
    AVG(EnglishScore) AS Avg_English
FROM Students;

-- 3. Top performer (highest total score)
SELECT *,
       (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

-- 4. Count students per grade
SELECT Grade, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Grade;

-- 5. Average score by gender
SELECT Gender,
       AVG(MathScore) AS Avg_Math,
       AVG(ScienceScore) AS Avg_Science,
       AVG(EnglishScore) AS Avg_English
FROM Students
GROUP BY Gender;

-- 6. Students with Math > 80
SELECT *
FROM Students
WHERE MathScore > 80;

-- 7. Update a student's grade
UPDATE Students
SET Grade = 'A'
WHERE Name = 'Priya';

-- View updated record
SELECT * FROM Students WHERE Name = 'Priya';
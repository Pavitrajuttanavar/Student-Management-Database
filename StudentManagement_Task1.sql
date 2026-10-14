CREATE DATABASE StudentManagement;

USE StudentManagement;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Gender CHAR(1),
    Age INT,
    Grade VARCHAR(2),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

INSERT INTO Students
(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Aarav', 'M', 20, 'A', 92, 88, 85),
('Ananya', 'F', 19, 'A', 95, 91, 89),
('Rahul', 'M', 21, 'B', 76, 82, 78),
('Priya', 'F', 20, 'A', 89, 94, 92),
('Kiran', 'M', 19, 'B', 81, 79, 84),
('Sneha', 'F', 21, 'A', 97, 93, 96),
('Arjun', 'M', 20, 'C', 65, 72, 68),
('Pooja', 'F', 19, 'B', 84, 86, 80),
('Rohan', 'M', 22, 'C', 58, 64, 61),
('Divya', 'F', 20, 'A', 91, 87, 95);

SELECT * FROM Students; 

SELECT
    AVG(MathScore) AS AvgMath,
    AVG(ScienceScore) AS AvgScience,
    AVG(EnglishScore) AS AvgEnglish
FROM Students;

SELECT
    StudentID,
    Name,
    MathScore,
    ScienceScore,
    EnglishScore,
    (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

SELECT
    Grade,
    COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade
ORDER BY Grade;

SELECT
    Gender,
    AVG(MathScore) AS AvgMath,
    AVG(ScienceScore) AS AvgScience,
    AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;

SELECT Name, MathScore
FROM Students
WHERE MathScore > 80
ORDER BY MathScore DESC;

UPDATE Students
SET Grade = 'B'
WHERE StudentID=9 ;

SELECT StudentID, Name, Grade
FROM Students
WHERE StudentID=9 ;

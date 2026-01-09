create database if not exists attendance;
use attendance;

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Grade VARCHAR(10) NOT NULL,
    Section VARCHAR(10) NOT NULL
);

CREATE TABLE Subjects (
    SubjectID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Teacher VARCHAR(100) NOT NULL
);

CREATE TABLE Attendance (
    AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    SubjectID INT NOT NULL,
    AttendanceDate DATE NOT NULL,
    Status VARCHAR(10) NOT NULL,
    CONSTRAINT FK_Attendance_Student
        FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
        ON DELETE CASCADE,
    CONSTRAINT FK_Attendance_Subject
        FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
        ON DELETE CASCADE
);

insert into Students (Name, Grade, Section) values
('Maritoni Zara', '2','C'),
('Julianna Austria', '2', 'C'),
('Ronalyn Abuyan', '2', 'C'),
('Jerome Ventura', '2','C'),
('Thrisha Sabellina', '2', 'C'),
('Dexter Yponla', '2', 'C');

insert into Subjects ( Name, Teacher) vAluEs
('DC101', 'Maam Arlyn'),
('CC105', 'Maam Arlyn'),
('CC101', 'Sir Robin');


-- mga Controls

seLeCt * from Attendance;
SET SQL_SAFE_UPDATES = 0;
Delete from Attendance;
Delete from Students;



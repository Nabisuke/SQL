DROP TABLE student;
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);
SELECT * FROM student;
INSERT INTO student VALUES(1,'Nabil', 'Computer Science');
INSERT INTO student VALUES(2,'Sakib', 'Biology');
INSERT INTO student(student_id, name) VALUES(3,'Mamun');
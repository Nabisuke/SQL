DROP TABLE student;
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,  -- AUTO_INCREMENT adds student_id automatically
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) NOT NULL,
    minor VARCHAR(20) DEFAULT 'Undecided', -- this will show undecide if minor isn't inserted.
    PRIMARY KEY(student_id)
);
SELECT * FROM student;
INSERT INTO student (name, major) VALUES ('Nabil', 'Computer Science');
INSERT INTO student (name, major) VALUES ('Sakib', 'Biology');
INSERT INTO student (name,major) VALUES ('Mamun', 'Sociology'); 
INSERT INTO student (name, major) VALUES ('Sabbir', 'Biology');
INSERT INTO student (name, major) VALUES ('Sajib', 'Chemistry');
UPDATE student
SET major = 'CS'
WHERE major = 'Computer Science';
UPDATE student
SET major = 'Soc'
WHERE student_id = 3;
UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Biology' OR major = 'Chemistry';
UPDATE student
SET minor = 'On Hold';
UPDATE student
set name = 'No Name', major = 'No Major', minor = 'No Minor'
WHERE student_id = 1;
DELETE FROM student
WHERE student_id = 1; -- row 1 will be deleted.
DELETE FROM student
WHERE major = 'Biochemistry'; -- rows with major Biochemistry will be deleted.

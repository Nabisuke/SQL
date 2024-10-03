DROP TABLE student;
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,  -- AUTO_INCREMENT adds student_id automatically
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) NOT NULL,
    minor VARCHAR(20) DEFAULT 'Undecided', -- this will show undecide if minor isn't inserted.
    PRIMARY KEY(student_id)
);
INSERT INTO student (name, major) VALUES ('Nabil', 'Computer Science');
INSERT INTO student (name, major) VALUES ('Sakib', 'Biology');
INSERT INTO student (name,major) VALUES ('Mamun', 'Sociology'); 
INSERT INTO student (name, major) VALUES ('Sabbir', 'Biology');
INSERT INTO student (name, major) VALUES ('Sajib', 'Chemistry');
UPDATE student
SET major = 'CS'
WHERE major = 'Computer Science';
SELECT student.name, student.major
FROM student; -- prints all the names and major.
SELECT student.name, student.major
FROM student
ORDER BY name; -- This will print the names by alphabetical order.
SELECT student.name, student.major
FROM student
ORDER BY name DESC;
SELECT student.name, student.major
FROM student
ORDER BY student_id DESC;  -- This will print in descending id or numeral order.
SELECT *
FROM student
ORDER BY student_id DESC; -- Prints the whole table in descending student_id order.
-- You can use "ASC" instead of "DESC" to print in ascending order.
SELECT *
FROM student
ORDER BY major, student_id; -- orders by major, if there are duplicates then it'll order by id.
SELECT *
FROM student
ORDER BY student_id DESC -- add this if you want to print in descending order.
LIMIT 3; -- limits printing rows to 3.
SELECT *
FROM student
WHERE major = 'Biology'; -- will only print Biology majors.
SELECT *
FROM student
WHERE major <> 'Biology'; -- will print majors who aren't Biology.
SELECT *
FROM student
WHERE name IN ('Nabil','Sakib'); -- will only print rows with the name Nabil & Sakib.

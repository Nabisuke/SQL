DROP TABLE student;
CREATE TABLE student (
    student_id INT AUTO_INCREMENT, --AUTO_INCREMENT adds student_id automatically
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) NOT NULL,
    minor VARCHAR(20) DEFAULT 'Undecided', -- this will show undecide if minor isn't inserted.
    PRIMARY KEY(student_id)
);
SELECT * FROM student;
INSERT INTO student (name, major) VALUES ('Nabil', 'Computer Science');
INSERT INTO student (name, major) VALUES ('Sakib', 'Biology');
INSERT INTO student (name) VALUES ('Mamun');  --mamun won't be added as major has to be added.
INSERT INTO student (name, major) VALUES ('Sabbir', 'Humanities');
--LINK: https://popsql.com/queries/-O7xtZxX1S_sDaQR5lu3/inserting-into-table?run_id=80509961
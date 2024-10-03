DROP TABLE student;
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) NOT NULL,
    minor VARCHAR(20) DEFAULT 'Undecided', -- this will show undecide if minor isn't inserted.
    PRIMARY KEY(student_id)
);
SELECT * FROM student;
INSERT INTO student (student_id, name, major) VALUES (1, 'Nabil', 'Computer Science');
INSERT INTO student (student_id, name, major) VALUES (2, 'Sakib', 'Biology');
INSERT INTO student (student_id, name) VALUES (3, 'Mamun');  --mamun won't be added as major has to be added.
INSERT INTO student (student_id, name, major) VALUES (4, 'Sabbir', 'Humanities');
-- LINK:https://popsql.com/queries/-O7xtZxX1S_sDaQR5lu3/inserting-into-table?run_id=80509406
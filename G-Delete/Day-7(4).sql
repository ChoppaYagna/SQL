CREATE TABLE classes (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE enrollments (
    id INTEGER PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    class_id INTEGER REFERENCES classes(id)
);

INSERT INTO classes (id, name) VALUES (1, 'Math');
INSERT INTO students (id, name) VALUES (1, 'Alice');
INSERT INTO enrollments (id, student_id, class_id) VALUES (1, 1, 1);
-- Do not modify above this line. --

DELETE FROM enrollments;

CREATE TABLE bank_accounts (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name TEXT,
    balance INTEGER,
    last_transaction_date DATE
);

INSERT INTO bank_accounts (name, balance, last_transaction_date) VALUES
    ('Alice', 1000, '2023-11-30'),
    ('Bob', -100, '2023-12-31'),
    ('Charlie', 2000, '2024-01-03'),
    ('David', -500, '2024-01-04'),
    ('Eve', 1500, '2024-01-05');
-- Do not modify above this line. --

DELETE FROM bank_accounts;
DELETE FROM  classes;
DELETE FROM students;


-- Do not modify below this line. --
SELECT * FROM enrollments;
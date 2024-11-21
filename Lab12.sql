INSERT INTO assignments (course_id, title, status)
Values ('COMP1238', 'Assignment with no date', 'Not Started');

--Get all information on up to 10 assignments
SELECT * FROM assignments
LIMIT 10; 

--get number of courses
SELECT count(*) From courses;

--get the earliest duedat from assignments
SELECT min(due_date) FROM assignments;

--get information from all courses that have a name starting with "Intro"
SELECT *
FROM courses
where course_name LIKE 'Intro%';

--Get the version of sqlite being used
SELECT sqlite_version();

--make all text in '' uppercase
SELECT upper('ABCxyz')

--Get the length of text in ''
Select length('abcde');

--Calculate 7*5
SELECt 7*5

--combines multiple strings together
SELECT concat('ABC', '-', 'xyz');

--Gets current date
SELECT date();

--Gets the year of the due_date for each assignment
SELECT strftime('%Y', due_date) AS Year, *
From assignments;

--Starting from the first character get the first 4 charracters of the course id without repeating
SELECT DISTINCT SUBSTRING(course_id, 1, 4)
FROM courses;

--Lists the amount of courses that share their first 4 characters from their course id with other courses
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

--Lists all information from incomplete assignments in order of their due date
SELECT *
FROM assignments
WHERE status != 'Completed'
ORDER BY due_date;

--Lists the id, title, status and duedate of all incomplete assignments that have an id that starts with COMM and have a duedate before dec, 12, 2024
SELECT course_id, title, status, due_date
From assignments
WHERE status != 'Completed'
	AND course_id LIKE 'COMM%'
    AND due_date < '2024-12-31'
ORder by due_date;
----------------------------------------------------------------------------------
SELECT concat(course_name,' - ', semester)
FROM courses;


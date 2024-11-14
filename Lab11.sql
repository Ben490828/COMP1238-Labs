SELECT * From courses;
----------------------------------
SELECT * FROM assignments
LIMIT 10;
----------------------------------
SELECT count(*) From courses;
----------------------------------
SELECT min(due_date) FROM assignments;
----------------------------------
Select *
From courses
where course_name like 'Intro%';
----------------------------------
SELECT *
FROM assignments
WHERE status != 'Completed'
Order by due_date;
----------------------------------
Select title, due_date
FROM assignments
WHERE course_id like 'COMP1234%';
----------------------------------
SELECT min(due_date)
FROM assignments;
----------------------------------
SELECT max(due_date)
FROM assignments;
----------------------------------
SELECT title, course_id
FROM assignments
WHERE due_date like '2024-10-08%';
----------------------------------
SELECT title, due_date
FROM assignments
WHERE due_date like '2024-10%';
----------------------------------
select max(due_date)
FROM assignments
WHERE status == 'Completed'
	AND due_date < '2024-11-14';
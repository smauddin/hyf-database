USE hyf_1;
SELECT * FROM task;
SELECT count(id) FROM task;
-- question 2
SELECT date(due_date) FROM task
WHERE due_date IS null;

SELECT count(id) FROM task 
WHERE due_date IS null;
-- question 3
SELECT  task.id, task.title, status.name as 'Status' FROM task
INNER JOIN status ON task.status_id = status_id
WHERE status.id in (SELECT id FROM status WHERE name = 'done');

-- question 4

SELECT  task.id, task.title, status.name as 'Status' FROM task
INNER JOIN status ON task.status_id = status_id
WHERE status.id in (SELECT id FROM status WHERE name != 'done');

-- question 5
SELECT * FROM task
ORDER BY created DESC;

-- question 6
SELECT * FROM task
ORDER BY created DESC LIMIT 1;

-- question 7
SELECT title, due_date FROM task
WHERE description  LIKE '%database%' OR title  LIKE '%database%';

-- question 8
SELECT title, description FROM task
WHERE title LIKE '%title%' AND description LIKE '%status%';




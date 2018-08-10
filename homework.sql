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
WHERE status.name = 'Done';

-- question 4

SELECT  task.id, task.title, status.name as 'Status' FROM task
INNER JOIN status ON task.status_id = status_id
WHERE status.name != 'Done';

-- question 5
SELECT * FROM task;
-- ORDER BY created DESC;
SELECT  title, MAX (created) title FROM task;

-- question 6
SELECT * FROM task
ORDER BY created DESC LIMIT 1;

-- question 7
SELECT title, due_date FROM task
WHERE description  LIKE '%database%' OR title  LIKE '%database%';

-- question 8
SELECT task.title, status.name
FROM task
INNER JOIN status ON task.status_id = status.id;

-- question 9: Get the name of each status, along with a count of how many tasks have that status

SELECT `status`.`name`, count(task.status_id) 
FROM task INNER JOIN `status` ON task.status_id = `status`.id GROUP BY `status`.`name`;


-- question 10: Get the names of all statuses, sorted by the status with most tasks first

SELECT `status`.`name`, COUNT(task.status_id) AS 'Count' 
FROM task INNER JOIN `status` ON task.status_id = `status`.id GROUP BY `status`.`name` ORDER BY COUNT desc;






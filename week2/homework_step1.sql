USE hyf_1;
SELECT * FROM task;
desc task;
SELECT * FROM user;
SELECT * FROM status;

-- question 1: adding a new task
INSERT INTO task VALUES
(NULL, 'new task added', 'adding task for home work', '2018-08-05 12:00:00', '2018-08-05 12:00:00', '2018-10-03', 1, 15);

-- question 2: changing the title, due date, or status of a task
UPDATE task SET 
title = 'This title has been changed', due_date = '2018-08-10 10:00', status_id = 1
WHERE id =1;

-- question 3: Marking a task as completed


-- question 4: Deleting a task
DELETE FROM task
WHERE id = 36;

-- question 4: Deleting a user
DELETE FROM user
WHERE id = 16;



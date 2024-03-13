-- Query to retrieve workers whose salary is greater than the lowest salary and less than the highest salary
SELECT id, first_name, last_name, salary
FROM Worker
WHERE salary BETWEEN (
    SELECT MIN(salary) FROM Worker
) AND (
    SELECT MAX(salary) FROM Worker
);

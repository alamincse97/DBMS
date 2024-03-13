-- Inserting data for workers with first name starting with a vowel and last name ending with a vowel
INSERT INTO Worker (first_name, last_name, salary) VALUES
('sakib', 'Robi', 55000),
('rafik', 'ali', 62000),
('sumon', 'ali', 58000),
('alvi', 'ali', 67000),
('yasin', 'ali', 59000);

-- Query to retrieve workers whose first name starts with a vowel and last name ends with a vowel
SELECT id, first_name, last_name, salary
FROM Worker
WHERE LOWER(SUBSTRING(first_name, 1, 1)) IN ('a', 'e', 'i', 'o', 'u')
AND LOWER(RIGHT(last_name, 1)) IN ('a', 'e', 'i', 'o', 'u');

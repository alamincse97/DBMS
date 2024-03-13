-- Create Worker table
CREATE TABLE Worker (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert sample data into Worker table
INSERT INTO Worker (first_name, last_name, salary) VALUES
('kabir', 'hosan', 50000),
('sakib', 'hosan', 60000),
('ahsan', 'hasan', 75000),
('salauddin', 'hasan', 45000),
('Raihan', 'hasan', 80000);

-- Query to retrieve workers whose salary is greater than average salary
SELECT id, first_name, last_name, salary
FROM Worker
WHERE salary > (
    SELECT AVG(salary)
    FROM Worker
);

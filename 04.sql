-- Create Salary History table
CREATE TABLE Salary_History (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salary DECIMAL(10, 2),
    worker_id INT,
    paid_unpaid_status VARCHAR(10), -- Assuming 'paid' or 'unpaid' status
    payment_date DATE
);

-- Insert sample data into Salary History table
INSERT INTO Salary_History (salary, worker_id, paid_unpaid_status, payment_date) VALUES
(5000, 1, 'paid', '2024-01-01'),
(6000, 2, 'paid', '2024-01-05'),
(5500, 1, 'paid', '2024-02-01'),
(6200, 3, 'paid', '2024-02-05'),
(4800, 2, 'paid', '2024-03-01'),
(5800, 1, 'unpaid', '2024-03-05');

-- Query to show the total paid amount until today for each worker along with their names
SELECT w.id AS worker_id, w.first_name, w.last_name, COALESCE(SUM(sh.salary), 0) AS total_paid_amount
FROM Worker w
LEFT JOIN Salary_History sh ON w.id = sh.worker_id AND sh.paid_unpaid_status = 'paid' AND sh.payment_date <= CURDATE()
GROUP BY w.id, w.first_name, w.last_name;

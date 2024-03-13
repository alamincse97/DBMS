-- Create Menu table
CREATE TABLE Menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES Menu(id)
);

-- Insert sample data into Menu table
INSERT INTO Menu (name, parent_id) VALUES
('Home', NULL),
('Products', NULL),
('Electronics', 2),
('Clothing', 2),
('Mobile Phones', 3),
('Laptops', 3),
('T-Shirts', 4),
('Jeans', 4);

-- Query to show all menu and parent menu names using self join
SELECT m1.name AS menu_name, COALESCE(m2.name, 'Root') AS parent_menu_name
FROM Menu m1
LEFT JOIN Menu m2 ON m1.parent_id = m2.id;

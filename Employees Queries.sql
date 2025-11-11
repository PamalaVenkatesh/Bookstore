CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);
select * from Employees;
INSERT INTO Employees (name, role, salary, hire_date) VALUES
('Anil Kumar', 'Manager', 55000.00, '2022-01-15'),
('Mani Teja', 'Cashier', 25000.00, '2022-03-01'),
('Likitha Reddy', 'Sales Associate', 22000.00, '2022-05-10'),
('Ali Reza', 'Inventory Clerk', 23000.00, '2022-06-20'),
('Swathi Devi', 'Customer Support', 26000.00, '2022-09-12');
select * from Employees;

DROP TABLE employees;
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
select * from Orders;
INSERT INTO Orders (customer_id, order_date, total) VALUES
(1, '2023-07-01', 950.00),
(2, '2023-07-10', 1200.00),
(3, '2023-07-15', 700.00),
(4, '2023-07-20', 500.00),
(5, '2023-07-22', 1350.00);
select * from Orders;


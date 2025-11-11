CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    method VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
select * from payments;
INSERT INTO Payments (order_id, payment_date, amount, method) VALUES
(1, '2023-07-01', 950.00, 'UPI'),
(2, '2023-07-10', 1200.00, 'Credit Card'),
(3, '2023-07-15', 700.00, 'Cash'),
(4, '2023-07-20', 500.00, 'Debit Card'),
(5, '2023-07-22', 1350.00, 'UPI');
select * from payments;


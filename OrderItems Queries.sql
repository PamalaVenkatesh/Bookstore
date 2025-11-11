CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    price DECIMAL(7,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
select * from OrderItems;
INSERT INTO OrderItems (order_id, book_id, quantity, price) VALUES
(1, 1, 1, 450.00),
(1, 5, 1, 500.00),
(2, 3, 2, 1200.00),
(3, 7, 1, 400.00),
(4, 9, 1, 480.00),
(5, 4, 1, 700.00),
(5, 10, 1, 650.00);
select * from OrderItems;
CREATE TABLE Inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    quantity INT,
    location VARCHAR(50),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
select * from Inventory;
INSERT INTO Inventory (book_id, quantity, location) VALUES
(1, 20, 'A1'),
(2, 15, 'A2'),
(3, 10, 'B1'),
(4, 12, 'B2'),
(5, 18, 'A3'),
(6, 8, 'C1'),
(7, 10, 'C2'),
(8, 5, 'D1'),
(9, 14, 'D2'),
(10, 9, 'E1');
select * from Inventory;




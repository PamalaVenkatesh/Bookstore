CREATE TABLE Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    book_id INT,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    comment VARCHAR(255),
    review_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
select * from Reviews;
INSERT INTO Reviews (customer_id, book_id, rating, comment, review_date) VALUES
(1, 1, 5, 'Excellent book!', '2023-07-02'),
(2, 3, 4, 'Very informative.', '2023-07-11'),
(3, 7, 5, 'Loved the comics.', '2023-07-16'),
(4, 9, 4, 'Good motivation.', '2023-07-21'),
(5, 4, 5, 'Magical story!', '2023-07-23');
select * from Reviews;
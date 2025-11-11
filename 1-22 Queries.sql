# Retrieve all customer details
SELECT * FROM Customers;
# List all books priced above ₹500
SELECT title, price FROM Books WHERE price > 500;
# Display books belonging to the ‘Fiction’ genre
SELECT title, author FROM Books WHERE genre = 'Fiction';
# Find all books published after 2020
SELECT title, publish_year FROM Books WHERE publish_year > 2020;
# Show customers who joined after March 2023
SELECT name, city, join_date FROM Customers WHERE join_date > '2023-03-01';
# Display all books sorted by price (descending)
SELECT title, price FROM Books ORDER BY price DESC;
# Count total number of books
SELECT COUNT(*) AS total_books FROM Books;
# Find total stock of all books
SELECT SUM(stock) AS total_stock FROM Books;
# Get average price of all books
SELECT AVG(price) AS avg_price FROM Books;
# Display cheapest and most expensive books
SELECT title, price FROM Books
WHERE price = (SELECT MIN(price) FROM Books)
   OR price = (SELECT MAX(price) FROM Books);
# List all orders with customer names
SELECT o.order_id, c.name, o.order_date, o.total
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id;
# Show all ordered book titles with customer names
SELECT c.name AS Customer, b.title AS Book, oi.quantity
FROM OrderItems oi
JOIN Orders o ON oi.order_id = o.order_id
JOIN Books b ON oi.book_id = b.book_id
JOIN Customers c ON o.customer_id = c.customer_id;
# Show all payment details with related customer names
SELECT c.name, p.amount, p.method, p.payment_date
FROM Payments p
JOIN Orders o ON p.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id;
# List all reviews with book and customer details
SELECT c.name, b.title, r.rating, r.comment
FROM Reviews r
JOIN Books b ON r.book_id = b.book_id
JOIN Customers c ON r.customer_id = c.customer_id;
SELECT c.name, b.title, r.rating, r.comment
FROM Reviews r
JOIN Books b ON r.book_id = b.book_id
JOIN Customers c ON r.customer_id = c.customer_id;
SELECT c.name, b.title, r.rating, r.comment
FROM Reviews r
JOIN Books b ON r.book_id = b.book_id
JOIN Customers c ON r.customer_id = c.customer_id;
# Find all orders and their payment methods
SELECT o.order_id, c.name, o.total, p.method
FROM Orders o
JOIN Payments p ON o.order_id = p.order_id
JOIN Customers c ON o.customer_id = c.customer_id;
# Find customers who placed orders worth more than ₹1000
SELECT DISTINCT c.name, o.total
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE o.total > 1000;
# Count total orders placed by each customer
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;
# Calculate total sales amount per payment method
SELECT method, SUM(amount) AS total_sales
FROM Payments
GROUP BY method;
# Display books with the highest rating (rating = 5)
SELECT DISTINCT b.title, r.rating
FROM Reviews r
JOIN Books b ON r.book_id = b.book_id
WHERE r.rating = 5;
# Find number of books per genre
SELECT genre, COUNT(*) AS total_books
FROM Books
GROUP BY genre ;









   











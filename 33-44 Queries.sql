# Calculate total quantity of books ordered by each customer
SELECT c.name, SUM(oi.quantity) AS total_books_ordered
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
GROUP BY c.name;
# Find the highest-paid employee
SELECT name, role, salary
FROM Employees
WHERE salary = (SELECT MAX(salary) FROM Employees);
# Display current inventory of each book
SELECT b.title, i.quantity, i.location
FROM Inventory i
JOIN Books b ON i.book_id = b.book_id;
# Find all books published by ‘Penguin India’
SELECT b.title
FROM Books b
JOIN Publishers p ON b.author LIKE '%'
WHERE p.name = 'Penguin India';
# Show customers who bought “Harry Potter”
SELECT DISTINCT c.name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Books b ON oi.book_id = b.book_id
WHERE b.title = 'Harry Potter';
SELECT DISTINCT c.name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Books b ON oi.book_id = b.book_id
WHERE b.title = 'Harry Potter';
# Update stock after an order
UPDATE Books
SET stock = stock - 1
WHERE book_id = 4;  -- example: Harry Potter ordered
# Delete reviews older than one year
DELETE FROM Reviews
WHERE review_date < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
# Add a new category “Self Help”
INSERT INTO Categories (category_name, description)
VALUES ('Self Help', 'Books on personal growth and motivation');
select * from Categories;
# Calculate total payments made via UPI
SELECT SUM(amount) AS total_upi_payments
FROM Payments
WHERE method = 'UPI';
# Display top 3 best-selling books
SELECT b.title, SUM(oi.quantity) AS total_sold
FROM Books b
JOIN OrderItems oi ON b.book_id = oi.book_id
GROUP BY b.title
ORDER BY total_sold DESC
LIMIT 3;














# Find customers who gave a 5-star review
SELECT DISTINCT c.name
FROM Reviews r
JOIN Customers c ON r.customer_id = c.customer_id
WHERE r.rating = 5;
# Show books that have never been ordered
SELECT title
FROM Books
WHERE book_id NOT IN (SELECT DISTINCT book_id FROM OrderItems);
# Find the book that generated the highest sales revenue
SELECT b.title, SUM(oi.price * oi.quantity) AS total_revenue
FROM OrderItems oi
JOIN Books b ON oi.book_id = b.book_id
GROUP BY b.title
ORDER BY total_revenue DESC
LIMIT 1;
# Find customers who spent more than ₹2000 overall
SELECT c.name, SUM(o.total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING total_spent > 2000;
# Show authors who have written more than one book
SELECT author, COUNT(*) AS total_books
FROM Books
GROUP BY author
HAVING COUNT(*) > 1;
# Find total revenue generated per genre
SELECT b.genre, SUM(oi.price * oi.quantity) AS revenue
FROM OrderItems oi
JOIN Books b ON oi.book_id = b.book_id
GROUP BY b.genre;
# Count how many reviews each book has
SELECT b.title, COUNT(r.review_id) AS total_reviews
FROM Books b
LEFT JOIN Reviews r ON b.book_id = r.book_id
GROUP BY b.title;
# Find average rating per author
SELECT b.author, AVG(r.rating) AS avg_rating
FROM Books b
JOIN Reviews r ON b.book_id = r.book_id
GROUP BY b.author;
# List books with average rating greater than 4
SELECT b.title, AVG(r.rating) AS avg_rating
FROM Books b
JOIN Reviews r ON b.book_id = r.book_id
GROUP BY b.title
HAVING avg_rating > 4;
# Find number of orders per customer city
SELECT c.city, COUNT(o.order_id) AS total_orders
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.city;










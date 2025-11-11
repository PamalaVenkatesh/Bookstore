CREATE DATABASE Bookstore_DB;
USE Bookstore_DB;
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) not null,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50) not null,
    join_date DATE
);
select * from Customers;
INSERT INTO Customers (name, email, city, join_date) VALUES
('Venkatesh', 'venkatesh@gmail.com', 'Hyderabad', '2023-01-10'),
('Ramoji', 'ramoji@gmail.com', 'Vijayawada', '2023-02-12'),
('Vinay', 'vinay@gmail.com', 'Visakhapatnam', '2023-03-03'),
('Shiva', 'shiva@gmail.com', 'Tirupati', '2023-04-01'),
('Alekya', 'alekya@gmail.com', 'Guntur', '2023-04-10'),
('Siri', 'siri@gmail.com', 'Nellore', '2023-05-15'),
('Karthik', 'karthik@gmail.com', 'Warangal', '2023-06-05'),
('Rajesh', 'rajesh@gmail.com', 'Khammam', '2023-06-20'),
('Prashanthi', 'prashanthi@gmail.com', 'Karimnagar', '2023-07-10'),
('Jashwanth', 'jashwanth@gmail.com', 'Eluru', '2023-07-25');
select * from Customers;
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) not null,
    author VARCHAR(100) not null,
    genre VARCHAR(50) not null,
    price DECIMAL(7,2) not null,
    publish_year INT,
    stock INT
);
select * from Books;
INSERT INTO Books (title, author, genre, price, publish_year, stock) VALUES
('The White Tiger', 'Aravind Adiga', 'Fiction', 450.00, 2019, 50),
('Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 350.00, 2018, 40),
('Introduction to SQL', 'R. Elmasri', 'Technology', 600.00, 2021, 30),
('Harry Potter', 'J.K. Rowling', 'Fiction', 700.00, 2020, 25),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Non-Fiction', 500.00, 2019, 45),
('Java Made Easy', 'Herbert Schildt', 'Technology', 650.00, 2022, 20),
('Marvel Avengers', 'Stan Lee', 'Comics', 400.00, 2020, 35),
('Digital Marketing 101', 'Philip Kotler', 'Education', 550.00, 2021, 25),
('Think Like a Monk', 'Jay Shetty', 'Non-Fiction', 480.00, 2021, 40),
('Python Programming', 'Guido Van Rossum', 'Technology', 700.00, 2022, 30);
select * from Books;


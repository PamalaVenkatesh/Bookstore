CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50),
    description VARCHAR(150)
);
select * from Categories;
INSERT INTO Categories (category_name, description) VALUES
('Fiction', 'Novels and stories'),
('Non-Fiction', 'Biographies, essays'),
('Education', 'Textbooks, academic'),
('Comics', 'Graphic novels'),
('Technology', 'IT and programming books');
select * from Categories;

DROP TABLE categories;
CREATE TABLE Publishers (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    contact_email VARCHAR(100)
);
select * from Publishers;
INSERT INTO Publishers (name, country, contact_email) VALUES
('Penguin India', 'India', 'contact@penguin.in'),
('HarperCollins', 'India', 'info@harpercollins.in'),
('Bloomsbury', 'UK', 'support@bloomsbury.com'),
('Rupa Publications', 'India', 'info@rupa.co.in'),
('Hachette India', 'India', 'help@hachette.co.in');
select * from Publishers;

DROP TABLE publishers;


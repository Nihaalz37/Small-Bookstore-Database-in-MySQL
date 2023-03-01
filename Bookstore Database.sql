-- Create a new database called "bookstore"
CREATE DATABASE IF NOT EXISTS bookstore;

-- Use the "bookstore" database
USE bookstore;

-- Create a table for customers
CREATE TABLE IF NOT EXISTS customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  address VARCHAR(255) NOT NULL
);

-- Create a table for orders
CREATE TABLE IF NOT EXISTS orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  date_ordered DATETIME NOT NULL,
  total_price DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Create a table for books
CREATE TABLE IF NOT EXISTS books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  quantity INT NOT NULL
);

-- Create a table for order items
CREATE TABLE IF NOT EXISTS order_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  book_id INT NOT NULL,
  quantity INT NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Insert some sample customers
INSERT INTO customers (name, email, phone, address)
VALUES
  ('John Smith', 'john.smith@example.com', '555-1234', '123 Main St'),
  ('Jane Doe', 'jane.doe@example.com', '555-5678', '456 Elm St'),
  ('Bob Johnson', 'bob.johnson@example.com', '555-9012', '789 Oak St');

-- Insert some sample books
INSERT INTO books (title, author, price, quantity)
VALUES
  ('To Kill a Mockingbird', 'Harper Lee', 10.99, 5),
  ('The Great Gatsby', 'F. Scott Fitzgerald', 12.99, 8),
  ('1984', 'George Orwell', 9.99, 12),
  ('Pride and Prejudice', 'Jane Austen', 7.99, 3),
  ('The Catcher in the Rye', 'J.D. Salinger', 8.99, 6);

-- Insert some sample orders and order items
INSERT INTO orders (customer_id, date_ordered, total_price)
VALUES
  (1, '2022-02-28 13:00:00', 32.97),
  (2, '2022-02-28 14:00:00', 23.97),
  (3, '2022-02-28 15:00:00', 21.98);

INSERT INTO order_items (order_id, book_id, quantity)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 1),
  (2, 4, 1),
  (2, 5, 2),
  (3, 1, 2),
  (3, 4, 1);
  

-- Insert some sample authors
INSERT INTO authors (name, bio)
VALUES
  ('Stephen King', 'Stephen King is a bestselling author known for his horror, suspense, and fantasy novels.'),
  ('J.K. Rowling', 'J.K. Rowling is the author of the bestselling Harry Potter series.'),
  ('John Grisham', 'John Grisham is a bestselling author of legal thrillers.');

-- Insert some sample publishers
INSERT INTO publishers (name, address, phone)
VALUES
  ('Penguin Random House', '123 Main St, New York, NY 10001', '555-1234'),
  ('Scholastic Corporation', '456 Elm St, New York, NY 10002', '555-5678'),
  ('HarperCollins Publishers', '789 Oak St, New York, NY 10003', '555-9012');

-- Insert some sample books and their authors
INSERT INTO books (title, publisher_id, publication_date, price, quantity)
VALUES
  ('The Shining', 1, '1977-01-28', 9.99, 10),
  ('Harry Potter and the Philosopher''s Stone', 2, '1997-06-26', 12.99, 15),
  ('A Time to Kill', 3, '1989-06-25', 8.99, 5);

INSERT INTO book_authors (book_id, author_id)
VALUES
  (1, 1),
  (2, 2),
  (3, 3);
  
INSERT INTO customers (name, email, phone, address)
VALUES
  ('Nihaal Lohara', 'Nihaalh3@gmail.com', '9082832530', '18/3, Navghar Rd'),
  ('Minal Lohara-Gupta', 'minalgupta252@gmail.com', '0525620', 'My heart and mind'),
  ('Nimi Lohara', 'yet2born@soon.com', '555-9012', 'in my thought for now'); 
  

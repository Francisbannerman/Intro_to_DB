/*
This database schema has  information about books, authors, 
customers, orders, and order details
*/

CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Books (
    book_id INT AUTO INCREMENT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
)

CREATE TABLE Authors (
    author_id INT AUTO INCREMENT PRIMARY KEY,
    author_name VARCHAR(215)
)

CREATE TABLE Customers (
    customer_id INT AUTO INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215),
    customer_email VARCHAR(215),
    address TEXT
)

CREATE TABLE Orders (
    order_id INT AUTO INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)

CREATE TABLE Order_Details (
    order_details_id INT AUTO INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
)

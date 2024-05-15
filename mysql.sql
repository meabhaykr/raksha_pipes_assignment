CREATE DATABASE raksha_pipes;
USE raksha_pipes;

-- Table for storing customer information
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(20),
    email VARCHAR(100)
);
SELECT * FROM customers

-- Table for storing product information
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_type VARCHAR(50),
    product_name VARCHAR(100),
    stock INT,
    price DECIMAL(10, 2)
);
SELECT * FROM Products

-- Table for recording sales transactions
CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    discount_price DECIMAL(10,2),
    total DECIMAL(10,2),
    sale_type VARCHAR(100), -- Sale type can be invoice, order, etc.
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
SELECT * FROM sales

-- Table for recording orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
SELECT * FROM Orders

-- Table for recording payments
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    mode_of_transaction VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
SELECT * FROM Payments

-- Table for tracking profit margins
CREATE TABLE ProfitMargins (
    product_type VARCHAR(50),
    total_quantity INT,
    total_price DECIMAL(10, 2),
    total_profit DECIMAL(10, 2),
    profit_margin DECIMAL(10, 2)
);
SELECT * FROM ProfitMargins

-- Table for recording annual sales data
CREATE TABLE AnnualSales (
    Year INT NOT NULL,
    Online DECIMAL(10, 2),
    InStore DECIMAL(10, 2),
    PhoneOrder DECIMAL(10, 2),
    Wholesale DECIMAL(10, 2),
    PRIMARY KEY (Year)
);
SELECT * FROM AnnualSales

-- Table for storing customer feedback
CREATE TABLE CustomerFeedback (
    feedback_id INT PRIMARY KEY AUTO_INCREMENT,
    feedback_keyword VARCHAR(100),
    feedback_score INT
);
SELECT * FROM CustomerFeedback
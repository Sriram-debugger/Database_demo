-- Create Customers Table
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email) VALUES
(1, 'Tom', 'Cruise', 'tom.cruise@gmail.com'),
(2, 'Will', 'Smith', 'will.smith@outlook.com');

-- Create Products Table
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(255),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

-- Insert data into Products table
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity) VALUES
(101, 'Laptop', 899.99, 5),
(102, 'Smartphone', 499.99, 10),
(103, 'Headphones', 79.99, 20);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(1001, 1, '2023-11-15'),
(1002, 2, '2023-11-20');

-- Create Orders Details Table
CREATE TABLE OrderDetails (
    OrderDetailID SERIAL PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert data into Orders Details Table
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, Price) VALUES
(10001, 1001, 101, 2, 1799.98),
(10002, 1001, 102, 1, 499.99),
(10003, 1002, 103, 3, 239.97);

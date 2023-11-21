--Query to get the Customers table with data
SELECT * FROM Customers
--Query to get the Products table with data
SELECT *FROM Products
--Query to get the Orders table with data
SELECT *FROM Orders
--Query to get the Orders Details Table with data
SELECT *FROM OrderDetails
--Query to get the Products where product name not starts with letter L
SELECT * FROM Products
WHERE NOT productname LIKE 'L%';
-- Query to get total sales for each product
SELECT
    P.ProductName,
    SUM(OD.Quantity) AS TotalSold,
    SUM(OD.Price * OD.Quantity) AS Revenue
FROM
    Products P
JOIN
    OrderDetails OD ON P.ProductID = OD.ProductID
GROUP BY
    P.ProductName;
-- View to display order details with product names
CREATE VIEW OrderDetailsView AS
SELECT OD.OrderDetailID, P.ProductName, OD.Quantity, OD.Price
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID;

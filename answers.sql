
/*
1- SQL query to transform this table into 1NF, ensuring that each row represents a single product for an order
*/

CREATE TABLE ProductDetail
(
	orderId INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    productId INT,
    PRIMARY KEY (orderId, productId),
    FOREIGN KEY (productId) REFERENCES Products(productId)
);

CREATE TABLE Products
(
	productId INT PRIMARY KEY,
    productName VARCHAR(50)
);

/*
1-  SQL query to transform this table into 2NF by removing partial dependencies.
 Ensure that each non-key column fully depends on the entire primary key.
*/

CREATE TABLE Orders 
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE OrderItems 
(
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) 
);

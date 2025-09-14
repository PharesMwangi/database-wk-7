-- question one
CREATE TABLE orderDetail(
orderID INT PRIMARY KEY,
customerName VARCHAR(100));

CREATE TABLE productDetail(
orderID INT,
products VARCHAR(100),
FOREIGN KEY (orderID) REFERENCES orderDetail(orderID));

INSERT INTO orderDetail(orderID, customerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO productDetail(orderID, products) VALUES
(101, 'Laptop'),
(101, 'Mouse'),
(102, 'Tablet'),
(102, 'Keyboard'),
(102, 'Mouse'),
(103, 'Phone');

-- question two
CREATE TABLE orderDetailss(
orderID INT PRIMARY KEY,
customerName VARCHAR(100));

CREATE TABLE productDetails(
orderID INT,
products VARCHAR(100),
quantity INT,
FOREIGN KEY (orderID) REFERENCES orderDetailss(orderID));

INSERT INTO orderDetailss(orderID, customerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO productDetails(orderID, products, quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
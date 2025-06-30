CREATE TABLE Customers (
  customer_id INTEGER PRIMARY KEY,
  name TEXT,
  email TEXT
);

CREATE TABLE Orders (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  product TEXT,
  amount REAL,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers VALUES (1, 'Alice', 'alice@example.com');
INSERT INTO Customers VALUES (2, 'Bob', 'bob@example.com');
INSERT INTO Customers VALUES (3, 'Charlie', 'charlie@example.com');

INSERT INTO Orders VALUES (101, 1, 'Laptop', 900);
INSERT INTO Orders VALUES (102, 2, 'Phone', 500);
INSERT INTO Orders VALUES (103, 1, 'Tablet', 300);

SELECT Customers.name, Orders.product
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

SELECT Customers.name, Orders.product
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

SELECT Customers.name, Orders.product
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

SELECT Customers.name, Orders.product
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id

UNION

SELECT Customers.name, Orders.product
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
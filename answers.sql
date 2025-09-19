CREATE TABLE ProductDetail_1NF (
    Order INT,
    CustomerNAme VARCHAR(100),
    Product VARCHAR(100),
    );


    INSERT INTO ProductDetail_1NF (Order, CustomerNAme, Product) VALUES
    (1, 'Alice', 'Laptop'),
    (1, 'Alice', 'Mouse'),
    (2, 'Bob', 'Keyboard'),
    (3, 'Charlie', 'Monitor'),
    (3, 'Charlie', 'Speakers'),
    (3, 'Charlie', 'Webcam');


    -- Verify the transformation
    SELECT * FROM ProductDetail_1NF;

    -- Question 2: Second Normal Form (2NF)

    CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
    );

    CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
    );
    INSERT INTO Orders (OrderID, CustomerName) VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie');
    INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES
    (1, 'Laptop', 1),
    (1, 'Mouse', 2),
    (2, 'Keyboard', 1),
    (3, 'Monitor', 1),
    (3, 'Speakers', 1),
    (3, 'Webcam', 1);

    -- Verify the transformation
    SELECT * FROM Orders;
    SELECT * FROM OrderItems;
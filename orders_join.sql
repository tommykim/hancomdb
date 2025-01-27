CREATE TABLE orders_join ( order_id INT PRIMARY KEY, customer_name VARCHAR(50), order_amount DECIMAL(10, 2) );

INSERT INTO orders_join (order_id, customer_name, order_amount)
VALUES
(1, 'Alice', 150.00),
(2, 'Bob', 75.00),
(3, 'Charlie', 300.00),
(4, 'David', 50.00),
(5, 'Eve', 200.00);



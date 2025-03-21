use shop_db;
-- customers 테이블 생성 
CREATE TABLE customers ( customer_id int primary key, customer_name VARCHAR(100), total_purchase DECIMAL(10, 2) ); 
-- 데이터 삽입 
INSERT INTO customers (customer_id, customer_name, total_purchase) VALUES (1, 'Alice', 12000), (2, 'Bob', 8000), (3, 'Charlie', 4500), (4, 'David', 6000), (5, 'Eva', 15000);
-- 주문 테이블
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    total_amount DECIMAL(12, 2) NOT NULL,
    payment_method VARCHAR(50),
    status VARCHAR(20) DEFAULT 'pending',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 주문 데이터 삽입
INSERT INTO orders (order_id, customer_id, order_date, total_amount, payment_method, status) VALUES
(1001, 1, '2023-01-10 14:30:00', 850000.00, '신용카드', 'completed'),
(1002, 2, '2023-01-15 10:15:00', 150000.00, '무통장입금', 'completed'),
(1003, 3, '2023-02-05 16:45:00', 1200000.00, '신용카드', 'completed'),
(1004, 1, '2023-02-20 09:30:00', 65000.00, '간편결제', 'completed'),
(1005, 4, '2023-03-08 13:20:00', 120000.00, '신용카드', 'completed'),
(1006, 5, '2023-03-15 11:10:00', 35000.00, '간편결제', 'completed'),
(1008, 2, '2023-04-18 14:30:00', 120000.00, '신용카드', 'completed'),
(1009, 3, '2023-05-05 10:15:00', 25000.00, '무통장입금', 'cancelled')

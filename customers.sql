customers 테이블 생성 
CREATE TABLE customers ( customer_name VARCHAR(100), total_purchase DECIMAL(10, 2) ); 
-- 데이터 삽입 
INSERT INTO customers (customer_name, total_purchase) VALUES ('Alice', 12000), ('Bob', 8000), ('Charlie', 4500), ('David', 6000), ('Eva', 15000);

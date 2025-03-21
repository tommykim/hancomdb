CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products VALUES
(1, '스마트폰 A', '전자제품', 800000),
(2, '스마트폰 B', '전자제품', 600000),
(3, '노트북 C', '전자제품', 1200000),
(4, '노트북 D', '전자제품', 1500000),
(5, '티셔츠 E', '의류', 30000),
(6, '티셔츠 F', '의류', 25000),
(7, '청바지 G', '의류', 55000),
(8, '청바지 H', '의류', 45000);

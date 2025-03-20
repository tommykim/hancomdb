use shop_db;
DROP USER IF EXISTS 'product_admin'@'localhost';
-- 1. 'product_admin' 사용자 생성 (DCL)
CREATE USER 'product_admin'@'localhost' IDENTIFIED BY 'prod1234';

-- 2. 'products' 테이블에 대한 권한 부여 (DCL)
GRANT ALL PRIVILEGES ON shop_db.products TO 'product_admin'@'localhost';
FLUSH PRIVILEGES;

-- 3. 제품 정보 추가 (DML)
INSERT INTO shop_db.products (id, name, price, category) VALUES 
(1, '게이밍 노트북', 12000, '전자제품'),
(2, '무선 마우스', 3000, '주변기기'),
(3, '기계식 키보드', 8500, '주변기기'),
(4, '27인치 모니터', 7000, '전자제품');

-- 4. 가격 인상 (DML)
UPDATE shop_db.products 
SET price = price * 1.1 
WHERE price >= 5000;

-- 5. 조회 전용 사용자 생성 및 권한 부여 (DCL)
DROP USER IF EXISTS 'product_viewer'@'localhost';
CREATE USER 'product_viewer'@'localhost' IDENTIFIED BY 'view1234';
GRANT SELECT ON shop_db.products TO 'product_viewer'@'localhost';
FLUSH PRIVILEGES;

-- 결과 확인
SELECT * FROM shop_db.products;
SHOW GRANTS FOR 'product_admin'@'localhost';
SHOW GRANTS FOR 'product_viewer'@'localhost';

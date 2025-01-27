CREATE TABLE shipping_rates ( rate_id INT PRIMARY KEY, min_amount DECIMAL(10, 2), max_amount DECIMAL(10, 2), shipping_fee DECIMAL(10, 2) );

-- 배송비 데이터
INSERT INTO shipping_rates (rate_id, min_amount, max_amount, shipping_fee)
VALUES
(1, 0.00, 100.00, 10.00),    -- 0 ~ 100 주문: 배송비 10
(2, 100.01, 200.00, 5.00),   -- 100.01 ~ 200 주문: 배송비 5
(3, 200.01, 500.00, 0.00);   -- 200.01 ~ 500 주문: 배송비 무료


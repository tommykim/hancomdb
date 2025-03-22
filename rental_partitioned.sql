use sakila;
-- 기존 테이블 구조를 유지하며 파티셔닝이 적용된 새 테이블 생성
CREATE TABLE rental_partitioned (
    rental_id INT NOT NULL AUTO_INCREMENT,
    rental_date DATETIME NOT NULL,
    inventory_id INT NOT NULL,
    customer_id SMALLINT UNSIGNED NOT NULL,
    return_date DATETIME DEFAULT NULL,
    staff_id TINYINT UNSIGNED NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (rental_id, rental_date),
    KEY idx_rental_date (rental_date),
    KEY idx_inventory_id (inventory_id),
    KEY idx_customer_id (customer_id),
    KEY idx_staff_id (staff_id)
) 
PARTITION BY RANGE (YEAR(rental_date) * 100 + MONTH(rental_date)) (
    PARTITION p200502 VALUES LESS THAN (200503),
    PARTITION p200503 VALUES LESS THAN (200504),
    PARTITION p200504 VALUES LESS THAN (200505),
    PARTITION p200505 VALUES LESS THAN (200506),
    PARTITION p200506 VALUES LESS THAN (200507),
    PARTITION p200507 VALUES LESS THAN (200508),
    PARTITION p200508 VALUES LESS THAN (200509),
    PARTITION p_future VALUES LESS THAN MAXVALUE
);

-- 기존 데이터 복사
INSERT INTO rental_partitioned
SELECT * FROM rental;

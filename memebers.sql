-- members 테이블 생성
CREATE TABLE members (
    name VARCHAR(10) NOT NULL,
    address VARCHAR(10) NOT NULL,
    age INT NOT NULL
);

-- 데이터 삽입
INSERT INTO members (name, address, age) VALUES
('승민', '서울', 31),
('병곤', '서울', 21),
('혜리', '부산', 25),
('희수', '인천', 19),
('성민', '양양', 39),
('동현', '제주', 45),
('소원', '전주', 30),
('종선', '부산', 52);

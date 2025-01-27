CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    grade INT,
    score DECIMAL(5, 2),
    attendance INT
);

INSERT INTO students (student_id, student_name, grade, score, attendance)
VALUES
(1, '김철수', 1, 85.50, 20),
(2, '이영희', 1, 90.00, 18),
(3, '박민수', 2, NULL, 22),
(4, '최지훈', 2, 78.00, NULL),
(5, '한지수', 3, 88.75, 19),
(6, '정다영', 3, 92.00, 20),
(7, '신동훈', 2, 75.50, 21),
(8, '강민준', 3, NULL, 23),
(9, '오혜린', 1, 82.25, NULL),
(10, '조하늘', 3, 95.00, 24);


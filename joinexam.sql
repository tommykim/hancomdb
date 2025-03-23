-- 학생 테이블
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL
);

-- 수강 정보 테이블
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    student_id INT
);

-- 학생 데이터 삽입
INSERT INTO students VALUES
(1, '김철수'),
(2, '이영희'),
(3, '박민수'),
(4, '정다은');

-- 수강 정보 데이터 삽입
INSERT INTO enrollments VALUES
(101, '데이터베이스', 1),
(102, '알고리즘', 2),
(103, '운영체제', 1),
(104, '네트워크', 5),
(105, '인공지능', 6);

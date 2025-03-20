
USE test;

-- employees 테이블 생성
drop table employees;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INT NOT NULL,
    hire_date DATETIME NOT NULL
);

-- projects 테이블 생성
drop table projects;
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50) NOT NULL,
    employee_id INT
);

-- employees 테이블에 데이터 삽입
delete from employees;
INSERT INTO employees (employee_id, name, salary, department_id, hire_date) VALUES
(1, '유재석', 9500.00, 1, '2008-01-01 00:00:00'),
(2, '박명수', 8000.00, 1, '2008-01-01 00:00:00'),
(3, '정준하', 7000.00, 1, '2020-01-01 00:00:00'),
(4, '정형돈', 7000.00, 1, '2020-01-01 00:00:00'),
(5, '노홍철', 6500.00, 2, '2020-01-01 00:00:00'),
(6, '하하', 6000.00, 2, '2024-01-01 00:00:00'),
(8, '홍길동', 6000.00, 3, '2024-01-01 00:00:00'),
(9, '김영희', 7200.00, 4, '2024-01-01 00:00:00'),
(10, '김상덕', 6000.00, 4, '2024-01-01 00:00:00'),
(11, '최철수', 8000.00, 2, '2024-01-01 00:00:00');

-- projects 테이블에 데이터 삽입
delete from projects;
INSERT INTO projects (project_id, project_name, employee_id) VALUES
(1, 'Project Alpha', 1),
(2, 'Project Beta', 2),
(3, 'Project Gamma', 3),
(4, 'Project Delta', NULL);

-- leftjoin 쿼리 실행
SELECT e.name, p.project_name
FROM employees e
LEFT JOIN projects p
ON e.employee_id = p.employee_id;

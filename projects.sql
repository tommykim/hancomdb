CREATE TABLE projects ( project_id INT PRIMARY KEY, project_name VARCHAR(100), employee_id INT );
INSERT INTO projects (project_id, project_name, employee_id) VALUES (1, 'Project Alpha', 1), (2, 'Project Beta', 2), (3, 'Project Gamma', 3), (4, 'Project Delta', NULL); -- 프로젝트에 할당되지 않은 직원

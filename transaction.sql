use hancom;
start transaction;
insert into employees(employee_id, name, salary) values(4, '정현동', 6000);
UPDATE employees 
SET 
    salary = salary + 500;
SELECT 
    *
FROM
    hancom.employees;
rollback;

ALTER TABLE employees ADD COLUMN phone VARCHAR(20), ADD COLUMN email VARCHAR(50); -- employeess 테이블이 전화번호와 이메일 추가

삽입 데이터
UPDATE employees
SET phone = CASE employee_id
   WHEN 1 THEN '010-1234-5678'
   WHEN 2 THEN '010-2345-6789'
   WHEN 3 THEN '010-3456-7890'
   WHEN 4 THEN '010-4567-8901'
   WHEN 5 THEN NULL
   WHEN 6 THEN '010-5678-9012'
   WHEN 8 THEN '010-6789-0123'
   WHEN 9 THEN NULL
   WHEN 10 THEN '010-7890-1234'
   WHEN 11 THEN NULL
   ELSE NULL
END,
email = CASE employee_id
    WHEN 1 THEN 'yjs@example.com'
    WHEN 2 THEN 'pms@example.com'
    WHEN 3 THEN 'jjh@example.com'
    WHEN 4 THEN NULL  -- 이메일이 없는 경우
    WHEN 5 THEN 'nhc@example.com'
    WHEN 6 THEN 'haha@example.com'
    WHEN 8 THEN NULL  -- 이메일이 없는 경우
    WHEN 9 THEN 'kmh@example.com'
    WHEN 10 THEN 'ksd@example.com'
    WHEN 11 THEN NULL  -- 이메일 없는 경우
    ELSE NULL
END;
CREATE TABLE type_data 
(    id INT PRIMARY KEY,    
	 original_value VARCHAR(20) -- 숫자로 변환해야 할 문자열
);

INSERT INTO type_data (id, original_value) VALUES (1, '12345');
INSERT INTO type_data (id, original_value) VALUES (2, 'a12b34');
INSERT INTO type_data (id, original_value) VALUES (3, '450');
INSERT INTO type_data (id, original_value) VALUES (4, 'text');


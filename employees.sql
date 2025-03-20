DROP TABLE `employees`;
CREATE TABLE `employees` (
    `employee_id` INT NOT NULL,
    `name` VARCHAR(100) DEFAULT NULL,
    `salary` DECIMAL(10 , 2 ) DEFAULT NULL,
    `department_id` VARCHAR(10) DEFAULT NULL,
    `hire_date` DATE DEFAULT NULL,
    PRIMARY KEY (`employee_id`)
);

INSERT INTO `employees` (`employee_id`,`name`,`salary`,`department_id`,`hire_date`) VALUES(1,'유재석',6000,1,20230101);
INSERT INTO `employees` (`employee_id`,`name`,`salary`,`department_id`,`hire_date`) VALUES(2,'박명수',7000,1,20240101);
INSERT INTO `employees` (`employee_id`,`name`,`salary`,`department_id`,`hire_date`) VALUES(3,'정준하',7000,1,20240201);
INSERT INTO `employees` (`employee_id`,`name`,`salary`,`department_id`,`hire_date`) VALUES(4,'정형돈',5000,1,20240301);
INSERT INTO `employees` (`employee_id`,`name`,`salary`,`department_id`,`hire_date`) VALUES(5,'노홍철',8000,1,20250101);
INSERT INTO `employees` (`employee_id`,`name`,`salary`,`department_id`,`hire_date`) VALUES(6,'유재석2',6000,2,20230101);
INSERT INTO `employees` (`employee_id`,`name`,`salary`,`department_id`,`hire_date`) VALUES(7,'박명수2',7000,2,20240101);
INSERT INTO `employees` (`employee_id`,`name`,`salary`,`department_id`,`hire_date`) VALUES(8,'정준하2',7000,2,20240201);
INSERT INTO `employees` (`employee_id`,`name`,`salary`,`department_id`,`hire_date`) VALUES(9,'정형돈2',5000,2,20240301);
INSERT INTO `employees` (`employee_id`,`name`,`salary`,`department_id`,`hire_date`) VALUES(10,'노홍철2',8000,2,20250101);

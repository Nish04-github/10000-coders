delimiter//
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
IF NEW.salary < 15000 THEN
SET NEW.salary = 15000;
END IF;
END //
DELIMITER ;
INSERT INTO employees (emp_id, name, department, salary)
VALUES (1, 'Ravi', 'IT', 10000);
SELECT * FROM employees;



DELIMITER //
CREATE TRIGGER before_student_insert
BEFORE INSERT ON students
FOR EACH ROW
BEGIN
SET NEW.name = UPPER(NEW.name);
END //
DELIMITER ;
INSERT INTO students (student_id, name, marks)
VALUES (1, 'siva', 85);
SELECT * FROM students;


DELIMITER //
CREATE TRIGGER validate_student_marks
BEFORE INSERT ON student_marks
FOR EACH ROW
BEGIN
IF NEW.marks > 100 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Marks cannot be greater than 100';
END IF;
END //
DELIMITER ;
INSERT INTO student_marks (id, name, marks)
VALUES (1, 'Ravi', 120);
SELECT * FROM student_marks;



DELIMITER //
CREATE TRIGGER after_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
INSERT INTO employee_log (emp_id, name, action)
VALUES (NEW.emp_id, NEW.name, 'Employee Inserted');
END //
DELIMITER ;
INSERT INTO employees (emp_id, name, salary)
VALUES (1, 'Ravi', 50000);
SELECT * FROM employees;
SELECT * FROM employee_log;



DELIMITER //
CREATE TRIGGER after_employee_insert_count
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
UPDATE department_count
SET total_employees = total_employees + 1
WHERE department = NEW.department;
END //
DELIMITER ;
INSERT INTO employees (emp_id, name, department)
VALUES (1, 'Ravi', 'IT');
INSERT INTO employees (emp_id, name, department)
VALUES (2, 'Siva', 'IT');
SELECT * FROM department_count;



DELIMITER //
CREATE TRIGGER before_product_insert
BEFORE INSERT ON products
FOR EACH ROW
BEGIN
IF NEW.price < 100 THEN
SET NEW.price = 100;
END IF;
END //
CREATE TRIGGER after_product_insert
AFTER INSERT ON products
FOR EACH ROW
BEGIN
INSERT INTO product_log (product_id, product_name, message)
VALUES (NEW.product_id, NEW.product_name, 'Product inserted successfully');
END //
DELIMITER ;










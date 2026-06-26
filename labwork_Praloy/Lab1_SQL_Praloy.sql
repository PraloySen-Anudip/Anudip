CREATE DATABASE lab;
USE lab;
CREATE TABLE Employee (emp_id INT PRIMARY KEY,f_name VARCHAR(50),l_name VARCHAR(50),email VARCHAR(100),phone_no VARCHAR(15),hire_date DATE,job_id VARCHAR(50),salary DECIMAL(10,2),commission DECIMAL(10,2),mang_id INT,dept_id INT);
INSERT INTO Employee
(emp_id, f_name, l_name, email, phone_no, hire_date, job_id, salary, commission, mang_id, dept_id)
VALUES
(101,'John','Smith','john@gmail.com','9876543210','2021-01-15','Python Developer',18000,500,201,10),

(102,'Emma','Johnson','emma@gmail.com','9876543211','2021-03-20','Java Developer',22000,300,202,20),
(103,'David','Shah','david@gmail.com','9876543212','2020-05-10','Manual Tester',14000,200,201,10),
(104,'Sophia','Brown','sophia@gmail.com','9876543213','2022-07-01','UI/UX Designer',26000,1000,203,30),
(105,'Michael','Singh','michael@gmail.com','9876543214','2021-09-18','Data Analyst',24000,1200,203,30),
(106,'Olivia','Harris','olivia@gmail.com','9876543215','2019-11-11','HR Executive',12000,100,202,20),
(107,'Daniel','Saha','daniel@gmail.com','9876543216','2021-12-05','Python Developer',15500,400,201,10),
(108,'Ava','Thomas','ava@gmail.com','9876543217','2023-02-25','DevOps Engineer',17000,350,204,40),
(109,'James','Scott','james@gmail.com','9876543218','2021-06-30','Java Developer',21000,700,203,30),
(110,'Charlotte','Wilson','charlotte@gmail.com','9876543219','2020-08-19','Software Engineer',28000,500,204,40),
(111,'Benjamin','Sandhu','ben@gmail.com','9876543220','2021-04-12','Manual Tester',16000,450,201,10),
(112,'Mia','Rahman','mia@gmail.com','9876543221','2022-10-09','Database Administrator',19500,250,202,20),
(113,'Chris','Stone','chris@gmail.com','9876543222','2021-01-01','Python Developer',18000,300,201,10),
(114,'Ryan','Sharma','ryan@gmail.com','9876543223','2021-02-01','Java Developer',19000,300,201,10),
(115,'Noah','Seth','noah@gmail.com','9876543224','2021-03-01','Manual Tester',20000,300,201,10),
(116,'Lucas','Shaw','lucas@gmail.com','9876543225','2021-04-01','Python Developer',21000,300,201,10),
(117,'Ethan','Sheikh','ethan@gmail.com','9876543226','2021-05-01','Frontend Developer',22000,300,201,10),
(118,'Logan','Soren','logan@gmail.com','9876543227','2021-06-01','Backend Developer',23000,300,201,10),
(119,'Mason','Sinha','mason@gmail.com','9876543228','2021-07-01','Java Developer',24000,300,201,10),
(120,'Jacob','Saxena','jacob@gmail.com','9876543229','2021-08-01','Software Engineer',25000,300,201,10);
SELECT * FROM Employee;

USE lab;
-- 1. Display last name and salary of all the employees earning more than 15000.
SELECT l_name, salary FROM Employee WHERE salary > 15000;
-- 2.Display last name and salary of all the employees whose salary is in the range 15000 and 25000.
SELECT l_name, salary FROM Employee WHERE salary BETWEEN 15000 AND 25000;
-- 3. Display last name, job_id and hire_date of all the employees who has joined in 2021.
SELECT l_name, job_id, hire_date FROM Employee WHERE YEAR(hire_date) = 2021;
-- 4. Display last name of all the employees where the first letter of the last name is 's'.
SELECT l_name FROM Employee WHERE l_name LIKE 's%';
-- 5. Display first name of all the employees whose last names contain 'a' and 'h'.
SELECT f_name FROM Employee WHERE l_name LIKE '%a%' AND l_name LIKE '%h%';
-- 6. Display last name, job_id and hire_date of all the employees who has joined in 2021 in ascending order.
SELECT l_name, job_id, hire_date FROM Employee WHERE YEAR(hire_date) = 2021 ORDER BY hire_date ASC;
-- 7. Display highest and lowest salary from the Employee table. Label the columns Maximum and Minimum respectively.
SELECT MAX(salary) AS Maximum, MIN(salary) AS Minimum FROM Employee;
-- 8. Display Minimum, Maximum, Sum and Average salary for each job type.
SELECT job_id, MIN(salary) AS Minimum,MAX(salary) AS Maximum, SUM(salary) AS Sum, AVG(salary) AS Average FROM Employee GROUP BY job_id;
-- 9. Display the number of people with same job id.
SELECT job_id, COUNT(*) AS Number_of_People FROM Employee GROUP BY job_id;
-- 10. Determine the number of managers without listing them. Label the column "Number of managers".
SELECT COUNT(DISTINCT mang_id) AS "Number of managers" FROM Employee WHERE mang_id IS NOT NULL;
-- 11. Display difference between the highest and lowest salaries and label it Range of salary.
SELECT MAX(salary) - MIN(salary) AS "Range of salary" FROM Employee;
-- 12. Number of Employees in Each Department with More Than 10 Employees.
SELECT dept_id, COUNT(*) AS Number_of_Employees FROM Employee GROUP BY dept_id HAVING COUNT(*) > 10;
-- 13. Average Salary of Employees in Each Department Greater Than $50000.
SELECT dept_id, AVG(salary) AS Average_Salary FROM Employee GROUP BY dept_id HAVING AVG(salary) > 50000;
-- blank because no one have salary more than 50000. poor workers:(


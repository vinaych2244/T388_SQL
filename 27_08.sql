create database T388;
select 3*4 as multiply;
select 13/4 as Quotient;
select 13%2 as modulas;
select 34 != 64 as compare;
select database();
-- logical operator
select 1 < 2 and 13>5 as and_operator;
select 1 < 2 or 13>50 as or_operator;
create database T388_db;
use T388_db;
CREATE TABLE Employee (
 EmployeeId INT PRIMARY KEY,
 FullName VARCHAR(45) NOT NULL,
 Department VARCHAR(45) NOT NULL,
 Salary float NOT NULL,
 Gender VARCHAR(45) NOT NULL,
 Age INT NOT NULL
);
show databases;





insert into employee
values(2005,"Vinay","IT",10000,"Male",20);
insert into employee
values(200,"shubham","IT",100000,"Male",20);
delete from employee;  
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

select distinct age from employee; 

CREATE TABLE Projects (
 ProjectId INT PRIMARY KEY AUTO_INCREMENT,
 ProjectName VARCHAR(200) NOT NULL,
 EmployeeId INT,
 StartDate DATETIME,
EndDate datetime); 
INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5
DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15
DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY));


delete FROM EMPLOYEE where age>25;
TRUNCATE TABLE EMPLOYEE;
ALTER TABLE EMPLOYEE ADD location varchar(10);
alter table employee drop locationm;
ALTER TABLE EMPLOYEE ADD bonus float after salary;
ALTER TABLE EMPLOYEE ADD TITLE varchar(5) first;
DESC EMPLOYEE;
ALTER TABLE EMPLOYEE MODIFY FULLNAME VARCHAR(35);
ALTER TABLE EMPLOYEE CHANGE COLUMN LOCATION ADDRESS VARCHAR(36);
UPDATE EMPLOYEE SET ADDRESS="THANE";

UPDATE EMPLOYEE SET TITLE="Mr" WHERE GENDER = "MALE";

UPDATE EMPLOYEE SET TITLE="Mrs" WHERE GENDER = "FEMALE";


update employee set bonus =salary*0.05;

select * from employee; 
create table KISAN_INFO
(ID INT unique NOT NULL,
NAME VARCHAR(50) unique NOT NULL,
age int check(age>=18),
EMAIL_ID varchar(40) default "dummy@gmail.com"
);
desc KISAN_INFO;
insert into kisan_info values
(2003,"harshit",21,default);
select* from kisan_info;
alter table kisan_info modify age int check (age>=20);  
create table KISAN_detail
(main_ID int unique not null,
ID INT primary key,
NAME VARCHAR(50) unique NOT NULL,
age int check(age>=18),
EMAIL_ID varchar(40) default "dummy@gmail.com"
);
desc KIsan_detail;
select distinct department from employee;
select distinct gender  from employee;
select * from employee 
where department = "IT" or department = "finance";-- using or operator
select * from employee
where department in("IT","finance") ;-- in operator  

create database pizza_sales_analysis;
show databases;
use pizza_sales_analysis;
create table orders(
id int,
date date
);
alter table orders 
add email varchar(35);
alter table `order` rename to orders ;
alter table orders modify id int primary key;
desc orders;
UPDATE orders SET Email = 'neha.gill@mail.com';
select * from orders;
create table table_name;

DROP TABLE IF EXISTS table_name;
insert into orders(id)
values (1),(3);
select * from employee where gender = "male" order by EmployeeId asc ;
select * from employee limit 5;
select department,count(Employeeid) from employee group by department;
select department,avg(salary) from employee group by department;
select department,avg(salary),count(Employeeid) from employee group by department;
select department,avg(age),count(*) from employee group by department having avg(age) < 27;  
select * from Projects;
select now();
truncate Projects;
select *, datediff(enddate, startdate)as duration from Projects;
select * from projects where datediff(enddate, startdate)= 45;
alter table Projects add duration Int;
insert into Projects (Duration) value datediff(enddate, startdate);
select * from Projects;
UPDATE Projects
SET duration = DATEDIFF( EndDate,StartDate);
select duration, count(*) from projects group by duration having count(*) >= 2;
select duration, count(*) 
from projects 
where duration >= 20 
group by duration 
having count(*) >= 2
order by duration desc
limit 2
;
select * from employee limit 2,3;
select distinct age from employee;
use t388_db;

select * from projects where employeeid is null;

-- Auto increment
desc projects;
update projects set employeeid = 1003 where projectid = 6;
select * FROM PROJECTS;
-- LOGICAL OPERATOR IN BETWEEN LIKE
select * FROM EMPLOYEE WHERE EMPLOYEEID between 1003 AND 1070;-- BETWEEN BOTH HIGHER AND LOWER VALUE WILL BE THERE IN THE RESULT
select * FROM EMPLOYEE WHERE EMPLOYEEID IN (1003,1005,1007,1070);-- IN OPERATOR 
select * FROM EMPLOYEE WHERE FULLNAME LIKE "M%"; -- LIKE % N NUMBER OF CHARACTER IN START OR END 
select * FROM EMPLOYEE WHERE FULLNAME LIKE "M___";-- LIKE _ ANY SINGLE CHARACTER like
alter table `like` rename to simple;

select * from simple where fullname like "a%";
select * from simple where fullname like "_U%";
select * from simple where fullname like "A%T";
-- BUILT IN SQL FUNCTION
-- 1 ) AGGREGATE FUNCTION 5
select avg(SALARY) FROM EMPLOYEE;
select sum(SALARY) FROM EMPLOYEE;
select MAX(SALARY) FROM EMPLOYEE;
select MIN(SALARY) FROM EMPLOYEE;
select count(*) FROM EMPLOYEE;

-- 2) MATH FUNCTION
SELECT abs(+25); -- ABS REMOVE + OR - SIGN 
SELECT mod(12,7); -- MOD() MODULUS WRITE THE REMAIDER FOR THE DIVISION
SELECT ceil(33.8); -- RETURN HIGHER VALUE 
SELECT floor(33.8); -- RETURN LOWER VALUE
SELECT datediff(STARTDATE,ENDDATE) FROM PROJECTS;
SELECT TRUNCATE(123456.13456211,-2);-- RETURN NO OF GIVEN NUMBER AFTER DECIMAL










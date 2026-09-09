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

select * from employee; 

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
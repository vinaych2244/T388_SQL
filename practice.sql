 create database practice;
 -- Create Handsets Table
CREATE TABLE Handsets (
    SetCode VARCHAR(10) PRIMARY KEY,
    SetName VARCHAR(50) NOT NULL,
    TouchScreen CHAR(1) CHECK (TouchScreen IN ('Y', 'N')),
    PhoneCost INT
);

-- Insert data into Handsets Table
INSERT INTO Handsets (SetCode, SetName, TouchScreen, PhoneCost) VALUES
('N1', 'Nokia 2G', 'N', 5000),
('N2', 'Nokia 3G', 'Y', 8000),
('B1', 'BlackBerry', 'N', 14000);
-- Create Customer Table
CREATE TABLE Customer (
    CustNo INT PRIMARY KEY,
    SetNo VARCHAR(10),
    CustAddress VARCHAR(100),
    FOREIGN KEY (SetNo) REFERENCES Handsets(SetCode)
);

-- Insert data into Customer Table
INSERT INTO Customer (CustNo, SetNo, CustAddress) VALUES
(1, 'N2', 'Delhi'),
(2, 'B1', 'Mumbai'),
(3, 'N2', 'Mumbai'),
(4, 'N1', 'Kolkata'),
(5, 'B1', 'Delhi');
-- Simulating a FULL OUTER JOIN in MySQL
SELECT Handsets.SetName, Customer.CustNo, Customer.CustAddress
FROM Handsets
LEFT JOIN Customer ON Handsets.SetCode = Customer.SetNo

UNION

SELECT Handsets.SetName, Customer.CustNo, Customer.CustAddress
FROM Handsets
RIGHT JOIN Customer ON Handsets.SetCode = Customer.SetNo;
create database FK_t388;
use Fk_t388;
create table students
(
ID int primary key auto_increment,
Name varchar(20)
);
insert into students values (
1,"Kunal"); 
insert into students (name)values (
"suman"); 
desc students;
select * from students;
create table info 
(id int,
scores int,
foreign key (id) references students(id)
);
insert into info values (1,300),(2  ,300);

create database T388_fk_pk;
use T388_fk_pk;

CREATE TABLE Employee ( 
 ID INT PRIMARY KEY, 
 Name CHAR(100) NOT NULL, 
 Age INT, 
 Salary DECIMAL(10, 2) 
); 
CREATE TABLE Project ( 
 ProjectID INT PRIMARY KEY, 
 ProjectName VARCHAR(100) NOT NULL, 
 ID INT, 
 FOREIGN KEY (ID) REFERENCES Employee(ID) 
 ON UPDATE CASCADE 
 ON DELETE CASCADE 
);
INSERT INTO Employee (ID, Name, Age, Salary) VALUES 
(101, 'Alice Smith', 29, 75000.00), 
(102, 'Bob Jones', 34, 82000.50), 
(103, 'Charlie Brown', 41, 95000.00), 
(104, 'Diana Prince', 26, 68000.00); 
INSERT INTO Project (ProjectID, ProjectName, ID) VALUES 
(1, 'Website Redesign', 101), 
(2, 'Cloud Migration', 101), 
(3, 'Mobile App Launch', 102), 
(4, 'Data Analytics Pipeline', 103);
update employee set id = 500 where id = 101 ;






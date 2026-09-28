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


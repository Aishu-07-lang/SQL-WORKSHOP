create database Employee
use Employee
create table Employeetabl1
(
EmpId int,
EmpName char(50),
EmpEmail varchar(50),
EmpAddress varchar(50),
EmpDept char(50),
EmpAge int,
ContactNo Bigint,
AdharNo Bigint,
pancardNo varchar(10),
EmpSalary int
)

select *from Employeetabl1

INSERT INTO Employeetabl1
(EmpId, EmpName, EmpEmail, EmpAddress, EmpDept, EmpAge, ContactNo, AdharNo, PancardNo, EmpSalary)
VALUES
(101, 'Aishu Z', 'aishu@gmail.com', 'Pune', 'HR', 28, 9876543210, 123456789012, 'ABCDE1234F', 35000),

(102, 'Priya Patil', 'priya.patil@gmail.com', 'Mumbai', 'Finance', 30, 9876543211, 234567890123, 'PQRSX2345L', 45000),

(103, 'Kishor Kumar', 'kishor.kumar@gmail.com', 'Nashik', 'IT', 26, 9876543212, 345678901234, 'LMNOP3456Q', 50000),

(104, 'Sushant Singh', 'sushant25@gmail.com', 'Nagpur', 'Sales', 29, 9876543213, 456789012345, 'ZXCVB4567P', 40000),

(105, 'Akshay P', 'akshay08@gmail.com', 'Solapur', 'Marketing', 31, 9876543214, 567890123456, 'ASDFG5678R', 48000),

(106, 'Riya Kadam', 'riyak5@gmail.com', 'Kolhapur', 'Admin', 27, 9876543215, 678901234567, 'QWERT6789Y', 38000),

(107, 'Vikas Singh', 'vikassingh@gmail.com', 'Aurangabad', 'IT', 32, 9876543216, 789012345678, 'HJKLO7890T', 60000),

(108, 'Pooja Deshmukh', 'pooja0725@gmail.com', 'Satara', 'HR', 25, 9876543217, 890123456789, 'MNBVC8901A', 36000),

(109, 'Rupali Thorat', 'sanrup@gmail.com', 'Thane', 'Finance', 34, 9876543218, 901234567890, 'TYUIO9012S', 55000),

(110, 'Suraj More', 'samore@gmail.com', 'Pune', 'IT', 24, 9876543219, 912345678901, 'GHJKL0123D', 42000)


ALTER TABLE Employeetabl1
ADD Gender CHAR(10),
JoiningDate DATE;

alter table Employeetabl1 Drop Column EmpAddress,AdharNo,EmpAge

update Employeetabl1 set EmpName='Aishuu' where EmpId=101

update Employeetabl1 set EmpSalary=110000 where EmpId=103

delete from Employeetabl1 where EmpName='Vikas Singh'
delete from Employeetabl1 where EmpId=4

ALTER TABLE Employeetabl1 alter column EmpSalary Bigint

select EmpId,EmpName,EmpEmail,EmpSalary,ContactNo from Employeetabl1

insert into Employeetabl1 values (111,'','aishu1@gmail.com','',9876543210,'',90000,'','07-01-2025')
insert into Employeetabl1 values (112,'fgdhs','','HR','','PQRSX2345L','','F',NULL)
insert into Employeetabl1 values (113,'','aishu1@gmail.com','',9876543210,'',90000,'M','')
insert into Employeetabl1 values (114,'DFSS','','IT','','MNBVC8901A','50000','',NULL)
insert into Employeetabl1 values (115,'','aishu1@gmail.com','',9876543210,'','','F','07-01-2025')

DELETE FROM Employeetabl1 where EmpId>105

select * from Employeetabl1 ORDER BY EmpId 
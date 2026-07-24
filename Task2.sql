create database Employee
use Employee

create table Emptable
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

select * from Emp2

insert into Emp2 values(10,'shrimant','shrimant@gmail.com','mumbai','hr',29,9788567896,953486765432,'shru66586f',90000)

alter table Emp2 add Designation varchar(50)

alter table Emp2 add Education varchar(50)


alter table Emp2 drop column Destination,Education

update Emp2 set EmpName='Aishwarya' where EmpId=1

update Emp2 set EmpAddress='Kolhapur' where EmpId=3

delete from Emp2

alter table Emp2 alter column EmpAge Bigint

select EmpId,EmpName,EmpAddress,EmpAge,ContactNo from Emp2

insert into Emp2 
values(12,'Kishori','','pune','',9876543287,'','HR','')

insert into Emp2 
values('14','sonali','','kolhapur','','','63547839394746','hr','')

delete from Emp2 where EmpId<3
 drop table Emptable





















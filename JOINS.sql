use practice2;

create table Employee
(
    Id int primary key,
    EmpName varchar(50),
    EmpSalary int
);

insert into Employee
values
(101,'Aishwarya',90000),
(102,'Abc',49988),
(103,'XYZ',60000);

alter table Employee
add Dept varchar(50);

update Employee
set Dept='IT'
where Id=101;

update Employee
set Dept='Mech'
where Id=102;

update Employee
set Dept='HR'
where Id=103;

create table Department
(
    DeptId int primary key,
    DeptName varchar(50),
    Courses varchar(50),
    EmpId int,
    foreign key(EmpId) references Employee(Id)
);

insert into Department
values
(2,'Mech','AutoCAD',102),
(3,'HR','Recruitment',103),
(4,'HR','Recruitment',104);

select *from Department as d

select * from Employee as e

select
Employee.EmpName,
Department.DeptName
from Employee
inner join Department
on Employee.Id = Department.EmpId;

select
Department.Courses,
Employee.EmpSalary
from Department
left join Employee
on Department.EmpId = Employee.Id;

select * from employee where id=101 and EmpSalary>=40000
select *  from employee where EmpName in ('Aishwarya')

select*from customer left join orders on customer.custid= orders.custid
selct*from customer right join orders on customer.custid=orders.custid
selct*from customer full outer join orders on customer.custid=orders.custid


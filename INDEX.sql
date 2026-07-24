USE Employee

CREATE TABLE emp5 (empid int,empname varchar(50),salary int,city varchar(50))
select * from emp5
insert into emp5 values
(1,'a',10000,'pune'),
(2,'b',20000,'mumbai'),
(3,'c',30000,'delhi'),
(4,'d',40000,'bengalore')

create clustered index ix_emp 
on emp5
(empname,salary)

create  Nonclustered index E1 
on emp5
(empname,salary)




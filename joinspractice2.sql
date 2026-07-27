use joins

create table demo2( id int primary key  ,name varchar(50),salary int)

insert into demo2 values(1,'a',10000),(2,'b',20000),(3,'c',30000),(4,'d',40000)

select * from demo2

create table demoEX( id int  ,name varchar(50),fees int)

insert into demoEX values (101,'A',10000),(101,'B',10000),(102,'B',20000),(102,'C',10000),(103,'A',30000),(103,'D',50000),('','','')

SELECT * FROM demoEx

select id.demo2,name.demoex from demo2 inner join demoex on id.demo2 = id.demoex
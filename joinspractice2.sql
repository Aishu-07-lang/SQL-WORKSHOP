use joins

create table demo2( id int primary key  ,name varchar(50),salary int)

insert into demo2 values(1,'a',10000),(2,'b',20000),(3,'c',30000),(4,'d',40000)

select * from demo2

create table demoEX( id int  ,name varchar(50),fees int)

insert into demoEX values (101,'A',10000),(101,'B',10000),(102,'B',20000),(102,'C',10000),(103,'A',30000),(103,'D',50000),('','','')
DELETE FROM demoEx;

INSERT INTO demoEx
VALUES
(1,'A',10000),
(1,'A',10000),
(2,'B',20000),(2,'B',10000),
(3,'C',30000),
(4,'D',40000);
SELECT * FROM demoEx

SELECT demo2.name, demoEx.id
FROM demo2
INNER JOIN demoEx
ON demo2.id = demoEx.id;

SELECT demo2.name, demoEx.id
FROM demo2
Right JOIN demoEx
ON demo2.id = demoEx.id;

SELECT demo2.name, demoEx.id
FROM demo2
LEFT JOIN demoEx
ON demo2.id = demoEx.id;
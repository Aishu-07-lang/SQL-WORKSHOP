create table emp (Id int, Name varchar(50),Age int)

insert into emp values(1,'A',23),
(3,'S',21),
(4,'K',9),
(7,'J',40)
insert into emp values(8,'Z',16),
(60,'B',20)
insert into emp values(2,'Z',46),
(5,'B',20)


SELECT * FROM EMP

CREATE  CLUSTERED INDEX A11 ON EMP (ID)
CREATE NONCLUSTERED INDEX A12 ON EMP (NAME)
CREATE NONCLUSTERED INDEX A13 ON EMP (AGE)
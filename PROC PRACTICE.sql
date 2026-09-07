create database storeproc
use storeproc

create table Teacher (Id int ,name varchar(50),salary int)

insert into Teacher values
(1,'A',10000),
(2,'B',20000),
(3,'C',30000),
(4,'D',45000),
(5,'E',50000),
(6,'F',65000)
DROP Table teacher
SELECT * FROM TEACHER
----------------------- WITHOUT PARAMETER----------------------
CREATE PROCEDURE P
AS
BEGIN
     UPDATE TEACHER SET SALARY = salary + (SALARY * 10/100) 
end

p  #call procedure

-----------------------SINGLE PARAMETER-----------------------------------
create procedure p1
@id as int 
As
Begin
    Update teacher set salary = salary + (salary * 10/100) where id=@id
End

p1  1 

-----------------------MULTI PARAMETER----------------------------
CREATE PROCEDURE P2
@P AS INT , @E AS INT
AS
BEGIN
    UPDATE TEACHER SET SALARY = SALARY + (SALARY * @P/100) WHERE ID= @E
END

P2 10, 2


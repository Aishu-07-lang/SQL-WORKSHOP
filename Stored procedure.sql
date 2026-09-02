use Practise
CREATE TABLE Employee
(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    Email VARCHAR(50),
    HireDate DATE
);

INSERT INTO Employee VALUES
(101,'Aishwarya','HR',45000,'aishwarya@gmail.com','2023-01-15'),
(102,'kishor','IT',65000,'kishor@gmail.com','2022-06-10'),
(103,'AKishu','Sales',40000,'Akishu@gmail.com','2024-02-18'),
(104,'aishu','Finance',70000,'aishu725@gmail.com','2021-09-12'),
(105,'kishu','HR',55000,'kishu@gmail.com','2023-07-25')

select * from Employee

CREATE PROCEDURE HighSalaryEmployees
AS
BEGIN
    SELECT *
    FROM Employee
    WHERE Salary>50000;
END;

create procedure p1
AS 
Begin
Update Employee Set Salary = Salary + (Salary * 10/100)
End

create procedure p2
@p as float , @e as int
AS 
BEGIN
update Employee set Salary = Salary + (Salary * @p/100) where  EmpID =@e 
END


CREATE TABLE SALE
(
    ITEMS VARCHAR(50),
    STOCK INT
)

 SELECT * FROM SALE


 INSERT INTO SALE values ('apple',400),('MI',500),('samsung',300),('vivo',600),('redmi',200)

 ALTER PROCEDURE P1

 @QUANTITY AS INT,@ITEMS AS VARCHAR(50)
 AS
 BEGIN
       UPDATE SALE SET STOCK =STOCK -@QUANTITY
END

P1  50 ,'MI'

UPDATE SALE  SET STOCK =100 WHERE ITEMS='MI'
 ALTER TABLE SALE ADD SALES INT
 UPDATE SALE SET SALES =0 WHERE ITEMS='APPLE'
 UPDATE SALE SET SALES =0 WHERE ITEMS='MI'
 UPDATE SALE SET SALES =0 WHERE ITEMS='SAMSUNG'
 UPDATE SALE SET SALES =0 WHERE ITEMS='VIVO'
 UPDATE SALE SET SALES =0 WHERE ITEMS='REDMI'


CREATE PROC P3
@qty as int, @p as varchar(50)
AS
BEGIN
     update sale set stock = stock- @qty where items=@p
END

P3 50 , 'apple'



CREATE PROC P4
@qty as int, @p as varchar(50)
AS
BEGIN
     update sale set sales = sales  + @qty where items=@p
     END

P4 100 , 'vivo'

create procedure A11
@qty as int , @p as varchar(50)
AS
Begin
        UPDATE SALE SET SALES = SALES + @QTY WHERE ITEMS = @P
        END

        A11 200, 'VIVO'




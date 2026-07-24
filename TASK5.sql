create table Emp6
(
 Empid int, Name varchar (50),City varchar (50), Salary varchar(50),Department varchar(50)
 )

 SELECT * FROM Emp6

 insert into Emp6 values(1,'A','pune',25000,'IT'),
 (2,'B','mumbai',26000,'HR'),
 (3,'C','Beng',30000,'IT'),
 (4,'D','pune',50000,'HR'),
 (5,'E','delhi',31000,'SALES'),
 (6,'F','pune',35000,'FINANACE'),
 (7,'G','mumbai',20000,'IT'),
 (8,'H','New Delhi',50000,'MARKETING'),
 (9,'I','mumbai',90000,'SALES'),
 (10,'J','New Delhi',32000,'HR')

 update Emp6 set Salary = salary + (Salary * 20/100) where Department='IT'

 update Emp6 set Salary = salary + (Salary * 10/100) where Department='HR'

 update Emp6 set Salary = salary + (Salary * 5/100) where Department='SALES' or Department= 'Marketing' or Department='Finance' 

 UPDATE Emp6
SET Salary = CASE
                WHEN Department = ' IT' THEN Salary * 1.20
                WHEN Department = 'HR' THEN Salary * 1.10
                ELSE Salary * 1.5
             END
WHERE Department IN ('SALES', 'Marketing','Finance')


update Emp6
set salary = CASE 
                    when department = 'IT' THEN Salary + (Salary * 20 / 100)
                    WHEN department = 'HR' THEN Salary + (Salary * 10 / 100)

                    ELSE Salary + (Salary * 5 / 100)
end

 





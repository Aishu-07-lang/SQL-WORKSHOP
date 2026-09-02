CREATE TABLE Employees
(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    City VARCHAR(50),
    JoiningDate DATE
);

INSERT INTO Employees VALUES
(1, 'Aishu', 'IT', 55000, 'Pune', '2022-01-10'),
(2, 'kishu', 'HR', 45000, 'Mumbai', '2021-05-15'),
(3, 'akishu', 'IT', 75000, 'Pune', '2020-03-20'),
(4, 'rushi', 'Finance', 65000, 'Nashik', '2023-07-01'),
(5, 'rohan', 'IT', 60000, 'Mumbai', '2021-11-10'),
(6, 'prathmesh', 'HR', 50000, 'Pune', '2022-09-15'),
(7, 'sushant', 'Finance', 80000, 'Pune', '2019-12-01'),
(8, 'vicky', 'IT', 90000, 'Mumbai', '2018-06-10');

select * from Employees 
create function A1 (@department as varchar(50))
returns table
as
   return ( select * from Employees where department = @department)


select * from A1('IT')


CREATE FUNCTION B1 (@MINSALARY AS INT , @MAXSALARY AS INT)
RETURNS TABLE
 AS 
      RETURN (SELECT EMPID, DEPARTMENT,SALARY FROM EMPLOYEES WHERE SALARY BETWEEN @MINSALARY AND @MAXSALARY )

SELECT * FROM B1 (50000,80000)


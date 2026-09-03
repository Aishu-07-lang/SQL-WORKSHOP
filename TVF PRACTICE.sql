create function e11(@city as varchar(50))
returns table
as
  return (select * from Employees where city = @city)

select * from e11 ('mumbai')

drop function e11

create function e12(@MINSAL  as int , @MAXSAL AS INT)
returns table
 as
   return (select * from employees where salary between @MINSAL AND @MAXSAL ) 
select * from e12(30000,40000)
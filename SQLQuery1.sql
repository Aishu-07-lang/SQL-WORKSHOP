

create procedure proc1
@amt as int, @transfer as int ,@receiver as int
AS
Begin
     update emp5  set salary = salary - @amt where empid=@transfer
     end
proc1 1 ,4, 500

declare 

select * from emp5

#store procedure
 #banking-

 
 create table cust2
(accountno int,amount int)

 select*from cust2

 insert into cust2 values(1,5000),(2,2000),(3,4000),(4,8000)

 create proc trans1
 @transfer as int, @receiver as int,@amt int
 as begin
 update cust2 set amount=amount - @amt where accountno=@transfer
 update cust2 set amount=amount + @amt where accountno=@receiver
 end

 declare @transfer as int,@amt as int
 set @transfer = @amt
  if @transfer <=  @amt
     print 'some msg'

 trans1 2,3,6000

 #if else statement-
DECLARE @A AS INT
SET @A = 4
 IF @A % 2 = 0
 
           PRINT 'EVEN'
 ELSE 
       PRINT 'ODD'



DECLARE @A AS INT
SET @A = 2026
 IF @A % 4 = 0
 
           PRINT 'LEAP YEAR'
 ELSE 
       PRINT 'NOT LEAP YEAR'


DECLARE @MARKS AS INT 
SET @MARKS =30

IF @MARKS >=75
PRINT 'DISTINATION'

 ELSE IF @MARKS >=60
     PRINT 'FIRST CLASS'

   ELSE IF @MARKS >=45
         PRINT 'SECOND CLASS'

        ELSE IF @MARKS >=35
           PRINT 'THIRD CLASS'

            ELSE
                PRINT 'FAIL'





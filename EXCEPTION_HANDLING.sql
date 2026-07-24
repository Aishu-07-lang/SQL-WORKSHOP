#exception handling

select 10/0 #Divide by zero error encountered.


begin try
select 20/5
select 20/0
select 10/2
end try

begin catch
    print 'do not divide by zero'
   
end catch


#SEVERITY


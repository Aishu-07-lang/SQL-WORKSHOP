Create Function Welcome()
Returns Varchar(100)
As
Begin
     return 'Hello Good Morning....'
END

 select dbo.Welcome()

 Create function Addition(@a  as int , @b as int)
 Returns int
 As 
 Begin
         Return (@a + @b)
END


create function square(@num as int)
Returns Int
As
Begin
     Return (@num * @num)
END

select dbo.square(50)





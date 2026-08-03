select * from S3
begin transaction 
insert into s3 values (11,'a','pune',852123458,23,10000,getdate())
insert into s3 values (12,'b','mumbai',9881390227,22,17000,getdate())
insert into s3 values (13,'c','delhi',8010780580,24,23000,getdate())

commit transaction

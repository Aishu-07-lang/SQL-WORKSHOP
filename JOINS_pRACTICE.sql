create database Library
use Library
Create table Books (BookId int primary key,BookName varchar(50), Author varchar(50),Price float)
insert into Books values (1,'peace of mind','kalam',200.5),
						(2,'python','ABC',560.7),(3,'Java Programming','PQR',800.8),
						 (4,'Data Science','John',100.6);
create table Members(MemberId int primary key,MemberName varchar(20),City varchar(50),BookId int foreign key(Books) references 
insert into Members values (1,'Aishwarya','Pune'),
					(2,'ABC','Mumbai'),
					(3,'XYZ','Nashik'),
					(4,'dfg','Nagpur');
select * from Members
alter table Books add  class varchar(50)
select *from Books
update Books set class='dfd' where BookId=1

insert into members(MemberId,MemberName) values(1,'TFH'))



'
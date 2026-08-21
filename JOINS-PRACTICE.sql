use joins

create table customers1 (cid int primary key, cname varchar(50),cprice decimal (10,2))

insert into customers1 values (1,'aa',233),(2,'ak',234),(3,'aa',233),(4,'aa',234),(5,'aa',235),(6,'ak',235),(7,'ag',253),(8,'at',239)

select*from customer

create table orders1 (oid int primary key,oname varchar(50),oquantity int)

insert into orders1 values (1,'aa',4),  (2,'aa',44), (3,'hg',44), (4,'ak',7), (5,'hh',5), (6,'hg',4), (7,'hj',49)

select*from orders1

select customers1.cid,orders1.oid from customers1 inner join  orders1 on customers1.cid=orders1.oid

select customers1.cid ,orders1.oid from customers1 inner join orders1 on c.id=o.id

 
create database Practise;
use Practise;
create table products (ProductId int primary key,ProductName varchar(50),ProductPrice float(50));
insert into  products values (101,'Laptop',55000),
					(102,'Mouse',2000),
					(103,'keyboard',4000),
					(104,'printer',8000);
select * from products;

use Practise;
create table Orders (OrderId int primary key,CustomerName varchar(50),Quantity int,ProductId int,
					FOREIGN KEY(ProductId) REFERENCES products (ProductId));

Insert into Orders values
(1,'Aishu',10,101),
(2,'Riya',10,102),
(3,'Krish',13,103),
(4,'Swaru',15,104);

select * from Orders;

alter table products add Stock int;

update products set ProductName where ProductId=101;

Delete from products where ProductId=101;

select * from products order by ProductPrice ASC;

insert into products values(23,'Computers',60000,7);

select (ProductName,ProductPrice) from products


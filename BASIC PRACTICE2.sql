use practice2

----------------------------SQL Statements-----------------------------
create table Demo
(id int ,name varchar(50),city varchar(50),email varchar(50),contact Bigint)

insert into demo values 
(1,'a','pune','abc@gmail.com',9307522204),
(2,'b','mumbai','bca@gmail.com',7798255652),
(3,'c','delhi','cds25@gmail.com',8010780580),
(4,'d','beng','akj725@gmail.com',7517483817),
(5,'e','ppur','pam@gmail.com',9881390227)

select * from demo

insert into demo (name) values ('aishu')

insert into demo (id,city,contact)  values (6,'pune',864364836)

insert into demo (name,email) values ('kiara','kiara@gmail.com')

update demo set name ='aishwarya' where id=6

alter table  demo add age int

alter table demo alter column  city char (10)

alter table demo  drop column age

delete from demo where id=6

truncate table demo
drop table demo
--------------clauses----------------------------------------------------
select * from demo order by name
select * from demo order by  name desc
select * from demo order by id
select * from demo order by id  desc

select  count(*) name   from demo group by name
select  contact from demo  group by contact order by contact desc

--------------------------------Constraint-----------------------------------
create table demo1 (id int primary key,
name  VARCHAR(50) not null,
AGE INT CHECK(AGE>=18), 
CONTACT BIGINT UNIQUE,
DOJ DATE DEFAULT ('2026-08-12'))
SELECT * FROM DEMO1

INSERT INTO DEMO1 VALUES 
(1,'A',23,943574835,''),
(2,'B',19,954584959,''),
INSERT INTO DEMO1 VALUES(3,'C',24,954586759,DEFAULT)











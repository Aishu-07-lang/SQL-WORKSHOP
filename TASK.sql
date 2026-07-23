use Task
create table TableA ( A INT NULL);
insert into TableA values(1),(1),(1),(2),(3),(4)

select *from TableA

create table TableB ( B INT NULL);
insert into TableB values(NULL),(1),(1),(2),(2),(3),(5)


select *from TableB

SELECT * FROM TableA INNER JOIN TableB  ON TableA.A  = TableB.B

SELECT * FROM TableA LEFT JOIN TableB  ON TableA.A  = TableB.B
SELECT * FROM TableA RIGHT JOIN TableB  ON TableA.A  = TableB.B
SELECT * FROM TableA FULL JOIN TableB  ON TableA.A  = TableB.B
SELECT * FROM TableA CROSS JOIN TableB  

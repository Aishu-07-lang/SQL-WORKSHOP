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



A					B
NULL				NULL
1					1
1					1	
1					2
2					2
3					3
4					5

													
DISTINCT-5												INNER JOIN-9
UNION-	6												RIGHT JOIN-11
UNION ALL-14											LEFT JOIN-11
INTERSECT-	4											FULL OUTER JOIN-9+2+2=13
														CROSS JOIN-49

#2july
join-merge two or more tables,used for reporting purpose

Tpyes
1.inner -coomon data fetched,matching the data from both table/common data
left- all data from left side table and only matching data from right side table
right
full
cross



A			B
1			1
2			3
3			4
5			5
6			7
                                         cartesian join
FOJ=
1	1									5*5=25
	null
2		3
		4
3		5
5		null
6


A				B
NULL		NULL
1			NULL
1				1
2				2
3				3
NULL			4
3				4
5				5
6

I=
1 2 3  3 5
L=10
R=7+3=10
F=7+3+3=13
CJ=9*8=72


#3july

customer and orders are 2tables


#july 6

HOW TO JOINS 3 TABLES
USE practice2
CREATE TABLE C
( AID INT )
SELECT *FROM C
INSERT INTO  C VALUES(4)

SELECT *FROM A LEFT  JOIN B ON A.AID=B.AID  LEFT JOIN C ON A.AID=B.AID


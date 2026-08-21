create table A (AId int)
insert into A values (1),(2),(3),(4),(5)
select * from A

CREATE TABLE B (BID INT)
insert into B values (2),(3),(3),(4),(5),(6)
select * from B

Create table C (CId Int)
insert into C values (2),(1),(3),(4),(5),(7)

select * from A
inner join B
on
a.Aid = b.Bid
on 
a.aid= c.cid
 
select * from A
LEFT join B
on
a.Aid = b.Bid
on 
a.aid= c.cid
 
 select * from A
RIGHT join B
on
a.Aid = b.Bid
on 
a.aid= c.cid
 select * from A
FULL OUTER join B
on
a.Aid = b.Bid
on 
a.aid= c.cid

select * from A
CROSS join B
on
a.Aid = b.Bid
on 
a.aid= c.cid
 
 
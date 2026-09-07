create table Inventory (id int, product varchar(50),sale int)

insert into Inventory values
(1,'IPHONE',500),
(2,'VIVO',300),
(3,'MI',600),
(4,'SAMSUNG',750),
(5,'REDMI',400),
(6,'ONEPLUS',100)
drop table inventory
SELECT * FROM Inventory;

CREATE PROCEDURE P11
    @qty INT,
    @p VARCHAR(50)
AS
BEGIN
    UPDATE Inventory
    SET sale = sale - @qty
    WHERE product = @p;
END;

P11 200 , 'IPHONE'
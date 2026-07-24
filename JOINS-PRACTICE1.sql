create table car_brands(Bid int,Bname char(20),country varchar(20))

select * from car_brands
insert into car_brands values(7,'audi','germany')

CREATE TABLE CAR_MODELS(MODEL_ID INT,Bid int,MODELS_NAME VARCHAR(20),PRICE FLOAT)

SELECT*FROM CAR_MODELS

INSERT INTO CAR_MODELS VALUES(101,1,'FORTUNER',4200000)
INSERT INTO CAR_MODELS VALUES(102,2,'INNOVA',3100000)

INSERT INTO CAR_MODELS VALUES(103,3,'CRETA',1800000)

INSERT INTO CAR_MODELS VALUES(104,4,'NEXON',3000000)

INSERT INTO CAR_MODELS VALUES(105,5,'SCORPIO',2300000)

INSERT INTO CAR_MODELS VALUES(106,6,'A4',5400000)

INSERT INTO CAR_MODELS VALUES(107,7,'SCORPIO N',2500000)

select * from car_brands inner join CAR_MODELS on car_brands.Bid = CAR_MODELS.Bid
select * from car_brands LEFT join CAR_MODELS on car_brands.Bid = CAR_MODELS.Bid
select * from car_brands RIGHT join CAR_MODELS on car_brands.Bid = CAR_MODELS.Bid
select * from car_brands FULL OUTER join CAR_MODELS on car_brands.Bid = CAR_MODELS.Bid
select * from car_brands CROSS join CAR_MODELS 
TRUNCATE table CAR_MODELS

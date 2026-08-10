use student
select * from s1

SELECT *
FROM S1
WHERE NAME LIKE '%a'

SELECT *
FROM S1
WHERE NAME LIKE 'A%'

SELECT *
FROM S1
WHERE NAME  LIKE '%ki%'

SELECT *
FROM S1
WHERE NAME  LIKE '_A%'

SELECT *
FROM S1
WHERE NAME  LIKE '_____'

#'A%'     -- starts with A
#'%A'     -- ends with A
#'%A%'    -- contains A
#'_A%'    -- second character is A
#'_____'  -- exactly 5 characters


SELECT *
FROM S1
WHERE NAME NOT LIKE 'A%'

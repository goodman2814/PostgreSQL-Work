--Excercise #1
SELECT pfirstname || ' ' || plastname || ' has ' || CAST(ppoints AS TEXT) || ' points.' 
AS "Customer Points" 
FROM people 
ORDER BY ppoints DESC;

--Excercise #2
SELECT pfirstname || ' ' || plastname || ' is ' || CAST(EXTRACT(day FROM CAST('now' AS DATE) - pdob) AS INT) / 365|| ' years old.'
AS "AGE"
FROM people
ORDER BY "AGE";

--Excercise #3
SELECT CAST(pid AS INT) AS "one", CAST(pid AS NUMERIC) AS "two", CAST(pid AS TEXT) AS "three" 
FROM people;

--Excercise #4
SELECT 2 ^8;
SELECT 1000/150;
SELECT 1000%150;
SELECT 400/34.3;
SELECT 400%34.3;
SELECT ROUND(400/34.3, 4);

SELECT 85>64;
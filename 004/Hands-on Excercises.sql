--Hands-on Excercises
--Excercise #1
SELECT DISTINCT pcity FROM people ORDER BY pcity ASC;

--Excercise #2
SELECT DISTINCT pcity AS "TOWNS" FROM people ORDER BY pcity;

--Excercise #3
SELECT pfirstname || ' ' || plastname AS "Full Name" FROM people ORDER BY plastname;
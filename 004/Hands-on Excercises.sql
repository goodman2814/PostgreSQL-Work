--Hands-on Excercises
--Excercise #1
SELECT DISTINCT pcity FROM people ORDER BY pcity ASC;

--Excercise #2
SELECT DISTINCT pcity AS "TOWNS" FROM people ORDER BY pcity;

--Excercise #3
SELECT pfirstname || ' ' || plastname AS "Full Name" FROM people ORDER BY plastname;

--Excercise #4
SELECT pstate || ' has the city ' || pcity  AS "TOWNS" FROM people ORDER BY pstate DESC, pcity ASC;

--EXCERCISE #5
SELECT lidesired AS "Desired Items", 
lipurchased AS "Items Purchased", 
lidesired - lipurchased AS "Items Still Desired" 
FROM listitems 
ORDER BY "Items Still Desired" DESC;

--EXCERCISE #6
SELECT ROUND((1 - (CAST(lidesired - lipurchased AS NUMERIC)/CAST(lidesired AS NUMERIC)))*100, 2) || '%' 
AS "Fullfilment" 
from listitems;

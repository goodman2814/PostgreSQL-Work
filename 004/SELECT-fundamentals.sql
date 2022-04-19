--SELECT command
SELECT * from people;

--DISTINCT command
SELECT DISTINCT pcity FROM people;
SELECT DISTINCT pcity, pstate FROM people;

--ORDER BY command
--ASC is default order
SELECT * FROM people ORDER BY plastname DESC;
SELECT pfirstname, plastname FROM people ORDER BY pfirstname DESC;

--ORDER BY multiple
SELECT * FROM people ORDER BY pstate DESC, pcity;

--Naming Results
SELECT pfirstname AS "First Name", plastname AS "Last Name", pcity AS "City" FROM people;

--Literal
SELECT pfirstname, 'lives in' AS "lives in", pcity FROM people;

--Expression
SELECT 4*30 as result;
SELECT lidesired, lipurchased, lidesired - lipurchased AS "Remaining Desire" FROM listitems;

--Concatenation
SELECT pfirstname || ' lives in ' || pcity AS "Hometown" FROM people;
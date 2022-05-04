--CASTING

SELECT CAST(ppoints as TEXT) FROM people;

SELECT ppoints AS "one", CAST(ppoints AS NUMERIC) AS "two" FROM people;

SELECT pid AS "one", CAST(pid AS NUMERIC) As "two" FROM people;


--MATH
SELECT 42.3 AS "number";
SELECT 42.3 +5 AS "addition";
SELECT 42.3 * 5 AS "multiplication";
SELECT 2 ^8 AS "to the power of";
SELECT 2 ^16 AS "to the power of";
SELECT 9%2 AS "remainder";
SELECT 999%50 AS "remainder";
SELECT 999/50 AS "division";
SELECT 999/50 AS "result", 999%50 AS "remainder";

-- rounding
SELECT ROUND(42.3, 2) AS "round w/two decimals";
SELECT ROUND(42.3, 0) AS "round w/zero decimals";
SELECT ROUND(42.3);
SELECT ROUND(42.9);
SELECT ROUND(42.9, 4);

--absolute VALUE
SELECT @ -42.3 AS "absolute value";

--Time Examples

SELECT CAST('now' AS TIMESTAMP);
SELECT CAST('1999-01-08 04:05:06' AS TIMESTAMP) - CAST('now' AS TIMESTAMP);
SELECT CAST('5 YEARS 3 MONTHS' AS INTERVAL);
SELECT CAST('now' AS TIMESTAMP) + CAST('5 YEARS 3 MONTHS' AS INTERVAL);
SELECT CAST('now' AS TIMESTAMP) + CAST('5Y 3MON' AS INTERVAL);
SELECT CAST('now' AS TIMESTAMP) + CAST('5 Y 3 MON 2 W 20 D 14 H 58 M 48 S' AS INTERVAL);
SELECT CAST('1-2 3 0:0:0' AS INTERVAL);
SELECT CAST('P0001-2-3T0:0:0' AS INTERVAL);
 
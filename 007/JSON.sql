--JSON
SELECT CAST('{"name": "POSTGRES", "version": 12.1}' AS JSONB) ->> 'version';

--Accessing Fields
SELECT CAST(CAST('{"name": "Postgres", "version": "12.1.0", "versionInfo": {"major": 12, "minor": 1, "patch": 0}}' 
AS JSONB) 
-> 'versionInfo' -> 'major' AS INT);

--JSON null and SQL NULL

SELECT CAST('{"name": null}' AS JSONB), NULL;

--Containment

SELECT CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) 
@> CAST('{"name": "Bob"}' AS JSONB);

SELECT CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) 
@> CAST('{"favoriteFoods": ["Banana"]}' AS JSONB);

SELECT CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) 
@> CAST('{"favoriteFoods": ["Apple"]}' AS JSONB);

--Existence

SELECT CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) 
-> 'favoriteFoods'?'Banana';

SELECT CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) 
-> 'favoriteFoods'?'Apple';
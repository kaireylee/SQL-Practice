/*6/7/8: Query the list of CITY names starting/ending/both with vowels
(i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

9/10/11/12: Query the list of CITY names from STATION that do not start/end/either/both with vowels.
Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou]'

-------------

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[aeiou]$'

--------------

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$'

--------------

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou]'

--------------

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[^aeiou]$'

--------------

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '(^[^aeiou]|[^aeiou]$)'

--------------

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou].*[^aeiou]$'

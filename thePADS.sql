/*Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical 
(i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format: */

SELECT concat(NAME,concat("(",LEFT(occupation,1),")"))
FROM OCCUPATIONS
ORDER BY NAME ASC;

select CONCAT("There are a total of", " ",COUNT(occupation), " ",Lower(occupation),"s",".")AS stat
from OCCUPATIONS
group by occupation
order by COUNT(occupation) ASC,occupation

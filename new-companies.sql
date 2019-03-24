/*Given the table schemas below, write a query to print the company_code, 
founder name, total number of lead managers, total number of senior managers, 
total number of managers, and total number of employees. 
Order your output by ascending company_code.*/

select 
    c.company_code, 
    c.founder, 
    count(distinct e.lead_manager_code), 
    count(distinct e.senior_manager_code), 
    count(distinct e.manager_code),
    count(distinct e.employee_code) 
from Company c
    inner join employee e on e.company_code = c.company_code
group by c.company_code, c.founder order by c.company_code;


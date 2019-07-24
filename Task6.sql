/*
Write a query in SQL to display job title and average salary of employees.
Vezife adlarini ve hemin vezife uzre orta maasi cixarin.
*/

select j.job_title,round(avg(e.salary))avgsalary
from employees e join jobs j on  e.job_id = j.job_id
group by j.job_title
/

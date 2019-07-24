/*
Display department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.
5 ilden cox is tecrubesi olan menecerlerin islediyi departament adi, menecerin adi ve maasini cixarin.

*/


select d.department_name,e.first_name,e.salary,e.hire_date
from employees e join departments d on e.employee_id = d.manager_id 
where months_between(sysdate,e.hire_date) > 5*12
/

/*
Display department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.
5 ilden cox is tecrubesi olan menecerlerin islediyi departament adi, menecerin adi ve maasini cixarin.

*/


select d.department_name,em.first_name,em.salary,em.hire_date,count(e.employee_id)
from employees e join employees em on e.manager_id = em.employee_id
join departments d on d.department_id = em.department_id
where months_between(sysdate,em.hire_date) > 5*12
group by d.department_name,em.first_name,em.salary,em.hire_date
/

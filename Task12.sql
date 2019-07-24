/*
Display employee name if the employee joined before his manager.

Menecerinden daha evvel shirketde ise baslamis iscilerin adlarini yazin.
*/



select e.first_name,e.last_name,e.hire_date
from employees e join employees em  on e.manager_id = em.employee_id
where e.hire_date < em.hire_date
/

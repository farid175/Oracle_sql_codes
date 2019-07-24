/*
Display department name, average salary and number of employees with commission within the department.

Satisdan komissiya alan iscilerin islediklerin departament adi, orta maaslarini ve departament uzre isci sayini qruplasdirin yazin.
*/


select d.department_name,round(avg(e.salary))avg_salary,count(e.employee_id)employees
from employees e join departments d on e.department_id = d.department_id
where e.commission_pct is not null
group by d.department_name
/

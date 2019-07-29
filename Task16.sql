/*
Display the department id, name, month in which more than 5 employees joined in any department located in Seattle.

Seattle-da eyni ayda 5-den cox yeni isci qosulmus departmentlerin siyahisini, ayin adini yazin.
*/



select extract(month from e.hire_date)month,count(e.employee_id)employees
from employees e join departments d on e.department_id = d.department_id
join locations loc on loc.location_id = d.location_id
where loc.city = 'Seattle'
group by extract(month from e.hire_date),loc.city
having count(e.employee_id) > 5
/

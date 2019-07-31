/*
Display country name, city, and number of departments where department has more than 5 employees.

5-den cox iscisi olan departamentlerin yerlesdiyi olke adi, seher adi ve departament sayini cixarin
*/



select loc.city,c.country_name,count(distinct d.department_id)departments
from employees e join departments d on e.department_id = d.department_id
join locations loc on loc.location_id = d.location_id
join countries c on c.country_id = loc.country_id
group by loc.city,c.country_name
having count(e.employee_id) > 5
/

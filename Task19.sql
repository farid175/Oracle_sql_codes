/*
Display how many employees joined in each month of the current year.

Cari ilde her ay neche iscinin qosuldugunu tapin.
*/


select extract(month from e.hire_date)month,count(e.employee_id)employees
from employees e
where extract(year from e.hire_date) = extract(year from sysdate)
group by extract(month from e.hire_date)
order by 1
/

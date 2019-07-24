/*
Write a query in SQL to display the full name (first and last name), and salary of those employees who working in any department located in London.

Londonda isleyen butun iscilerin melumatlarini cixarin(ad, soyad, maas ve departament ad).
*/


select e.first_name,e.last_name,e.salary,d.department_name
from employees e join departments d on e.department_id = d.department_id
join locations loc on loc.location_id = d.location_id
where loc.city = 'London'
/

/*
Display manager ID, first name, last name and number of employees managed by the manager.

Menecerin id, ad, soyad ve ona tabe olan iscilerin siyahisini cixarin.
*/


select em.employee_id,em.first_name,em.last_name,count(e.employee_id)employees
from employees e join employees em on e.manager_id = em.employee_id
group by em.employee_id,em.first_name,em.last_name
/

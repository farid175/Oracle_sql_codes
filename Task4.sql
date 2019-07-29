    /*
    Display departments where any manager is managing more than 5 employees.
    Ele departamentlerin siyahisini cixarin ki, ordan iscilerinin sayi 5-den cox olan menecerler olsun.
    */


select em.department_id, d.department_name, count(e.employee_id) employees
from employees e join employees em on e.manager_id = em.employee_id
    join departments d on d.department_id = em.department_id
group by em.department_id,d.department_name
having count(e.employee_id) > 5
/

    /*
    Display departments where any manager is managing more than 5 employees.
    Ele departamentlerin siyahisini cixarin ki, ordan iscilerinin sayi 5-den cox olan menecerler olsun.
    */


select d.department_id,d.department_name,count(e.employee_id)employees
from employees e join departments d on e.manager_id = d.manager_id
group by d.department_id,d.department_name
having count(e.employee_id) > 5
/

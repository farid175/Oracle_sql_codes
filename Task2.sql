    /*
    Instructions

    Display the departments into which no employee joined in last two years.
    Son 2 ilde hec bir yeni iscisi olmayan departamentlerin siyahisini(id, ad) cixarin.
    */

select d.department_name,d.department_id,e.hire_date
from employees e right join departments d on e.department_id = d.department_id and extract(year from e.hire_date) >= (extract(year from sysdate)-2) 
group by d.department_name,d.department_id,e.hire_date,d.manager_id
having e.hire_date is null and d.manager_id is not null
/

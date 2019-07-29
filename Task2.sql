    /*
    Instructions

    Display the departments into which no employee joined in last two years.
    Son 2 ilde hec bir yeni iscisi olmayan departamentlerin siyahisini(id, ad) cixarin.
    */

select d.department_id,d.department_name,max(extract(year from e.hire_date))
from employees e join departments d on e.department_id = d.department_id
group by d.department_id,d.department_name
having max(extract(year from e.hire_date)) < (extract(year from sysdate)-2) 
/

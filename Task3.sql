    /*
    Instructions

    Display department ID, name, year, and Number of employees joined.
    Departamentlerin iller uzre qosulmus iscilerin sayini cixarin
    */



select d.department_id,d.department_name,extract(year from e.hire_date),count(employee_id)as employee
from employees e join departments d on e.department_id = d.department_id
group by d.department_id,d.department_name,extract(year from e.hire_date)
/

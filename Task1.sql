    /*
    Instructions

    Display the first name and join date of the employees who joined between 2002 and 2005.

    2002-2005-ci illerde shirkete qosulmus iscilerin siyahisini cixarin (id, ad, soyad ve ise baslama tarixi)
    */


select e.employee_id,e.first_name,e.last_name,e.hire_date
from employees e
where e.hire_date between to_date('01,01,2002','dd,mm,yyyy') and to_date('31,12,2005','dd,mm,yyyy')
/

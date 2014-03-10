select department_name, last_name||', '||first_name,
       row_number() over
       (partition by department_name
        order by last_name||', '||first_name nulls last) 
        "Row Number"
from department, employee
where department = fk_department(+);

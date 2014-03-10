select department_name, sum(wages) "Total Wages",
       ratio_to_report(sum(wages)) over() as wage_ratio
from department, employee
where department = fk_department
group by department_name;

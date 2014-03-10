column gdr noprint
break on gender
select decode(grouping(gender),1, 'Total Wages', gender) gender, 
       decode(grouping(department),1, 'Total Per Gender', department)
department,
       sum(wages), 
       grouping(gender) as gdr 
from department, employee
where department = fk_department
group by rollup(gender, department)
order by 1,4;

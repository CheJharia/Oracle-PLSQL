select department_name, last_name||', '||first_name name,
       sum(tool_cost) "Tool Costs",
       percent_rank() over
       (partition by department_name
        order by sum(tool_cost)) percent
from department, employee, emp_tools
where department = fk_department
  and payroll_number = fk_payroll_number
group by department_name, last_name, first_name
order by 1, 3 desc;

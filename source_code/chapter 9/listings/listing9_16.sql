select department, purchase_date, tool_cost,
        avg(tool_cost) over
        (partition by department
         order by purchase_date
         range interval '20' year preceding) balance
from department, employee, emp_tools
where department = fk_department
  and payroll_number = fk_payroll_number;

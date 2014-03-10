select department, purchase_date, tool_cost,
        avg(tool_cost) over 
        partition by department
        range between interval '20' year preceding
          and interval 'year' following) balance
from department, employee, emp_tools
where department = fk_department
and payroll_number = fk_payroll_number;

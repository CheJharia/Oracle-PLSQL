select last_name, wages, eyeglass_cost, tool_cost
from employee,
    (select fk_payroll_number, sum(cost) eyeglass_cost
     from glasses
     group by fk_payroll_number) glasses_iv,
    (select fk_payroll_number, sum(tool_cost) tool_cost
     from emp_tools
     group by fk_payroll_number) emp_tools_iv
where payroll_number = glasses_iv.fk_payroll_number(+)
  and payroll_number = emp_tools_iv.fk_payroll_number(+);


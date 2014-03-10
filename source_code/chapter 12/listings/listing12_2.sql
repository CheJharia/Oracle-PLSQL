delete from plan_table;
explain plan for
select last_name, first_name, wages, tool_cost, eyeglass_cost
from employee,
     (select fk_payroll_number, sum(tool_cost) tool_cost
      from employee, emp_tools
      where payroll_number = fk_payroll_number(+)
      group by fk_payroll_number) tools,
     (select fk_payroll_number, sum(cost) eyeglass_cost
      from employee, glasses
      where payroll_number = fk_payroll_number(+)
      group by fk_payroll_number) glasses
where payroll_number = tools.fk_payroll_number
  and payroll_number = glasses.fk_payroll_number;

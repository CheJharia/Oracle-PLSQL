select last_name||', '||first_name name,
       tool_cost + cost "Equipment_cost",
       rank () over (order by tool_cost+cost asc nulls first)
from employee, 
     (select fk_payroll_number, sum(tool_cost) tool_cost
      from employee, emp_tools
      where payroll_number = fk_payroll_number(+)
      group by fk_payroll_number) t,
     (select fk_payroll_number, sum(cost) cost
      from employee, glasses
      where payroll_number = fk_payroll_number(+)
      group by fk_payroll_number) g
where payroll_number = t.fk_payroll_number(+)
  and payroll_number = g.fk_payroll_number(+);
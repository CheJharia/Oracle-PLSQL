delete from plan_table;
explain plan for
select last_name, first_name, wages, tool_cost, sum(cost) eyeglass_cost
from employee,glasses,
     (select fk_payroll_number, sum(tool_cost) tool_cost
      from employee, emp_tools
      where payroll_number = fk_payroll_number(+)
      group by fk_payroll_number) tools
where payroll_number = tools.fk_payroll_number
  and payroll_number = glasses.fk_payroll_number
group by last_name, first_name, wages, tool_cost;

select lpad(' ',2*(level-1)) || operation ||
       ' ' || options || ' '|| object_name ||
       ' ' || decode(id, 0, 'Cost = '||position )
       "Execution Plan"
from plan_table
start with id = 0
connect by prior id = parent_id;

select purchase_date, last_name||', '||first_name, 
             cost eyeglass_cost,
             sum(cost) over (order by purchase_date 
             rows unbounded preceding) balance
      from employee, glasses
      where payroll_number = fk_payroll_number;


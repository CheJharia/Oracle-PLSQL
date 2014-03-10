select department, sum(cost) "Total Eyeglass Cost",
       ratio_to_report (sum(cost)) over () as cost_ratio
from department, employee, glasses
where department = fk_department(+)
  and payroll_number = fk_payroll_number
group by department;

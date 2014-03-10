select last_name, wages, tax_rate, wages*tax_rate taxes
from employee, tax_rates
where wages between bottom_wage and top_wage
order by tax_rate;

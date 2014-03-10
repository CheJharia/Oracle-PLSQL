select employment_date, employment_date+365,
       add_months(employment_date, 12)
from employee
where last_name = 'BUSH';

Select last_name, first_name, employment_date
from employee
where mod(to_number(to_char(employment_date, 'yy')), 3) = 0;

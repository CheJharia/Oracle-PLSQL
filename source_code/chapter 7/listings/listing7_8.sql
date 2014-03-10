select birth_date, last_day(birth_date),
     to_char(last_day(birth_date), 'DAY')
from employee
where last_name = 'WILSON';

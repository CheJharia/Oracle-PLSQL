select last_name, 
       next_day(add_months(birth_date, 432), 'SATURDAY')
from employee
where fk_department = 'POL';

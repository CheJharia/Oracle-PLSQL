select last_name, birth_date,
       mod(to_number(substr(birth_date, 8, 2)), 4)
from employee
where fk_department = 'POL';

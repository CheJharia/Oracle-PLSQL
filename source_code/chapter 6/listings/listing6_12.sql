select last_name, translate(last_name, 'O', 'A')
from employee
where fk_department = 'POL';


select last_name, ltrim(last_name, 'RON')
from employee
where fk_department = 'POL';

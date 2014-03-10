select last_name, instr(last_name, 'OOS')
from employee
where fk_department = 'POL';

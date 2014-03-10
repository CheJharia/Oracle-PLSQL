select fk_department, last_name, first_name
from employee
where fk_department in ('WEL', 'INT');

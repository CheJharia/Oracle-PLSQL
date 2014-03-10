select last_name, first_name
from employee
where employment_date = (select max(employment_date) from employee);
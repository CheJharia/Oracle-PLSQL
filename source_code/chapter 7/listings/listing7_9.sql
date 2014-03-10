select last_name, months_between(employment_date, birth_date)/12
from employee
where months_between(employment_date, birth_date) > 720;

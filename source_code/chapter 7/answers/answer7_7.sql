Select last_name, first_name, to_char(birth_date, 'dd-MON-YYYY')
from employee
where birth_date < to_date('01-JAN-1890', 'DD-MON-YYYY');

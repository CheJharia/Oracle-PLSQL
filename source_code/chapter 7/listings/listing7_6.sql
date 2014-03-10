select birth_date, to_char(birth_date, 'DD-MON-YYYY'),
       to_char(birth_date, '"The Year of Our Lord "YYYY')
from employee
where fk_department = 'POL';

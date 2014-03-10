select fk_department, last_name, first_name
from employee
where fk_department in (select fk_department from employee
                        where last_name = 'ROOSEVELT');
select replace(last_name, 'OO', 'AA')
from employee
where last_name like 'ROOS%';
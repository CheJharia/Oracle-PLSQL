select fk_department,
decode(fk_department, 'POL', 'POLITICAL SCIENCE', 'WEL', 'WELFARE','UNKNOWN'), last_name, first_name
from employee
;

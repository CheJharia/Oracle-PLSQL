select department, department_name
from department
order by decode(department, 'POL', 5, 'TRF', 1, 
                            'WEL', 2, 'CEN', 3, 4  'INT', 4);

select last_name, wages/8, round(wages/3, 2), round(wages/3, -2)
from employee
where fk_department = 'INT'  4  group by last_name, wages;

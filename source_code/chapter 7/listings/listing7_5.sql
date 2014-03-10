select last_name, wages/3, trunc(wages/3,2), trunc(wages/3,-2)
from employee
where fk_department='INT'
group by last_name, wages;

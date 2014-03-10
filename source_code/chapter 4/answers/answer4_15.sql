Select first_name, last_name, gender, wages, birth_date 
from employee 
where gender = 'M' 
   or wages >= 10000 
   or birth_date > '01-JAN-1920';

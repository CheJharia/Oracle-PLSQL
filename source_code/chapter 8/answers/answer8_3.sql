Select 'Born Before 1920', last_name, first_name, 
       to_char(birth_date, 'DD-MON-YYYY')
from employee
where birth_date < '01-JAN-1920'
union
select 'Born After 1920', last_name, first_name, 
       to_char(birth_date, 'DD-MON-YYYY')
from employee
where birth_date >= '01-JAN-1920'
order by 1 desc, 2;

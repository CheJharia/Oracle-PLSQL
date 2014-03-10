select last_name, employment_date
from employee
where employment_date > to_date('01-JAN-1981')
  and employment_date < to_date('19910101', 'YYYYMMDD');

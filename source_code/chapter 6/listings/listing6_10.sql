select last_name, soundex(last_name), soundex('JOHNSEN')
from employee
where soundex(last_name) = soundex('JOHNSEN');

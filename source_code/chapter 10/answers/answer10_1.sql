create or replace view mailing_list as
select decode(gender, 'M', 'Mr. ', 'F', 'Ms. ')||first_name||' '||last_name name, street, city, state
from employee;
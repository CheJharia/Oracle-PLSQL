set serveroutput on
declare
    current_month       char(3);
  begin
    select to_char(sysdate, 'MON') into current_month from dual;
    if current_month = 'JAN' then
      dbms_output.put_line ('My daughter Jane was born in January');
    elsif current_month = 'FEB' then
      dbms_output.put_line ('My good friend Ron was born in February');
    elsif current_month = 'MAR' then
      dbms_output.put_line ('My father was born in March');
    elsif current_month = 'APR' then
      dbms_output.put_line ('I was born in April');
    elsif current_month = 'MAY' then
      dbms_output.put_line ('My son Matt was born in May');
    elsif current_month = 'OCT' then
      dbms_output.put_line ('My wife was born in October');
    else
      dbms_output.put_line ('I do not have any relatives 
                             born in '||current_month);
    end if;
end;
/

declare
    incorrect_state          exception;
    new_state                employee.state%type;
begin
    select &new_state into new_state from dual;
    if new_state not in ('NE', 'IA', 'OH') then
      raise incorrect_state;
    end if;
exception
    when incorrect_state then
      dbms_output.put_line ('You entered the wrong state code');
      dbms_output.put_line ('Enter NE, IA, or OH');
end;
/

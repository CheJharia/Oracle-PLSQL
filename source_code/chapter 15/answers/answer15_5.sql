declare
        clintons_state      employee.state%type;
        wrong_state         exception;
      begin
        select state into clintons_state
        from employee
        where last_name = 'CLINTON';
        if clintons_state != 'NJ' then
           raise wrong_state;
        end if;
      exception
        when wrong_state then
        dbms_output.put_line ('Clinton has the wrong state value');
      end;
/

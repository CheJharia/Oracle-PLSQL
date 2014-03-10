begin
    insert into employee
      (last_name)
    values ('PETERSEN');
exception
    when others then dbms_output.put_line ('Not Null Value Needed');
end;
/

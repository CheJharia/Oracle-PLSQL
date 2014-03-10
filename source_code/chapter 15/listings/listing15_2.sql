declare
    not_null_vio      exception;
    pragma exception_init (not_null_vio, -1400);
begin
    insert into employee
      (last_name)
    values ('PETERSEN');
exception
    when not_null_vio then dbms_output.put_line ('Not Null Value Needed');
end;
/

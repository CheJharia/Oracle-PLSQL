begin
    insert into employee (last_name)
    values ('PETERSEN');
exception
    when others then dbms_output.put_line (to_char(sqlcode));
                     dbms_output.put_line (sqlerrm);
end;
/

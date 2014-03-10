create or replace procedure goodday is
begin
  dbms_output.put_line ('Good Day to You');
end;
/
execute goodday;
drop procedure goodday;
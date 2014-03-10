set serveroutput on
declare
    cursor name is select max(first_name) fname, 
                   max(last_name) lname
                   from employee;
    names      name%rowtype;
begin
    if not name%isopen then
      open name;
    end if;
    fetch name into names;
    dbms_output.put_line (names.fname||' '||names.lname);
    if name%isopen then
      close name;
    end if;
end;
/

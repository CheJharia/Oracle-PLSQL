create or replace function goodday
  return varchar2
  is
  begin
     return 'Have a Good Day';
  end;
/
declare
   a      varchar2(30);
begin
   a := goodday;
   dbms_output.put_line (a);
end;
/
drop function goodday;


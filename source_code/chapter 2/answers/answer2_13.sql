Create or replace trigger upper_case
Before insert on employee
Referencing new as new
For each row
begin
:New.last_name := upper(:new.last_name);
:New.first_name := upper(:new.first_name);
:New.state := upper(:new.state);
End;
/
drop trigger upper_case;

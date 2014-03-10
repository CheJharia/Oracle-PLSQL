create or replace trigger wages_update
instead of update on wages_difference
for each row
begin
  update employee set wages = :new.wages
  where payroll_number = :new.payroll_number;
end;
/
update wages_update set wages = wages * 1.06
where payroll_number = 2;
Create or replace trigger payroll_number_generator
 Before insert on employee
 Referencing new as new
 For each row
 Begin
   Select payroll_number_sequence.nextval into :new.payroll_number from dual;
 End;
/

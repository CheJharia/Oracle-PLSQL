Create sequence payroll_number_sequence
Increment by 1 start with 200;
Insert into employee (payroll_number, last_name, first_name)
 Values (payroll_number_sequence.nextval, 'QUAYLE', 'DAN');


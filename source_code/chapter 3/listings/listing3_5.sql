insert into employee (payroll_number, last_name, first_name,
 absences, wages, street, city, state, phone, Social_security_number,
 employment_date, birth_date, current_position, fk_department, gender)
 values (1, 'WASHINGTON', 'GEORGE', 3, 14600, 'RR #23', 'MT. VERNON',
 'VA', '402-756-9876', '001-00-0001', 
 to_date('20-MAR-1792', 'DD-MON-YYYY'),
 to_date('21-FEB-1727', 'DD-MON-YYYY'), 'GENERAL', 'INT', 'M');

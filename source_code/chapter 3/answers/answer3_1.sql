Insert into employee (last_name, first_name, payroll_number, fk_department,
        Social_security_number, gender, current_position, wages, birth_date,
        Employment_date, phone, state, street, city)
     Values ('QUAYLE', 'DAN', 50, 'INT',  312-33-9089,  'M', 
       'CHIEF EXECUTIVE', 50000, '09-MAR-42', 
        to_date('20-JAN-2001', 'DD-MON-YYYY'),
       '712-345-9876', 'IN', '1234 WESTERN',  'INDIANAPOLIS');

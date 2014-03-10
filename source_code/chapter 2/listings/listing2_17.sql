create table consultant
(employee_id       	number not null 
   constraint unique_employee_id unique,
 first_name        	varchar2(15),
 last_name         	varchar2(25),
 specialty         	varchar2(30));

drop table consultant;
create table consultant
(employee_id       	number,
 first_name        	varchar2(15),
 last_name         	varchar2(25),
 specialty         	varchar2(30),
 gender            	char(1) 
 constraint gender_validation check (gender in ('M', 'F')));


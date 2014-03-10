create table consultant
(employee_id       number,
 first_name        varchar2(15),
 last_name         varchar2(25),
 specialty         varchar2(30))
 partition by range (employee_id)
 (partition t1 value less than (250) tablespace realistic_employee1,
  partition t2 value less than (500) tablespace realistic_employee2,
  partition t3 value less than (750) tablespace realistic_employee3,
  partition t4 value less than (maxvalue) tablespace realistic_employee4);

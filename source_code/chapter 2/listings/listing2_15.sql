drop table consultant;
create table consultant
   (employee_id       number,
    first_name        varchar2(15),
    last_name         varchar2(25),
    specialty         varchar2(30),
    gender            char(1),
    salary            number default(0),
    constraint gender_edit check(gender in ('M', 'F')));

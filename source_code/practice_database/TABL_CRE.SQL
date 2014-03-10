create table department
 (department       varchar2(4) primary key,
  department_name  varchar2(15));
create table employee
  (payroll_number          number(4) primary key,
   last_name               varchar2(15),
   first_name              varchar2(15),
   absences                   number(2),
   wages                    number(8,2),
   street                  varchar2(20),
   city                    varchar2(15),
   state                        char(2),
   phone                       char(13),
   social_security_number      char(11),
   employment_date                 date,
   birth_date                      date,
   current_position        varchar2(15),
   fk_department           varchar2(4),
   gender                  char(1),
   foreign key (fk_department)
   references department (department));
create table glasses
  (fk_payroll_number       number(4),
   purchase_date                date,
   optician                varchar2(20),
   cost                     number(5,2),
   check_number            varchar2(10),
   primary key (fk_payroll_number, purchase_date),
   foreign key (fk_payroll_number)
   references employee
   on delete cascade);
create table sectab
  (payroll_number          number(4),
   security_option         char(4) not null,
   primary key (payroll_number, security_option));
create table emp_tools
  (fk_payroll_number            number(4),
   purchase_date                     date, 
   payroll_deduct                 char(1)
      check (payroll_deduct in ('Y', 'N')),
   tool_name                 varchar2(15),
   tool_cost                  number(5,2),
   payment_amount             number(5,2),
   last_payment_amount        number(5,2),
   first_payment_date                date,
   last_payment_date                 date,
   primary key (fk_payroll_number, purchase_date, tool_name),
   foreign key (fk_payroll_number)
   references employee
   on delete cascade);
create table wge_maint
  (fk_payroll_number       number(4),
   fk_department_number         char(4),
   classification          varchar2(15),
   classification_date     date not null,
   old_wages                number(8,2),
   new_wages                number(8,2));
create table tax_rates
   (tax_rate                number(2,2) primary key,
    bottom_wage             number(5,0),
    top_wage                number(5,0));
exit;
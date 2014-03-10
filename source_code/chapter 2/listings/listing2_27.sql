Create type Address as object
  (street_number              varchar2(10),
   street                     varchar2(30),
   city                       varchar2(20),
   state                      char(2),
   zip                        char(7));
Create table employees
   (payroll_number            number,
    classification            varchar2(25),
    wages                     number(7,2),
    employment_date           date,
    department                char(3)
    address_t                 address);
Create table customers
   (account_number            number,
    meter_type                varchar2(15),
    billing_style             char(2),
    account_rep               varchar2(20),
    address_t                 address);             

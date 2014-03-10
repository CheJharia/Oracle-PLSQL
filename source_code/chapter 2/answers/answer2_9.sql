Create table manufacturers
(manufacturer                     char(3),
  manufacturer_name               varchar2(20));
Create table circuit_breaker_models
(model                            varchar2(20),
  fk_manufacturer                 char(3),
  gallons_of_oil                  number(4,0),
  kva_rating                      number(4,1),
  amps                            number(4,0),
  weight                          number(6,0));
create table circuit_breakers
(serial_number                    varchar2(20),
 fk_model                         varchar2(20),
 location                         varchar2(30));
create table circuit_breaker_tests
(fk_serial_number                 varchar2(20),
 test_date                        date,
 test_result                      number(5,1));
create table circuit_breaker_text
(fk_serial_number                 varchar2(20),
  text_line_number                number,
  text                            varchar2(300));




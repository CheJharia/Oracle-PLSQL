Create table manufacturers
(manufacturer                      char(3) primary key,
 manufacturer_name           varchar2(20) not null);
Create table circuit_breaker_models
(model                                  varchar2(20) primary key,
 fk_manufacturer                 char(3) references manufacturers,
 gallons_of_oil                     number(4,0),
 kva_rating                           number(4,1),
 amps                                    number(4,0),
 weight                                  number(6,0) default (0));
create table circuit_breakers
(serial_number                      varchar2(20) primary key,
 fk_model                              varchar2(20) references circuit_breaker_models,
 location                                varchar2(30));
create table circuit_breaker_tests
(fk_serial_number                 varchar2(20),
 test_date                                date,
 test_result                              number(5,1),
 check (test_result > 50 and test_result < 100),
 primary key (fk_serial_number, test_date),
 foreign key (fk_serial_number) references circuit_breakers);
create table circuit_breaker_text
(fk_serial_number                  varchar2(20),
  text_line_number                  number,
  text                                        varchar2(300),
 primary key (fk_serial_number, text_line_number),
 foreign key (fk_serial_number) references circuit_breakers);

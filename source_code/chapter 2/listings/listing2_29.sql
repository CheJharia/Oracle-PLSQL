Create type readings_o as object
   (reading_date         date,
    reading              number);

Create type readings_table as table of readings_o;

Create table customers
   (account_number       number,
    meter_type           varchar2(15),
    billing_style        char(2),
    account_rep          varchar2(20),
    readings             readings_table);               

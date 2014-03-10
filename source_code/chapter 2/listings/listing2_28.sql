Create type readings_v as varray(24) as number;

Create table customers
   (account_number          number,
    meter_type              varchar2(15),
    billing_style           char(2),
    account_rep             varchar2(20),
    readings                readings_v);               

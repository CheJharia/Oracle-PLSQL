load data
infile *
replace into table tax_rates
fields terminated by "," 
(tax_rate, bottom_wage, top_wage)
begindata
.10,7000,8999
.11,9000,11999
.12,12000,14999
.13,15000,17999
.14,18000,19999 

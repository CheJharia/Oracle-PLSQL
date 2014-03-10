select sum(case when nvl(wages,0) between 0 and 5000 
           then 1 else 0 end) as "0 to 5000",
       sum(case when nvl(wages,0) between 5001 and 10000 
           then 1 else 0 end) as "5001 to 10000",
       sum(case when nvl(wages,0) between 10001 and 15000 
           then 1 else 0 end) as "10001 to 15000",
       sum(case when nvl(wages,0) between 15001 and 20000 
           then 1 else 0 end) as "15001 to 20000"
from employee;

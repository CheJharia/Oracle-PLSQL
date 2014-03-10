select (case when cost <= 100 
                  then 'Less than 100'
             when cost >= 100 and cost <= 125 
                  then '100 to 125'
             when cost > 126 and cost <= 150 
                  then '126 to 150'
             when cost > 30 then 'Above 150' end) 
              "Eyeglass cost categories", count(*) as amount
from glasses
group by (case when cost <= 100 
                    then 'Less than 100'
               when cost >= 100 and cost <= 125 
                    then '100 to 125'
               when cost > 126 and cost <= 150 
                    then '126 to 150'
               when cost > 30 then 'Above 150' end);

select var_pop(wages) var_pop, var_samp(wages) var_samp,
       stddev_pop(wages) stddev_pop, 
       stddev_samp(wages) stddev_samp,
       covar_pop(wages, wages * 1.07) covar_pop,
       covar_samp(wages, wages * 1.07) covar_samp
from employee;

SQL> select payroll_number, last_name,
  2         lag(payroll_number, 1) over (order by payroll_number) prev_payroll_number,
  3         lag(last_name, 1) over (order by payroll_number) prev_last_name
  4  from employee;

PAYROLL_NUMBER LAST_NAME       PREV_PAYROLL_NUMBER PREV_LAST_NAME                                   
-------------- --------------- ------------------- ---------------                                  
            19 ROOSEVELT                                                                            
            20 ANTHONY                          19 ROOSEVELT                                        
            21 JOHNSON                          20 ANTHONY                                          
            22 ROOSEVELT                        21 JOHNSON                                          
            23 TAFT                             22 ROOSEVELT                                        
            24 WILSON                           23 TAFT                                             
            25 COOLIDGE                         24 WILSON                                           
            26 HOOVER                           25 COOLIDGE                                         
            27 ROOSEVELT                        26 HOOVER                                           
            28 TRUMAN                           27 ROOSEVELT                                        
            29 EISENHOWER                       28 TRUMAN                                           
            30 KENNEDY                          29 EISENHOWER                                       
            31 JOHNSON                          30 KENNEDY                                          
            32 NIXON                            31 JOHNSON                                          
            33 FORD                             32 NIXON                                            
            34 CARTER                           33 FORD                                             
            35 REAGAN                           34 CARTER                                           
            36 BUSH                             35 REAGAN                                           
            37 CLINTON                          36 BUSH                                             
            45 DWORCZAK                         37 CLINTON                                          
            46 MILLER                           45 DWORCZAK                                         

21 rows selected.

SQL> spool off

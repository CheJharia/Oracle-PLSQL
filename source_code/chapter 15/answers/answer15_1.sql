declare
       a     number;
     begin
       a := 10 / 0;
     exception
       when zero_divide then
       dbms_output.put_line ('YOU HAVE ATTEMPTED TO DIVIDE A NUMBER 
                                                  BY ZERO');
        end;
/

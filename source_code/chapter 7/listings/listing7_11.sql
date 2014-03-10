select to_char(round(to_date('01-Aug-2001'), 'YY'), 'DD-MON-YYYY') rnd_yr,
       to_char(trunc(to_date('01-Aug-2001'), 'YY'), 'DD-MON-YYYY') trc_yr,
       to_char(round(to_date('16-Aug-2001'), 'MONTH'), 'DD-MON-YYYY') rnd_mo,
       to_char(trunc(to_date('16-Aug-2001'), 'MONTH'), 'DD-MON-YYYY') trc_mo,
       to_char(round(to_date('17-Aug-2001'), 'WW'), 'DD-MON-YYYY') rnd_wk,
       to_char(trunc(to_date('17-Aug-2001'), 'WW'), 'DD-MON-YYYY') trc_wk
from dual;
sqlplusw scott/tiger  @d:\practice_database\tabl_cre.sql
sqlldr scott/tiger control= d:\practice_database\loaddept.ctl log=c:\ld.log bad=c:\ld.bad
sqlldr scott/tiger control= d:\practice_database\loademp.ctl  log=c:\le.log bad=c:\le.bad
sqlldr scott/tiger control= d:\practice_database\loadtool.ctl log=c:\lt.log bad=c:\lt.bad
sqlldr scott/tiger control= d:\practice_database\loadglas.ctl log=c:\lg.log bad=c:\lg.bad
sqlldr scott/tiger control= d:\practice_database\loadtaxes.ctl log=c:\ltax.log bad=c:\ltax.bad


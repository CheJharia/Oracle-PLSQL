load data
infile *
replace into table department 
(
department      position(01:04) char(4),
department_name position(06:20) char(15)
)
begindata
POL  POLITICAL SCIENCE
INT  INTERIOR DESIGN
WEL  WELFARE BUREAU
TRF  TRESURY DEPAR
CEN  CENSUS DEPT                                                                                                                                                                                                                                                                                            

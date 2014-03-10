load data
infile *
replace into table employee
fields enclosed by '"' trailing nullcols
(payroll_number, last_name, first_name, absences, wages,
 street, city, state, phone, social_security_number, employment_date date "dd-mon-yyyy",
 birth_date date "dd-mon-yyyy", current_position, fk_department, gender)
begindata
"25" "COOLIDGE"        "CALVIN"                  "0"     "9500" "12 MAPLE ROAD"         "PLYMOUTH"        "VT" "435-897-3546"  "100-02-0500" "07-AUG-1921" "01-JUL-1872" "JANITOR"         "INT" "M"
"46" "MILLER"          "KEVIN"                   "0"     "9500" "16789 CRESCENT ROAD"   "OMAHA"           "NE" "387-198-3546"  "238-99-6254" "12-OCT-2000" "27-NOV-1975" "VICE PRESIDENT"  "INT" "M"
"45" "DWORCZAK"        "ALICE"                   "2"     "9800" "49 BERKSHIRE LANE"     "ST. LOUIS"       "MO" "387-198-4167"  "527-08-4571" "01-APR-2000" "23-MAR-1955" "ADMINISTRATOR"   "POL" "F"  
"31" "JOHNSON"         "LYNDON"                  "3"     "12000" "RR #1"                "STONEWALL"       "TX" "560-456-9876"  "456-91-2345" "23-NOV-1963" "27-AUG-1908" "TREASURER CLERK" "POL" "M"
"35" "REAGAN"          "RONALD"                  "5"     "13500" "10 RODEO LANE"        "TAMPICO"         "IL" "721-898-0987"  "101-11-9832" "03-MAR-1980" "01-OCT-1924" "PRESIDENT"       "WEL" "M"
"36" "BUSH"            "GEORGE"                  "0"     "14000" "1456 PLEASANT"        "FALL HARBOR"     "ME" "409-339-9087"  "459-98-3456" "05-JAN-1988" "06-FEB-1911" "CLERK 2"         "INT" "M"
"21" "JOHNSON"         "ANDREW"                  "2"     "7500"  "1233 TABACCO RD"       "RALEIGH"         "NC" "640-789-3450"  "267-88-9876" "13-APR-1965" "29-DEC-1908" "SALESPERSON 1"   "POL" "M"
"37" "CLINTON"         "WILLIAM"                 "2"     "15000" "1234 OAK DALE"        "HOPE"            "AR" "402-731-2489"  "456-98-9987" "01-JAN-1992" "03-APR-1940" "CLERK 1"         "POL" "M"
"34" "CARTER"          "JIMMY"                  "1"     "13000" "RR #3"                "PLAINS"          "GE" "432-987-0987"  "563-99-7765" "10-JUL-1976" "14-JUL-1913" "LABORER 3"       "WEL" "M"
"33" "FORD"            "GERALD"                  "0"     "13000" "3301 CENTER ST"       "OMAHA"           "NE" "408-765-3487"  "456-33-9801" "20-MAY-1973" "09-JAN-1913" "LABORER 2"       "INT" "M"
"32" "NIXON"           "RICHARD"                 "6"     "12500" "12 PASADENA AVE"      "YORBA LINDA"     "CA" "402-636-3171"  "555-45-2345" "15-DEC-1968" "27-AUG-1908" "TREASURER"       "POL" "M"
"30" "KENNEDY"         "JOHN"                    "2"     "11500" "1230 N OCEAN"         "BROOKLINE"       "MA" "345-908-8765"  "234-66-2356" "01-JAN-1961" "29-MAY-1917" "PROGRAMMER 1"    "POL" "M"
"29" "EISENHOWER"      "DWIGHT"                  "1"     ""     "12 SOLDIER WAY"             "DENISON"         "TX" "367-098-0002"  "876-99-1201" "20-MAR-1953" "14-OCT-1890" "GUARD 4"         "INT" "M"
"28" "TRUMAN"          "HAROLD"                  "0"     "11000" "RRT #7"               "LAMAR"           "MO" "546-987-6512"  "345-09-0191" "15-APR-1945" "08-MAY-1884" "COUNSELER 2"     "INT" "M"
"27" "ROOSEVELT"       "FRANKLIN"                "3"     "10400" "12 CHERRY LANE"       "HYDE PARK"       "NY" "983-097-8734"  "001-01-0001" "26-MAR-1933" "30-JAN-1882" "CLERK 1"         "POL" "M"
"26" "HOOVER"          "HERBERT"                 "2"     "10000" "1234 MAIN ST"         "WEST BRANCH"     "IA" "213-467-0932"  "100-02-0004" "06-APR-1928" "10-AUG-1874" "MAINT. MAN 2"    "WEL" "M"
"24" "WILSON"          "WOODROW"                 "1"     "9000"  "123 SMOKEY ROD"        "STAUTON"         "VA" "567-123-9867"  "200-05-9879" "05-SEP-1912" "28-DEC-1856" "MAINT. MAN 3"    "POL" "M"
"23" "TAFT"            "WILLIAM"                 "2"     "8500"  "1234 RIVERFRONT RD"    "CINCINNATI"      "OH" "234-632-7806"  "340-90-9856" "01-JUN-1908" "15-SEP-1857" "VICE PRESIDENT"  "WEL" "M"
"22" "ROOSEVELT"       "THEODORE"                "0"     "8000" "12 BROADWAY"           "NEW YORK"        "NY" "389-329-0418"  "378-66-9854" "20-NOV-1902" "27-OCT-1858" "CONTROLLER"      "INT" "M"
"20" "ANTHONY"         "SUSANNE"                 "1"     "7000" "123 DOLLAR ROAD"       "ADAMS"           "MA" "458-094-0987"  "503-89-7898" "30-MAR-1940" "15-FEB-1920" "SALESPERSON 2"   "WEL" "F"
"19" "ROOSEVELT"       "ELEANOR"                  "0"     ""    "123 W 57 TH"                "NEW YORK"        "NY" "120-234-9876"  "509-66-8999" "20-MAR-1932" "11-OCT-1884" "SYSTEM ANALYST"  "WEL" "F"


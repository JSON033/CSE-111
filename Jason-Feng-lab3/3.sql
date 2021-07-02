select l_quantity,l_extendedprice
from lineitem
where l_returnflag = 'N' and l_shipdate = '1995-09-25';

select max( julianday(l_shipdate) - julianday(l_commitdate))
from lineitem;

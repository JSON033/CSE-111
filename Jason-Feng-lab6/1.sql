select strftime('%m',l_shipdate) ,avg(l_quantity)
from lineitem
where l_shipdate like '1996%'
group by strftime('%m',l_shipdate);
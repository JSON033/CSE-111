Select l_receiptdate, Count(l_receiptdate)
from lineitem, customer, orders
where c_name = 'Customer#000000118' and l_orderkey = o_orderkey and o_custkey = c_custkey
group by l_receiptdate;
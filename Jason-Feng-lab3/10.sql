select SUM(o_totalprice)
from customer, region, orders, nation
where c_custkey = o_custkey and  n_regionkey = r_regionkey and r_name = 'EUROPE' and o_orderdate like '1996-%' and n_nationkey = c_nationkey;
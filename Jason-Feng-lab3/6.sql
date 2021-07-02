Select distinct n_name
from orders,nation,customer
where o_orderdate like '1996-12-__' and c_custkey = o_custkey and c_nationkey = n_nationkey;

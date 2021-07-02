select count( distinct o_clerk)
from orders, nation, supplier, lineitem
where l_orderkey = o_orderkey and l_suppkey = s_suppkey and s_nationkey = n_nationkey and n_name = 'RUSSIA';
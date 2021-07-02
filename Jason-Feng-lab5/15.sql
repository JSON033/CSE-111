SELECT SUM(l_extendedprice * (1 - l_discount)) / (SELECT SUM(l_extendedprice * (1 - l_discount))
from nation n1 , nation n2, region, customer, supplier, lineitem, orders
where c_nationkey = n1.n_nationkey  and c_custkey = o_custkey and n1.n_regionkey = r_regionkey and r_name = 'EUROPE' and l_orderkey = o_orderkey 
and s_nationkey = n2.n_nationkey and l_shipdate like '1996%' and l_suppkey = s_suppkey )


from nation n1 , nation n2, region, customer, supplier, lineitem, orders
where c_nationkey = n1.n_nationkey and c_custkey = o_custkey and n1.n_regionkey = r_regionkey and r_name = 'EUROPE' 
and s_nationkey = n2.n_nationkey and n2.n_name = 'UNITED STATES' and l_shipdate like '1996%' and l_suppkey = s_suppkey and l_orderkey = o_orderkey;
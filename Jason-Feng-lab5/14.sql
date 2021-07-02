select r1.r_name, r2.r_name, substr(l_shipdate,1, 4), sum(l_extendedprice *(1-l_discount))
from region r1, region r2, nation n1, nation n2, lineitem, customer, supplier, orders

where c_custkey = o_custkey and o_orderkey = l_orderkey and c_nationkey = n1.n_nationkey and n1.n_regionkey = r1.r_regionkey 
and l_suppkey = s_suppkey and s_nationkey = n2.n_nationkey and n2.n_regionkey = r2.r_regionkey and (l_shipdate like '1995%' or l_shipdate like '1996%')
group by r2.r_name, r1.r_name, substr(l_shipdate,1,4);

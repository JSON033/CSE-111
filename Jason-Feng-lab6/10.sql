select r_name
from region, supplier, nation, customer, lineitem, orders
where c_nationkey = s_nationkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and
 s_suppkey = l_suppkey and c_custkey = o_custkey and l_orderkey = o_orderkey
group by r_name
order by sum(l_extendedprice) desc limit 1;
select n_name,count(  distinct o_orderkey)
from nation, orders, lineitem, supplier,region
where o_orderstatus = 'F' and o_orderkey = l_orderkey and  l_suppkey = s_suppkey and s_nationkey = n_nationkey and r_regionkey = n_regionkey and r_name = 'AMERICA' and o_orderdate like '1995%'
group by n_name;
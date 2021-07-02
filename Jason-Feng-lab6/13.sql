select n_name 
from orders, nation, lineitem, supplier
where o_orderkey = l_orderkey and s_suppkey = l_suppkey and s_nationkey = n_nationkey 
and l_shipdate like '1996%' 
group by n_name
order by sum(l_extendedprice) desc limit 1;
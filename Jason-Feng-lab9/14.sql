select s_region, c_region,cast(sum(l_extendedprice)as int)
from  Q1, Q2, lineitem, orders
where s_suppkey = l_suppkey and l_orderkey = o_orderkey and o_custkey = c_custkey 
group by s_region, c_region ;
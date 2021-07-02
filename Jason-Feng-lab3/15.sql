select n_name, substr(o_orderdate,1,4), count(o_orderdate)
from  nation, orders, lineitem,supplier
where  o_orderpriority = '3-MEDIUM' and l_orderkey = o_orderkey and l_suppkey = s_suppkey and n_nationkey = s_nationkey
group by n_name,  substr(o_orderdate,1,4);
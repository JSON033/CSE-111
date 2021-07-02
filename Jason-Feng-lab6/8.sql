select count(distinct c_custkey)
from orders o, customer 
where o.o_custkey = c_custkey  and o_orderkey not in (select o_orderkey from supplier, orders, lineitem, nation, region
where r_name != 'ASIA' and o_orderkey = l_orderkey and s_suppkey = l_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey) ;
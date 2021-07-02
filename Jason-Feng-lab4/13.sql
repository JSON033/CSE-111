select count(*) from (

select distinct o_orderkey
from customer, region, nation, orders, supplier
where c_nationkey = n_nationkey  and n_name = 'CANADA' and c_custkey = o_custkey
Intersect 

select distinct o_orderkey
from supplier , region, nation, orders, lineitem
where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' and l_suppkey = s_suppkey and l_orderkey = o_orderkey

);
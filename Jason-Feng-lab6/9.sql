select distinct p_name
from customer, region, nation, lineitem, part,orders, 
(select p_name from partsupp,part, supplier, nation, region 
where ps_suppkey = s_suppkey and ps_partkey = p_partkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'ASIA'
group by p_name
having count(distinct s_suppkey) = 4
) partnames
where c_custkey = o_custkey and l_orderkey = o_orderkey and p_partkey = l_partkey and c_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'AMERICA' and p_name in partnames;
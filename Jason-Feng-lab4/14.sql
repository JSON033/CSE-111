
select  r1.r_name, r2.r_name, sum(l_extendedprice)
from customer, supplier , region r1, region r2, lineitem, orders ,nation n1, nation n2
where l_suppkey = s_suppkey and s_nationkey = n1.n_nationkey  and n2.n_nationkey = c_nationkey and  n1.n_regionkey = r1.r_regionkey and o_custkey = c_custkey and r2.r_regionkey = n2.n_regionkey and o_orderkey = l_orderkey
group by r1.r_name, r2.r_name;
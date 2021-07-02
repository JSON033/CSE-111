select n_name, sum1- sum2
from (
select n_name, sum(l_extendedprice) sum1
from customer,orders, lineitem,supplier, nation
WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND  s_nationkey = n_nationkey AND 
l_suppkey = s_suppkey AND  c_nationkey != n_nationkey AND 
l_shipdate LIKE '1996%'
group by n_name
) t,
(select n_name, sum(l_extendedprice) sum2
from customer, orders, lineitem, supplier, nation
where c_nationkey = n_nationkey and l_suppkey = s_suppkey and c_custkey = o_custkey and l_orderkey = o_orderkey and  s_nationkey != n_nationkey and
 l_shipdate like '1996%'
group by n_name)
t2
where t.n_name = t2.n_name;
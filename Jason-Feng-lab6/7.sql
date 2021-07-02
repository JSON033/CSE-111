select count(*)
from(
select s_name
from supplier, orders, lineitem, nation, customer
where c_nationkey = n_nationkey and (n_name = 'GERMANY' or n_name = 'FRANCE') and s_suppkey = l_suppkey and l_orderkey = o_orderkey  and c_custkey = o_custkey
group by s_name
having count(distinct o_orderkey ) < 30
);
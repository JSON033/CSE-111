select n_name
from customer, orders, nation, 
(select sum(o_totalprice) total
from customer, orders, nation
where c_custkey = o_custkey and c_nationkey = n_nationkey 
group by n_name
order by sum(o_totalprice) desc limit 1
) t
where c_custkey = o_custkey and c_nationkey = n_nationkey 
group by n_name
having sum(o_totalprice) = t.total;

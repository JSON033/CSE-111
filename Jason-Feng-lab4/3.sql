select n_name, count(o_custkey)
from region, nation, orders, customer
where o_custkey = c_custkey and n_nationkey = c_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE'
group by n_name;
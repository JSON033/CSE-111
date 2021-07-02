

select r_name, Count(o_orderstatus)
from orders, customer, region, nation
where o_custkey = c_custkey and r_regionkey = n_regionkey and n_nationkey = c_nationkey and o_orderstatus = 'F'

group by r_name
order by Count(o_orderstatus) DESC;
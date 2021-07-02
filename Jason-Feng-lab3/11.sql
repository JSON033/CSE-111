select Count(*)
from 
 (select distinct c_name
from lineitem, customer, orders
where l_orderkey = o_orderkey and o_custkey = c_custkey and l_discount >= 0.04 )
;

select count(o_orderpriority)
from orders, customer, nation
where c_custkey = o_custkey and c_nationkey = n_nationkey and n_name = 'BRAZIL' and o_orderdate > '1994-00-00' and o_orderdate < '1997-12-31' and o_orderpriority = '1-URGENT';

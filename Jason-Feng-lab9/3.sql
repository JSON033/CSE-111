select c_nation, count(o_custkey)
from orders, Q1
where c_region = 'EUROPE' and o_custkey = c_custkey
group by c_nation;
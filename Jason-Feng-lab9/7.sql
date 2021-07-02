select c_nation, o_orderstatus, count(o_orderkey)
from Q1,Q5
where c_custkey = o_custkey and c_region = 'ASIA'
group by c_nation, o_orderstatus;
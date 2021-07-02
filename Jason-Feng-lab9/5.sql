select c_name, count(o_orderkey)
from Q1,Q5
where c_nation ='GERMANY' and o_orderyear = '1995' and c_custkey = o_custkey
group by c_name;
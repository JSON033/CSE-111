select count(distinct o_clerk)
from Q2, Q5, lineitem
where s_suppkey = l_suppkey and l_orderkey = o_orderkey and s_nation = 'RUSSIA';
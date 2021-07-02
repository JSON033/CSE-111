select count(distinct o_orderkey)
from Q2, Q1, orders , lineitem
where c_nation='CANADA' and s_region = 'EUROPE' and s_suppkey = l_suppkey and l_orderkey = o_orderkey and o_custkey = c_custkey;
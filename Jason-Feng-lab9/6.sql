select p_mfgr, o_orderpriority, count(p_partkey)
from part, Q5, lineitem
where p_partkey = l_partkey and l_orderkey = o_orderkey 
group by p_mfgr, o_orderpriority;
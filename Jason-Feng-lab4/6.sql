select p_mfgr, o_orderpriority,count(o_orderkey)
from part, orders,lineitem
where l_orderkey = o_orderkey and p_partkey = l_partkey
group by p_mfgr, o_orderpriority;
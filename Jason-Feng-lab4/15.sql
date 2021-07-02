select count(distinct o_orderkey)
from supplier, customer, lineitem, orders
where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and c_acctbal < 0 and s_acctbal > 0;
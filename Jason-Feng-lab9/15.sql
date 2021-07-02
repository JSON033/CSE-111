select  count(distinct o_orderkey) 
from supplier, orders, lineitem, customer
where c_custkey = o_custkey and o_orderkey = l_orderkey and l_suppkey = s_suppkey and c_custkey in (select c_custkey from Q151)  and s_suppkey not in (select s_suppkey from Q152);
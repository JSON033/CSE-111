select o_orderpriority, count(o_orderkey)
from orders, lineitem
where l_orderkey = o_orderkey and o_orderdate like '1996%' and l_receiptdate < l_commitdate  
group by o_orderpriority;

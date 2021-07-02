select s_name, c_name
from customer, supplier, orders, lineitem
where c_custkey = o_custkey and l_orderkey = o_orderkey and l_suppkey = s_suppkey and o_totalprice = (select max(o_totalprice) from orders where o_orderstatus = 'F') and o_orderstatus = 'F';
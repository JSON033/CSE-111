--Count the number of orders made in the fourth quarter of1996in which at least one line item wasreceived by the customer later than its committed date.  List the count of such orders for each orderpriority sorted in ascending priority order
select o_orderpriority, count(distinct o_orderkey)
from orders, lineitem
where l_orderkey = o_orderkey and (julianday(l_receiptdate > l_commitdate)) and o_orderdate between '1996-10-00' and '1996-12-40' 
group by o_orderpriority;
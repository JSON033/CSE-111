select count(*) from
(
select   count (distinct c_custkey)
from customer, orders
where c_custkey = o_custkey and o_orderdate like '1995-08%'
group by c_name
having count(distinct o_orderkey)  <= 2);

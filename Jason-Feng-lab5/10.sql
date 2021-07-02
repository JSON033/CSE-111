select r_name, count(distinct c_name)
from region,nation,customer, orders
where c_nationkey = n_nationkey and n_regionkey = r_regionkey and
c_acctbal > (select avg(c_acctbal) from customer ) and
c_custkey not in (select o_custkey from orders, customer, nation , region where c_custkey = o_custkey and c_nationkey = n_nationkey and n_regionkey = r_regionkey)
group by r_name;
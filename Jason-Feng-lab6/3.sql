select count(*) from
(
select p_partkey
from part, partsupp, nation, supplier 
where s_nationkey = n_nationkey and ps_suppkey =s_suppkey and n_name = 'CANADA' and p_partkey = ps_partkey
group by p_partkey
having count(p_partkey ) > 1
);
select count(*) from
(
select s_suppkey
from part, partsupp, nation, supplier
where s_nationkey = n_nationkey and ps_suppkey =s_suppkey and n_name = 'CANADA' and p_partkey = ps_partkey
group by s_suppkey
having count(p_partkey ) > 4
);
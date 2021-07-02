select s_name , count(p_partkey)
from part, nation,partsupp,supplier
where p_size < 20 and ps_partkey = p_partkey and ps_suppkey = s_suppkey and s_nationkey = n_nationkey and n_name = 'BRAZIL'
group by s_name;
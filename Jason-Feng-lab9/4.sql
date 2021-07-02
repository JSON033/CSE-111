select s_name, count(ps_partkey)
from Q2, partsupp, part
where s_nation = 'BRAZIL' and ps_suppkey = s_suppkey and ps_partkey = p_partkey and p_size < 20
group by s_name;
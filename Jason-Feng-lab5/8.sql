select count(distinct s_name)
from supplier, part, partsupp
where s_suppkey = ps_suppkey and p_partkey = ps_partkey and p_type like '%MEDIUM POLISHED%' and (p_size = 3 or p_size = 23 or p_size = 26 or p_size = 49);
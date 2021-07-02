select count(distinct p_partkey)
from partsupp ps, part, supplier, nation
where s_suppkey = ps_suppkey and p_partkey = ps_partkey and s_nationkey = n_nationkey and n_name = 'CANADA' and ps.ps_supplycost*ps.ps_availqty in (select ps_supplycost*ps_availqty from partsupp order by ps_supplycost*ps_availqty desc limit  (select count (*) *0.03 from partsupp));

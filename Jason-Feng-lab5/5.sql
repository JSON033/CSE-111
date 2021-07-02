
select s.s_name, p.p_size, Min(ps_supplycost)
from supplier s, nation, region, partsupp, part p,
(select p_size, min(ps_supplycost) as minprice from partsupp, part,supplier, nation, region where p_partkey = ps_partkey and p_type like '%STEEL%' and ps_suppkey = s_suppkey and s_nationkey = n_nationkey 
and n_regionkey = r_regionkey and r_name='AMERICA' group by p_size) t
where s.s_suppkey = ps_suppkey and ps_partkey = p.p_partkey and p.p_type like '%STEEL%' and s.s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name ='AMERICA' and ps_supplycost = t.minprice and p.p_size = t.p_size 
group by s.s_name, p.p_size;
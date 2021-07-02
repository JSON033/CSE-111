select count (distinct s_suppkey)
from part, partsupp, supplier
where ps_suppkey =s_suppkey and p_partkey = ps_partkey and p_retailprice = ( select min(p_retailprice) from part);
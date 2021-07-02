select sum(ps_supplycost)
from  part, partsupp
where p_partkey = ps_partkey and p_retailprice < 1000
and p_partkey in (select l_partkey from lineitem, supplier where  l_shipdate like '1996%' and s_suppkey == l_suppkey )
and ps_suppkey not in (select distinct ps_suppkey from lineitem , partsupp where l_suppkey = ps_suppkey and l_shipdate like '1995%' and l_extendedprice < 1000);
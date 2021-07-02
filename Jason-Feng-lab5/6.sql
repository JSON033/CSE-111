select p_mfgr
from part, supplier s, partsupp, (select Min(ps_availqty) as minqty from partsupp, part, supplier where s_name = 'Supplier#000000053'and s_suppkey = ps_suppkey and ps_partkey = p_partkey)t
where s.s_name = 'Supplier#000000053' and s_suppkey = ps_suppkey and ps_partkey = p_partkey and ps_availqty = t.minqty;

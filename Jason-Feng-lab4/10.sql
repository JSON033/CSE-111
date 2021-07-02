select p_type, max(l_discount)
from lineitem, part
where p_type like 'ECONOMY%' and p_partkey = l_partkey
group by p_type;
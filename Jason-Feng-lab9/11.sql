select s_region, s_name
from Q2
group by s_region
having max(s_acctbal);
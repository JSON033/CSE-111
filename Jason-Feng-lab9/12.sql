select s_region, s_acctbal
from Q2
group by s_region
having max(s_acctbal);
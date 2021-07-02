select r_name, s_name
from nation, region, supplier
where s_nationkey = n_nationkey and n_regionkey = r_regionkey
group by r_name
having  max(s_acctbal);
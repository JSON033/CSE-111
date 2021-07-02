select s_name, s_acctbal
from supplier, nation, region
where s_nationkey  =n_nationkey and r_name = 'ASIA' and s_acctbal > 1000 and n_regionkey = r_regionkey;
select n_name, Count(s_nationkey), AVG(s_acctbal)
from nation, supplier
where s_nationkey = n_nationkey 
group by n_name
Having count(n_name) >= 5;
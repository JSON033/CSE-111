select r.r_name, count(distinct s_suppkey)
from supplier , region r , nation, 
(select r_name, avg(s_acctbal)as avg_acctbal from region, nation, supplier where s_nationkey = n_nationkey and r_regionkey = n_regionkey group by r_name) t
where s_nationkey = n_nationkey and n_regionkey = r.r_regionkey and s_acctbal > t.avg_acctbal and t.r_name = r.r_name
group by r.r_name;



select n_name, count(distinct c_name), count(distinct s_name)
from customer, nation, region, supplier
where s_nationkey =n_nationkey and  c_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE'
group by n_name;

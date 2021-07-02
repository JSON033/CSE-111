select n_name
from(
select  count( distinct c_name) as namecount
from customer, nation
where c_nationkey = n_nationkey
group by n_name
order by count(distinct c_name) desc limit 1
) t, nation, customer
where c_nationkey = n_nationkey 
group by n_name
having count(c_name) = namecount
;
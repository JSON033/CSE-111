select min(c_acctbal),max(c_acctbal)
from customer
where c_mktsegment = 'BUILDING';

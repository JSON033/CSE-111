select s_nation, count(s_suppkey)
from Q2
group by s_nation;
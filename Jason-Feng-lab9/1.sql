SELECT c_name, SUM(o_totalprice), c_nation
FROM Q1, orders
WHERE 
c_nation = 'FRANCE' AND
c_custkey = o_custkey
GROUP BY c_name;
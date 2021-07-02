


Create trigger T1
before insert on orders
for each row
begin
update orders set o_orderdate = DATETIME('NOW', '+1 day') where o_orderkey = new.o_orderkey;
end;


INSERT INTO orders
SELECT o_orderkey , o_custkey, o_orderstatus, o_totalprice, '', o_orderpriority, o_clerk, o_shippriority, o_comment
from orders
where o_orderdate like '1996-08%';

select * 
from orders
where o_orderdate >  DATETIME('NOW');

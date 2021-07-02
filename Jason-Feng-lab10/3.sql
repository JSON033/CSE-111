Create trigger highpriority
after insert on lineitem
for each row
begin 
update orders set o_orderpriority = '2-HIGH' where o_orderkey = old.l_orderkey;
end;

Create trigger deleteupdate 
after delete on lineitem
for each row 
begin 
update orders set o_orderpriority ='2-HIGH' where  o_orderkey = old.l_orderkey;
end;

Delete from lineitem where l_orderkey in (select o_orderkey from orders where o_orderdate like '1995-08%');

select count(o_orderkey)
from orders 
where o_orderdate like '1995-08%' and o_orderpriority like '2%';
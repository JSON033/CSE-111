create view Q2 as 
select s_suppkey, s_name, s_address, s_phone, s_acctbal, s_comment, n_name as s_nation, r_name as s_region
from supplier, nation, region
where s_nationkey = n_nationkey and n_regionkey = r_regionkey;

Create trigger remove 
after delete on part 
for each row
begin
delete from lineitem where l_partkey = old.p_partkey;
delete from partsupp where ps_partkey = old.p_partkey;
end;

Delete from part where p_partkey in (select distinct p_partkey from Q2, partsupp where ps_suppkey = s_suppkey and (s_nation ='FRANCE' or s_nation = 'GERMANY'));

select avg(ps_supplycost), n_name
from partsupp, supplier, nation, region
where s_nationkey = n_nationkey and r_regionkey = n_regionkey and ps_suppkey = s_suppkey and r_name ='EUROPE'
group by n_name;
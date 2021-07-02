Create trigger CustComment
after update on customer 
for each row 
begin 
update customer
set c_comment ='Negative Balance!!! Add money now!'
where old.c_acctbal >= 0 and c_acctbal = new.c_acctbal and  new.c_acctbal < 0;
end;

Create Trigger positivebal 
after update on customer
begin 
update customer set c_comment =' '
where old.c_acctbal < 0 and new.c_acctbal >= 0 and c_acctbal = new.c_acctbal;
end;

update customer set c_acctbal = -100 where c_nationkey in (select n_nationkey from nation, region where r_name = 'ASIA' and  n_regionkey = r_regionkey);


select count(c_custkey)
from customer, nation
where c_nationkey = 18 and c_acctbal < 0 and c_nationkey = n_nationkey ;

update customer set c_acctbal = 100 where c_nationkey = 12;

select count(c_custkey)
from customer, nation, region
where c_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name ='ASIA' and c_acctbal < 0;


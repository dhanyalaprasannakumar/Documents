SELECT * FROM prasanna.persons;
insert into persons(id,Name,dept,age,DOB) values('BRO','ca',25,081997);
insert into persons(id,Name,dept,age,DOB) values('prem','it',25,141997);					# INSERT
insert into persons(id,Name,dept,age,DOB) values('prassu','ca',25,062001);
truncate table persons;
insert into persons (id,Name,dept,age,DOB) values(1,'BRO','ca',25,'1997-08-12');
insert into persons (id,Name,dept,age,DOB) values(2,'prem','ca',25,'1997-08-14');
insert into persons (id,Name,dept,age,DOB) values(3,'prassu','it',23,'2001-06-03');
insert into persons (id,Name,dept,age,DOB) values(4,'rowdy','it',22,'2001-11-23');
alter table persons add column address varchar(20);
select *from persons;
update persons set address='sklm' where Name='BRO';
update persons set address='hyd' where Name='prem';
update persons set address='npeta' where Name='prassu';
update persons set address='tkl' where Name='rowdy';
update persons set id=4 where Name='rowdy';
alter table persons drop age ;																	# DELETE COLUMN
alter table persons rename column DOB TO birthdate;												#RENAME COLUMN
use prasanna;
select *from persons order by Name asc;
select count(dept),dept from persons group by dept;												#GROUP BY
alter table persons add column prices int;														#ADD COLUMN
update  persons set prices=50 where Name='prassu';
update  persons set prices=90 where Name='BRO';													#UPDATE
update  persons set prices=20 where Name='prem';
select *from persons order by prices;															#ORDER BY
select * from persons where dept='ca' OR dept='ec';                                             # OR,AND
select *from persons where prices between 20 AND 50;											#between
SELECT customers.name,customers.Phno,orders.customerid
FROM customers																					#joins
RIGHT JOIN orders ON orders.Sod = customers.customerid;
select max(prices) as highno from persons;                                                       #max number
select min(prices) as highno from persons														 # min number



#DML. Data manipulation language

INSERT INTO `sakila`.`actor`
(`actor_id`,
`first_name`,
`last_name`)
VALUES
(12345, 
"Moritz",
"jost");

use sakila;
select * from actor
where actor_id=12345;

###### UPDATE statement

UPDATE `sakila`.`actor`
SET
`actor_id` = "rodrigo",
`first_name` = <{first_name: }>,
`last_name` = <{last_name: }>,
`last_update` = <{last_update: CURRENT_TIMESTAMP}>
WHERE `actor_id` = <{expr}>;

DELETE FROM `sakila`.`actor`
WHERE `actor_id` = "12345";


### DDL STATEMENTS. Data definition language
### CREATE STABLE

create table 
select * from test

insert into sakila.test (f_name)
values ("Esra")

alter table `test`
add l_name varchar(45) not null;

### DROPPING table

drop table test;

select * from test;

select film_id from film
###VIEWS IN SQL
create view test_view as
select first_name from actor join film_actor using(actor_id)
where film_id in (1,2,3,4,5,6,7,8,9,10)


select * from test_view







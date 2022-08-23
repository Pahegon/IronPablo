use sakila;

select *, from sakila

select * from sakila.film;

#Select one column from a table. Get film titles.
select title from sakila.film;

#Select one column from a table and alias it. 
#Get unique list of film languages under the alias language. 
#Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
select address1 as address11 from sakila.address;# the problem here is the name is not changer permanently.
ALTER TABLE sakila.address RENAME COLUMN address TO addres1;#with this one we save the changes 
select * from sakila.address;


#5.1 Find out how many stores does the company have?
select * from sakila.store;# As we can see below, there is only 2 stores

#5.2 Find out how many employees staff does the company have?
select * from sakila.staff;# as we can see, there are 2 employees, Mike and Jon

#5.3 Return a list of employee first names only
select first_name from sakila.staff;



		
			
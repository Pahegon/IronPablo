use sakila;

#1.How many copies of the film Hunchback Impossible exist in the inventory system?

select * from inventory;
select * from film;
select * from store;

select film_id from film
where title = "Hunchback Impossible";

select count(inventory_id) from inventory
where film_id = (select film_id from film
where title = "Hunchback Impossible");


#2.List all films whose length is longer than the average of all the films.

select * from film

select avg(length) from film

select title from film
where length > (select avg(length) from film);

#3.Use subqueries to display all actors who appear in the film Alone Trip.

select * from film;
select * from film_actor;
select * from actor;

select film_id from film
where title= "Alone Trip";

select actor_id from film_actor
where film_id = (select film_id from film
where title= "Alone Trip");

select first_name, last_name from actor
where actor_id in (select actor_id from film_actor
where film_id = (select film_id from film
where title= "Alone Trip"));

#4.Sales have been lagging among young families, and you wish to target all family movies for a promotion. Identify all movies categorized as family films.

select * from film_category;
select * from film;
select * from category;

select category_id from category
where name = "Family";

select film_id from film_category
where category_id = (select category_id from category
where name = "Family")

select title from film
where film_id in (select film_id from film_category
where category_id = (select category_id from category
where name = "Family"))

#5.Get name, last name and email from customers from Canada using subqueries. 
#Do the same with joins. Note that to create a join, you will have to identify the correct tables with their primary keys and foreign keys, 
#that will help you get the relevant information.

select * from country;
select * from customer;
select * from city;
select * from address;


select country_id from country
where country = "Canada"

select city_id from city
where country_id = (select country_id from country
where country = "Canada")

select city from city
where city_id in (select city_id from city
where country_id = (select country_id from country
where country = "Canada"))

select address_id from address
where city_id in (select city_id from city
where country_id = (select country_id from country
where country = "Canada"))

select 

select first_name, last_name, email from customer
where address_id in (select address_id from address
where city_id in (select city_id from city
where country_id = (select country_id from country
where country = "Canada")))


#6.Which are films starred by the most prolific actor? Most prolific actor is defined as the actor that has acted in the most number of films.
# First you will have to find the most prolific actor and then use that actor_id to find the different films that he/she starred.



#
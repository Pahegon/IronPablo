use sakila;

#1.Which actor has appeared in the most films?

select * from actor;
select * from film_actor;


limit 1;

#2.Most active customer (the customer that has rented the most number of films)
select * from rental;
select * from customer;


select customer.first_name, customer.last_name, count(rental.customer_id)
from customer
join rental
using (customer_id)
group by customer_id
order by count(rental.customer_id) desc
limit 1;

#3.List number of films per category.
select * from category;
select * from film_category;

select category.name, count(film_id) from film_category
join category
using (category_id)
group by category_id;

#4.Display the first and last names, as well as the address, of each staff member.
select * from staff;
select * from address;

select first_name, last_name, addres1 from staff
join address
using (address_id)
order by staff.first_name desc


#5.Display the total amount rung up by each staff member in August of 2005.
select * from staff;
select * from payment;

select concat(staff.first_name," ", staff.last_name)
as "Staff", 
sum(payment.amount) as "Total Payment"
from staff 
join payment
using (staff_id)
where payment_date like "2005-08%"
group by staff_id

#6.List each film and the number of actors who are listed for that film.

select title, film, count(actor_id), total
from film
join film_actor 
using (film_id)
group by film_id
order by total desc
limit 10

#7.Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.

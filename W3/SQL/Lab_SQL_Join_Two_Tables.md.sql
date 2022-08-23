use sakila;

#1.Which actor has appeared in the most films?

select * from actor;
select * from film_actor;

select actor.first_name, actor.last_name, count(film_actor.film_id) from actor
join film_actor  using (actor_id)
group by actor_id
order by count(film_actor.film_id) desc
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

select staff.first_name, staff.last_name, address.addres1 from staff
join address
using (address_id);

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